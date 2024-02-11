library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.NUMERIC_STD.ALL;

-- Entity creation
entity trapz_fab is
    Port ( ap_clk     :  in  std_logic;
           ap_rst     :  in  std_logic;
           ap_start   :  in  std_logic;
           x          :  in  std_logic_vector (31 downto 0);
           y          :  out std_logic_vector (31 downto 0)
         );
end trapz_fab;

architecture Behavioral of trapz_fab is
    -- Trapezoidal filter
    signal en_trapz, en_buffx               : std_logic;
    signal in_sample                        : std_logic_vector (15 downto 0);
    signal out_sample                       : std_logic_vector (31 downto 0);
    constant d     : std_logic_vector (15 downto 0) := X"0FEB"; -- X"7F5C"; --4076 -- X"7F5C"; -- 0.995012*32768 = 32604
    constant a     : std_logic_vector (15 downto 0) := X"1000"; -- X"7FFF"; --4096 -- X"7F5C";       
    constant na    : std_logic_vector (15 downto 0) := X"0032";       -- 50
    constant nb    : std_logic_vector (15 downto 0) := X"0096";       -- 150
    constant nc    : std_logic_vector (15 downto 0) := X"00C8";       -- 200
    
    
    -- buffer signals instantiation
    type buffer_vector is array (integer range <>) of std_logic_vector(15 downto 0);
    signal buffx        : buffer_vector(0 to conv_integer(nc+2));
    signal out_real     : std_logic_vector (31 downto 0) := X"00000000";
    
    -- accumulator signals instantiation
    signal acc0, acc1, acc2, acc3, acc4     : std_logic_vector (31 downto 0);
    signal acc5, acc6, acc7, acc8, acc9     : std_logic_vector (31 downto 0);
    
begin

    -- Init calculus process
    process (ap_clk, ap_rst)
    begin
        if (ap_rst = '0') then
            -- flags reset
            en_trapz     <= '0';
            en_buffx     <= '0';
            -- var reset          
            in_sample    <= X"0000";
        else 
            if rising_edge(ap_clk) then
                -- new sample
                in_sample  <= x(15 downto 0);
                -- flags enable
                en_trapz     <= '1';
                en_buffx     <= '1';       
            end if;
        end if;
    end process;
    
    -- circular buffer
    process(ap_clk)
    begin
        if (ap_rst = '0') then
            -- initialization of buffer
            for i in buffx'high downto 0 loop
                buffx(i) <= X"0000";
            end loop;
        elsif rising_edge(ap_clk) then
            if en_buffx = '1' then
                -- registering buffx
                buffx(0) <= in_sample;
                for i in buffx'high-1 downto 0 loop
                    buffx(i+1) <= buffx(i);
                end loop;            
            else
                for i in buffx'high downto 0 loop
                    buffx(i) <= buffx(i);
                end loop;
            end if;
        end if;
    end process;
    
     -- Perform accumulation
    process (ap_clk)
    variable NumeradorInt   : integer;
    variable DenominadorInt : integer;
    variable CocienteInt    : integer;
    variable RestoInt       : integer;
    variable CompareInt     : integer;
    variable int_sample     : std_logic_vector(31 downto 0);
    begin
        if (ap_rst = '0') then 

           -- accumulators initialization
           acc0 <= (others =>'0');
           acc1 <= (others =>'0');
           acc2 <= (others =>'0');
           acc3 <= (others =>'0');
           acc4 <= (others =>'0');
           acc5 <= (others =>'0');
           acc6 <= (others =>'0');
           acc7 <= (others =>'0');
           acc8 <= (others =>'0');
           acc9 <= (others =>'0');
           
           out_real     <= X"00000000";
                      out_sample   <= X"00000000";
        elsif rising_edge(ap_clk) then
            if en_trapz = '1' then                                
                NumeradorInt   := conv_integer(conv_std_logic_vector(signed(acc0)+signed(acc1)+signed(acc2)+signed(acc3)+signed(acc4)+signed(acc5)+signed(acc6)+signed(acc7)+signed(acc8)+signed(acc9),32));
                DenominadorInt := conv_integer(na)*conv_integer(a);
                CocienteInt    := NumeradorInt / DenominadorInt;
                RestoInt       := abs(NumeradorInt) mod DenominadorInt;
                CompareInt     := DenominadorInt / 2;
                if (RestoInt > CompareInt) then
                    int_sample     := conv_std_logic_vector(CocienteInt+1,32);
                else
                    int_sample     := conv_std_logic_vector(CocienteInt,32);
                end if;
                -- int_sample     := conv_std_logic_vector(CocienteInt,32);
                out_real <= int_sample;  
                --y <= acc0-acc1-acc2+acc3-acc4+acc5+acc6-acc7+acc8-acc9; 
                
                
                    -- Multiply stage of Trapz
                
                acc0 <= conv_std_logic_vector(signed(buffx(0)) * signed(a), 32);
                acc1 <= conv_std_logic_vector(signed(buffx(1)) * signed(d) * signed(conv_std_logic_vector(-1,32)), 32);
                acc2 <= conv_std_logic_vector(signed(buffx(conv_integer(na))) * signed(a) * signed(conv_std_logic_vector(-1,32)), 32);
                acc3 <= conv_std_logic_vector(signed(buffx(conv_integer(na)+1)) * signed(d), 32);
                acc4 <= conv_std_logic_vector(signed(buffx(conv_integer(nb))) * signed(a) * signed(conv_std_logic_vector(-1,32)), 32);
                acc5 <= conv_std_logic_vector(signed(buffx(conv_integer(nb)+1)) * signed(d), 32);
                acc6 <= conv_std_logic_vector(signed(buffx(conv_integer(nc))) * signed(a), 32);
                acc7 <= conv_std_logic_vector(signed(buffx(conv_integer(nc)+1)) * signed(d) * signed(conv_std_logic_vector(-1,32)), 32);
                acc8 <= conv_std_logic_vector(signed(int_sample) * signed(na) * signed(conv_std_logic_vector(2,32)) * signed(a), 32);
                acc9 <= conv_std_logic_vector(signed(out_real) * signed(na) * signed(a) * signed(conv_std_logic_vector(-1,32)), 32);
            
                
                out_sample <= out_real;
                
                
            else
                --y <= X"00000000";  
                out_sample <= X"00000000"; 
                out_real     <= X"00000000";
           
           acc0 <= (others =>'0');
           acc1 <= (others =>'0');
           acc2 <= (others =>'0');
           acc3 <= (others =>'0');
           acc4 <= (others =>'0');
           acc5 <= (others =>'0');
           acc6 <= (others =>'0');
           acc7 <= (others =>'0');
           acc8 <= (others =>'0');
           acc9 <= (others =>'0');      
            end if;
        end if;
    end process;
    
    
y <= out_sample;

end Behavioral;
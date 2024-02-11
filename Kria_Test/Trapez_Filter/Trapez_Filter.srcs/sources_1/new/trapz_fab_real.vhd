library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.NUMERIC_STD.ALL;

-- Entity creation
entity trapz_fab_real is
    Port ( ap_clk     :  in  std_logic;
           ap_rst     :  in  std_logic;
           ap_start   :  in  std_logic;
           x          :  in  std_logic_vector (31 downto 0);
           y          :  out std_logic_vector (31 downto 0)
         );
end trapz_fab_real;

architecture Behavioral of trapz_fab_real is
    -- Trapezoidal filter
    signal en_trapz, en_buffx               : std_logic;
    signal in_sample                        : std_logic_vector (15 downto 0);
    signal out_sample                       : std_logic_vector (31 downto 0);
    constant d     : real := 0.995012; --std_logic_vector (15 downto 0) := X"7F5C"; -- X"7F5C"; --4076 -- X"7F5C"; -- 0.995012*32768 = 32604      
    constant na    : real := 50.0; --std_logic_vector (15 downto 0) := X"0032";       -- 50
    constant nb    : real := 150.0; --std_logic_vector (15 downto 0) := X"0096";       -- 150
    constant nc    : real := 200.0; --std_logic_vector (15 downto 0) := X"00C8";       -- 200
    
    
    -- buffer signals instantiation
    type buffer_vector is array (integer range <>) of real;
    signal buffx                            : buffer_vector(0 to integer(nc)+2);    
    signal out_real                         : real := 0.0;
    
    -- accumulator signals instantiation
    signal acc0, acc1, acc2, acc3, acc4     : real;
    signal acc5, acc6, acc7, acc8, acc9     : real;
    
begin

    -- Init calculus process
    process (ap_clk, ap_rst)
    begin
        if (ap_rst = '0') then
            -- flags reset
            en_trapz      <= '0';
            en_buffx      <= '0';
            -- var reset          
            in_sample     <= X"0000";
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
                buffx(i) <= 0.0;
            end loop;
        elsif rising_edge(ap_clk) then
            if en_buffx = '1' then
                -- registering buffx
                buffx(0) <= real(conv_integer(in_sample));
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
    variable NumeradorInt   : real;
    variable DenominadorInt : real;
    variable CocienteInt    : real;
    variable int_sample     : std_logic_vector(31 downto 0);
    begin
        if (ap_rst = '0') then 
            
            -- accumulators initialization
            acc0 <= 0.0;
            acc1 <= 0.0;
            acc2 <= 0.0;
            acc3 <= 0.0;
            acc4 <= 0.0;
            acc5 <= 0.0;
            acc6 <= 0.0;
            acc7 <= 0.0;
            acc8 <= 0.0;
            acc9 <= 0.0;
        
            out_real <= 0.0;
            out_sample   <= X"00000000";
        elsif rising_edge(ap_clk) then
            if en_trapz = '1' then  
                -- out_real <= (acc0+acc1+acc2+acc3+acc4+acc5+acc6+acc7+acc8+acc9)/na;                              
                NumeradorInt   := acc0+acc1+acc2+acc3+acc4+acc5+acc6+acc7+acc8+acc9;
                DenominadorInt := na;
                CocienteInt    := NumeradorInt / DenominadorInt;
                out_real       <= CocienteInt;
                
                -- accumulators calculation
                acc0 <= buffx(0);
                acc1 <= buffx(1) * d * (-1.0);
                acc2 <= buffx(integer(na)) * (-1.0);
                acc3 <= buffx(integer(na)+1) * d;
                acc4 <= buffx(integer(nb)) * (-1.0);
                acc5 <= buffx(integer(nb)+1) * d;
                acc6 <= buffx(integer(nc));
                acc7 <= buffx(integer(nc)+1) * d * (-1.0);
                acc8 <= CocienteInt * na * 2.0;--buffy(0) * na * 2.0;
                acc9 <= out_real * na * (-1.0);-- buffy(1) * na * (-1.0);
                
                --int_sample     := conv_std_logic_vector(integer(CocienteInt),32);
                out_sample     <= conv_std_logic_vector(integer(out_real),32);  
                --y <= acc0-acc1-acc2+acc3-acc4+acc5+acc6-acc7+acc8-acc9; 
                
            else
                acc0 <= 0.0;
                acc1 <= 0.0;
                acc2 <= 0.0;
                acc3 <= 0.0;
                acc4 <= 0.0;
                acc5 <= 0.0;
                acc6 <= 0.0;
                acc7 <= 0.0;
                acc8 <= 0.0;
                acc9 <= 0.0;
                
                out_real <= 0.0;
                --y <= X"00000000";  
                out_sample <= X"00000000";       
            end if;
        end if;
    end process;
    
    
y <= out_sample;

end Behavioral;

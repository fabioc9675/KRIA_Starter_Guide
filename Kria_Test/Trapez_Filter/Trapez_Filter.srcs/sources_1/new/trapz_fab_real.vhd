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
    signal en_trapz, en_buffx, en_buffy     : std_logic;
    -- signal en_na, en_nb, en_nc              : std_logic;
    -- signal cnt_na, cnt_nb, cnt_nc           : std_logic_vector (7 downto 0); -- counter to enable shift register for x
    signal in_sample                        : std_logic_vector (15 downto 0);
    signal out_sample                       : std_logic_vector (31 downto 0);
    -- signal d, na, nb, nc                    : std_logic_vector (15 downto 0);
    constant d     : real := 0.995012; --std_logic_vector (15 downto 0) := X"7F5C"; -- X"7F5C"; --4076 -- X"7F5C"; -- 0.995012*32768 = 32604
    --constant a     : std_logic_vector (15 downto 0) := X"0001"; -- X"7FFF"; --4096 -- X"7F5C";       
    constant na    : real := 50.0; --std_logic_vector (15 downto 0) := X"0032";       -- 50
    constant nb    : real := 150.0; --std_logic_vector (15 downto 0) := X"0096";       -- 150
    constant nc    : real := 200.0; --std_logic_vector (15 downto 0) := X"00C8";       -- 200
    
    
    -- buffer signals instantiation
    type buffer_vector is array (integer range <>) of real;
    signal buffx : buffer_vector(0 to integer(nc)+2);
    signal buffy : buffer_vector(0 to 2);
    
    signal out_real : real := 0.0;
    --signal buffx0, buffx1, buffx2           : std_logic_vector (15 downto 0);
    --signal buffy0, buffy1, buffy2           : std_logic_vector (15 downto 0);
    --signal buffxna_1, buffxna_2             : std_logic_vector (15 downto 0);
    --signal buffxnb_1, buffxnb_2             : std_logic_vector (15 downto 0);
    --signal buffxnc_1, buffxnc_2             : std_logic_vector (15 downto 0);
    
    -- accumulator signals instantiation
    signal acc0, acc1, acc2, acc3, acc4     : real;
    signal acc5, acc6, acc7, acc8, acc9     : real;
    
begin

    -- constant values
    -- d  <= X"7F5C";       -- 0.995012*32768 = 32604
    -- na <= X"0032";       -- 50
    -- nb <= X"0096";       -- 150
    -- nc <= X"00C8";       -- 200
    
    
    
    -- Init calculus process
    process (ap_clk, ap_rst)
    begin
        if (ap_rst = '0') then
            -- flags reset
            en_trapz     <= '0';
            en_buffx     <= '0';
            en_buffy     <= '0';
            --en_na        <= '0';
            --en_nb        <= '0';
            --en_nc        <= '0';
            -- counters reset
            --cnt_na       <= (others => '0');
            --cnt_nb       <= (others => '0');
            --cnt_nc       <= (others => '0'); 
            -- var reset          
            in_sample    <= X"0000";
            -- out_sample   <= X"00000000";
            -- accumulator initialization
--            acc0   <= X"00000000";
--            acc1   <= X"00000000";
--            acc2   <= X"00000000";
--            acc3   <= X"00000000";
--            acc4   <= X"00000000";
--            acc5   <= X"00000000";
--            acc6   <= X"00000000";
--            acc7   <= X"00000000";
--            acc8   <= X"00000000";
--            acc9   <= X"00000000";
            -- initialize buffer value
--            for i in buffx'high downto 0 loop
--                buffx(i) <= X"0000";
--            end loop;
--            for i in buffy'high downto 0 loop
--                buffy(i) <= X"0000";
--            end loop;
        else 
            if rising_edge(ap_clk) then
                -- new sample
                in_sample  <= x(15 downto 0);
                -- flags enable
                en_trapz     <= '1';
                en_buffx     <= '1';
                en_buffy     <= '1';
                
                -- counters enable
                --cnt_na <= cnt_na + 1;
                --cnt_nb <= cnt_nb + 1;
                --cnt_nc <= cnt_nc + 1;
                ---- counter comparison
                --if(cnt_na = na) then
                --    en_na <= '1';
                --end if;
                --if(cnt_nb = nb) then
                --    en_nb <= '1';
                --end if;
                --if(cnt_nc = nc) then
                --    en_nc <= '1';
                --end if;             
            end if;
        end if;
    end process;
    
    -- circular buffer
    process(ap_clk)
    begin
        if (ap_rst = '0') then
        
           for i in buffx'high downto 0 loop
                buffx(i) <= 0.0;
            end loop;
            for i in buffy'high downto 0 loop
                buffy(i) <= 0.0;
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
            -- registering buffy
            if en_buffy = '1' then
                -- registering buffy
                buffy(0) <= out_real; --real(conv_integer(out_sample));
                for i in buffy'high-1 downto 0 loop
                    buffy(i+1) <= buffy(i);
                end loop;
            else 
                for i in buffy'high downto 0 loop
                    buffy(i) <= 0.0; --buffy(i);
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

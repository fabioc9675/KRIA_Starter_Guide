library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entity creation
entity trapz_jor is
    Port ( ap_clk     :  in  std_logic;
           ap_rst     :  in  std_logic;
           ap_start   :  in  std_logic;
           x          :  in  std_logic_vector (31 downto 0);
           y          :  out std_logic_vector (31 downto 0)
         );
end trapz_jor;

architecture Behavioral of trapz_jor is
    -- Trapezoidal filter
    signal en_trapz, en_buffx, en_buffy     : std_logic;
    -- signal en_na, en_nb, en_nc              : std_logic;
    -- signal cnt_na, cnt_nb, cnt_nc           : std_logic_vector (7 downto 0); -- counter to enable shift register for x
    signal in_sample                        : std_logic_vector (15 downto 0);
    signal out_sample                       : std_logic_vector (31 downto 0);
    -- signal d, na, nb, nc                    : std_logic_vector (15 downto 0);
    constant d     : std_logic_vector (15 downto 0) := X"7F5C";       -- 0.995012*32768 = 32604
    constant na    : std_logic_vector (15 downto 0) := X"0032";       -- 50
    constant nb    : std_logic_vector (15 downto 0) := X"0096";       -- 150
    constant nc    : std_logic_vector (15 downto 0) := X"00C8";       -- 200
    
    -- buffer signals instantiation
    type buffer_vector is array (integer range <>) of std_logic_vector(15 downto 0);
    signal buffx : buffer_vector(0 to conv_integer(nc+2));
    signal buffy : buffer_vector(0 to 2);
    --signal buffx0, buffx1, buffx2           : std_logic_vector (15 downto 0);
    --signal buffy0, buffy1, buffy2           : std_logic_vector (15 downto 0);
    --signal buffxna_1, buffxna_2             : std_logic_vector (15 downto 0);
    --signal buffxnb_1, buffxnb_2             : std_logic_vector (15 downto 0);
    --signal buffxnc_1, buffxnc_2             : std_logic_vector (15 downto 0);
    
    -- accumulator signals instantiation
    signal acc0, acc1, acc2, acc3, acc4     : std_logic_vector (31 downto 0);
    signal acc5, acc6, acc7, acc8, acc9     : std_logic_vector (31 downto 0);
    
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
                buffx(i) <= X"0000";
            end loop;
            for i in buffy'high downto 0 loop
                buffy(i) <= X"0000";
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
            -- registering buffy
            if en_buffy = '1' then
                -- registering buffy
                buffy(0) <= out_sample(15 downto 0);
                for i in buffy'high-1 downto 0 loop
                    buffy(i+1) <= buffy(i);
                end loop;
            else 
                for i in buffy'high downto 0 loop
                    buffy(i) <= X"0000"; --buffy(i);
                end loop;
            end if;
        end if;
    end process;
    
    -- Multiply stage of Trapz
    process (ap_clk)
    begin
        if (ap_rst = '0') then
           acc9 <= (others =>'0');
           acc8 <= (others =>'0');
           
        elsif rising_edge(ap_clk) then
            if en_trapz = '1' then
                acc0 <= conv_std_logic_vector(signed(buffx(1)), 32);
                acc1 <= conv_std_logic_vector(signed(buffx(2)) * signed(d), 32);
                acc2 <= conv_std_logic_vector(signed(buffx(conv_integer(na))), 32);
                acc3 <= conv_std_logic_vector(signed(buffx(conv_integer(na)+1)) * signed(d), 32);
                acc4 <= conv_std_logic_vector(signed(buffx(conv_integer(nb))), 32);
                acc5 <= conv_std_logic_vector(signed(buffx(conv_integer(nb)+1)) * signed(d), 32);
                acc6 <= conv_std_logic_vector(signed(buffx(conv_integer(nc))), 32);
                acc7 <= conv_std_logic_vector(signed(buffx(conv_integer(nc)+1)) * signed(d), 32);
                acc8 <= conv_std_logic_vector(signed(buffy(1)) * signed(na) * signed(conv_std_logic_vector(2,32)), 32);
                acc9 <= conv_std_logic_vector(signed(buffy(2)) * signed(na), 32);
            end if;
        end if;
    end process;
    
     -- Perform accumulation
    process (ap_clk)
    begin
        if (ap_rst = '0') then 
           out_sample   <= X"00000000";
        elsif rising_edge(ap_clk) then
            if en_trapz = '1' then
                out_sample <= acc0-acc1-acc2+acc3-acc4+acc5+acc6-acc7+acc8-acc9;  
                --y <= acc0-acc1-acc2+acc3-acc4+acc5+acc6-acc7+acc8-acc9; 
                
            else
                --y <= X"00000000";  
                out_sample <= X"00000000";       
            end if;
        end if;
    end process;
    
    
y <= out_sample;

end Behavioral;
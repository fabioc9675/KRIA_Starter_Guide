----------------------------------------------------------------------------------
-- Company: Universidad de Antioquia
-- Engineer: Fabian Castano
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entity creation
entity fir_fab is
    Port ( ap_clk     :  in  std_logic;
           ap_rst     :  in  std_logic;
           ap_start   :  in  std_logic;
           x          :  in  std_logic_vector (31 downto 0);
           y          :  out std_logic_vector (31 downto 0)
         );
end fir_fab;

architecture Behavioral of fir_fab is
    -- 100 taps filter
    signal en_fir, en_buff        : std_logic;
    signal in_sample              : std_logic_vector (15 downto 0);
    signal out_sample             : std_logic_vector (31 downto 0);
    -- Constants
    constant N            : integer   := 101;

    -- buffer signals initialization
    type buffer_vector is array (integer range <>) of std_logic_vector(15 downto 0);
    type accum_vector  is array (integer range <>) of std_logic_vector(31 downto 0);
    signal buff         : buffer_vector(0 to conv_integer(N));  -- buffer memory initialization
    signal tap          : buffer_vector(0 to conv_integer(N));  -- taps memory initialization
    signal acc          : accum_vector (0 to conv_integer(N));  -- accumulator memory initialization
    
-- Initialization of structure
begin

    -- Taps for fir filter running
    tap(0)  <= X"0000";
    tap(1)  <= X"0000";
    tap(2)  <= X"0000";
    tap(3)  <= X"0000";
    tap(4)  <= X"0000";
    tap(5)  <= X"0000";
    tap(6)  <= X"0000";
    tap(7)  <= X"0000";
    tap(8)  <= X"0000";
    tap(9)  <= X"0000";
    tap(10) <= X"0001";
    tap(11) <= X"0001";
    tap(12) <= X"0001";
    tap(13) <= X"0001";
    tap(14) <= X"0002";
    tap(15) <= X"0002";
    tap(16) <= X"0003";
    tap(17) <= X"0003";
    tap(18) <= X"0004";
    tap(19) <= X"0004";
    tap(20) <= X"0005";
    tap(21) <= X"0006";
    tap(22) <= X"0006";
    tap(23) <= X"0007";
    tap(24) <= X"0008";
    tap(25) <= X"0009";
    tap(26) <= X"000A";
    tap(27) <= X"000B";
    tap(28) <= X"000C";
    tap(29) <= X"000D";
    tap(30) <= X"000E";
    tap(31) <= X"000F";
    tap(32) <= X"0010";
    tap(33) <= X"0011";
    tap(34) <= X"0012";
    tap(35) <= X"0013";
    tap(36) <= X"0014";
    tap(37) <= X"0015";
    tap(38) <= X"0016";
    tap(39) <= X"0016";
    tap(40) <= X"0017";
    tap(41) <= X"0018";
    tap(42) <= X"0019";
    tap(43) <= X"0019";
    tap(44) <= X"001A";
    tap(45) <= X"001A";
    tap(46) <= X"001B";
    tap(47) <= X"001B";
    tap(48) <= X"001B";
    tap(49) <= X"001C";
    tap(50) <= X"001C";
    tap(51) <= X"001C";
    tap(52) <= X"001C";
    tap(53) <= X"001B";
    tap(54) <= X"001B";
    tap(55) <= X"001B";
    tap(56) <= X"001A";
    tap(57) <= X"001A";
    tap(58) <= X"0019";
    tap(59) <= X"0019";
    tap(60) <= X"0018";
    tap(61) <= X"0017";
    tap(62) <= X"0016";
    tap(63) <= X"0016";
    tap(64) <= X"0015";
    tap(65) <= X"0014";
    tap(66) <= X"0013";
    tap(67) <= X"0012";
    tap(68) <= X"0011";
    tap(69) <= X"0010";
    tap(70) <= X"000F";
    tap(71) <= X"000E";
    tap(72) <= X"000D";
    tap(73) <= X"000C";
    tap(74) <= X"000B";
    tap(75) <= X"000A";
    tap(76) <= X"0009";
    tap(77) <= X"0008";
    tap(78) <= X"0007";
    tap(79) <= X"0006";
    tap(80) <= X"0006";
    tap(81) <= X"0005";
    tap(82) <= X"0004";
    tap(83) <= X"0004";
    tap(84) <= X"0003";
    tap(85) <= X"0003";
    tap(86) <= X"0002";
    tap(87) <= X"0002";
    tap(88) <= X"0001";
    tap(89) <= X"0001";
    tap(90) <= X"0001";
    tap(91) <= X"0001";
    tap(92) <= X"0000";
    tap(93) <= X"0000";
    tap(94) <= X"0000";
    tap(95) <= X"0000";
    tap(96) <= X"0000";
    tap(97) <= X"0000";
    tap(98) <= X"0000";
    tap(99) <= X"0000";
    tap(100) <= X"0000";

    
    -- Init calculus process
    process (ap_clk, ap_rst)
    begin
        if (ap_rst = '0') then
            en_fir    <= '0';
            en_buff   <= '0';
            in_sample <= X"0000";
        else
            if rising_edge(ap_clk) then
                in_sample <= x(15 downto 0);
                en_fir    <= '1';
                en_buff   <= '1';
            end if;
        end if;            
    end process;
    
    -- Circular buffer
    process(ap_clk)
    begin
        if (ap_rst = '0') then
            -- initialization of buffer
            for i in buff'high downto 0 loop
                buff(i) <= X"0000";
            end loop;
        elsif rising_edge(ap_clk) then
            if en_buff = '1' then
                buff(0) <= in_sample;
                for i in buff'high-1 downto 0 loop
                    buff(i+1) <= buff(i);
                end loop;
            else
                for i in buff'high downto 0 loop
                    buff(i) <= buff(i);
                end loop;
            end if;
        end if;
    end process;
    
    -- Multiply stage of FIR
    process(ap_clk) 
    begin
        if (ap_rst = '0') then
            -- initialization of buffer
            for i in acc'high downto 0 loop
                acc(i) <= X"00000000";
            end loop;
        elsif rising_edge(ap_clk) then
            if en_fir = '1' then
                for i in acc'high downto 0 loop
                    acc(i) <= conv_std_logic_vector(signed(tap(i)) * signed(buff(i)), 32);
                end loop;
            end if;
        end if;
    end process;
    
    -- Perform accumulation
    process(ap_clk)
    begin
        if (ap_rst = '0') then
            out_sample <= X"00000000";  
        elsif rising_edge(ap_clk) then
            if en_fir = '1' then
                out_sample <= acc(0) + acc(1) + acc(2) + acc(3) + acc(4) + acc(5) + acc(6) + acc(7) + acc(8) + acc(9) +
                     acc(10) + acc(11) + acc(12) + acc(13) + acc(14) + acc(15) + acc(16) + acc(17) + acc(18) + acc(19) +
                     acc(20) + acc(21) + acc(22) + acc(23) + acc(24) + acc(25) + acc(26) + acc(27) + acc(28) + acc(29) +
                     acc(30) + acc(31) + acc(32) + acc(33) + acc(34) + acc(35) + acc(36) + acc(37) + acc(38) + acc(39) +
                     acc(40) + acc(41) + acc(42) + acc(43) + acc(44) + acc(45) + acc(46) + acc(47) + acc(48) + acc(49) +
                     acc(50) + acc(51) + acc(52) + acc(53) + acc(54) + acc(55) + acc(56) + acc(57) + acc(58) + acc(59) +
                     acc(60) + acc(61) + acc(62) + acc(63) + acc(64) + acc(65) + acc(66) + acc(67) + acc(68) + acc(69) +
                     acc(70) + acc(71) + acc(72) + acc(73) + acc(74) + acc(75) + acc(76) + acc(77) + acc(78) + acc(79) +
                     acc(80) + acc(81) + acc(82) + acc(83) + acc(84) + acc(85) + acc(86) + acc(87) + acc(88) + acc(89) +
                     acc(90) + acc(91) + acc(92) + acc(93) + acc(94) + acc(95) + acc(96) + acc(97) + acc(98) + acc(99) + acc(100);    
            else
                out_sample <= X"00000000";        
            end if;
        end if;
    end process;
    
    y <= B"00000000000" & out_sample(31 downto 11);

end Behavioral;

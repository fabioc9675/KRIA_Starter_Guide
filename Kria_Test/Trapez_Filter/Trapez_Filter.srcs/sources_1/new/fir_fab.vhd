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
    signal buff_cnt               : std_logic_vector (7 downto 0);
    signal in_sample              : std_logic_vector (15 downto 0);

    -- buffer signals initialization
    signal buff0, buff1, buff2, buff3, buff4, buff5, buff6, buff7, buff8, buff9 : std_logic_vector (15 downto 0);
    signal buff10, buff11, buff12, buff13, buff14, buff15, buff16, buff17, buff18, buff19 : std_logic_vector (15 downto 0);
    signal buff20, buff21, buff22, buff23, buff24, buff25, buff26, buff27, buff28, buff29 : std_logic_vector (15 downto 0);
    signal buff30, buff31, buff32, buff33, buff34, buff35, buff36, buff37, buff38, buff39 : std_logic_vector (15 downto 0);
    signal buff40, buff41, buff42, buff43, buff44, buff45, buff46, buff47, buff48, buff49 : std_logic_vector (15 downto 0);
    signal buff50, buff51, buff52, buff53, buff54, buff55, buff56, buff57, buff58, buff59 : std_logic_vector (15 downto 0);
    signal buff60, buff61, buff62, buff63, buff64, buff65, buff66, buff67, buff68, buff69 : std_logic_vector (15 downto 0);
    signal buff70, buff71, buff72, buff73, buff74, buff75, buff76, buff77, buff78, buff79 : std_logic_vector (15 downto 0);
    signal buff80, buff81, buff82, buff83, buff84, buff85, buff86, buff87, buff88, buff89 : std_logic_vector (15 downto 0);
    signal buff90, buff91, buff92, buff93, buff94, buff95, buff96, buff97, buff98, buff99, buff100 : std_logic_vector (15 downto 0);

    -- taps memory initialization
    signal tap0, tap1, tap2, tap3, tap4, tap5, tap6, tap7, tap8, tap9 : std_logic_vector (15 downto 0);
    signal tap10, tap11, tap12, tap13, tap14, tap15, tap16, tap17, tap18, tap19 : std_logic_vector (15 downto 0);
    signal tap20, tap21, tap22, tap23, tap24, tap25, tap26, tap27, tap28, tap29 : std_logic_vector (15 downto 0);
    signal tap30, tap31, tap32, tap33, tap34, tap35, tap36, tap37, tap38, tap39 : std_logic_vector (15 downto 0);
    signal tap40, tap41, tap42, tap43, tap44, tap45, tap46, tap47, tap48, tap49 : std_logic_vector (15 downto 0);
    signal tap50, tap51, tap52, tap53, tap54, tap55, tap56, tap57, tap58, tap59 : std_logic_vector (15 downto 0);
    signal tap60, tap61, tap62, tap63, tap64, tap65, tap66, tap67, tap68, tap69 : std_logic_vector (15 downto 0);
    signal tap70, tap71, tap72, tap73, tap74, tap75, tap76, tap77, tap78, tap79 : std_logic_vector (15 downto 0);
    signal tap80, tap81, tap82, tap83, tap84, tap85, tap86, tap87, tap88, tap89 : std_logic_vector (15 downto 0);
    signal tap90, tap91, tap92, tap93, tap94, tap95, tap96, tap97, tap98, tap99, tap100 : std_logic_vector (15 downto 0);
    
    -- accumulators initialization
    signal acc0, acc1, acc2, acc3, acc4, acc5, acc6, acc7, acc8, acc9 : std_logic_vector (31 downto 0);
    signal acc10, acc11, acc12, acc13, acc14, acc15, acc16, acc17, acc18, acc19 : std_logic_vector (31 downto 0);
    signal acc20, acc21, acc22, acc23, acc24, acc25, acc26, acc27, acc28, acc29 : std_logic_vector (31 downto 0);
    signal acc30, acc31, acc32, acc33, acc34, acc35, acc36, acc37, acc38, acc39 : std_logic_vector (31 downto 0);
    signal acc40, acc41, acc42, acc43, acc44, acc45, acc46, acc47, acc48, acc49 : std_logic_vector (31 downto 0);
    signal acc50, acc51, acc52, acc53, acc54, acc55, acc56, acc57, acc58, acc59 : std_logic_vector (31 downto 0);
    signal acc60, acc61, acc62, acc63, acc64, acc65, acc66, acc67, acc68, acc69 : std_logic_vector (31 downto 0);
    signal acc70, acc71, acc72, acc73, acc74, acc75, acc76, acc77, acc78, acc79 : std_logic_vector (31 downto 0);
    signal acc80, acc81, acc82, acc83, acc84, acc85, acc86, acc87, acc88, acc89 : std_logic_vector (31 downto 0);
    signal acc90, acc91, acc92, acc93, acc94, acc95, acc96, acc97, acc98, acc99, acc100 : std_logic_vector (31 downto 0);
    
-- Initialization of structure
begin

    -- Taps for fir filter running
    tap0 <= X"0000";
    tap1 <= X"FFFF";
    tap2 <= X"FFFF";
    tap3 <= X"0002";
    tap4 <= X"0005";
    tap5 <= X"0000";
    tap6 <= X"FFF6";
    tap7 <= X"FFF8";
    tap8 <= X"000B";
    tap9 <= X"0016";
    tap10 <= X"0000";
    tap11 <= X"FFDF";
    tap12 <= X"FFE7";
    tap13 <= X"001D";
    tap14 <= X"0037";
    tap15 <= X"0000";
    tap16 <= X"FFB7";
    tap17 <= X"FFCD";
    tap18 <= X"003A";
    tap19 <= X"006B";
    tap20 <= X"0000";
    tap21 <= X"FF7A";
    tap22 <= X"FFA3";
    tap23 <= X"0067";
    tap24 <= X"00B9";
    tap25 <= X"0000";
    tap26 <= X"FF1E";
    tap27 <= X"FF66";
    tap28 <= X"00A9";
    tap29 <= X"012D";
    tap30 <= X"0000";
    tap31 <= X"FE95";
    tap32 <= X"FF0A";
    tap33 <= X"010E";
    tap34 <= X"01E1";
    tap35 <= X"0000";
    tap36 <= X"FDB7";
    tap37 <= X"FE70";
    tap38 <= X"01BC";
    tap39 <= X"0322";
    tap40 <= X"0000";
    tap41 <= X"FC04";
    tap42 <= X"FD2F";
    tap43 <= X"0344";
    tap44 <= X"063D";
    tap45 <= X"0000";
    tap46 <= X"F675";
    tap47 <= X"F816";
    tap48 <= X"0BEE";
    tap49 <= X"26B6";
    tap50 <= X"3333";
    tap51 <= X"26B6";
    tap52 <= X"0BEE";
    tap53 <= X"F816";
    tap54 <= X"F675";
    tap55 <= X"0000";
    tap56 <= X"063D";
    tap57 <= X"0344";
    tap58 <= X"FD2F";
    tap59 <= X"FC04";
    tap60 <= X"0000";
    tap61 <= X"0322";
    tap62 <= X"01BC";
    tap63 <= X"FE70";
    tap64 <= X"FDB7";
    tap65 <= X"0000";
    tap66 <= X"01E1";
    tap67 <= X"010E";
    tap68 <= X"FF0A";
    tap69 <= X"FE95";
    tap70 <= X"0000";
    tap71 <= X"012D";
    tap72 <= X"00A9";
    tap73 <= X"FF66";
    tap74 <= X"FF1E";
    tap75 <= X"0000";
    tap76 <= X"00B9";
    tap77 <= X"0067";
    tap78 <= X"FFA3";
    tap79 <= X"FF7A";
    tap80 <= X"0000";
    tap81 <= X"006B";
    tap82 <= X"003A";
    tap83 <= X"FFCD";
    tap84 <= X"FFB7";
    tap85 <= X"0000";
    tap86 <= X"0037";
    tap87 <= X"001D";
    tap88 <= X"FFE7";
    tap89 <= X"FFDF";
    tap90 <= X"0000";
    tap91 <= X"0016";
    tap92 <= X"000B";
    tap93 <= X"FFF8";
    tap94 <= X"FFF6";
    tap95 <= X"0000";
    tap96 <= X"0005";
    tap97 <= X"0002";
    tap98 <= X"FFFF";
    tap99 <= X"FFFF";
    tap100 <= X"0000";
    
    -- Init calculus process
    process (ap_clk, ap_rst)
    begin
        if (ap_rst = '0') then
            buff_cnt  <= (others => '0');
            en_fir    <= '0';
            en_buff   <= '0';
            in_sample <= X"0000";
        else
            if rising_edge(ap_clk) then
                buff_cnt  <= buff_cnt + 1;
                in_sample <= x(15 downto 0);
                en_fir    <= '1';
                en_buff   <= '1';
            end if;
        end if;            
    end process;
    
    -- Circular buffer
    process(ap_clk)
    begin
        if rising_edge(ap_clk) then
            if en_buff = '1' then
                buff0 <= in_sample;
                buff1 <= buff0;
                buff2 <= buff1;
                buff3 <= buff2;
                buff4 <= buff3;
                buff5 <= buff4;
                buff6 <= buff5;
                buff7 <= buff6;
                buff8 <= buff7;
                buff9 <= buff8;
                buff10 <= buff9;
                buff11 <= buff10;
                buff12 <= buff11;
                buff13 <= buff12;
                buff14 <= buff13;
                buff15 <= buff14;
                buff16 <= buff15;
                buff17 <= buff16;
                buff18 <= buff17;
                buff19 <= buff18;
                buff20 <= buff19;
                buff21 <= buff20;
                buff22 <= buff21;
                buff23 <= buff22;
                buff24 <= buff23;
                buff25 <= buff24;
                buff26 <= buff25;
                buff27 <= buff26;
                buff28 <= buff27;
                buff29 <= buff28;
                buff30 <= buff29;
                buff31 <= buff30;
                buff32 <= buff31;
                buff33 <= buff32;
                buff34 <= buff33;
                buff35 <= buff34;
                buff36 <= buff35;
                buff37 <= buff36;
                buff38 <= buff37;
                buff39 <= buff38;
                buff40 <= buff39;
                buff41 <= buff40;
                buff42 <= buff41;
                buff43 <= buff42;
                buff44 <= buff43;
                buff45 <= buff44;
                buff46 <= buff45;
                buff47 <= buff46;
                buff48 <= buff47;
                buff49 <= buff48;
                buff50 <= buff49;
                buff51 <= buff50;
                buff52 <= buff51;
                buff53 <= buff52;
                buff54 <= buff53;
                buff55 <= buff54;
                buff56 <= buff55;
                buff57 <= buff56;
                buff58 <= buff57;
                buff59 <= buff58;
                buff60 <= buff59;
                buff61 <= buff60;
                buff62 <= buff61;
                buff63 <= buff62;
                buff64 <= buff63;
                buff65 <= buff64;
                buff66 <= buff65;
                buff67 <= buff66;
                buff68 <= buff67;
                buff69 <= buff68;
                buff70 <= buff69;
                buff71 <= buff70;
                buff72 <= buff71;
                buff73 <= buff72;
                buff74 <= buff73;
                buff75 <= buff74;
                buff76 <= buff75;
                buff77 <= buff76;
                buff78 <= buff77;
                buff79 <= buff78;
                buff80 <= buff79;
                buff81 <= buff80;
                buff82 <= buff81;
                buff83 <= buff82;
                buff84 <= buff83;
                buff85 <= buff84;
                buff86 <= buff85;
                buff87 <= buff86;
                buff88 <= buff87;
                buff89 <= buff88;
                buff90 <= buff89;
                buff91 <= buff90;
                buff92 <= buff91;
                buff93 <= buff92;
                buff94 <= buff93;
                buff95 <= buff94;
                buff96 <= buff95;
                buff97 <= buff96;
                buff98 <= buff97;
                buff99 <= buff98;
                buff100 <= buff99;
            else
                buff0 <= buff0;
                buff1 <= buff1;
                buff2 <= buff2;
                buff3 <= buff3;
                buff4 <= buff4;
                buff5 <= buff5;
                buff6 <= buff6;
                buff7 <= buff7;
                buff8 <= buff8;
                buff9 <= buff9;
                buff10 <= buff10;
                buff11 <= buff11;
                buff12 <= buff12;
                buff13 <= buff13;
                buff14 <= buff14;
                buff15 <= buff15;
                buff16 <= buff16;
                buff17 <= buff17;
                buff18 <= buff18;
                buff19 <= buff19;
                buff20 <= buff20;
                buff21 <= buff21;
                buff22 <= buff22;
                buff23 <= buff23;
                buff24 <= buff24;
                buff25 <= buff25;
                buff26 <= buff26;
                buff27 <= buff27;
                buff28 <= buff28;
                buff29 <= buff29;
                buff30 <= buff30;
                buff31 <= buff31;
                buff32 <= buff32;
                buff33 <= buff33;
                buff34 <= buff34;
                buff35 <= buff35;
                buff36 <= buff36;
                buff37 <= buff37;
                buff38 <= buff38;
                buff39 <= buff39;
                buff40 <= buff40;
                buff41 <= buff41;
                buff42 <= buff42;
                buff43 <= buff43;
                buff44 <= buff44;
                buff45 <= buff45;
                buff46 <= buff46;
                buff47 <= buff47;
                buff48 <= buff48;
                buff49 <= buff49;
                buff50 <= buff50;
                buff51 <= buff51;
                buff52 <= buff52;
                buff53 <= buff53;
                buff54 <= buff54;
                buff55 <= buff55;
                buff56 <= buff56;
                buff57 <= buff57;
                buff58 <= buff58;
                buff59 <= buff59;
                buff60 <= buff60;
                buff61 <= buff61;
                buff62 <= buff62;
                buff63 <= buff63;
                buff64 <= buff64;
                buff65 <= buff65;
                buff66 <= buff66;
                buff67 <= buff67;
                buff68 <= buff68;
                buff69 <= buff69;
                buff70 <= buff70;
                buff71 <= buff71;
                buff72 <= buff72;
                buff73 <= buff73;
                buff74 <= buff74;
                buff75 <= buff75;
                buff76 <= buff76;
                buff77 <= buff77;
                buff78 <= buff78;
                buff79 <= buff79;
                buff80 <= buff80;
                buff81 <= buff81;
                buff82 <= buff82;
                buff83 <= buff83;
                buff84 <= buff84;
                buff85 <= buff85;
                buff86 <= buff86;
                buff87 <= buff87;
                buff88 <= buff88;
                buff89 <= buff89;
                buff90 <= buff90;
                buff91 <= buff91;
                buff92 <= buff92;
                buff93 <= buff93;
                buff94 <= buff94;
                buff95 <= buff95;
                buff96 <= buff96;
                buff97 <= buff97;
                buff98 <= buff98;
                buff99 <= buff99;
                buff100 <= buff100;
            end if;
        end if;
    end process;
    
    -- Multiply stage of FIR
    process(ap_clk) 
    begin
        if rising_edge(ap_clk) then
            if en_fir = '1' then
                acc0 <= conv_std_logic_vector(signed(tap0) * signed(buff0), 32);
                acc1 <= conv_std_logic_vector(signed(tap1) * signed(buff1), 32);
                acc2 <= conv_std_logic_vector(signed(tap2) * signed(buff2), 32);
                acc3 <= conv_std_logic_vector(signed(tap3) * signed(buff3), 32);
                acc4 <= conv_std_logic_vector(signed(tap4) * signed(buff4), 32);
                acc5 <= conv_std_logic_vector(signed(tap5) * signed(buff5), 32);
                acc6 <= conv_std_logic_vector(signed(tap6) * signed(buff6), 32);
                acc7 <= conv_std_logic_vector(signed(tap7) * signed(buff7), 32);
                acc8 <= conv_std_logic_vector(signed(tap8) * signed(buff8), 32);
                acc9 <= conv_std_logic_vector(signed(tap9) * signed(buff9), 32);
                acc10 <= conv_std_logic_vector(signed(tap10) * signed(buff10), 32);
                acc11 <= conv_std_logic_vector(signed(tap11) * signed(buff11), 32);
                acc12 <= conv_std_logic_vector(signed(tap12) * signed(buff12), 32);
                acc13 <= conv_std_logic_vector(signed(tap13) * signed(buff13), 32);
                acc14 <= conv_std_logic_vector(signed(tap14) * signed(buff14), 32);
                acc15 <= conv_std_logic_vector(signed(tap15) * signed(buff15), 32);
                acc16 <= conv_std_logic_vector(signed(tap16) * signed(buff16), 32);
                acc17 <= conv_std_logic_vector(signed(tap17) * signed(buff17), 32);
                acc18 <= conv_std_logic_vector(signed(tap18) * signed(buff18), 32);
                acc19 <= conv_std_logic_vector(signed(tap19) * signed(buff19), 32);
                acc20 <= conv_std_logic_vector(signed(tap20) * signed(buff20), 32);
                acc21 <= conv_std_logic_vector(signed(tap21) * signed(buff21), 32);
                acc22 <= conv_std_logic_vector(signed(tap22) * signed(buff22), 32);
                acc23 <= conv_std_logic_vector(signed(tap23) * signed(buff23), 32);
                acc24 <= conv_std_logic_vector(signed(tap24) * signed(buff24), 32);
                acc25 <= conv_std_logic_vector(signed(tap25) * signed(buff25), 32);
                acc26 <= conv_std_logic_vector(signed(tap26) * signed(buff26), 32);
                acc27 <= conv_std_logic_vector(signed(tap27) * signed(buff27), 32);
                acc28 <= conv_std_logic_vector(signed(tap28) * signed(buff28), 32);
                acc29 <= conv_std_logic_vector(signed(tap29) * signed(buff29), 32);
                acc30 <= conv_std_logic_vector(signed(tap30) * signed(buff30), 32);
                acc31 <= conv_std_logic_vector(signed(tap31) * signed(buff31), 32);
                acc32 <= conv_std_logic_vector(signed(tap32) * signed(buff32), 32);
                acc33 <= conv_std_logic_vector(signed(tap33) * signed(buff33), 32);
                acc34 <= conv_std_logic_vector(signed(tap34) * signed(buff34), 32);
                acc35 <= conv_std_logic_vector(signed(tap35) * signed(buff35), 32);
                acc36 <= conv_std_logic_vector(signed(tap36) * signed(buff36), 32);
                acc37 <= conv_std_logic_vector(signed(tap37) * signed(buff37), 32);
                acc38 <= conv_std_logic_vector(signed(tap38) * signed(buff38), 32);
                acc39 <= conv_std_logic_vector(signed(tap39) * signed(buff39), 32);
                acc40 <= conv_std_logic_vector(signed(tap40) * signed(buff40), 32);
                acc41 <= conv_std_logic_vector(signed(tap41) * signed(buff41), 32);
                acc42 <= conv_std_logic_vector(signed(tap42) * signed(buff42), 32);
                acc43 <= conv_std_logic_vector(signed(tap43) * signed(buff43), 32);
                acc44 <= conv_std_logic_vector(signed(tap44) * signed(buff44), 32);
                acc45 <= conv_std_logic_vector(signed(tap45) * signed(buff45), 32);
                acc46 <= conv_std_logic_vector(signed(tap46) * signed(buff46), 32);
                acc47 <= conv_std_logic_vector(signed(tap47) * signed(buff47), 32);
                acc48 <= conv_std_logic_vector(signed(tap48) * signed(buff48), 32);
                acc49 <= conv_std_logic_vector(signed(tap49) * signed(buff49), 32);
                acc50 <= conv_std_logic_vector(signed(tap50) * signed(buff50), 32);
                acc51 <= conv_std_logic_vector(signed(tap51) * signed(buff51), 32);
                acc52 <= conv_std_logic_vector(signed(tap52) * signed(buff52), 32);
                acc53 <= conv_std_logic_vector(signed(tap53) * signed(buff53), 32);
                acc54 <= conv_std_logic_vector(signed(tap54) * signed(buff54), 32);
                acc55 <= conv_std_logic_vector(signed(tap55) * signed(buff55), 32);
                acc56 <= conv_std_logic_vector(signed(tap56) * signed(buff56), 32);
                acc57 <= conv_std_logic_vector(signed(tap57) * signed(buff57), 32);
                acc58 <= conv_std_logic_vector(signed(tap58) * signed(buff58), 32);
                acc59 <= conv_std_logic_vector(signed(tap59) * signed(buff59), 32);
                acc60 <= conv_std_logic_vector(signed(tap60) * signed(buff60), 32);
                acc61 <= conv_std_logic_vector(signed(tap61) * signed(buff61), 32);
                acc62 <= conv_std_logic_vector(signed(tap62) * signed(buff62), 32);
                acc63 <= conv_std_logic_vector(signed(tap63) * signed(buff63), 32);
                acc64 <= conv_std_logic_vector(signed(tap64) * signed(buff64), 32);
                acc65 <= conv_std_logic_vector(signed(tap65) * signed(buff65), 32);
                acc66 <= conv_std_logic_vector(signed(tap66) * signed(buff66), 32);
                acc67 <= conv_std_logic_vector(signed(tap67) * signed(buff67), 32);
                acc68 <= conv_std_logic_vector(signed(tap68) * signed(buff68), 32);
                acc69 <= conv_std_logic_vector(signed(tap69) * signed(buff69), 32);
                acc70 <= conv_std_logic_vector(signed(tap70) * signed(buff70), 32);
                acc71 <= conv_std_logic_vector(signed(tap71) * signed(buff71), 32);
                acc72 <= conv_std_logic_vector(signed(tap72) * signed(buff72), 32);
                acc73 <= conv_std_logic_vector(signed(tap73) * signed(buff73), 32);
                acc74 <= conv_std_logic_vector(signed(tap74) * signed(buff74), 32);
                acc75 <= conv_std_logic_vector(signed(tap75) * signed(buff75), 32);
                acc76 <= conv_std_logic_vector(signed(tap76) * signed(buff76), 32);
                acc77 <= conv_std_logic_vector(signed(tap77) * signed(buff77), 32);
                acc78 <= conv_std_logic_vector(signed(tap78) * signed(buff78), 32);
                acc79 <= conv_std_logic_vector(signed(tap79) * signed(buff79), 32);
                acc80 <= conv_std_logic_vector(signed(tap80) * signed(buff80), 32);
                acc81 <= conv_std_logic_vector(signed(tap81) * signed(buff81), 32);
                acc82 <= conv_std_logic_vector(signed(tap82) * signed(buff82), 32);
                acc83 <= conv_std_logic_vector(signed(tap83) * signed(buff83), 32);
                acc84 <= conv_std_logic_vector(signed(tap84) * signed(buff84), 32);
                acc85 <= conv_std_logic_vector(signed(tap85) * signed(buff85), 32);
                acc86 <= conv_std_logic_vector(signed(tap86) * signed(buff86), 32);
                acc87 <= conv_std_logic_vector(signed(tap87) * signed(buff87), 32);
                acc88 <= conv_std_logic_vector(signed(tap88) * signed(buff88), 32);
                acc89 <= conv_std_logic_vector(signed(tap89) * signed(buff89), 32);
                acc90 <= conv_std_logic_vector(signed(tap90) * signed(buff90), 32);
                acc91 <= conv_std_logic_vector(signed(tap91) * signed(buff91), 32);
                acc92 <= conv_std_logic_vector(signed(tap92) * signed(buff92), 32);
                acc93 <= conv_std_logic_vector(signed(tap93) * signed(buff93), 32);
                acc94 <= conv_std_logic_vector(signed(tap94) * signed(buff94), 32);
                acc95 <= conv_std_logic_vector(signed(tap95) * signed(buff95), 32);
                acc96 <= conv_std_logic_vector(signed(tap96) * signed(buff96), 32);
                acc97 <= conv_std_logic_vector(signed(tap97) * signed(buff97), 32);
                acc98 <= conv_std_logic_vector(signed(tap98) * signed(buff98), 32);
                acc99 <= conv_std_logic_vector(signed(tap99) * signed(buff99), 32);
                acc100 <= conv_std_logic_vector(signed(tap100) * signed(buff100), 32);
            end if;
        end if;
    end process;
    
    -- Perform accumulation
    process(ap_clk)
    begin
        if rising_edge(ap_clk) then
            if en_fir = '1' then
                y <= acc0 + acc1 + acc2 + acc3 + acc4 + acc5 + acc6 + acc7 + acc8 + acc9 +
                     acc10 + acc11 + acc12 + acc13 + acc14 + acc15 + acc16 + acc17 + acc18 + acc19 +
                     acc20 + acc21 + acc22 + acc23 + acc24 + acc25 + acc26 + acc27 + acc28 + acc29 +
                     acc30 + acc31 + acc32 + acc33 + acc34 + acc35 + acc36 + acc37 + acc38 + acc39 +
                     acc40 + acc41 + acc42 + acc43 + acc44 + acc45 + acc46 + acc47 + acc48 + acc49 +
                     acc50 + acc51 + acc52 + acc53 + acc54 + acc55 + acc56 + acc57 + acc58 + acc59 +
                     acc60 + acc61 + acc62 + acc63 + acc64 + acc65 + acc66 + acc67 + acc68 + acc69 +
                     acc70 + acc71 + acc72 + acc73 + acc74 + acc75 + acc76 + acc77 + acc78 + acc79 +
                     acc80 + acc81 + acc82 + acc83 + acc84 + acc85 + acc86 + acc87 + acc88 + acc89 +
                     acc90 + acc91 + acc92 + acc93 + acc94 + acc95 + acc96 + acc97 + acc98 + acc99 + acc100;    
            else
                y <= X"00000000";        
            end if;
        end if;
    end process;

end Behavioral;

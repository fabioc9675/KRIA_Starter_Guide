`timescale 1ns / 1ps

module fir_fab(
    input                    ap_clk,
    input                    ap_rst,
    input                    ap_start,
    input      signed [31:0] x,
    output reg signed [31:0] y
    );
    
    // 100 taps filter
    reg en_fir, en_buff;
    reg [7:0] buff_cnt;
    reg signed [15:0] in_sample;
    
    reg signed [15:0] buff0, buff1, buff2, buff3, buff4, buff5, buff6, buff7, buff8, buff9;
    reg signed [15:0] buff10, buff11, buff12, buff13, buff14, buff15, buff16, buff17, buff18, buff19;
    reg signed [15:0] buff20, buff21, buff22, buff23, buff24, buff25, buff26, buff27, buff28, buff29;
    reg signed [15:0] buff30, buff31, buff32, buff33, buff34, buff35, buff36, buff37, buff38, buff39;
    reg signed [15:0] buff40, buff41, buff42, buff43, buff44, buff45, buff46, buff47, buff48, buff49;
    reg signed [15:0] buff50, buff51, buff52, buff53, buff54, buff55, buff56, buff57, buff58, buff59;
    reg signed [15:0] buff60, buff61, buff62, buff63, buff64, buff65, buff66, buff67, buff68, buff69;
    reg signed [15:0] buff70, buff71, buff72, buff73, buff74, buff75, buff76, buff77, buff78, buff79;
    reg signed [15:0] buff80, buff81, buff82, buff83, buff84, buff85, buff86, buff87, buff88, buff89;
    reg signed [15:0] buff90, buff91, buff92, buff93, buff94, buff95, buff96, buff97, buff98, buff99, buff100;

    wire signed [15:0] tap0, tap1, tap2, tap3, tap4, tap5, tap6, tap7, tap8, tap9;
    wire signed [15:0] tap10, tap11, tap12, tap13, tap14, tap15, tap16, tap17, tap18, tap19;
    wire signed [15:0] tap20, tap21, tap22, tap23, tap24, tap25, tap26, tap27, tap28, tap29;
    wire signed [15:0] tap30, tap31, tap32, tap33, tap34, tap35, tap36, tap37, tap38, tap39;
    wire signed [15:0] tap40, tap41, tap42, tap43, tap44, tap45, tap46, tap47, tap48, tap49;
    wire signed [15:0] tap50, tap51, tap52, tap53, tap54, tap55, tap56, tap57, tap58, tap59;
    wire signed [15:0] tap60, tap61, tap62, tap63, tap64, tap65, tap66, tap67, tap68, tap69;
    wire signed [15:0] tap70, tap71, tap72, tap73, tap74, tap75, tap76, tap77, tap78, tap79;
    wire signed [15:0] tap80, tap81, tap82, tap83, tap84, tap85, tap86, tap87, tap88, tap89;
    wire signed [15:0] tap90, tap91, tap92, tap93, tap94, tap95, tap96, tap97, tap98, tap99, tap100;
    
    reg signed [31:0] acc0, acc1, acc2, acc3, acc4, acc5, acc6, acc7, acc8, acc9;
    reg signed [31:0] acc10, acc11, acc12, acc13, acc14, acc15, acc16, acc17, acc18, acc19;
    reg signed [31:0] acc20, acc21, acc22, acc23, acc24, acc25, acc26, acc27, acc28, acc29;
    reg signed [31:0] acc30, acc31, acc32, acc33, acc34, acc35, acc36, acc37, acc38, acc39;
    reg signed [31:0] acc40, acc41, acc42, acc43, acc44, acc45, acc46, acc47, acc48, acc49;
    reg signed [31:0] acc50, acc51, acc52, acc53, acc54, acc55, acc56, acc57, acc58, acc59;
    reg signed [31:0] acc60, acc61, acc62, acc63, acc64, acc65, acc66, acc67, acc68, acc69;
    reg signed [31:0] acc70, acc71, acc72, acc73, acc74, acc75, acc76, acc77, acc78, acc79;
    reg signed [31:0] acc80, acc81, acc82, acc83, acc84, acc85, acc86, acc87, acc88, acc89;
    reg signed [31:0] acc90, acc91, acc92, acc93, acc94, acc95, acc96, acc97, acc98, acc99, acc100;
    
    
    // Taps for LPF running 
    assign tap0 = 16'h0000;
    assign tap1 = 16'hFFFF;
    assign tap2 = 16'hFFFF;
    assign tap3 = 16'h0002;
    assign tap4 = 16'h0005;
    assign tap5 = 16'h0000;
    assign tap6 = 16'hFFF6;
    assign tap7 = 16'hFFF8;
    assign tap8 = 16'h000B;
    assign tap9 = 16'h0016;
    assign tap10 = 16'h0000;
    assign tap11 = 16'hFFDF;
    assign tap12 = 16'hFFE7;
    assign tap13 = 16'h001D;
    assign tap14 = 16'h0037;
    assign tap15 = 16'h0000;
    assign tap16 = 16'hFFB7;
    assign tap17 = 16'hFFCD;
    assign tap18 = 16'h003A;
    assign tap19 = 16'h006B;
    assign tap20 = 16'h0000;
    assign tap21 = 16'hFF7A;
    assign tap22 = 16'hFFA3;
    assign tap23 = 16'h0067;
    assign tap24 = 16'h00B9;
    assign tap25 = 16'h0000;
    assign tap26 = 16'hFF1E;
    assign tap27 = 16'hFF66;
    assign tap28 = 16'h00A9;
    assign tap29 = 16'h012D;
    assign tap30 = 16'h0000;
    assign tap31 = 16'hFE95;
    assign tap32 = 16'hFF0A;
    assign tap33 = 16'h010E;
    assign tap34 = 16'h01E1;
    assign tap35 = 16'h0000;
    assign tap36 = 16'hFDB7;
    assign tap37 = 16'hFE70;
    assign tap38 = 16'h01BC;
    assign tap39 = 16'h0322;
    assign tap40 = 16'h0000;
    assign tap41 = 16'hFC04;
    assign tap42 = 16'hFD2F;
    assign tap43 = 16'h0344;
    assign tap44 = 16'h063D;
    assign tap45 = 16'h0000;
    assign tap46 = 16'hF675;
    assign tap47 = 16'hF816;
    assign tap48 = 16'h0BEE;
    assign tap49 = 16'h26B6;
    assign tap50 = 16'h3333;
    assign tap51 = 16'h26B6;
    assign tap52 = 16'h0BEE;
    assign tap53 = 16'hF816;
    assign tap54 = 16'hF675;
    assign tap55 = 16'h0000;
    assign tap56 = 16'h063D;
    assign tap57 = 16'h0344;
    assign tap58 = 16'hFD2F;
    assign tap59 = 16'hFC04;
    assign tap60 = 16'h0000;
    assign tap61 = 16'h0322;
    assign tap62 = 16'h01BC;
    assign tap63 = 16'hFE70;
    assign tap64 = 16'hFDB7;
    assign tap65 = 16'h0000;
    assign tap66 = 16'h01E1;
    assign tap67 = 16'h010E;
    assign tap68 = 16'hFF0A;
    assign tap69 = 16'hFE95;
    assign tap70 = 16'h0000;
    assign tap71 = 16'h012D;
    assign tap72 = 16'h00A9;
    assign tap73 = 16'hFF66;
    assign tap74 = 16'hFF1E;
    assign tap75 = 16'h0000;
    assign tap76 = 16'h00B9;
    assign tap77 = 16'h0067;
    assign tap78 = 16'hFFA3;
    assign tap79 = 16'hFF7A;
    assign tap80 = 16'h0000;
    assign tap81 = 16'h006B;
    assign tap82 = 16'h003A;
    assign tap83 = 16'hFFCD;
    assign tap84 = 16'hFFB7;
    assign tap85 = 16'h0000;
    assign tap86 = 16'h0037;
    assign tap87 = 16'h001D;
    assign tap88 = 16'hFFE7;
    assign tap89 = 16'hFFDF;
    assign tap90 = 16'h0000;
    assign tap91 = 16'h0016;
    assign tap92 = 16'h000B;
    assign tap93 = 16'hFFF8;
    assign tap94 = 16'hFFF6;
    assign tap95 = 16'h0000;
    assign tap96 = 16'h0005;
    assign tap97 = 16'h0002;
    assign tap98 = 16'hFFFF;
    assign tap99 = 16'hFFFF;
    assign tap100 = 16'h0000;
    
    
    // habilitar el calculo
    always @ (posedge ap_clk or negedge ap_rst)
    begin
        if (ap_rst == 1'b0)
        begin
            buff_cnt <= 8'd0;
            en_fir <= 1'b0;
            en_buff <= 1'b0;
            in_sample <= 8'd0;
        end
        else 
        begin
            buff_cnt <= buff_cnt + 1;
            in_sample <= x;
            en_fir <= 1'b1;
            en_buff <= 1'b1;
        end
    end

    // Circular buffer
    always @ (posedge ap_clk)
    begin
        if (en_buff == 1'b1)
        begin
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
        end
        else
        begin 
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

        end
    end
    
    // Multiply stage of FIR
    always @ (posedge ap_clk)
    begin
        if (en_fir == 1'b1)
        begin
            acc0 <= tap0 * buff0;
            acc1 <= tap1 * buff1;
            acc2 <= tap2 * buff2;
            acc3 <= tap3 * buff3;
            acc4 <= tap4 * buff4;
            acc5 <= tap5 * buff5;
            acc6 <= tap6 * buff6;
            acc7 <= tap7 * buff7;
            acc8 <= tap8 * buff8;
            acc9 <= tap9 * buff9;
            acc10 <= tap10 * buff10;
            acc11 <= tap11 * buff11;
            acc12 <= tap12 * buff12;
            acc13 <= tap13 * buff13;
            acc14 <= tap14 * buff14;
            acc15 <= tap15 * buff15;
            acc16 <= tap16 * buff16;
            acc17 <= tap17 * buff17;
            acc18 <= tap18 * buff18;
            acc19 <= tap19 * buff19;
            acc20 <= tap20 * buff20;
            acc21 <= tap21 * buff21;
            acc22 <= tap22 * buff22;
            acc23 <= tap23 * buff23;
            acc24 <= tap24 * buff24;
            acc25 <= tap25 * buff25;
            acc26 <= tap26 * buff26;
            acc27 <= tap27 * buff27;
            acc28 <= tap28 * buff28;
            acc29 <= tap29 * buff29;
            acc30 <= tap30 * buff30;
            acc31 <= tap31 * buff31;
            acc32 <= tap32 * buff32;
            acc33 <= tap33 * buff33;
            acc34 <= tap34 * buff34;
            acc35 <= tap35 * buff35;
            acc36 <= tap36 * buff36;
            acc37 <= tap37 * buff37;
            acc38 <= tap38 * buff38;
            acc39 <= tap39 * buff39;
            acc40 <= tap40 * buff40;
            acc41 <= tap41 * buff41;
            acc42 <= tap42 * buff42;
            acc43 <= tap43 * buff43;
            acc44 <= tap44 * buff44;
            acc45 <= tap45 * buff45;
            acc46 <= tap46 * buff46;
            acc47 <= tap47 * buff47;
            acc48 <= tap48 * buff48;
            acc49 <= tap49 * buff49;
            acc50 <= tap50 * buff50;
            acc51 <= tap51 * buff51;
            acc52 <= tap52 * buff52;
            acc53 <= tap53 * buff53;
            acc54 <= tap54 * buff54;
            acc55 <= tap55 * buff55;
            acc56 <= tap56 * buff56;
            acc57 <= tap57 * buff57;
            acc58 <= tap58 * buff58;
            acc59 <= tap59 * buff59;
            acc60 <= tap60 * buff60;
            acc61 <= tap61 * buff61;
            acc62 <= tap62 * buff62;
            acc63 <= tap63 * buff63;
            acc64 <= tap64 * buff64;
            acc65 <= tap65 * buff65;
            acc66 <= tap66 * buff66;
            acc67 <= tap67 * buff67;
            acc68 <= tap68 * buff68;
            acc69 <= tap69 * buff69;
            acc70 <= tap70 * buff70;
            acc71 <= tap71 * buff71;
            acc72 <= tap72 * buff72;
            acc73 <= tap73 * buff73;
            acc74 <= tap74 * buff74;
            acc75 <= tap75 * buff75;
            acc76 <= tap76 * buff76;
            acc77 <= tap77 * buff77;
            acc78 <= tap78 * buff78;
            acc79 <= tap79 * buff79;
            acc80 <= tap80 * buff80;
            acc81 <= tap81 * buff81;
            acc82 <= tap82 * buff82;
            acc83 <= tap83 * buff83;
            acc84 <= tap84 * buff84;
            acc85 <= tap85 * buff85;
            acc86 <= tap86 * buff86;
            acc87 <= tap87 * buff87;
            acc88 <= tap88 * buff88;
            acc89 <= tap89 * buff89;
            acc90 <= tap90 * buff90;
            acc91 <= tap91 * buff91;
            acc92 <= tap92 * buff92;
            acc93 <= tap93 * buff93;
            acc94 <= tap94 * buff94;
            acc95 <= tap95 * buff95;
            acc96 <= tap96 * buff96;
            acc97 <= tap97 * buff97;
            acc98 <= tap98 * buff98;
            acc99 <= tap99 * buff99;
            acc100 <= tap100 * buff100;
        end
    end
    
    // acumular los estados del filtro
    always @ (posedge ap_clk)
    begin
        if (en_fir == 1'b1)
        begin
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

        end
    end
    
endmodule

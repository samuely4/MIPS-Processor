<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(31:0)" />
        <signal name="O_ROM_DATA(20:16)" />
        <signal name="XLXN_16(4:0)" />
        <signal name="XLXN_19(31:0)" />
        <signal name="O_ROM_DATA(25:21)" />
        <signal name="O_ROM_DATA(15:0)" />
        <signal name="O_ROM_DATA(5:0)" />
        <signal name="XLXN_26(3:0)" />
        <signal name="XLXN_27(31:0)" />
        <signal name="XLXN_31(31:0)" />
        <signal name="XLXN_32(31:0)" />
        <signal name="XLXN_33(31:0)" />
        <signal name="XLXN_34(31:0)" />
        <signal name="XLXN_35(31:0)" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_42(31:0)" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46(31:0)" />
        <signal name="XLXN_47(31:0)" />
        <signal name="O_ROM_DATA(31:26)" />
        <signal name="O_ROM_DATA(31:0)" />
        <signal name="XLXN_52(31:0)" />
        <signal name="XLXN_53(31:0)" />
        <signal name="XLXN_54(31:0)" />
        <signal name="XLXN_55(31:0)" />
        <signal name="XLXN_57" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_56" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_72(1:0)" />
        <signal name="XLXN_75" />
        <signal name="O_ROM_DATA(15:11)" />
        <signal name="I_CLK" />
        <signal name="I_EN" />
        <signal name="XLXN_91" />
        <signal name="XLXN_99" />
        <signal name="XLXN_103" />
        <signal name="XLXN_111" />
        <signal name="XLXN_112" />
        <signal name="XLXN_116" />
        <signal name="XLXN_118" />
        <signal name="XLXN_119" />
        <port polarity="Input" name="I_CLK" />
        <port polarity="Input" name="I_EN" />
        <blockdef name="PC">
            <timestamp>2018-5-2T3:11:45</timestamp>
            <rect width="304" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
        </blockdef>
        <blockdef name="ROM">
            <timestamp>2018-5-2T3:12:10</timestamp>
            <rect width="432" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="496" y="-108" height="24" />
            <line x2="560" y1="-96" y2="-96" x1="496" />
        </blockdef>
        <blockdef name="REG">
            <timestamp>2018-5-2T3:12:2</timestamp>
            <rect width="496" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="560" y="-364" height="24" />
            <line x2="624" y1="-352" y2="-352" x1="560" />
            <rect width="64" x="560" y="-44" height="24" />
            <line x2="624" y1="-32" y2="-32" x1="560" />
        </blockdef>
        <blockdef name="MUX5">
            <timestamp>2018-5-2T4:12:32</timestamp>
            <rect width="336" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
        </blockdef>
        <blockdef name="MUX32">
            <timestamp>2018-5-2T3:10:38</timestamp>
            <rect width="368" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-172" height="24" />
            <line x2="496" y1="-160" y2="-160" x1="432" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2018-5-2T3:10:13</timestamp>
            <rect width="368" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="496" y1="-224" y2="-224" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
        </blockdef>
        <blockdef name="RAM">
            <timestamp>2018-5-2T3:11:55</timestamp>
            <rect width="432" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="496" y="-300" height="24" />
            <line x2="560" y1="-288" y2="-288" x1="496" />
        </blockdef>
        <blockdef name="ACU">
            <timestamp>2018-5-2T3:12:48</timestamp>
            <rect width="400" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="464" y="-108" height="24" />
            <line x2="528" y1="-96" y2="-96" x1="464" />
        </blockdef>
        <blockdef name="EXT">
            <timestamp>2018-5-2T3:10:21</timestamp>
            <rect width="352" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="DEC">
            <timestamp>2018-5-2T16:55:23</timestamp>
            <rect width="432" x="64" y="-640" height="640" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="560" y1="-608" y2="-608" x1="496" />
            <line x2="560" y1="-544" y2="-544" x1="496" />
            <line x2="560" y1="-480" y2="-480" x1="496" />
            <line x2="560" y1="-416" y2="-416" x1="496" />
            <line x2="560" y1="-352" y2="-352" x1="496" />
            <line x2="560" y1="-288" y2="-288" x1="496" />
            <line x2="560" y1="-224" y2="-224" x1="496" />
            <line x2="560" y1="-160" y2="-160" x1="496" />
            <line x2="560" y1="-96" y2="-96" x1="496" />
            <rect width="64" x="496" y="-44" height="24" />
            <line x2="560" y1="-32" y2="-32" x1="496" />
        </blockdef>
        <blockdef name="shift_left_2">
            <timestamp>2018-5-2T16:55:23</timestamp>
            <rect width="496" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="560" y="-44" height="24" />
            <line x2="624" y1="-32" y2="-32" x1="560" />
        </blockdef>
        <blockdef name="ADD2">
            <timestamp>2018-5-2T16:55:23</timestamp>
            <rect width="384" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="448" y="-108" height="24" />
            <line x2="512" y1="-96" y2="-96" x1="448" />
        </blockdef>
        <blockdef name="ADD1">
            <timestamp>2018-5-2T16:55:23</timestamp>
            <rect width="384" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="448" y="-44" height="24" />
            <line x2="512" y1="-32" y2="-32" x1="448" />
        </blockdef>
        <blockdef name="JUMP">
            <timestamp>2018-5-2T16:55:23</timestamp>
            <rect width="512" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="576" y="-108" height="24" />
            <line x2="640" y1="-96" y2="-96" x1="576" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="FSM">
            <timestamp>2018-5-2T16:55:23</timestamp>
            <rect width="336" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <block symbolname="PC" name="XLXI_1">
            <blockpin signalname="XLXN_91" name="I_PC_UPDATE" />
            <blockpin signalname="XLXN_55(31:0)" name="I_PC(31:0)" />
            <blockpin signalname="XLXN_1(31:0)" name="O_PC(31:0)" />
        </block>
        <block symbolname="ROM" name="XLXI_2">
            <blockpin signalname="XLXN_75" name="I_ROM_EN" />
            <blockpin signalname="XLXN_1(31:0)" name="I_ROM_ADDR(31:0)" />
            <blockpin signalname="O_ROM_DATA(31:0)" name="O_ROM_DATA(31:0)" />
        </block>
        <block symbolname="REG" name="XLXI_4">
            <blockpin signalname="XLXN_103" name="I_REG_EN" />
            <blockpin signalname="XLXN_119" name="I_REG_WE" />
            <blockpin signalname="O_ROM_DATA(25:21)" name="I_REG_SEL_RS(4:0)" />
            <blockpin signalname="O_ROM_DATA(20:16)" name="I_REG_SEL_RT(4:0)" />
            <blockpin signalname="XLXN_16(4:0)" name="I_REG_SEL_RD(4:0)" />
            <blockpin signalname="XLXN_31(31:0)" name="I_REG_DATA_RD(31:0)" />
            <blockpin signalname="XLXN_19(31:0)" name="O_REG_DATA_A(31:0)" />
            <blockpin signalname="XLXN_27(31:0)" name="O_REG_DATA_B(31:0)" />
        </block>
        <block symbolname="MUX5" name="XLXI_5">
            <blockpin signalname="XLXN_36" name="I_MUX_SEL" />
            <blockpin signalname="O_ROM_DATA(20:16)" name="I_MUX_0(4:0)" />
            <blockpin signalname="O_ROM_DATA(15:11)" name="I_MUX_1(4:0)" />
            <blockpin signalname="XLXN_16(4:0)" name="O_MUX_Out(4:0)" />
        </block>
        <block symbolname="MUX32" name="XLXI_6">
            <blockpin signalname="XLXN_40" name="I_MUX_SEL" />
            <blockpin signalname="XLXN_27(31:0)" name="I_MUX_0(31:0)" />
            <blockpin signalname="XLXN_33(31:0)" name="I_MUX_1(31:0)" />
            <blockpin signalname="XLXN_34(31:0)" name="O_MUX_Out(31:0)" />
        </block>
        <block symbolname="ALU" name="XLXI_7">
            <blockpin signalname="XLXN_111" name="I_ALU_EN" />
            <blockpin signalname="XLXN_26(3:0)" name="I_ALU_CTL(3:0)" />
            <blockpin signalname="XLXN_19(31:0)" name="I_ALU_A(31:0)" />
            <blockpin signalname="XLXN_34(31:0)" name="I_ALU_B(31:0)" />
            <blockpin signalname="XLXN_64" name="O_ALU_Zero" />
            <blockpin signalname="XLXN_35(31:0)" name="O_ALU_Out(31:0)" />
        </block>
        <block symbolname="RAM" name="XLXI_8">
            <blockpin signalname="XLXN_91" name="I_RAM_EN" />
            <blockpin signalname="XLXN_37" name="I_RAM_RE" />
            <blockpin signalname="XLXN_39" name="I_RAM_WE" />
            <blockpin signalname="XLXN_35(31:0)" name="I_RAM_ADDR(31:0)" />
            <blockpin signalname="XLXN_27(31:0)" name="I_RAM_DATA(31:0)" />
            <blockpin signalname="XLXN_32(31:0)" name="O_RAM_DATA(31:0)" />
        </block>
        <block symbolname="MUX32" name="XLXI_9">
            <blockpin signalname="XLXN_112" name="I_MUX_SEL" />
            <blockpin signalname="XLXN_35(31:0)" name="I_MUX_0(31:0)" />
            <blockpin signalname="XLXN_32(31:0)" name="I_MUX_1(31:0)" />
            <blockpin signalname="XLXN_31(31:0)" name="O_MUX_Out(31:0)" />
        </block>
        <block symbolname="ACU" name="XLXI_10">
            <blockpin signalname="XLXN_72(1:0)" name="I_ACU_ALUOp(1:0)" />
            <blockpin signalname="O_ROM_DATA(5:0)" name="I_ACU_Funct(5:0)" />
            <blockpin signalname="XLXN_26(3:0)" name="O_ACU_CTL(3:0)" />
        </block>
        <block symbolname="EXT" name="XLXI_11">
            <blockpin signalname="O_ROM_DATA(15:0)" name="I_EXT_16(15:0)" />
            <blockpin signalname="XLXN_33(31:0)" name="O_EXT_32(31:0)" />
        </block>
        <block symbolname="DEC" name="XLXI_12">
            <blockpin signalname="XLXN_99" name="I_DEC_EN" />
            <blockpin signalname="O_ROM_DATA(31:26)" name="I_DEC_Opcode(5:0)" />
            <blockpin signalname="XLXN_36" name="O_DEC_RegDst" />
            <blockpin signalname="XLXN_45" name="O_DEC_Jump" />
            <blockpin signalname="XLXN_56" name="O_DEC_Beq" />
            <blockpin signalname="XLXN_57" name="O_DEC_Bne" />
            <blockpin signalname="XLXN_37" name="O_DEC_MemRead" />
            <blockpin signalname="XLXN_112" name="O_DEC_MemtoReg" />
            <blockpin signalname="XLXN_39" name="O_DEC_MemWrite" />
            <blockpin signalname="XLXN_40" name="O_DEC_ALUSrc" />
            <blockpin signalname="XLXN_118" name="O_DEC_RegWrite" />
            <blockpin signalname="XLXN_72(1:0)" name="O_DEC_ALUOp(1:0)" />
        </block>
        <block symbolname="shift_left_2" name="XLXI_13">
            <blockpin signalname="XLXN_33(31:0)" name="I_SHIFT_LEFT_2(31:0)" />
            <blockpin signalname="XLXN_42(31:0)" name="O_SHIFT_LEFT_2(31:0)" />
        </block>
        <block symbolname="ADD2" name="XLXI_14">
            <blockpin signalname="XLXN_53(31:0)" name="I_ADD2_A(31:0)" />
            <blockpin signalname="XLXN_42(31:0)" name="I_ADD2_B(31:0)" />
            <blockpin signalname="XLXN_47(31:0)" name="O_ADD2_Out(31:0)" />
        </block>
        <block symbolname="ADD1" name="XLXI_15">
            <blockpin signalname="XLXN_1(31:0)" name="I_ADD1_A(31:0)" />
            <blockpin signalname="XLXN_53(31:0)" name="O_ADD1_Out(31:0)" />
        </block>
        <block symbolname="MUX32" name="XLXI_16">
            <blockpin signalname="XLXN_68" name="I_MUX_SEL" />
            <blockpin signalname="XLXN_53(31:0)" name="I_MUX_0(31:0)" />
            <blockpin signalname="XLXN_47(31:0)" name="I_MUX_1(31:0)" />
            <blockpin signalname="XLXN_46(31:0)" name="O_MUX_Out(31:0)" />
        </block>
        <block symbolname="MUX32" name="XLXI_17">
            <blockpin signalname="XLXN_45" name="I_MUX_SEL" />
            <blockpin signalname="XLXN_46(31:0)" name="I_MUX_0(31:0)" />
            <blockpin signalname="XLXN_54(31:0)" name="I_MUX_1(31:0)" />
            <blockpin signalname="XLXN_55(31:0)" name="O_MUX_Out(31:0)" />
        </block>
        <block symbolname="shift_left_2" name="XLXI_18">
            <blockpin signalname="O_ROM_DATA(31:0)" name="I_SHIFT_LEFT_2(31:0)" />
            <blockpin signalname="XLXN_52(31:0)" name="O_SHIFT_LEFT_2(31:0)" />
        </block>
        <block symbolname="JUMP" name="XLXI_19">
            <blockpin signalname="XLXN_53(31:0)" name="I_JUMP_PC(31:0)" />
            <blockpin signalname="XLXN_52(31:0)" name="I_JUMP_SHIFT_INST(31:0)" />
            <blockpin signalname="XLXN_54(31:0)" name="O_JUMP_ADDR(31:0)" />
        </block>
        <block symbolname="and3" name="XLXI_22">
            <blockpin signalname="XLXN_61" name="I0" />
            <blockpin signalname="XLXN_57" name="I1" />
            <blockpin signalname="XLXN_62" name="I2" />
            <blockpin signalname="XLXN_67" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_23">
            <blockpin signalname="XLXN_56" name="I0" />
            <blockpin signalname="XLXN_65" name="I1" />
            <blockpin signalname="XLXN_64" name="I2" />
            <blockpin signalname="XLXN_66" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_24">
            <blockpin signalname="XLXN_67" name="I0" />
            <blockpin signalname="XLXN_66" name="I1" />
            <blockpin signalname="XLXN_68" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_25">
            <blockpin signalname="XLXN_56" name="I" />
            <blockpin signalname="XLXN_62" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_26">
            <blockpin signalname="XLXN_57" name="I" />
            <blockpin signalname="XLXN_65" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_27">
            <blockpin signalname="XLXN_64" name="I" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="FSM" name="XLXI_28">
            <blockpin signalname="I_CLK" name="I_FSM_CLK" />
            <blockpin signalname="I_EN" name="I_FSM_EN" />
            <blockpin signalname="O_ROM_DATA(31:0)" name="I_FSM_INST(31:0)" />
            <blockpin signalname="XLXN_75" name="O_FSM_IF" />
            <blockpin signalname="XLXN_99" name="O_FSM_ID" />
            <blockpin signalname="XLXN_111" name="O_FSM_EX" />
            <blockpin signalname="XLXN_91" name="O_FSM_ME" />
            <blockpin signalname="XLXN_116" name="O_FSM_WB" />
        </block>
        <block symbolname="or2" name="XLXI_32">
            <blockpin signalname="XLXN_116" name="I0" />
            <blockpin signalname="XLXN_99" name="I1" />
            <blockpin signalname="XLXN_103" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_33">
            <blockpin signalname="XLXN_116" name="I0" />
            <blockpin signalname="XLXN_118" name="I1" />
            <blockpin signalname="XLXN_119" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="112" y="2128" name="XLXI_1" orien="R0">
        </instance>
        <instance x="592" y="2128" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(31:0)">
            <wire x2="544" y1="688" y2="688" x1="464" />
            <wire x2="464" y1="688" y2="1680" x1="464" />
            <wire x2="560" y1="1680" y2="1680" x1="464" />
            <wire x2="560" y1="1680" y2="2032" x1="560" />
            <wire x2="560" y1="2032" y2="2096" x1="560" />
            <wire x2="592" y1="2096" y2="2096" x1="560" />
            <wire x2="560" y1="2032" y2="2032" x1="544" />
        </branch>
        <instance x="1264" y="2144" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_16(4:0)">
            <wire x2="1760" y1="1984" y2="1984" x1="1728" />
            <wire x2="1760" y1="1984" y2="2112" x1="1760" />
            <wire x2="1808" y1="2112" y2="2112" x1="1760" />
        </branch>
        <branch name="O_ROM_DATA(20:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="2240" type="branch" />
            <wire x2="1744" y1="2240" y2="2240" x1="1728" />
            <wire x2="1808" y1="2048" y2="2048" x1="1744" />
            <wire x2="1744" y1="2048" y2="2240" x1="1744" />
        </branch>
        <branch name="XLXN_19(31:0)">
            <wire x2="2944" y1="1856" y2="1856" x1="2432" />
            <wire x2="2960" y1="1728" y2="1728" x1="2944" />
            <wire x2="2944" y1="1728" y2="1856" x1="2944" />
        </branch>
        <branch name="O_ROM_DATA(25:21)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="2288" type="branch" />
            <wire x2="1792" y1="2288" y2="2288" x1="1696" />
            <wire x2="1792" y1="1984" y2="2288" x1="1792" />
            <wire x2="1808" y1="1984" y2="1984" x1="1792" />
        </branch>
        <branch name="O_ROM_DATA(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="2480" type="branch" />
            <wire x2="864" y1="2480" y2="2480" x1="736" />
        </branch>
        <instance x="1648" y="2576" name="XLXI_10" orien="R0">
        </instance>
        <instance x="864" y="2512" name="XLXI_11" orien="R0">
        </instance>
        <branch name="O_ROM_DATA(5:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="2544" type="branch" />
            <wire x2="1648" y1="2544" y2="2544" x1="1488" />
        </branch>
        <instance x="2304" y="2704" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_26(3:0)">
            <wire x2="2960" y1="1664" y2="1664" x1="1776" />
            <wire x2="1776" y1="1664" y2="1696" x1="1776" />
            <wire x2="1776" y1="1696" y2="1760" x1="1776" />
            <wire x2="1776" y1="1760" y2="2384" x1="1776" />
            <wire x2="2192" y1="2384" y2="2384" x1="1776" />
            <wire x2="2192" y1="2384" y2="2480" x1="2192" />
            <wire x2="2192" y1="2480" y2="2480" x1="2176" />
        </branch>
        <branch name="XLXN_27(31:0)">
            <wire x2="2224" y1="2304" y2="2672" x1="2224" />
            <wire x2="2304" y1="2672" y2="2672" x1="2224" />
            <wire x2="2464" y1="2304" y2="2304" x1="2224" />
            <wire x2="2464" y1="2176" y2="2176" x1="2432" />
            <wire x2="2464" y1="2176" y2="2304" x1="2464" />
            <wire x2="2512" y1="2016" y2="2016" x1="2464" />
            <wire x2="2464" y1="2016" y2="2176" x1="2464" />
        </branch>
        <instance x="2960" y="1824" name="XLXI_7" orien="R0">
        </instance>
        <instance x="2912" y="2320" name="XLXI_9" orien="R0">
        </instance>
        <instance x="1808" y="2208" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_31(31:0)">
            <wire x2="1808" y1="2176" y2="2176" x1="1664" />
            <wire x2="1664" y1="2176" y2="2352" x1="1664" />
            <wire x2="3488" y1="2352" y2="2352" x1="1664" />
            <wire x2="3488" y1="2160" y2="2160" x1="3408" />
            <wire x2="3488" y1="2160" y2="2352" x1="3488" />
        </branch>
        <branch name="XLXN_32(31:0)">
            <wire x2="2880" y1="2416" y2="2416" x1="2864" />
            <wire x2="2880" y1="2288" y2="2416" x1="2880" />
            <wire x2="2912" y1="2288" y2="2288" x1="2880" />
        </branch>
        <instance x="2512" y="2112" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_33(31:0)">
            <wire x2="48" y1="960" y2="2608" x1="48" />
            <wire x2="1424" y1="2608" y2="2608" x1="48" />
            <wire x2="1504" y1="960" y2="960" x1="48" />
            <wire x2="1424" y1="2480" y2="2480" x1="1344" />
            <wire x2="1424" y1="2480" y2="2608" x1="1424" />
            <wire x2="1424" y1="2320" y2="2480" x1="1424" />
            <wire x2="2496" y1="2320" y2="2320" x1="1424" />
            <wire x2="2496" y1="2080" y2="2320" x1="2496" />
            <wire x2="2512" y1="2080" y2="2080" x1="2496" />
        </branch>
        <branch name="XLXN_34(31:0)">
            <wire x2="2864" y1="1504" y2="1792" x1="2864" />
            <wire x2="2960" y1="1792" y2="1792" x1="2864" />
            <wire x2="3488" y1="1504" y2="1504" x1="2864" />
            <wire x2="3488" y1="1504" y2="1952" x1="3488" />
            <wire x2="3488" y1="1952" y2="1952" x1="3008" />
        </branch>
        <branch name="XLXN_35(31:0)">
            <wire x2="2240" y1="2336" y2="2608" x1="2240" />
            <wire x2="2304" y1="2608" y2="2608" x1="2240" />
            <wire x2="3504" y1="2336" y2="2336" x1="2240" />
            <wire x2="3504" y1="2336" y2="2368" x1="3504" />
            <wire x2="2912" y1="2224" y2="2224" x1="2848" />
            <wire x2="2848" y1="2224" y2="2368" x1="2848" />
            <wire x2="3504" y1="2368" y2="2368" x1="2848" />
            <wire x2="3504" y1="1792" y2="1792" x1="3456" />
            <wire x2="3504" y1="1792" y2="2336" x1="3504" />
        </branch>
        <instance x="544" y="1664" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_36">
            <wire x2="1184" y1="1056" y2="1056" x1="1104" />
            <wire x2="1184" y1="1056" y2="1984" x1="1184" />
            <wire x2="1264" y1="1984" y2="1984" x1="1184" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="1248" y1="1312" y2="1312" x1="1104" />
            <wire x2="1248" y1="1312" y2="2272" x1="1248" />
            <wire x2="2256" y1="2272" y2="2272" x1="1248" />
            <wire x2="2256" y1="2272" y2="2480" x1="2256" />
            <wire x2="2304" y1="2480" y2="2480" x1="2256" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="1200" y1="1440" y2="1440" x1="1104" />
            <wire x2="1200" y1="1440" y2="2256" x1="1200" />
            <wire x2="2288" y1="2256" y2="2256" x1="1200" />
            <wire x2="2288" y1="2256" y2="2544" x1="2288" />
            <wire x2="2304" y1="2544" y2="2544" x1="2288" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="2496" y1="1504" y2="1504" x1="1104" />
            <wire x2="2496" y1="1504" y2="1952" x1="2496" />
            <wire x2="2512" y1="1952" y2="1952" x1="2496" />
        </branch>
        <instance x="1504" y="992" name="XLXI_13" orien="R0">
        </instance>
        <instance x="2272" y="1024" name="XLXI_14" orien="R0">
        </instance>
        <branch name="XLXN_42(31:0)">
            <wire x2="2192" y1="960" y2="960" x1="2128" />
            <wire x2="2192" y1="960" y2="992" x1="2192" />
            <wire x2="2272" y1="992" y2="992" x1="2192" />
        </branch>
        <instance x="2320" y="608" name="XLXI_16" orien="R0">
        </instance>
        <instance x="2912" y="608" name="XLXI_17" orien="R0">
        </instance>
        <branch name="XLXN_45">
            <wire x2="2880" y1="1120" y2="1120" x1="1104" />
            <wire x2="2880" y1="448" y2="1120" x1="2880" />
            <wire x2="2912" y1="448" y2="448" x1="2880" />
        </branch>
        <branch name="XLXN_46(31:0)">
            <wire x2="2864" y1="448" y2="448" x1="2816" />
            <wire x2="2864" y1="448" y2="512" x1="2864" />
            <wire x2="2912" y1="512" y2="512" x1="2864" />
        </branch>
        <branch name="XLXN_47(31:0)">
            <wire x2="2256" y1="352" y2="576" x1="2256" />
            <wire x2="2320" y1="576" y2="576" x1="2256" />
            <wire x2="2848" y1="352" y2="352" x1="2256" />
            <wire x2="2848" y1="352" y2="928" x1="2848" />
            <wire x2="2848" y1="928" y2="928" x1="2784" />
        </branch>
        <branch name="O_ROM_DATA(31:26)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="336" y="1632" type="branch" />
            <wire x2="544" y1="1632" y2="1632" x1="336" />
        </branch>
        <branch name="O_ROM_DATA(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1840" type="branch" />
            <wire x2="1168" y1="1840" y2="1840" x1="1024" />
            <wire x2="1168" y1="1840" y2="2032" x1="1168" />
            <wire x2="1168" y1="2032" y2="2032" x1="1152" />
        </branch>
        <instance x="592" y="272" name="XLXI_18" orien="R0">
        </instance>
        <instance x="1408" y="304" name="XLXI_19" orien="R0">
        </instance>
        <branch name="O_ROM_DATA(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="240" type="branch" />
            <wire x2="592" y1="240" y2="240" x1="400" />
        </branch>
        <branch name="XLXN_52(31:0)">
            <wire x2="1312" y1="240" y2="240" x1="1216" />
            <wire x2="1312" y1="240" y2="272" x1="1312" />
            <wire x2="1408" y1="272" y2="272" x1="1312" />
        </branch>
        <branch name="XLXN_53(31:0)">
            <wire x2="1632" y1="688" y2="688" x1="1056" />
            <wire x2="1328" y1="112" y2="208" x1="1328" />
            <wire x2="1408" y1="208" y2="208" x1="1328" />
            <wire x2="2288" y1="112" y2="112" x1="1328" />
            <wire x2="2288" y1="112" y2="608" x1="2288" />
            <wire x2="1632" y1="608" y2="688" x1="1632" />
            <wire x2="2080" y1="608" y2="608" x1="1632" />
            <wire x2="2160" y1="608" y2="608" x1="2080" />
            <wire x2="2288" y1="608" y2="608" x1="2160" />
            <wire x2="2080" y1="608" y2="928" x1="2080" />
            <wire x2="2272" y1="928" y2="928" x1="2080" />
            <wire x2="2160" y1="512" y2="608" x1="2160" />
            <wire x2="2320" y1="512" y2="512" x1="2160" />
        </branch>
        <branch name="XLXN_54(31:0)">
            <wire x2="2832" y1="208" y2="208" x1="2048" />
            <wire x2="2832" y1="208" y2="576" x1="2832" />
            <wire x2="2912" y1="576" y2="576" x1="2832" />
        </branch>
        <branch name="XLXN_55(31:0)">
            <wire x2="96" y1="832" y2="2096" x1="96" />
            <wire x2="112" y1="2096" y2="2096" x1="96" />
            <wire x2="3472" y1="832" y2="832" x1="96" />
            <wire x2="3472" y1="448" y2="448" x1="3408" />
            <wire x2="3472" y1="448" y2="832" x1="3472" />
        </branch>
        <instance x="2576" y="1552" name="XLXI_22" orien="R0" />
        <instance x="2576" y="1344" name="XLXI_23" orien="R0" />
        <instance x="3072" y="1424" name="XLXI_24" orien="R0" />
        <instance x="1808" y="1216" name="XLXI_25" orien="R0" />
        <instance x="1824" y="1312" name="XLXI_26" orien="R0" />
        <instance x="1824" y="1456" name="XLXI_27" orien="R0" />
        <branch name="XLXN_57">
            <wire x2="1456" y1="1248" y2="1248" x1="1104" />
            <wire x2="1456" y1="1248" y2="1280" x1="1456" />
            <wire x2="1824" y1="1280" y2="1280" x1="1456" />
            <wire x2="1456" y1="1280" y2="1360" x1="1456" />
            <wire x2="2384" y1="1360" y2="1360" x1="1456" />
            <wire x2="2384" y1="1360" y2="1424" x1="2384" />
            <wire x2="2576" y1="1424" y2="1424" x1="2384" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="2304" y1="1424" y2="1424" x1="2048" />
            <wire x2="2304" y1="1424" y2="1488" x1="2304" />
            <wire x2="2576" y1="1488" y2="1488" x1="2304" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="2400" y1="1184" y2="1184" x1="2032" />
            <wire x2="2400" y1="1184" y2="1360" x1="2400" />
            <wire x2="2576" y1="1360" y2="1360" x1="2400" />
        </branch>
        <branch name="XLXN_56">
            <wire x2="1104" y1="1184" y2="1216" x1="1104" />
            <wire x2="1808" y1="1216" y2="1216" x1="1104" />
            <wire x2="1808" y1="1216" y2="1232" x1="1808" />
            <wire x2="2384" y1="1232" y2="1232" x1="1808" />
            <wire x2="2384" y1="1232" y2="1280" x1="2384" />
            <wire x2="2576" y1="1280" y2="1280" x1="2384" />
            <wire x2="1808" y1="1184" y2="1216" x1="1808" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="1744" y1="1088" y2="1424" x1="1744" />
            <wire x2="1824" y1="1424" y2="1424" x1="1744" />
            <wire x2="3504" y1="1088" y2="1088" x1="1744" />
            <wire x2="3504" y1="1088" y2="1104" x1="3504" />
            <wire x2="3504" y1="1104" y2="1600" x1="3504" />
            <wire x2="2576" y1="1104" y2="1152" x1="2576" />
            <wire x2="3504" y1="1104" y2="1104" x1="2576" />
            <wire x2="3504" y1="1600" y2="1600" x1="3456" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="2304" y1="1280" y2="1280" x1="2048" />
            <wire x2="2304" y1="1216" y2="1280" x1="2304" />
            <wire x2="2576" y1="1216" y2="1216" x1="2304" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="2944" y1="1216" y2="1216" x1="2832" />
            <wire x2="2944" y1="1216" y2="1296" x1="2944" />
            <wire x2="3072" y1="1296" y2="1296" x1="2944" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="2944" y1="1424" y2="1424" x1="2832" />
            <wire x2="2944" y1="1360" y2="1424" x1="2944" />
            <wire x2="3072" y1="1360" y2="1360" x1="2944" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="2320" y1="448" y2="448" x1="2272" />
            <wire x2="2272" y1="448" y2="688" x1="2272" />
            <wire x2="3392" y1="688" y2="688" x1="2272" />
            <wire x2="3392" y1="688" y2="1328" x1="3392" />
            <wire x2="3392" y1="1328" y2="1328" x1="3328" />
        </branch>
        <instance x="544" y="720" name="XLXI_15" orien="R0">
        </instance>
        <instance x="160" y="640" name="XLXI_28" orien="R0">
        </instance>
        <branch name="O_ROM_DATA(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="48" y="608" type="branch" />
            <wire x2="160" y1="608" y2="608" x1="48" />
        </branch>
        <branch name="XLXN_72(1:0)">
            <wire x2="1232" y1="1632" y2="1632" x1="1104" />
            <wire x2="1232" y1="1632" y2="2224" x1="1232" />
            <wire x2="1488" y1="2224" y2="2224" x1="1232" />
            <wire x2="1488" y1="2224" y2="2480" x1="1488" />
            <wire x2="1648" y1="2480" y2="2480" x1="1488" />
        </branch>
        <branch name="XLXN_75">
            <wire x2="576" y1="1936" y2="2032" x1="576" />
            <wire x2="592" y1="2032" y2="2032" x1="576" />
            <wire x2="1152" y1="1936" y2="1936" x1="576" />
            <wire x2="1152" y1="352" y2="352" x1="624" />
            <wire x2="1152" y1="352" y2="1936" x1="1152" />
        </branch>
        <branch name="O_ROM_DATA(20:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="2176" type="branch" />
            <wire x2="1184" y1="2176" y2="2176" x1="1120" />
            <wire x2="1184" y1="2048" y2="2176" x1="1184" />
            <wire x2="1264" y1="2048" y2="2048" x1="1184" />
        </branch>
        <branch name="O_ROM_DATA(15:11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="2256" type="branch" />
            <wire x2="1168" y1="2256" y2="2256" x1="1136" />
            <wire x2="1168" y1="2112" y2="2256" x1="1168" />
            <wire x2="1264" y1="2112" y2="2112" x1="1168" />
        </branch>
        <branch name="I_CLK">
            <wire x2="160" y1="352" y2="352" x1="128" />
        </branch>
        <iomarker fontsize="28" x="128" y="352" name="I_CLK" orien="R180" />
        <branch name="I_EN">
            <wire x2="160" y1="480" y2="480" x1="128" />
        </branch>
        <iomarker fontsize="28" x="128" y="480" name="I_EN" orien="R180" />
        <branch name="XLXN_91">
            <wire x2="32" y1="1952" y2="2032" x1="32" />
            <wire x2="112" y1="2032" y2="2032" x1="32" />
            <wire x2="1120" y1="1952" y2="1952" x1="32" />
            <wire x2="1104" y1="800" y2="800" x1="80" />
            <wire x2="80" y1="800" y2="2416" x1="80" />
            <wire x2="2304" y1="2416" y2="2416" x1="80" />
            <wire x2="1104" y1="544" y2="544" x1="624" />
            <wire x2="1120" y1="544" y2="544" x1="1104" />
            <wire x2="1120" y1="544" y2="1952" x1="1120" />
            <wire x2="1104" y1="544" y2="800" x1="1104" />
        </branch>
        <branch name="XLXN_99">
            <wire x2="480" y1="976" y2="1056" x1="480" />
            <wire x2="544" y1="1056" y2="1056" x1="480" />
            <wire x2="1088" y1="976" y2="976" x1="480" />
            <wire x2="1088" y1="416" y2="416" x1="624" />
            <wire x2="1088" y1="416" y2="432" x1="1088" />
            <wire x2="1088" y1="432" y2="976" x1="1088" />
            <wire x2="1392" y1="432" y2="432" x1="1088" />
        </branch>
        <instance x="1392" y="560" name="XLXI_32" orien="R0" />
        <branch name="XLXN_103">
            <wire x2="1712" y1="336" y2="336" x1="1312" />
            <wire x2="1712" y1="336" y2="464" x1="1712" />
            <wire x2="1312" y1="336" y2="1856" x1="1312" />
            <wire x2="1808" y1="1856" y2="1856" x1="1312" />
            <wire x2="1712" y1="464" y2="464" x1="1648" />
        </branch>
        <branch name="XLXN_111">
            <wire x2="1168" y1="480" y2="480" x1="624" />
            <wire x2="1168" y1="480" y2="1600" x1="1168" />
            <wire x2="2960" y1="1600" y2="1600" x1="1168" />
        </branch>
        <branch name="XLXN_112">
            <wire x2="2480" y1="1376" y2="1376" x1="1104" />
            <wire x2="2480" y1="1376" y2="2160" x1="2480" />
            <wire x2="2912" y1="2160" y2="2160" x1="2480" />
        </branch>
        <branch name="XLXN_116">
            <wire x2="640" y1="608" y2="608" x1="624" />
            <wire x2="1136" y1="608" y2="608" x1="640" />
            <wire x2="1136" y1="608" y2="1744" x1="1136" />
            <wire x2="1488" y1="1744" y2="1744" x1="1136" />
            <wire x2="1392" y1="496" y2="496" x1="640" />
            <wire x2="640" y1="496" y2="608" x1="640" />
        </branch>
        <instance x="1488" y="1808" name="XLXI_33" orien="R0" />
        <branch name="XLXN_118">
            <wire x2="1296" y1="1568" y2="1568" x1="1104" />
            <wire x2="1296" y1="1568" y2="1680" x1="1296" />
            <wire x2="1488" y1="1680" y2="1680" x1="1296" />
        </branch>
        <branch name="XLXN_119">
            <wire x2="1760" y1="1712" y2="1712" x1="1744" />
            <wire x2="1760" y1="1712" y2="1920" x1="1760" />
            <wire x2="1808" y1="1920" y2="1920" x1="1760" />
        </branch>
    </sheet>
</drawing>
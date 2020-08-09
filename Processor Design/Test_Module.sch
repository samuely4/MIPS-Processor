<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="I_EN" />
        <signal name="XLXN_4(1:0)" />
        <signal name="O_ALUCtl(3:0)" />
        <signal name="O_RegDst" />
        <signal name="O_Jump" />
        <signal name="O_Beq" />
        <signal name="O_Bne" />
        <signal name="O_MemRead" />
        <signal name="O_MemtoReg" />
        <signal name="O_MemWrite" />
        <signal name="O_ALUSrc" />
        <signal name="O_RegWrite" />
        <signal name="I_Instr(31:0)" />
        <signal name="I_Instr(31:26)" />
        <signal name="I_Instr(5:0)" />
        <port polarity="Input" name="I_EN" />
        <port polarity="Output" name="O_ALUCtl(3:0)" />
        <port polarity="Output" name="O_RegDst" />
        <port polarity="Output" name="O_Jump" />
        <port polarity="Output" name="O_Beq" />
        <port polarity="Output" name="O_Bne" />
        <port polarity="Output" name="O_MemRead" />
        <port polarity="Output" name="O_MemtoReg" />
        <port polarity="Output" name="O_MemWrite" />
        <port polarity="Output" name="O_ALUSrc" />
        <port polarity="Output" name="O_RegWrite" />
        <port polarity="Input" name="I_Instr(31:0)" />
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
        <blockdef name="DEC">
            <timestamp>2018-5-2T3:12:57</timestamp>
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
        <block symbolname="ACU" name="XLXI_1">
            <blockpin signalname="XLXN_4(1:0)" name="I_ACU_ALUOp(1:0)" />
            <blockpin signalname="I_Instr(5:0)" name="I_ACU_Funct(5:0)" />
            <blockpin signalname="O_ALUCtl(3:0)" name="O_ACU_CTL(3:0)" />
        </block>
        <block symbolname="DEC" name="XLXI_2">
            <blockpin signalname="I_EN" name="I_DEC_EN" />
            <blockpin signalname="I_Instr(31:26)" name="I_DEC_Opcode(5:0)" />
            <blockpin signalname="O_RegDst" name="O_DEC_RegDst" />
            <blockpin signalname="O_Jump" name="O_DEC_Jump" />
            <blockpin signalname="O_Beq" name="O_DEC_Beq" />
            <blockpin signalname="O_Bne" name="O_DEC_Bne" />
            <blockpin signalname="O_MemRead" name="O_DEC_MemRead" />
            <blockpin signalname="O_MemtoReg" name="O_DEC_MemtoReg" />
            <blockpin signalname="O_MemWrite" name="O_DEC_MemWrite" />
            <blockpin signalname="O_ALUSrc" name="O_DEC_ALUSrc" />
            <blockpin signalname="O_RegWrite" name="O_DEC_RegWrite" />
            <blockpin signalname="XLXN_4(1:0)" name="O_DEC_ALUOp(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2160" y="1568" name="XLXI_1" orien="R0">
        </instance>
        <instance x="608" y="1728" name="XLXI_2" orien="R0">
        </instance>
        <branch name="I_EN">
            <wire x2="592" y1="1120" y2="1120" x1="576" />
            <wire x2="608" y1="1120" y2="1120" x1="592" />
        </branch>
        <iomarker fontsize="28" x="576" y="1120" name="I_EN" orien="R180" />
        <branch name="XLXN_4(1:0)">
            <wire x2="1200" y1="1696" y2="1696" x1="1168" />
            <wire x2="1664" y1="1696" y2="1696" x1="1200" />
            <wire x2="1664" y1="1472" y2="1696" x1="1664" />
            <wire x2="2128" y1="1472" y2="1472" x1="1664" />
            <wire x2="2144" y1="1472" y2="1472" x1="2128" />
            <wire x2="2160" y1="1472" y2="1472" x1="2144" />
        </branch>
        <branch name="O_ALUCtl(3:0)">
            <wire x2="2720" y1="1472" y2="1472" x1="2688" />
        </branch>
        <iomarker fontsize="28" x="2720" y="1472" name="O_ALUCtl(3:0)" orien="R0" />
        <branch name="O_RegDst">
            <wire x2="1184" y1="1120" y2="1120" x1="1168" />
            <wire x2="1200" y1="1120" y2="1120" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1120" name="O_RegDst" orien="R0" />
        <branch name="O_Jump">
            <wire x2="1184" y1="1184" y2="1184" x1="1168" />
            <wire x2="1200" y1="1184" y2="1184" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1184" name="O_Jump" orien="R0" />
        <branch name="O_Beq">
            <wire x2="1184" y1="1248" y2="1248" x1="1168" />
            <wire x2="1200" y1="1248" y2="1248" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1248" name="O_Beq" orien="R0" />
        <branch name="O_Bne">
            <wire x2="1184" y1="1312" y2="1312" x1="1168" />
            <wire x2="1200" y1="1312" y2="1312" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1312" name="O_Bne" orien="R0" />
        <branch name="O_MemRead">
            <wire x2="1184" y1="1376" y2="1376" x1="1168" />
            <wire x2="1200" y1="1376" y2="1376" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1376" name="O_MemRead" orien="R0" />
        <branch name="O_MemtoReg">
            <wire x2="1184" y1="1440" y2="1440" x1="1168" />
            <wire x2="1200" y1="1440" y2="1440" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1440" name="O_MemtoReg" orien="R0" />
        <branch name="O_MemWrite">
            <wire x2="1184" y1="1504" y2="1504" x1="1168" />
            <wire x2="1200" y1="1504" y2="1504" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1504" name="O_MemWrite" orien="R0" />
        <branch name="O_ALUSrc">
            <wire x2="1184" y1="1568" y2="1568" x1="1168" />
            <wire x2="1200" y1="1568" y2="1568" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1568" name="O_ALUSrc" orien="R0" />
        <branch name="O_RegWrite">
            <wire x2="1184" y1="1632" y2="1632" x1="1168" />
            <wire x2="1200" y1="1632" y2="1632" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1632" name="O_RegWrite" orien="R0" />
        <iomarker fontsize="28" x="496" y="816" name="I_Instr(31:0)" orien="R180" />
        <branch name="I_Instr(31:0)">
            <wire x2="784" y1="816" y2="816" x1="496" />
        </branch>
        <branch name="I_Instr(31:26)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="496" y="1696" type="branch" />
            <wire x2="496" y1="1696" y2="1696" x1="464" />
            <wire x2="608" y1="1696" y2="1696" x1="496" />
        </branch>
        <branch name="I_Instr(5:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="1536" type="branch" />
            <wire x2="2048" y1="1536" y2="1536" x1="2000" />
            <wire x2="2160" y1="1536" y2="1536" x1="2048" />
        </branch>
    </sheet>
</drawing>
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Sep 29 17:25:15 2019
// Host        : shantanu-Inspiron-5577 running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/shantanu/TIFR/carry4_generate/carry4_generate.sim/sim_1/impl/timing/xsim/sim_time_impl.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "5f345091" *) 
(* NotValidForBitStream *)
module top
   (CO,
    O,
    CYINIT);
  output [3:0]CO;
  output [3:0]O;
  input CYINIT;

  wire [3:0]CO;
  wire [3:3]\CO1[0] ;
  wire [3:3]\CO1[1] ;
  wire [3:3]\CO1[2] ;
  wire [3:3]\CO1[3] ;
  wire [3:3]\CO1[4] ;
  wire [3:3]\CO1[5] ;
  wire [3:3]\CO1[6] ;
  wire [3:3]\CO1[7] ;
  wire [3:3]\CO1[8] ;
  wire [3:0]CO_OBUF;
  wire CYINIT;
  wire CYINIT_IBUF;
  wire [3:0]O;
  wire [3:0]O_OBUF;
  wire [2:0]NLW_CARRY4_inst1_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY4_inst1_O_UNCONNECTED;
  wire [2:0]\NLW_genblk1[1].CARRY4_inst_CO_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[1].CARRY4_inst_O_UNCONNECTED ;
  wire [2:0]\NLW_genblk1[2].CARRY4_inst_CO_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[2].CARRY4_inst_O_UNCONNECTED ;
  wire [2:0]\NLW_genblk1[3].CARRY4_inst_CO_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[3].CARRY4_inst_O_UNCONNECTED ;
  wire [2:0]\NLW_genblk1[4].CARRY4_inst_CO_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[4].CARRY4_inst_O_UNCONNECTED ;
  wire [2:0]\NLW_genblk1[5].CARRY4_inst_CO_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[5].CARRY4_inst_O_UNCONNECTED ;
  wire [2:0]\NLW_genblk1[6].CARRY4_inst_CO_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[6].CARRY4_inst_O_UNCONNECTED ;
  wire [2:0]\NLW_genblk1[7].CARRY4_inst_CO_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[7].CARRY4_inst_O_UNCONNECTED ;
  wire [2:0]\NLW_genblk1[8].CARRY4_inst_CO_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[8].CARRY4_inst_O_UNCONNECTED ;

initial begin
 $sdf_annotate("sim_time_impl.sdf",,,,"tool_control");
end
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst1
       (.CI(1'b0),
        .CO({\CO1[0] ,NLW_CARRY4_inst1_CO_UNCONNECTED[2:0]}),
        .CYINIT(CYINIT_IBUF),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY4_inst1_O_UNCONNECTED[3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst2
       (.CI(\CO1[8] ),
        .CO(CO_OBUF),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O_OBUF),
        .S({1'b1,1'b1,1'b1,1'b1}));
  OBUF \CO_OBUF[0]_inst 
       (.I(CO_OBUF[0]),
        .O(CO[0]));
  OBUF \CO_OBUF[1]_inst 
       (.I(CO_OBUF[1]),
        .O(CO[1]));
  OBUF \CO_OBUF[2]_inst 
       (.I(CO_OBUF[2]),
        .O(CO[2]));
  OBUF \CO_OBUF[3]_inst 
       (.I(CO_OBUF[3]),
        .O(CO[3]));
  IBUF CYINIT_IBUF_inst
       (.I(CYINIT),
        .O(CYINIT_IBUF));
  OBUF \O_OBUF[0]_inst 
       (.I(O_OBUF[0]),
        .O(O[0]));
  OBUF \O_OBUF[1]_inst 
       (.I(O_OBUF[1]),
        .O(O[1]));
  OBUF \O_OBUF[2]_inst 
       (.I(O_OBUF[2]),
        .O(O[2]));
  OBUF \O_OBUF[3]_inst 
       (.I(O_OBUF[3]),
        .O(O[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \genblk1[1].CARRY4_inst 
       (.CI(\CO1[0] ),
        .CO({\CO1[1] ,\NLW_genblk1[1].CARRY4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[1].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \genblk1[2].CARRY4_inst 
       (.CI(\CO1[1] ),
        .CO({\CO1[2] ,\NLW_genblk1[2].CARRY4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[2].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \genblk1[3].CARRY4_inst 
       (.CI(\CO1[2] ),
        .CO({\CO1[3] ,\NLW_genblk1[3].CARRY4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[3].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \genblk1[4].CARRY4_inst 
       (.CI(\CO1[3] ),
        .CO({\CO1[4] ,\NLW_genblk1[4].CARRY4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[4].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \genblk1[5].CARRY4_inst 
       (.CI(\CO1[4] ),
        .CO({\CO1[5] ,\NLW_genblk1[5].CARRY4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[5].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \genblk1[6].CARRY4_inst 
       (.CI(\CO1[5] ),
        .CO({\CO1[6] ,\NLW_genblk1[6].CARRY4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[6].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \genblk1[7].CARRY4_inst 
       (.CI(\CO1[6] ),
        .CO({\CO1[7] ,\NLW_genblk1[7].CARRY4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[7].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \genblk1[8].CARRY4_inst 
       (.CI(\CO1[7] ),
        .CO({\CO1[8] ,\NLW_genblk1[8].CARRY4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[8].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

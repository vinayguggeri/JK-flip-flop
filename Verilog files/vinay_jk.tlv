\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/    /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/      /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/    

//Your Verilog/System Verilog Code Starts Here:
module vinay_jk(j, k, clk, q, qb);
 input j, k, clk;
 output reg q, qb;
 initial
 begin
 q=1'b0;
 qb=1'b1;
 end
 
 always@(posedge clk)
  begin
 case({j,k})
2'd0:q=q;
2'd1:q=1'b0;
2'd2:q=1'b1;
2'd3:q=~q;
 endcase
qb=~q;
 end
 
 endmodule


//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  j;//input
		logic  k;//input
		logic  q;//output
		logic  qb;//output
//The $random() can be replaced if user wants to assign values
		assign j = $random();
		assign k = $random();
		vinay_jk vinay_jk(.j(j), .k(k), .clk(clk), .q(q), .qb(qb));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule

# Design and Implementation of Mixed Signals Circuit
# JK Flip Flop
## Table of contents
#### 1.[Abstract]()
#### 2.[Reference Circiut Diagram]()
#### 3.[Reference Waveforms]()
#### 4.[Circuit Details]()
#### 5.[Software Used]()
  #### -[eSim]()
  #### -[NgSpice]()
  #### -[Makerchip]()
  #### -[Verilator]()
#### 6.[Circuit Diagram in eSim]()
#### 7.[Verilog Code]()
#### 8.[Makerchip]()
#### 9.[Makerchip plots]()
#### 10.[Netlists]()
#### 11.[NgSpice Plots]()
#### 12.[Steps to run generate NgVeri model]()
#### 13.[Steps to run this project]()
#### 14.[Acknowledgements]()
#### 15.[References]()
### 1. Abstract
Flip flops are the electronic devices which consists of two stable states.The flip flops are the fundamental building<br />
blocks in digital electronics systems.These are sequential circuits since the output depends on both present input and <br />
past output.These circuits are basic memory storage elements.There are different kinds of flip flops,like SR flip flop,<br />
JK flip flop,D flip flop and T flip flop.The input and output to a JK flip flop are digital signals but the main aim <br />
here is to design and simulate JK flip flop using mixed signals i.e. by using both analog and digital signals.<br />  
### 2. Reference Circuit Diagram
![image](https://user-images.githubusercontent.com/96101971/156813610-83332660-f437-45dd-8c2f-720dc85cf4d7.png)
### 3. Reference Waveforms
![image](https://user-images.githubusercontent.com/96101971/156813892-d6778544-87d1-48c4-920d-f2d59fe77bc7.png)
### 4. Circuit Details
The JK flip flop was invented by Jack Kilby and hence the name JK flip flop.It is the most widely used flip flop.<br />
This flipflop is also called as universal flip flop.The sequential operation of JK flip flop is same as that of<br />
SR flip flop Except that the JK flip flop does not allow the invalid input state in which both the inputs are 0.<br />
<br />
The basic SR flip flop suffers from the following two problems:<br />
i)First, the condition S=R=0 must be avoided.<br />
ii)second,if the state of S or R changes its state while the input which is enabled is high, the correct latching<br />
action does not occur.<br />
<br />
Thus, to overcome these two drawbacks,JK flip flop was invented.<br />
The design of JK flip flop is same as that of SR flip flop but consists of a clock,two input AND gates are replaced <br />
by two 3-input NAND gates.Here J=S and K=R and with the third input of each NAND gate connected to the outputs at Q and Qbar.<br />
The cross-coupling of the SR flip-flop permits the previous invalid condition of S=R=1 to be used to produce the toggle action as the two inputs are now interlocked.<br />
<br />
At the input side of jk flip flop we use analog to digital converter(adc_bridge) and at the output side we use a digital to
analog converter(dac_bridge).In this way we can design JK flip flop in mixed signals.<br />
<br />
The truth table of JK flip flop is shown below:<br />
![image](https://user-images.githubusercontent.com/96101971/156820419-de9ed47e-0551-4f14-aeed-bb83b7493cad.png)
<br />
### 5. Software Used
#### -eSim
#### -NgSpice
#### -Makerchip
#### -Verilator
### 6. Circuit Diagram in eSim
The circuit diagram of JK flip flop using Mixed signals in eSim tool.<br />
![Screenshot (13)](https://user-images.githubusercontent.com/96101971/156823161-6d7e32e5-9721-480c-b3aa-cfafcdb55cdb.png)
### 7. Verilog Code
![Screenshot (16)](https://user-images.githubusercontent.com/96101971/156823861-df41f654-4a56-45bb-b9e9-54d8578f0ef7.png)
### 8. Makerchip
```\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/  /* verilator lint_off LATCH*/  /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/  /* verilator lint_off NULLPORT*/  /* verilator lint_off EOFNEWLINE*/  /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/  /* verilator lint_off TIMESCALEMOD*/  

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

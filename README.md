# Design and Implementation of Mixed Signals Circuit
# JK Flip Flop
## Table of contents
#### 1.[Abstract]()
#### 2.[Reference Circiut Diagram]()
#### 3.[Reference Waveforms]()
#### 4.[Circuit Details]()
#### 5.[Truth Table]()
#### 6.[Software Used]()
  #### -[eSim]()
  #### -[NgSpice]()
  #### -[Makerchip]()
  #### -[Verilator]()
#### 7.[Circuit Diagram in eSim]()
#### 8.[Verilog Code]()
#### 9.[Makerchip]()
#### 10.[Makerchip plots]()
#### 11.[Netlists]()
#### 12.[NgSpice Plots]()
#### 13.[Steps to run generate NgVeri model]()
#### 14.[Steps to run this project]()
#### 15.[Acknowledgements]()
#### 16.[References]()
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
### 5. Truth Table
The truth table of JK flip flop is shown below:<br />
![image](https://user-images.githubusercontent.com/96101971/156820419-de9ed47e-0551-4f14-aeed-bb83b7493cad.png)
<br />
### 7. Circuit Diagram in eSim
The circuit diagram of JK flip flop using Mixed signals in eSim tool.<br />
![Screenshot (13)](https://user-images.githubusercontent.com/96101971/156823161-6d7e32e5-9721-480c-b3aa-cfafcdb55cdb.png)
### 8. Verilog Code
![Screenshot (16)](https://user-images.githubusercontent.com/96101971/156823861-df41f654-4a56-45bb-b9e9-54d8578f0ef7.png)
### 9. Makerchip

module COMPUTER(out,instruction,address,reset,x0,y0);
   input[31:0] instruction,x0,y0;
   input [2:0] address;
   input       reset;
   output[31:0] out;
   reg[31:0] x01,y01;
   //RAM
   reg [31:0] 	 in0;
   reg 		 write0,clk0,en0;
   reg [2:0] 	 adr,adr0;
   wire [31:0] 	 out0;
   //PC
   reg [31:0] 	 in1;
   wire [31:0] 	 out1;
   reg 		 inc,jump,reset1,clk1;
   //ALU
   reg [31:0] 	 x,y;
   reg 		 s1,s0;
   //INSTRUCTION REGISTER
   reg [31:0] 	 reg0;
   //DECODER
   reg [2:0] 	 tmp0,tmp1,tmp2;
   //VARIABLES DEFINED
   RAM8_32BIT ram0(out0,in0,write0,adr,clk0,en0);
   PC pc0(out1,in1,inc,jump,reset1,clk1);
   ALU alu0(out,s1,s0,x,y);
   always@(*)
     begin
	x01 = x0;
	y01 = y0;
	en0 = 1'b1;
	#2;
	in0 = instruction;
	write0 = 1'b1;
	adr = address;
	clk0 = 1'b0;#2;clk0 = 1'b1;#2;clk0 = 1'b0;#2;write0 = 1'b0;
	
	#2;
	in0 = x01;
	write0 = 1'b1;
	adr = 3;
	clk0 = 1'b0;#2;clk0 = 1'b1;#2;clk0 = 1'b0;#2;write0 = 1'b0;
	
	#2;
	in0 = y01;
	write0 = 1'b1;
	adr = 4;
	clk0 = 1'b0;#2;clk0 = 1'b1;#2;clk0 = 1'b0;#2;write0 = 1'b0;
	#2;
	
	//FETCHING

	//Reset PC or Not
	reset1 = reset;
	inc = 1'b0;
	jump = 1'b0;
	clk1 = 1'b0;#2;clk1 = 1'b1;#2;clk1 = 1'b0;#2;
	//got output from PC get value from that address
	adr0[2] = out1[2];
	adr0[1] = out1[1];
	adr0[0] = out1[0];	
	write0 = 1'b0;
	adr = adr0;
	clk0 = 1'b0;#2;clk0 = 1'b1;#2;clk0 = 1'b0;#2;	
	//got output from RAM store it in INSTRUCTION REGISTER
	//FETCHING DONE
	//DECODING
	//s1x and s0x are selection bits for ALU
	tmp0[2] = out0[10];
	tmp0[1] = out0[9];
	tmp0[0] = out0[8];
	//tmp0 is destination address
	tmp1[2] = out0[6];
	tmp1[1] = out0[5];
	tmp1[0] = out0[4];
	
	//tmp1 is first operand address
	tmp2[2] = out0[2];
	tmp2[1] = out0[1];
	tmp2[0] = out0[0];
	
	//tmp2 is second operand address
	//DECODING DONE
	#2;
	//EXECUTION
	s1 = out0[13];	
	s0 = out0[12];
	write0 = 1'b0;
	adr = tmp1;/*
	adr[2] = tmp1[2];
	adr[1] = tmp1[1];
	adr[0] = tmp1[0];*/	
	clk0 = 1'b0;#2;clk0 = 1'b1;#2;clk0 = 1'b0;#2;	
	x = out0;
	write0 = 1'b0;
	adr = tmp2;	
	clk0 = 1'b0;#2;clk0 = 1'b1;#2;clk0 = 1'b0;#2;
	y = out0;
	#2;
	in0 = out;
	write0 = 1'b1;
	adr = tmp0;
	clk0 = 1'b0;#2;clk0 = 1'b1;#2;clk0 = 1'b0;#2;	
	write0 = 1'b0;
       	//EXECUTION DONE
	#2;
	//INCREMENT PC
	inc = 1'b1;
	jump = 1'b0;
	reset1 = 1'b0;
	clk1 = 1'b0;#2;clk1 = 1'b1;#2;clk1 = 1'b0;#2;
     end // initial begin
endmodule // COMPUTER


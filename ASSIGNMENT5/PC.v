module PC(out,in,inc,jump,reset,clk);
   input[31:0] in;
   output [31:0] out;
   input 	 inc,jump,reset,clk;
   wire [31:0] 	 out0,out1,out2,out3;
   //write when any of 3 lines are set
   or(tmp0,inc,jump);
   or(rw,tmp0,reset);
   //increment or not
   INCREMENTER incr0(out0,out);
   MUX2X1_32BIT mux0(out1,inc,out,out0);
   //jump to address 'in'
   MUX2X1_32BIT mux1(out2,jump,out1,in);
   //reset PC
   MUX2X1_32BIT mux2(out3,reset,out2,0);
   //write to register
   REGISTER_32BIT reg0(out,rw,out3,clk,1'b1);
endmodule // PC

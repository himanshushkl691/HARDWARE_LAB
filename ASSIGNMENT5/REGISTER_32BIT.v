module REGISTER_32BIT(out,write,in,clk,en);
   input clk,en,write;
   input [31:0] in;
   output [31:0] out;
   ONE_BINARY_CELL obc[31:0](out,in,write,clk,en);
endmodule // REGISTER_32BIT

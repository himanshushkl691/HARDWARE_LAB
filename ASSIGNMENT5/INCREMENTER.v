module INCREMENTER(s,in);
   input[31:0] in;
   output [31:0] s;
   ADDER_32BIT add0(s,,32'b00000000000000000000000000000001,in,1'b0);
endmodule // INCREMENTER

module OR_32BIT(out,in0,in1);
   input[31:0] in0,in1;
   output [31:0] out;
   OR or0[31:0](out,in0,in1);
endmodule // OR_32BIT

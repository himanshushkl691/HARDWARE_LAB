module OR(out,in0,in1);
input in0,in1;
output out;
nand(w0,in0,in0);
nand(w1,in1,in1);
nand(out,w0,w1);
endmodule

module AND(out,in0,in1);
input in0,in1;
output out;
nand(w0,in0,in1);
nand(out,w0,w0);
endmodule

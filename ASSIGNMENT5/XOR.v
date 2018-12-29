module XOR(out,in0,in1);
input in0,in1;
output out;
AND and0(w0,in0,~in1);
AND and1(w1,~in0,in1);
OR or0(out,w0,w1);
endmodule

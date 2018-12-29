module MUX2X1(out,s0,in0,in1);
input in0,in1,s0;
output out;
and(w0,~s0,in0);
and(w1,s0,in1);
or(out,w1,w0);
endmodule

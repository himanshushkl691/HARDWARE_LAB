module DEMUX1X2(out0,out1,s0,in);
input s0,in;
output out0,out1;
and(out0,in,~s0);
and(out1,in,s0);
endmodule

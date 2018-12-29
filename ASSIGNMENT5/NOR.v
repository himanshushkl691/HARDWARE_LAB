module NOR(out,in0,in1);
input in0,in1;
output out;
OR or0(out0,in0,in1);
not(out,out0);
endmodule

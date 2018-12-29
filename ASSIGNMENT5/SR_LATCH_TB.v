module SR_LATCH_TB;
wire q,q_bar;
reg s,r;
SR_LATCH sr1(q,q_bar,s,r);
initial
  begin
     $dumpfile("SR_LATCH_TB.vcd");
     $dumpvars(0,SR_LATCH_TB);
	s = 1'b0; r = 1'b0;
#10	s = 1'b0; r = 1'b1;
#10	s = 1'b1; r = 1'b0;
#10	s = 1'b1; r = 1'b1;
end
endmodule

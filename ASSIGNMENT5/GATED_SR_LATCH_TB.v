module GATED_SR_LATCH_TB;
wire q,q_bar;
reg s,r,en;
GATED_SR_LATCH gsr1(q,q_bar,s,r,en);
initial
  begin
     $dumpfile("GATED_SR_LATCH_TB.vcd");
     $dumpvars(0,GATED_SR_LATCH_TB);
     en = 1'b1;
     s = 1'b0;
     r = 1'b1;
     #10;
     en = 1'b0;
     s = 1'b0;
     r = 1'b1;
     #10;
     en = 1'b1;
     s = 1'b1;
     r = 1'b0;
     #10;
     en = 1'b0;
     s = 1'b1;
     r = 1'b1;
end
endmodule

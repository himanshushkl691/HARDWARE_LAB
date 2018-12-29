module DFF(q,q_bar,d,clk);
   input d,clk;
   output q,q_bar;
   GATED_SR_LATCH gsr0(q,q_bar,d,~d,clk);
endmodule // DFF

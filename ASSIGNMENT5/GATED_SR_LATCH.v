module GATED_SR_LATCH(q,q_bar,s,r,en);
   input s,r,en;
   output q,q_bar;
   and(a,en,s);
   and(b,en,r);
   SR_LATCH sr0(q,q_bar,a,b);
endmodule // GATED_SR_LATCH

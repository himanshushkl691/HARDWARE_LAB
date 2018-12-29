module SR_LATCH(q,q_bar,s,r);
   input s,r;
   output q,q_bar;
   nor(q,r,q_bar);
   nor(q_bar,s,q);
endmodule // SR_LATCH

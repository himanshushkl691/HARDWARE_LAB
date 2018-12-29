module FULL_SUB(diff,borr,a,b,bin);
   input a,b,bin;
   output diff,borr;
   HALF_SUB hs0(diff0,borr0,a,b);
   HALF_SUB hs1(diff,borr1,diff0,bin);
   or(borr,borr1,borr0);
endmodule // FULL_SUB

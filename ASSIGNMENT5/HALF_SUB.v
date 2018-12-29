module HALF_SUB(diff,borr,a,b);
input a,b;
output diff,borr;
xor(diff,a,b);
and(borr,~a,b);
endmodule

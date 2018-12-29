module FULL_ADDER(sum,carry,a,b,cin);
input a,b,cin;
output sum,carry;
HALF_ADDER ha0(sum0,carry0,a,b);
HALF_ADDER ha1(sum,carry1,sum0,cin);
or(carry,carry1,carry0);
endmodule

module HALF_ADDER(sum,carry,a,b);
input a,b;
output carry,sum;
XOR xor0(sum,a,b);//sum = a + b
AND and0(carry,a,b);//carry = a&b
endmodule

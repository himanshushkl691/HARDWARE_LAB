module ONE_BINARY_CELL(out,in,write,clk,en);
   input en,clk,write,in;
   output out;
   and(rw,write,en);
   MUX2X1 mux0(a,rw,out,in);
   DFF_RISING dff0(out,,a,clk);
endmodule // ONE_BINARY_CELL


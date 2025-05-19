module JK(q, qb, j, k, clk, clr);
input j, k, clk, clr;
output q, qb;

wire a, b, c, d, y, yb, clkb;

not(clkb, clk);

nand(a, j, qb, clr, clk);
nand(b, k, q, clk);
nand(y, a, yb);
nand(yb, b, y, clr);
nand(c, y, clkb);
nand(d, yb, clkb);
nand(q, c, qb);
nand(qb, q, d, clr);
endmodule

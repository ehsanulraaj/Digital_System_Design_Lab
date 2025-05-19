module MOD_10_Counter(Q, clk);
input clk;
output [3:0]Q;
wire [3:0]Qb;
wire clr;
reg J=1'b1, K=1'b1;

  nand(clr, Q[1], Q[3]);

JK F1(Q[0], Qb[0], J, K, clk, clr);
JK F2(Q[1], Qb[1], J, K, Q[0], clr);
JK F3(Q[2], Qb[2], J, K, Q[1], clr);
JK F4(Q[3], Qb[3], J, K, Q[2], clr);
endmodule


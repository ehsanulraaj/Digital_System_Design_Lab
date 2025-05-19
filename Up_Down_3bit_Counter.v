module up_down_counter(Q, clk, m, clr);
input clk, m, clr;
output [2:0]Q;
wire [2:0]Qb;
wire mb, and1, and2, and3, and4, j2, j3;

not(mb, m);

JK FF7(Q[0], Qb[0], 1, 1, clk, clr);
and(and1, mb, Q[0]);
and(and2, m, Qb[0]);
or(j2, and1, and2);

JK FF8(Q[1], Qb[1], 1, 1, j2, clr);
and(and3, mb, Q[1]);
and(and4, m, Qb[1]);
or(j3, and3, and4);

JK FF9(Q[2], Qb[2], 1, 1, j3, clr);

endmodule


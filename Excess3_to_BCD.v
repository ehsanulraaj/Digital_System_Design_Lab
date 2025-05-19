module Excess3_to_BCD(B, E);
input [3:0] E;
output [3:0] B;
wire w1, w2;

and(w1, E[0], E[1]);
or(w2, w1, E[2]);
and(B[3], w2, E[3]);

xnor(B[2], w1, E[2]);

xor(B[1], E[0], E[1]);

not(B[0], E[0]);

endmodule

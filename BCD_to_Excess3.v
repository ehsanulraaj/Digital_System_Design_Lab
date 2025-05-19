module BCD_to_Excess3(E, B);
input [3:0] B;
output [3:0] E;

wire w1, w2;

or(w1, B[0], B[1]);
and(w2, w1, B[2]);
or(E[3], w2, B[3]);

xor(E[2], w1, B[2]);

xnor(E[1], B[0], B[1]);

not(E[0], B[0]);

endmodule

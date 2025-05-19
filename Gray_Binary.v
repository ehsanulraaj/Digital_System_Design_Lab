module Gray_Binary(B, G);
input [3:0]G;
output [3:0]B;

buf(B[3], G[3]);
xor(B[2], B[3], G[2]);
xor(B[1], B[2], G[1]);
xor(B[0], B[1], G[0]);


endmodule

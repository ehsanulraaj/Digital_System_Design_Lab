module Binary_Gray(G,B);
input [3:0]B;
output [3:0]G;

buf(G[3], B[3]);
xor(G[2], B[3], B[2]);
xor(G[1], B[2], B[1]);
xor(G[0], B[1], B[0]);

endmodule

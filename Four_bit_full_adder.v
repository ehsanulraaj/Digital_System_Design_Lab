module Four_bit_full_adder(s, cout, a, b, cin);
input cin;
input [3:0] a, b;
output [3:0]s;
output cout;
wire c1, c2, c3;
Full_Adder FA11(s[0], c1, a[0], b[0], cin);
Full_Adder FA12(s[1], c2, a[1], b[1], c1);
Full_Adder FA13(s[2], c3, a[2], b[2], c2);
Full_Adder FA14(s[3], cout, a[3], b[3], c3);
endmodule

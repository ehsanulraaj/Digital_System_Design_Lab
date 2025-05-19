module Full_Adder(sum, cout, a, b, cin);
input a,b,cin;
output sum, cout;
wire s1, c1, c2;
xor(s1, a, b);
xor(sum, s1, cin);
and(c1, a, b);
and(c2, cin, s1);
or(cout, c1, c2);
endmodule

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


module BCD_adder(s, cout, a, b, cin);
input [3:0]a,b;
input cin;
output [3:0]s;
output cout;
wire [3:0]z, p;
wire c1, c2, c3, c4;

Four_bit_full_adder FBFA(z, c1, a, b, cin);
and(c2, z[3], z[2]);
and(c3, z[3], z[1]);
or(cout, c1, c2, c3);
buf(p[0], 1'b0);
buf(p[1], cout);
buf(p[2], cout);
buf(p[3], 1'b0);
Four_bit_full_adder FBFA1(s, c4, z, p, 1'b0);
endmodule 

module BCD_adder_tb();
reg [3:0] a, b;
reg cin;
wire [3:0]s;
wire cout;
BCD_adder BCD(s, cout, a, b, cin);
initial begin
a=4'b0011; b=4'b0100; cin=1'b0; #50;
a=4'b0111; b=4'b1000; cin=1'b0; #50;
a=4'b0011; b=4'b0100; cin=1'b1; #50;
a=4'b0000; b=4'b1001; cin=1'b1; #50;
end 
endmodule


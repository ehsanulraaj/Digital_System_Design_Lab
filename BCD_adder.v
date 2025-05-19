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


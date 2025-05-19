module Adder_Subtractor(s, cout, a, b, cin);
input [3:0] a, b;
input cin;
output [3:0]s;
output cout;
wire [3:0] bx;
wire c1, c2, c3;

xor(bx[0], b[0], cin);
xor(bx[1], b[1], cin);
xor(bx[2], b[2], cin);
xor(bx[3], b[3], cin);

Full_Adder FA1(s[0], c1, a[0], bx[0], cin);
Full_Adder FA2(s[1], c2, a[1], bx[1], c1);
Full_Adder FA3(s[2], c3, a[2], bx[2], c2);
Full_Adder FA4(s[3], cout, a[3], bx[3], c3);

endmodule

module ADD_SUB_TB();
reg [3:0] a,b;
reg cin;
wire[3:0]s;
wire cout;
Add_Sub AS1(s, cout, a, b, cin);
initial begin
a=4'b1000; b=4'b0010; cin=1'b0; #100;
a=4'b1000; b=4'b0010; cin=1'b1; #100;
a=4'b1000; b=4'b1000; cin=1'b0; #100;
a=4'b1000; b=4'b1000; cin=1'b1; #100;
end
endmodule


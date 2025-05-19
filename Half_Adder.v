module Half_Adder(sum, cout, a, b);
input a, b;
output sum, cout;
xor(sum, a,b);
and(cout, a,b);
endmodule

module HF_TB();
reg a, b;
wire sum, cout;
Half_Adder HA(sum, cout, a, b);
initial begin
a= 1'b0 ; b= 1'b0 ; #50;
a= 1'b0 ; b= 1'b1 ; #50;
a= 1'b1 ; b= 1'b0 ; #50;
a= 1'b1 ; b= 1'b1 ; #50;
end
endmodule
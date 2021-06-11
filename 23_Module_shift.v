module top_module ( input clk, input d, output q );

wire _q1;
wire _q2;

my_dff d1(clk, d, _q1);
my_dff d2(clk, _q1, _q2);
my_dff d3(clk, _q2, q);

endmodule

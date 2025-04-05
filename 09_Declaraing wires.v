`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 

	wire _a_b_and;
    wire _c_d_and;

    assign out = _a_b_and | _c_d_and;
    assign out_n = ~(_a_b_and | _c_d_and);
    assign _a_b_and = a & b; 
    assign _c_d_and = c & d;

endmodule

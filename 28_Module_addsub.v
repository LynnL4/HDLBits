module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

    wire _cout;

    wire[31:0] _b;
    assign _b =  {32{sub}} ^ b;

    add16 a1(a[15:0], _b[15:0], sub, sum[15:0], _cout);
    add16 a2(a[31:16], _b[31:16], _cout, sum[31:16]);

endmodule
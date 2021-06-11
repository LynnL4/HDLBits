module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire _cout;
    wire[15:0] _sum1, _sum2;

    add16 a1(a[15:0], b[15:0], 0, sum[15:0], _cout);
    add16 a2(a[31:16], b[31:16], 0, _sum1);
    add16 a3(a[31:16], b[31:16], 1, _sum2);

    always @(*) begin
        case(_cout)
            1'b0:  sum[31:16] = _sum1;
            1'b1:  sum[31:16] = _sum2;
        endcase 
    end

endmodule
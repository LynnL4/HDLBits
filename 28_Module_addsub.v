module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire[31:0] sua = {32{sub}};
    wire co1;
    add16(.a(a[15:0]),.b(b[15:0]^sua[15:0]),.cin(sub),.cout(co1),.sum(sum[15:0]));
    add16(.a(a[31:16]),.b(b[31:16]^sua[31:16]),.cin(co1),.cout(),.sum(sum[31:16]));
endmodule

module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);

    wire[7:0] _q1, _q2, _q3;

    my_dff8 d1(clk, d, _q1);
    my_dff8 d2(clk, _q1, _q2);
    my_dff8 d3(clk, _q2, _q3);

    always @(*) begin
        case (sel)
        2'b00: q = d;
        2'b01: q = _q1;
        2'b10: q = _q2;
        2'b11: q = _q3;
        endcase
    end

endmodule
module top_module( 
    input [99:0] in,
    output [99:0] out
);
    reg [6:0]   count;
    always @(*) begin
        count = 'b0;
        while (count < 100) begin
            out[count] = in[99-count];
            count = count + 1'b1;
        end
    end
endmodule
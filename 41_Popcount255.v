module top_module( 
    input [254:0] in,
    output [7:0] out );
    
    reg[7:0]    i ;

    always @(*) begin
        out = 0;
        for(i = 0; i < 255; i=i+1) begin
            out = out + in[i];
        end    
    end

endmodule
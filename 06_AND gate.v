module top_module( 
    input a, 
    input b, 
    output out );
    assign out = a && b; // logic AND
    //assign out = a & b; // Bitwise AND
endmodule

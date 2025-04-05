module top_module( 
    input a, 
    input b, 
    output out );
    assign out = !(a || b); // logic 
    //assign out = ~(a | b); // Bitwise 
endmodule

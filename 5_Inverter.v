module top_module( input in, output out );
	assign out = ~in;
    // assign out = !in; // Verilog has separate bitwise-NOT (~) and logical-NOT (!) operators, like C. Since we're working with a one-bit here, it doesn't matter which we choose.
endmodule
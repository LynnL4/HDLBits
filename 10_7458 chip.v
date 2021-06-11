module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    wire _p1_a_b_c_and;
    wire _p1_d_e_f_and;
    wire _p2_a_b_and;
    wire _p2_c_d_and;

    assign _p1_a_b_c_and = p1a & p1b & p1c;
    assign _p1_d_e_f_and = p1d & p1e & p1f;
    assign p1y = _p1_a_b_c_and | _p1_d_e_f_and;

    assign _p2_a_b_and = p2a & p2b;
    assign _p2_c_d_and = p2c & p2d;
    assign p2y = _p2_a_b_and | _p2_c_d_and;

endmodule
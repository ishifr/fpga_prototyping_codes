`timescale 1ns / 1ps


module eq2(
    input wire [1:0] in0, in1,
    output wire eq2
    );
    
    // internal signal declaration
    wire e0, e1;
    
    // instantiate two 1-bit comparators
    eq1 eq_unit0(
        .in0(in0[0]),
        .in1(in1[0]),
        .eq(e0)
    );
    
    eq1 eq_unit1(
        .in0(in0[1]),
        .in1(in1[1]),
        .eq(e1)
    );
    
    assign eq2 = e0 & e1;
    
endmodule

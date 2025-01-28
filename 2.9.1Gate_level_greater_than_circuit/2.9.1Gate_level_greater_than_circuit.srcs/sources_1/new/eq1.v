`timescale 1ns / 1ps

module eq1(
    input wire in0, in1,
    output wire eq
    );
    
    assign eq = ~(in0 ^ in1);
    
endmodule

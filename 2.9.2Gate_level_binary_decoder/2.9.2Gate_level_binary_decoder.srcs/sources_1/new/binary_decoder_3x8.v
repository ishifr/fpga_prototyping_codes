`timescale 1ns / 1ps


module binary_decoder_3x8(
    input wire [2:0] in3x,
    output wire [7:0] out8x
    );
    
    binary_decoder_2x4 i0(
        .in2x(in3x[1:0]),
        .out4x(out8x[3:0]),
        .en(!in3x[2])
    );
    
    binary_decoder_2x4 i1(
        .in2x(in3x[1:0]),
        .out4x(out8x[7:4]),
        .en(in3x[2])
    );
    
endmodule

`timescale 1ns / 1ps


module binary_decoder_4x16(
    input wire [3:0] in4x,
    output wire [15:0] out16x
    );
    
    binary_decoder_2x4 i0(
        .in2x(in4x[1:0]),
        .out4x(out16x[3:0]),
        .en({!in4x[2] & !in4x[3]})
    );
    
    binary_decoder_2x4 i1(
        .in2x(in4x[1:0]),
        .out4x(out16x[7:4]),
        .en({in4x[2] & !in4x[3]})
    );
    
    binary_decoder_2x4 i2(
        .in2x(in4x[1:0]),
        .out4x(out16x[11:8]),
        .en({!in4x[2] & in4x[3]})
    );
    
    binary_decoder_2x4 i3(
        .in2x(in4x[1:0]),
        .out4x(out16x[15:12]),
        .en({in4x[2] & in4x[3]})
    );
    
endmodule

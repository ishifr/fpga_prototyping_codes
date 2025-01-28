`timescale 1ns / 1ps


module binary_decoder_4x16_tb;

    reg [3:0] in4x;
    wire [15:0] out16x; 
    
    binary_decoder_4x16 uut(
        .in4x(in4x),
        .out16x(out16x)
    );
    integer i;
    
    initial begin
        $display("in4x[3] in4x[2] in4x[1] in4x[0]  out16x");
        for(i = 0; i<16; i = i + 1)begin
            in4x = i;
            #10;
            $display("%b      %b       %b     %b        %b", in4x[3], in4x[2], in4x[1], in4x[0], out16x);
        end
        $finish;
    end
    
endmodule

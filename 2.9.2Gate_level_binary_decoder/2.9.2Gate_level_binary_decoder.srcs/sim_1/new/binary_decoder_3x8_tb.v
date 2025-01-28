`timescale 1ns / 1ps


module binary_decoder_3x8_tb;

    reg [2:0] in3x;
    wire [7:0] out8x;
    
    binary_decoder_3x8 uut(
        .in3x(in3x),
        .out8x(out8x)
    );
    
    integer i;
    initial begin
        $display("in3x[2] in3x[1] in3[0] -> out8x");
        for(i = 0; i<8; i = i + 1)begin
            in3x = i;
            #10;
            $display("%b       %b       %b      -> %b", in3x[2], in3x[1], in3x[0], out8x);
        end
        $finish;
    end

endmodule

`timescale 1ns / 1ps


module binary_decoder_2x4_tb;

    reg [1:0] in2x;
    wire [3:0] out4x;
    reg en;
    
    binary_decoder_2x4 uut(
        .in2x(in2x),
        .out4x(out4x),
        .en(en)
    );
    
    integer i, j;
    initial begin
        $display("en | in2x -> out4x");
        for(i = 0; i < 2; i = i + 1)begin
            en = i;
            for(j = 0; j < 4; j = j + 1)begin
                in2x = j;
                #10;
                $display("%b  | %b   -> %b", en, in2x, out4x);
            end
        end
        $finish;
    end

endmodule

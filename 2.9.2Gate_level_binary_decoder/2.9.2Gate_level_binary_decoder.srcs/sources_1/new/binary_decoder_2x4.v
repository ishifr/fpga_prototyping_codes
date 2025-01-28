`timescale 1ns / 1ps


module binary_decoder_2x4(
    input wire [1:0] in2x,
    output reg [3:0] out4x,
    input en
    );
    
    always @(*) begin
        if(en) begin
            case(in2x)
                2'b00: out4x = 4'b0001;
                2'b01: out4x = 4'b0010;
                2'b10: out4x = 4'b0100;
                2'b11: out4x = 4'b1000;
                default : out4x = 4'b0000;
            endcase  
        end else begin
            out4x = 'b0000; 
        end
    end
    
endmodule

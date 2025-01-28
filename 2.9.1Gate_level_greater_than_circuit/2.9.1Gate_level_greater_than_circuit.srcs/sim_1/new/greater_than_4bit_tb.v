`timescale 1ns / 1ps


module greater_than_4bit_tb;

    reg [3:0] in0, in1;
    wire gt;
    
    greater_than_4bit uut(
        .in0(in0),
        .in1(in1),
        .gt(gt)
    );
    integer i, j;
    initial begin
        $display("in0  in1  | gt");
        for(i = 0; i<16; i = i + 1) begin
            for(j = 0; j<16; j = j+1)begin
                in0 = i;
                in1 = j;
                #10;
                $display("%b %b | %b", in0, in1, gt);
            end
        end
        $finish;
    end

endmodule

`timescale 1ns / 1ps


module greater_than_2bit_tb;

    reg [1:0] in0, in1;
    wire gt;
    
    greater_than_2bit uut(
        .in0(in0),
        .in1(in1),
        .gt(gt)
    );
    integer i = 0;
    initial begin
        $display("in0 in1| gt");
        for(i = 0; i < 16; i = i + 1)begin
            in0[1:0] = i[1:0];
            in1[1:0] = i[3:2];
            #10;
            $display("%b  %b | %b", in0, in1, gt);
        end
        $finish;
    end
    
endmodule

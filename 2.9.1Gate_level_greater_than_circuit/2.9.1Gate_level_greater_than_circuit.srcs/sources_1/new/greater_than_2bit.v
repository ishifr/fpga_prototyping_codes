`timescale 1ns / 1ps


module greater_than_2bit(
    input wire [1:0] in0, in1,
    output wire gt
    );
    
    // internal signals declaration
    wire gt_msb, gt_lsb, eq_msb;
    
    assign gt_msb = in0[1] & ~in1[1];
    assign gt_lsb = in0[0] & ~in1[0];
    assign eq_msb = ~(in0[1] ^ in1[1]);
    
    assign gt = gt_msb | (eq_msb & gt_lsb);
    
endmodule

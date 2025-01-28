`timescale 1ns / 1ps


module greater_than_4bit(
    input wire [3:0] in0, in1,
    output wire gt
    );
    
    wire gt_ms2bit, gt_ls2bit, eq_ms2bit;
    
    greater_than_2bit u0(
        .in0(in0[1:0]),
        .in1(in1[1:0]),
        .gt(gt_ls2bit)
    );
    
    greater_than_2bit u1(
        .in0(in0[3:2]),
        .in1(in1[3:2]),
        .gt(gt_ms2bit)
    );
    
    eq2 u2(
        .in0(in0[3:2]),
        .in1(in1[3:2]),
        .eq2(eq_ms2bit)
    );  
    
    assign gt = gt_ms2bit | (gt_ls2bit & eq_ms2bit);
            
endmodule

`timescale 1ns / 1ps

module eq1_tb;

    reg in0, in1;
    wire eq;
    
    // Instantiate the 1-bit comparator
    eq1 eq_tb(
        .in0(in0),
        .in1(in1),
        .eq(eq)
    );
    
    initial begin
        $display("in0 in1 | eq");
        in0 = 0; in1 = 0; #10 $display("%b %b | %b", in0, in1, eq);
        in0 = 0; in1 = 1; #10 $display("%b %b | %b", in0, in1, eq);        
        in0 = 1; in1 = 0; #10 $display("%b %b | %b", in0, in1, eq);        
        in0 = 1; in1 = 1; #10 $display("%b %b | %b", in0, in1, eq);
        $finish;        
    end

endmodule

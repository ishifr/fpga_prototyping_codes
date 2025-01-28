`timescale 1ns / 1ps


module eq2_tb;

    reg [1:0] in0, in1;
    wire eq;
    
    // instantiate the 2-bit comparator
    eq2 uut(
        .in0(in0),
        .in1(in1),
        .eq2(eq)
    );
    
    integer i;
    initial begin
        $display("in0 in1|eq");
        for(i = 0; i < 16; i = i + 1)begin
            in0 = i[1:0]; // Lower 2 bits for in0  
            in1 = i[3:2]; // Upper 2 bits for in1 
            #10;          // Wait for 10 ns 
            $display("%b %b | %b", in0, in1, eq);
        end
        $finish; // this line end simulation
    end

endmodule

`timescale 1ns/1ps
`include "seven_segment.v"

module seven_segment_tb;

reg [3:0] digit;
wire [6:0] seg;

seven_segment dut (
    .digit(digit),.seg(seg)
);

integer i;
initial begin
    $dumpfile("seven_segment.vcd");  // name of dump file
    $dumpvars(0, seven_segment_tb); // dump everything in tb
     $display("Starting 7-segment testbench...");

        // Loop through 0–15
        for (i = 0; i < 16; i = i + 1) begin
            digit = i;
            #10; 
            $display("Input = %h -> Segments = %b", digit, seg);
        end

        $display("Simulation complete.");
        $stop; 
end

endmodule
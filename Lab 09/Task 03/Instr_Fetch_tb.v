`include "Instruction_Fetch.v"

module Inst_Fetch_tb();
    reg clk, reset;
    wire  [31:0] instruction;

    Instruction_Fetch if1(.clk(clk), .reset(reset), .instruction(instruction));

    initial clk=1'b0;
    always  #10 clk=~clk;

    initial begin
        reset = 1'b1;
        #15
        reset = 1'b0;
        #15
        reset = 1'b0;
        #15
        reset = 1'b0;
        #15
        reset = 1'b0; // Dummy-Case
        $finish;
    end

    initial begin
        $dumpfile("Inst_Fetch.vcd");
        $dumpvars();
    end
    
endmodule

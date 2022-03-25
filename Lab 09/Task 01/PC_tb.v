`include "Program_Counter.v"

module PC_tb();
    reg  clk, reset;
    reg  [63:0] PC_In;
    wire [63:0] PC_Out;

    Program_Counter pc1(.clk(clk), .reset(reset), .PC_In(PC_In), .PC_Out(PC_Out));

    initial clk = 1'b0;
    always begin
        clk = ~clk; #20;
    end

    initial begin
       reset = 1'b0; PC_In = 64'd1024;
       #15
       reset = 1'b1; PC_In = 64'd2048; // Checking reset functionality 
       #15
       reset = 1'b0; PC_In = 64'd4096;
       #15
       reset = 1'b0; PC_In = 64'd8192; // Dummy Case
       $finish;
    end

    initial begin
        $dumpfile("PC.vcd");
        $dumpvars;
    end
endmodule

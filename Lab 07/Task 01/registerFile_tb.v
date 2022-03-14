`include "registerFile.v"
`timescale 1ps/1ps

module registerFile_tb();
    reg  [63:0] WriteData;
    reg  [ 4:0]  rs1;
    reg  [ 4:0]  rs2;
    reg  [ 4:0]  rd;
    reg  RegWrite;
    reg  clk;
    reg  reset;
    wire [63:0] ReadData1;
    wire [63:0] ReadData2;
    
    initial
        clk = 1'b0;
    registerFile r1(.WriteData(WriteData), .rs1(rs1), .rs2(rs2), .rd(rd), .RegWrite(RegWrite), .clk(clk), .reset(reset), .ReadData1(ReadData1), .ReadData2(ReadData2));
    always #20 clk=~clk;
    initial begin
        WriteData = 64'd30; rs1 = 64'd30; rs2 = 64'd29; rd = 64'd30; RegWrite = 1'b1; reset = 1'b0;
        #20
        // No Change; Check for clock
        WriteData = 64'h300; rs1 = 64'd30; rs2 = 64'd29; rd = 64'd30; RegWrite = 1'b1;
        #20
        RegWrite = 1'b0; 
        #20
        WriteData = 64'd31; RegWrite = 1'b1; 
        // Dummy 
        WriteData = 64'd30; rs1 = 64'd28; rs2 = 64'd29; rd = 64'd30; RegWrite = 1'b1; 
        $finish;
    end
    initial begin
        $dumpfile("registerFile_results.vcd");
        $dumpvars();
    end
endmodule

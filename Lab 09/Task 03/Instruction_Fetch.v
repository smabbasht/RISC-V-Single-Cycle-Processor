`include "Instruction_Memory.v"
`include "Adder.v"
`include "Program_Counter.v"

module Instruction_Fetch(
    input clk, reset,
    output [31:0] instruction
);
    wire [63:0] PC_In;
    wire [63:0] PC_Out;

    Program_Counter pc1(.clk(clk), .reset(reset), .PC_In(PC_In), .PC_Out(PC_Out));
    Adder a1(.a(PC_Out), .b(64'd4), .c(PC_In));
    Instruction_Memory im1(.Inst_address(PC_Out), .Instruction(instruction));
    
endmodule

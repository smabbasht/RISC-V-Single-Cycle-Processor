`include "Control_Unit.v"
`include "ALU_Control.v"

module top_module (
    input  [6:0] Opcode,
    input  [3:0] Funct,
    output [3:0] Operation,
    output Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite
);
    wire [1:0] ALUOp;

    Control_Unit c1(.Opcode(Opcode), .Branch(Branch), .MemRead(MemRead), .MemtoReg(MemtoReg), .MemWrite(MemWrite), .ALUSrc(ALUSrc), .RegWrite(RegWrite), .ALUOp(ALUOp));
    ALU_Control ac1(.ALUOp(ALUOp), .Funct(Funct), .Operation(Operation));
    
endmodule
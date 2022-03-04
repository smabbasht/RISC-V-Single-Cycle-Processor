`include "ALU_1_bit.v"

module ALU_6_bit(
    input  [3:0] ALUOp,
    input  [5:0] a, b,
    input  CarryIn,
    output [5:0] Result,
    output CarryOut,
    wire   c1, c2, c3, c4, c5 // Carry Wires
);    
    ALU_1_bit a0(.a(a[0]), .b(b[0]), .CarryIn(CarryIn), .ALUOp(ALUOp), .Result(Result[0]). CarryOut(c1));
    ALU_1_bit a1(.a(a[1]), .b(b[1]), .CarryIn(c1),      .ALUOp(ALUOp), .Result(Result[1]). CarryOut(c2));
    ALU_1_bit a2(.a(a[2]), .b(b[2]), .CarryIn(c2),      .ALUOp(ALUOp), .Result(Result[2]). CarryOut(c3));
    ALU_1_bit a3(.a(a[3]), .b(b[3]), .CarryIn(c3),      .ALUOp(ALUOp), .Result(Result[3]). CarryOut(c4));
    ALU_1_bit a4(.a(a[4]), .b(b[4]), .CarryIn(c4),      .ALUOp(ALUOp), .Result(Result[4]). CarryOut(c5));
    ALU_1_bit a5(.a(a[5]), .b(b[5]), .CarryIn(c5),      .ALUOp(ALUOp), .Result(Result[5]). CarryOut(CarryOut));

endmodule
`include "MUX_3_1.v"

module immediate_generator(
    input [31:0] instructions;
    output reg [63:0] imm_value;
);

// imm[6:5] == 00 for load instr            |   {{52{instruction[31]}},instruction[31:20]} 
// imm[6:5] == 01 for store instr           |   {{52{instruction[31]}},instruction[31:25], instruction[11:7]}
// imm[6:5] == 1X for conditional instr     |   {{52{instruction[31]}},instruction[31], instruction[7], instruction[30:25], instruction[11:8]}

MUX_3_1 m1(.A({{52{instruction[31]}},instruction[31:20]}), .B({{52{instruction[31]}},instruction[31:25], instruction[11:7]}), .C({{52{instruction[31]}},instruction[31], instruction[7], instruction[30:25], instruction[11:8]}), .O(imm_value), .S(instruction[6:5]))
    
endmodule
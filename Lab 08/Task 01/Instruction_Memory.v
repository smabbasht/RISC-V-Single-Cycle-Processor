module Instruction_Memory (
    input  [63:0] Inst_address,
    output reg [31:0] Instruction
);
    reg [7:0] instr_mem [15:0]; // 16 bitsx8 = 16 bytes

    initial begin
        instr_mem [ 0] = 8'd10;
        instr_mem [ 1] = 8'd11;
        instr_mem [ 2] = 8'd12;
        instr_mem [ 3] = 8'd13;
        instr_mem [ 4] = 8'd14;
        instr_mem [ 5] = 8'd15;
        instr_mem [ 6] = 8'd16;
        instr_mem [ 7] = 8'd17;
        instr_mem [ 8] = 8'd18;
        instr_mem [ 9] = 8'd19;
        instr_mem [10] = 8'd20;
        instr_mem [11] = 8'd21;
        instr_mem [12] = 8'd22;
        instr_mem [13] = 8'd23;
        instr_mem [14] = 8'd24;
        instr_mem [15] = 8'd25;   
    end
    
    always @(Inst_address) begin
        case(Inst_address)
        64'd0 : Instruction = {instr_mem[3], instr_mem[2], instr_mem[1], instr_mem[0]};
        64'd4 : Instruction = {instr_mem[7], instr_mem[6], instr_mem[5], instr_mem[4]};
        64'd8 : Instruction = {instr_mem[11], instr_mem[10], instr_mem[9], instr_mem[8]};
        64'd12: Instruction = {instr_mem[15], instr_mem[14], instr_mem[13], instr_mem[12]};
        endcase
    end

endmodule

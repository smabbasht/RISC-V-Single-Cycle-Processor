
`include "Instruction_Memory.v"

module insMem_tb();
    reg  [63:0] Inst_address;
    wire [31:0] Instruction;

   Instruction_Memory im1 (.Inst_address(Inst_address), .Instruction(Instruction));

    initial begin
        Inst_address = 64'h0;
        #5
        Inst_address = 64'h4;
        #5
        Inst_address = 64'h8;
        #5
        Inst_address = 64'hc;
        #5
        Inst_address = 64'hf; // Dummy Case
        $finish;
    end

    initial begin
        $dumpfile("Inst_Memory.vcd");
        $dumpvars();
    end
endmodule
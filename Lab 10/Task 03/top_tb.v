`include "top_module.v"

module top_tb();
    reg  [6:0] Opcode;
    reg  [3:0] Funct;
    wire [3:0] Operation;
    wire Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite;

    top_module t1(.Opcode(Opcode), .Funct(Funct), .Operation(Operation), .Branch(Branch), .MemRead(MemRead), .MemWrite(MemWrite), .ALUSrc(ALUSrc), .RegWrite(RegWrite));

    initial begin
        Funct = 4'b0000; Opcode = 7'b1100011;  //Sb
        #10
        Funct = 4'b0000; Opcode = 7'b0100011; //sd
        #10
        Funct = 4'b0000; Opcode = 7'b0000011; //ld
        #10
        Funct = 4'b0000; Opcode = 7'b0110011; //Rtype
        #10
        Funct = 4'b1000;
        #10
        Funct = 4'b0111;
        #10
        Funct = 4'b0110; // Dummy-Case
        $finish;
    end

    initial begin
        $dumpfile("top.vcd");
        $dumpvars();
    end
endmodule

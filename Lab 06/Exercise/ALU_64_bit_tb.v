`include "ALU_64_bit.v"
`timescale 1ps/1ps

module ALU_64_bit_tb ();
    reg  [63:0] a;
    reg  [63:0] b;
    reg  [ 5:0] ALUop; 
    wire [63:0] o; 
    wire zero;
    
    ALU_64_bit a64_1 (.A(a), .B(b), .O(o), .ALUOp(ALUop), .Zero(zero));

    initial begin
       ALUop = 4'd0; a = 64'b101010; b = 64'b0;
       #50
       ALUop = 4'd1; a = 64'b101010; b = 64'b101100;
       #50
       ALUop = 4'd2; a = 64'b101010; b = 64'b101100;
       #50
       ALUop = 4'd6; a = 64'b101010; b = 64'b101100;
       #50
       ALUop = 4'd8; a = 64'b101010; b = 64'b101100; // Dummy Case
       $finish;
    end

    initial begin
        $dumpfile("ALU_64_bit_results.vcd");
        $dumpvars();
    end

endmodule

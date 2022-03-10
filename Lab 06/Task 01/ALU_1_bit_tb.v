module ALU_1_bit_tb();
    reg a, b , CarryIn;
    reg [3:0] ALUOp;
    wire Result, CarryOut;

    ALU_1_bit alu1(.a(a), .b(b), .CarryIn(CarryIn), .ALUOp(ALUOp), .Result(Result). CarryOut(CarryOut));

    initial begin
        ALUOp = 4'd0; a = 1'b1; b = 1'b1; CarryIn = 1'b1;   // AND
        #5
        ALUOp = 4'd1; a = 1'b1; b = 1'b1; CarryIn = 1'b1;   // OR
        #5
        ALUOp = 4'd2; a = 1'b1; b = 1'b1; CarryIn = 1'b1;   // Adder
        #5
        ALUOp = 4'd6; a = 1'b1; b = 1'b1; CarryIn = 1'b1;   // Subtract
        #5
        ALUOp = 4'd12; a = 1'b1; b = 1'b1; CarryIn = 1'b1;  // NOT
        #5
        ALUOp = 4'd2; a = 1'b1; b = 1'b1; CarryIn = 1'b1;   // Dummy Case
        $finish
    end

    initial 
        begin
            $dumpfile("dump.vcd");
            $dumpvars();
        end

endmodule
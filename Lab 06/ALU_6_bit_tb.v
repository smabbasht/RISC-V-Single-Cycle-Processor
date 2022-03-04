module ALU_6_bit_tb();
  reg [5:0] a;
  reg [5:0] b;
  wire CarrOut;
  reg CarryIn;
  reg [3:0] ALUOp;
  wire [5:0] Result;
      
  ALU_6_bit alu6_1(.a(a), .b(b), .CarryOut(CarrOut), .ALUOp(ALUOp), .Result(Result), .CarryIn(CarryIn));
  
  	initial begin
        ALUOp = 4'd0; a = 6'b101010; b = 6'b101100; CarryIn = 1'b1;
        #5
        ALUOp = 4'd1; a = 6'b101010; b = 6'b101100; CarryIn = 1'b1;
        #5
        ALUOp = 4'd2; a = 6'b101010; b = 6'b101100; CarryIn = 1'b1;
        #5
        ALUOp = 4'd6; a = 6'b101010; b = 6'b101100; CarryIn = 1'b1;
        #5
        ALUOp = 4'd12; a = 6'b101010; b = 6'b101100; CarryIn = 1'b1;
        #5
        ALUOp = 4'd2; // Dummy Case
        $finish;
    end
  
  initial begin
      $dumpfile("testResults.vcd");
      $dumpvars();
    end
endmodule
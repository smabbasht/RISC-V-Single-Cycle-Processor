module instruction_parser_tb();
  reg  [31: 0] instruction;
  wire [ 6: 0] opcode;
  wire [11: 7] rd;
  wire [14:12] funct3;
  wire [19:15] rs1;
  wire [24:20] rs2;
  wire [31:25] funct7;

    instruction_parser p1(.instruction(instruction), .opcode(opcode), .rd(rd), .funct3(funct3), .rs1(rs1), .rs2(rs2), .funct7(funct7));

    initial begin
        instruction = 32'd214748364;
        #5
        instruction = 32'd414748364;
        #5
        instruction = 32'd41474834; // dummy 
        $finish;
    end
  
  initial begin
  $dumpvars();
  $dumpfile("dump.vcd");
  end
  
endmodule
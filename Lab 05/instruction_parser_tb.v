`include "instruction_parser"

module instruction_parser_tb();
  reg  [31: 0] instruction;
  wire [ 6: 0] opcode;
  wire [ 4: 0] rd;
  wire [ 2: 0] funct3;
  wire [ 4: 0] rs1;
  wire [ 4: 0] rs2;
  wire [ 6: 0] funct7;

  instruction_parser p1(.instruction(instruction), .opcode(opcode), .rd(rd), .funct3(funct3), .rs1(rs1), .rs2(rs2), .funct7(funct7));

  instruction = 32'd214748364;
  #100
  instruction = 32'd414748364;
  #100
  instruction = 32'd41474834; // Dummy Case
  $finish;

  
  initial begin
  $dumpfile("inst_pars.vcd");
  $dumpvars();
  end
  
endmodule

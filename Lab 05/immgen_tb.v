module immgen_tb();
    reg [31:0] instr;
    wire [63:0] imm_value;

    immediate_generator imm1(.instruction(instr), .imm_value(imm_value));

    initial begin
        instr = 32'b11111111111100000000000000000000;
        #5
        instr = 32'b11111111111100000000000000100000;
        #5
        instr = 32'b11111111111100000000000001000000;
        #5
        instr = 32'b11111111111100000000000001100000;
        #5
        instr = 32'd41474834; // dummy case
        $finish;
    end

    initial begin
    $dumpvars();
    $dumpfile("dump.vcd");
    end
    
endmodule

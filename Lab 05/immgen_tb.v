module immgen_tb();
    reg [31:0] instr;
    wire [63:0] imm_value;

    immediate_generator imm1(.instruction(instr), .imm_value(imm_value))

    initial begin
        instr = 32'b1111 1111 1111 1111 0000 0000 0000 0000 0000 0000 0000 0000;
        #5
        instr = 32'b1111 1111 1111 1111 0000 0000 0000 0000 0000 0000 0010 0000;
        #5
        instr = 32'b1111 1111 1111 1111 0000 0000 0000 0000 0000 0000 0100 0000;
        #5
        instr = 32'b1111 1111 1111 1111 0000 0000 0000 0000 0000 0000 0110 0000;
        #5
        instr = 32'd41474834; // dummy case
        $finish;
    end

    initial begin
    $dumpvars();
    $dumpfile("dump.vcd");
    end
    
endmodule
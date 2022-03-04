module ALU_1_bit (
    input a, b, CarryIn,
    input [3:0] ALUOp,
    output reg Result, CarryOut,
    wire mux1out, mux2out, and1out, or1out, carryadderout
);
    
    assign mux1out = (ALUOp[3] == 0) ? a:~a;
    assign mux2out = (ALUOp[2] == 0) ? b:~b;

    assign and1out = mux1out & mux2out;
    assign or1out = mux1out | mux2out;
    assign carryadderout = mux1out + mux2out + CarryIn;

    assign CarryOut = (mux1out&mux2out3) | (mux1out&CarryIn) | (mux2out&CarryIn);
    assign Result = (ALUOp[1:0] == 2'b00) ? and1out: (ALUOp[1:0] == 2'b01) ? or1out: carryadderout;


endmodule

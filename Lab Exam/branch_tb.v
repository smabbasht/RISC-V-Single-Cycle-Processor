`include "branch.v"

module branchTest ();
    reg  [63:0] Result;
    reg  [ 2:0] Funct;
    reg  Branch;
    wire BLT, BGE;

   branch b1 (.Result(Result), .Funct(Funct), .Branch(Branch), .BLT(BLT), .BGE(BGE));

    initial begin
        // For BLT
        Result = 64'd4;
        // BLT should be high
        Funct = 3'b100; Branch = 1'b1; Result[63] = 1'b1;
        #5
        Result[63] = 1'b0;
        #5
        Funct = 3'b101; Result[63] = 1'b0;
        #5
        Result[63] = 1'b1;
        #5
        Funct = 3'b100;
        #5
        Branch = 1'b0;
        #5
        Funct = 3'b101; // Dummy Case
        $finish;
    end

    initial begin
        $dumpfile("Branch.vcd");
        $dumpvars();
    end
endmodule
module branch (
    input [63:0] Result,
    input [ 2:0] Funct,
    input Branch,
    output reg BLT, BGE);

    always @(Result or Branch or Funct) begin
        if (Branch==1'b1) begin
            // Checking for BLT
            if (Funct == 3'b100) begin
                BGE = 1'b0; // always
                if (Result[63]==1'b1)
                    BLT = 1'b1;
                else
                    BLT = 1'b0;
            end
            // Checking for BGE
            else if (Funct == 3'b101) begin
                BLT = 1'b0; // always
                if (Result[63]==1'b0)
                    BGE = 1'b1;
                else
                    BGE = 1'b0;
            end
        end
        else begin
            // Assigning both of them to low if Branch is low
            BLT = 1'b0; BGE = 1'b0;
        end
    end
endmodule

module Data_Memory(
    input  [63:0] Mem_Addr,
    input  [63:0] WriteData,
    input  clk, MemWrite, MemRead,
    output reg [63:0] Read_Data
);
    always @(posedge clk) begin
        if (MemWrite==1'b1)
            Read_Data = WriteData;
    end

    always @(Mem_Addr) begin
        if (MemRead==1'b1)
            Read_Data = ؐMem_Addr;

    end

endmodule
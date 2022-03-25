`include "Data_Memory.v"

module Data_Memory_tb();
    reg  [63:0] Mem_Addr, writeData;
	reg  clk, memWrite, memRead;
	wire [63:0] readData;

    Data_Memory d1(.Mem_Addr(Mem_Addr), .WriteData(writeData), .MemWrite(memWrite), .MemRead(memRead), .clk(clk), .Read_Data(readData));

    initial clk = 1'b0;

    always #20 clk=~clk;

    initial begin
        memWrite = 1'b1; memRead = 1'b1; 
        Mem_Addr  = 64'd10; writeData = 64'd20;
        #15
        Mem_Addr  =  64'd5; writeData = 64'd20;  
        #15
        Mem_Addr  = 64'd10; writeData = 64'd30; // Re-assignment Check
        #15
        Mem_Addr  = 64'd10; writeData = 64'd40; // Dummy Case
        $finish;
    end

    initial begin
        $dumpfile("Data_Memory.vcd");
        $dumpvars();
    end
endmodule

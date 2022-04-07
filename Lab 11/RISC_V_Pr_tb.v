`include "RISC_V_Processor.v"

module RISC_V_Pr_tb();  
    reg clk, reset;
  
    RISC_V_Processor RISCV(.clk(clk), .reset(reset));
  
    initial begin
      $dumpfile("RISC_V_Processor.vcd");
      $dumpvars();
    end

    initial begin
      reset = 1'b1;
      clk = 1'b0;
      #2
      reset = 1'b0;
    end
  
    always  #5 clk = ~clk; 
  
    initial #30 $finish;

endmodule

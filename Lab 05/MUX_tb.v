`include "MUX.v"
`timescale 1ps/1ps

module MUX_tb();

    reg [63:0] At, Bt;
    wire [63:0] Ot;
    reg St;

    MUX m1(.A(At), .B(Bt), .O(Ot), .S(St));

    initial 
        begin
            At=64'd2048; Bt=64'd4096; St=0; // A should be passed i-e 2048
            #100
            At=64'd2048; Bt=64'd4096; St=1; // B should be passed i-e 4096
            #100
            At=64'd1024; Bt=64'd8192; St=0; // A should be passed i-e 1024
            #50
            At=64'd1024; Bt=64'd8192; St=1; // dummy case
            $finish;
        end

    initial 
        begin
            $dumpfile("mux_results.vcd");
            $dumpvars();
        end
endmodule

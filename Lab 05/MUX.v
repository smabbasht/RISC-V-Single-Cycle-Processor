module MUX(
    input A[63:0],
    input B[63:0],
    output O[63:0],
    input S
);

assign O = (S==1'b0) ? A: B;

endmodule



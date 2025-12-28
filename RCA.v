`timescale 1ns / 1ps

module RCA  #(parameter n=8)
(input [n-1:0]A,[n-1:0]B, Cin, output [n:0] sum, Cout );

    genvar j;
    wire [n:0]C;
    generate
        assign C[0] = Cin;
        for(j = 0; j < n; j = j+1)
        begin: go
        full_adder FA( .A(A[j]), .B(B[j]),.Cin(C[j]), .sum(sum[j]), .Cout(C[j+1]));
        
        
        end
        assign Cout = C[n];        
    endgenerate



endmodule

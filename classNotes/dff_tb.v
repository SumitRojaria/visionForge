`timescale 1ns/1ns
`include "dff.v"

module dff_tb;

reg D=0 , clk=0;
wire Q;

dff uut(D, clk, Q);

always begin
    clk= ~clk;
    #10;
end

initial begin
    $dumpfile("dff_tb.vcd");
    $dumpvars(0, dff_tb);

    D=0; #45;
    D=1; #40;
    D=0; #40;

    $finish;
end

endmodule
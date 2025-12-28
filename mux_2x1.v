`timescale 1ns / 1ps

module mux_2x1(input a,b, s, output c);

wire x=b&&(~s);
wire y=a&&s;
assign c=x||y;

endmodule

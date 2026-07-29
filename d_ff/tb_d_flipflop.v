`timescale 1ns/1ps
module tb_dff;
reg d , clk ;
wire q;

d_ff DUT (.d(d), .clk(clk), .q(q));
always begin #5 clk =~clk; end

initial begin
clk =0;
d =0;
#7; d=1;
#10; d=0;
#10; d=1;
#10; $finish ;
end
endmodule

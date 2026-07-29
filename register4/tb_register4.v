`timescale 1ns/1ps
module regtb;
reg [3:0] d; 
reg clk;
wire [3:0] q;
register4 DUT(.q(q),.d(d),.clk(clk));

always #5 clk = ~clk;

initial
begin
clk =0;
#12 d=4'b0001;
#12 d=4'b0010;
#12 d=4'b1001;
#12 d=4'b0111;
#12;
$finish;
end
endmodule


module count4tb;
reg clk, reset;
wire [3:0]count;

counter4 UUT (.count(count), .clk(clk));
always #5 clk = ~clk;

initial begin
clk =0;
reset =0;
#6; reset=1;
#6; reset=0;


#200;
$finish;
end
endmodule

module counter4 (input clk, reset, output reg [3:0]count=4'b0000);

always @(posedge clk)

begin
if(reset)begin
count<=0; end
else begin
 count <= count +1; end
end
endmodule

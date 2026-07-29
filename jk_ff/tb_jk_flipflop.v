module jktb;
reg j , k , clk;
wire q;
jk_ff DUT(.j(j),.k(k),.clk(clk),.q(q));
always #5 clk = ~clk;

initial begin
clk=0;
{j,k}=2'b00;


#13; {j,k}=2'b00;
#13; {j,k}=2'b01;
#13; {j,k}=2'b10;
#13; {j,k}=2'b11;

#10;
$finish;

end
endmodule 

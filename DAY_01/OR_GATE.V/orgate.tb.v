module or_tb;
reg a,b;
wire c;
orgate dut (a,b,c);
initial begin
$monitor("time=%0t a=%0d b=%0d c=%0d",$time ,a,b,c);
$dumpfile("ORGATE.vcd");
$dumpvars(0);
#1 a=0;b=0;
#1 a=0;b=1;
#1 a=1;b=0;
#1 a=1;b=1;
$finish;
end
endmodule 

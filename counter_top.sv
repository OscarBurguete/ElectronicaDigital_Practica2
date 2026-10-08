module counter_top(
input logic clk, clear,
output logic a,b,c,d,e,f,g);

logic clk_div_w;
logic in_or;
logic clear_top;
logic [3:0] cont_w;

counter25 m0(
.reset(clear_top),     
.clk(clk),  
.div_clk(clk_div_w));

counter4 m1( 
.reset(clear_top), 
.div_clk(clk_div_w), 
.cont(cont_w) 
);

comparator m2(
.cont(cont_w), 
.reset(in_or) 
);

or_module m3(
.in_one(clear), 
.in_two(in_or), 
.reset_out(clear_top));

decoder m4(
.data(cont_w),
.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));



endmodule

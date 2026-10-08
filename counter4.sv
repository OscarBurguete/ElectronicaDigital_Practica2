module counter4(
input logic reset, div_clk,
output logic [3:0] cont);

always_ff@(posedge reset, posedge div_clk) begin    

if(reset)
    cont <= 4'd0;
else        
    cont <= cont + 1'b1;     

end
endmodule

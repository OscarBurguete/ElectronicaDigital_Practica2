module counter25(
input logic clk, reset,
output logic div_clk);

reg [24:0]q;

always_ff@(posedge reset, posedge clk)begin
    if(reset)
        q <= 1'b0;
    else
        q <= q + 1'b1;
end

assign div_clk = q[24]; 

endmodule

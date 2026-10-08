module comparator(
input logic[3:0]cont,
output logic reset);

assign reset = (cont==4'd10)? 1'b1 : 1'b0;

endmodule

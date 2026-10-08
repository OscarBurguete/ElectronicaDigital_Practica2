module or_module(
input logic in_one, in_two,
output logic reset_out);

assign reset_out = in_one || in_two;

endmodule
 
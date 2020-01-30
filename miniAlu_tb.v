`timescale 1ns / 1ps

module miniAlu_tb;

// Inputs
reg [4:0] A;
reg [4:0] B;
reg [2:0] Op;

// Outputs
wire [4:0] R;

// Instantiate the Unit Under Test (UUT)
miniAlu uut (
.A(A),
.B(B),
.Op(Op),
.R(R)
);

initial begin
// Apply inputs
A = 5'b00101;
B = 5'b00011;
Op = 0; #10;
Op = 1; #10; 
Op = 2; #10;
Op = 3; #10;
Op = 4; #10;
Op = 5; #10;
Op = 6; #10;
Op = 7; #10;
end

endmodule

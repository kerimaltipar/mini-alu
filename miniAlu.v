module miniAlu(
A,
B,
Op,
R );

// Inputs
input [4:0] A,B;
input [2:0] Op;

// Outputs
output [4:0] R;

wire [4:0] Reg1,Reg2;
reg [4:0] Reg3;

assign Reg1 = A;
assign Reg2 = B;

assign R = Reg3;

always @(Op or Reg1 or Reg2)
begin
case(Op)
0 : Reg3 = Reg1 + Reg2; // Toplama
1 : Reg3 = Reg1 - Reg2; // Ç?karma
2 : Reg3 = ~Reg1; // NOT gate(A)
3 : Reg3 = ~Reg2; // NOT gate(B)
4 : Reg3 = Reg1 & Reg2; // AND gate
5 : Reg3 = Reg1 | Reg2; // OR gate
6 : Reg3 = Reg1 ^ Reg2; // XOR gate
7 : Reg3 = Reg2 << 1; // Rotate Left
endcase
end

endmodule 

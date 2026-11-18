module alu_8bit_major (
    input [7:0] A, B,          // 8-bit Inputs
    input [3:0] ALU_Sel,        // ALU Selection
    output reg [7:0] ALU_Out,   // ALU Output
    output reg CarryOut,        // Carry Flag
    output reg Zero,            // Zero Flag
    output reg Overflow
);

always @(*) begin
    CarryOut = 0;
    case(ALU_Sel)
        4'b0000: {CarryOut, ALU_Out} = A + B;          // ADD
        4'b0001: {CarryOut, ALU_Out} = A - B;          // SUB
        4'b0010: ALU_Out = A * B;                      // MUL
        4'b0011: ALU_Out = (B!=0) ? A / B : 8'h00;     // DIV
        4'b0100: ALU_Out = A & B;                      // AND
        4'b0101: ALU_Out = A | B;                      // OR
        4'b0110: ALU_Out = A ^ B;                      // XOR
        4'b0111: ALU_Out = ~A;                         // NOT
        4'b1000: ALU_Out = A << 1;                     // SHL
        4'b1001: ALU_Out = A >> 1;                     // SHR
        4'b1010: ALU_Out = {A[6:0], 1'b0};             // ROL
        4'b1011: ALU_Out = {1'b0, A[7:1]};             // ROR
        4'b1100: ALU_Out = (A > B) ? 8'd1 : 8'd0;      // Greater Than
        4'b1101: ALU_Out = (A == B) ? 8'd1 : 8'd0;     // Equal
        default: ALU_Out = 8'h00;
    endcase
    Zero = (ALU_Out == 8'h00) ? 1'b1 : 1'b0;
end
endmodule

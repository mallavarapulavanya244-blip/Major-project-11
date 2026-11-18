`timescale 1ns / 1ps
module tb_alu_major;
    reg [7:0] A, B;
    reg [3:0] ALU_Sel;
    wire [7:0] ALU_Out;
    wire CarryOut, Zero, Overflow;
    
    alu_8bit_major dut (.A(A), .B(B), .ALU_Sel(ALU_Sel), .ALU_Out(ALU_Out), .CarryOut(CarryOut), .Zero(Zero), .Overflow(Overflow));
    
    initial begin
        $dumpfile("alu_waveform.vcd");
        $dumpvars(0, tb_alu_major);
        
        $display("--- Major Project 1: 8-Bit ALU Verification ---");
        A = 8'd15; B = 8'd10;
        
        ALU_Sel = 4'b0000; #20; $display("ADD: %d + %d = %d", A, B, ALU_Out);
        ALU_Sel = 4'b0001; #20; $display("SUB: %d - %d = %d", A, B, ALU_Out);
        ALU_Sel = 4'b0010; #20; $display("MUL: %d * %d = %d", A, B, ALU_Out);
        ALU_Sel = 4'b0100; #20; $display("AND: %d & %d = %d", A, B, ALU_Out);
        ALU_Sel = 4'b0101; #20; $display("OR: %d | %d = %d", A, B, ALU_Out);
        ALU_Sel = 4'b0110; #20; $display("XOR: %d ^ %d = %d", A, B, ALU_Out);
        ALU_Sel = 4'b0111; #20; $display("NOT A: ~%d = %d", A, ALU_Out);
        
        A = 8'd0; B = 8'd0;
        ALU_Sel = 4'b0000; #20;
        
        $finish;
    end
endmodule

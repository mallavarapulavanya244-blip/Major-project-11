# 8-Bit Arithmetic Logic Unit (ALU) using Verilog HDL
## Project Description
This project presents the design and verification of an **8-Bit Arithmetic Logic Unit (ALU)** using **Verilog HDL**. It takes two 8-bit inputs (`A` and `B`) and performs **14 arithmetic, logical, shift, and comparison operations** based on a 4-bit control signal (`ALU_Sel`), along with generating **CarryOut** and **Zero** status flags.

## Tools Used
* **Hardware Description Language:** Verilog HDL
* **Simulation Platform:** EDA Playground (Icarus Verilog)
* **Waveform Viewer:** EPWave

## How It Works
* **Inputs (`A`, `B`):** Two 8-bit binary operands.
* **Control (`ALU_Sel`):** A 4-bit opcode selects the operation (`0000` ADD, `0001` SUB, `0010` MUL, `0011` DIV, `0100`–`0111` AND/OR/XOR/NOT, `1000`–`1011` Shifts, `1100`–`1101` Comparisons).
* **Outputs:** `ALU_Out` displays the 8-bit result, while the `Zero` flag goes HIGH (`1`) whenever the output is `0`.

## How to Run
1. Open **EDA Playground** and paste `alu_8bit_major.v` in the design editor and `tb_alu_major.v` in the testbench editor.
2. Select **Icarus Verilog** as the simulator and check **"Open EPWave after run"**.
3. Click **Run** to execute the simulation and view the timing waveforms in **EPWave**.
<img width="1600" height="201" alt="WhatsApp Image 2026-11-18 at 6 55 06 PM" src="https://github.com/user-attachments/assets/0c989376-121d-41e8-81a3-6a983c379b39" />

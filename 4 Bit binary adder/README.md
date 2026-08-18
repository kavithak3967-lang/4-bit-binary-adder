4-Bit Binary Adder Using Verilog
📌 Introduction
A 4-bit Binary Adder is a digital circuit that performs the addition of two 4-bit binary numbers. It can also accept an input carry and produce an output carry.

This project implements a 4-bit binary adder using Verilog HDL. A testbench is created to verify the design, and the circuit is simulated using Icarus Verilog and GTKWave.

🎯 Objectives
Design a 4-bit binary adder using Verilog HDL.
Understand binary addition and carry generation.
Create a Verilog testbench.
Verify the design using simulation.
Observe the input and output waveforms.
Upload and document the project on GitHub.
⚙️ Inputs and Outputs
Signal	Type	Width	Description
A	Input	4 bits	First binary number
B	Input	4 bits	Second binary number
Cin	Input	1 bit	Carry input
Sum	Output	4 bits	Addition result
Cout	Output	1 bit	Carry output

The operation performed is:

A + B + Cin = {Cout, Sum}

🧩 Block Diagram
              ┌──────────────────────┐
              │                      │
 A[3:0] ─────►│                      │
              │     4-BIT BINARY     │─────► Sum[3:0]
 B[3:0] ─────►│        ADDER         │
              │                      │─────► Cout
   Cin ──────►│                      │
              └──────────────────────┘

🔢 Example
Suppose:

A   = 1010
B   = 0101
Cin = 0001

Then:

    1010
  + 0101
  + 0001
  ------
   10000

Therefore:

Sum  = 0000
Cout = 1
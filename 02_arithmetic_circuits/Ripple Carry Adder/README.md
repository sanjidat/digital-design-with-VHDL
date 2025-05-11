# Ripple Carry Adder (VHDL)
```markdown
This project demonstrates the implementation of a **Ripple Carry Adder (RCA)** in **VHDL**. A ripple carry adder is a simple combinational circuit used to perform binary addition of two numbers.

## 🧠 Overview

The **Ripple Carry Adder (RCA)** adds two binary numbers and produces a sum and a carry output. It consists of multiple full adders connected in series, where the carry from each full adder ripples into the next one. Although simple to design, the ripple carry adder suffers from a delay due to the sequential propagation of carries, hence it's typically not the fastest option for large bit-width adders.

This project includes the design of the RCA for adding two 4-bit binary numbers.

### Ripple Carry Adder Structure:

- **Inputs:**
  - Two n-bit binary numbers to be added.
  - A carry-in bit (optional for multi-bit addition).
  
- **Outputs:**
  - The sum of the two binary numbers.
  - A carry-out bit.

### Truth Table

| A3 A2 A1 A0 | B3 B2 B1 B0 | Cin | Sum3 Sum2 Sum1 Sum0 | Cout |
| ----------- | ----------- | --- | ------------------- | ---- |
| 0000        | 0000        | 0   | 0000                | 0    |
| 0001        | 0000        | 0   | 0001                | 0    |
| 0001        | 0001        | 0   | 0010                | 0    |
| 0101        | 0001        | 0   | 0110                | 0    |
| 0101        | 0101        | 0   | 1010                | 0    |
| 1111        | 0001        | 0   | 0000                | 1    |
| 1111        | 1111        | 0   | 1110                | 1    |
| 0100        | 0110        | 1   | 1011                | 0    |
| 1111        | 1111        | 1   | 1111                | 1    |

# 📁 Project Structure
and_gate/
├── rca_behavioral.vhd # Ripple Carry Adder Behavioral Module VHDL code
├── rca_behavioral_tb.vhd # Testbench for Ripple Carry Adder Behavioral Module simulation 
├── rca_behavioral.png # Ripple Carry Adder Behavioral Module Waveform
├── rca_dataflow.vhd # Ripple Carry Adder dataflow Module VHDL code
├── rca_dataflow_tb.vhd # Testbench for Ripple Carry Adder dataflow Module simulation 
├── rca_dataflow.png # Ripple Carry Adder dataflow Module Waveform
├── rca_structural.vhd # Ripple Carry Adder structural Module VHDL code
├── rca_structural_tb.vhd # Testbench for Ripple Carry Adder structural Module simulation 
├── rca_structural.png # Ripple Carry Adder structural Module Waveform

▶️ How to Simulate
Open your preferred VHDL simulator (e.g., Xilinx ISE, ModelSim, Vivado, GHDL).
Add both .vhd files to your project.
Run the simulation on and_gate_tb.
Observe the output waveform or console results.

## Tools Used
- VHDL (IEEE STD_LOGIC_1164)
- Xilinx ISE / ISIM (Simulation tools)

🙋‍♀️ Author Developed by Sanjida Orin Tawhid

More modules will be added as I progress through the course.

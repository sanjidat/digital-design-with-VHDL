# 02_arithmetic_circuits
```markdown
## 🔍 Overview
This repository contains implementations of fundamental arithmetic circuits used in digital systems. The following circuits are included in this folder:

Half Adder: A circuit that adds two single-bit binary numbers, producing a sum and a carry-out.

Full Adder: A circuit that adds two single-bit binary numbers and a carry-in, producing a sum and a carry-out.

Ripple Carry Adder (RCA): A circuit that adds two multi-bit binary numbers using multiple full adders in a ripple fashion.

These modules are provided in three different architectural styles for each adder: Structural, Behavioral, and Dataflow.

The three styles showcase different VHDL design approaches:

Structural: This approach explicitly instantiates lower-level components (like gates or smaller modules) and connects them together.

Behavioral: Describes the functionality of the circuit using high-level operations without focusing on specific hardware implementation.

Dataflow: Describes how data moves through the system using concurrent signal assignments.

These adders are essential building blocks for more complex arithmetic operations in digital electronics.

## 📁 Project Structure

02_arithmetic_circuits/
Full Adder/
├── fulladder_behavioral.vhd     # Full Adder Behavioral Module VHDL code
├── fulladder_behavioral_tb.vhd  # Testbench for Full Adder Behavioral Module simulation 
├── fulladder_behavioral.png     # Full Adder Behavioral Module Waveform
├── fulladder_dataflow.vhd       # Full Adder dataflow Module VHDL code
├── fulladder_dataflow_tb.vhd    # Testbench for Full Adder dataflow Module simulation 
├── fulladder_dataflow.png       # Full Adder dataflow Module Waveform
├── fulladder_structural.vhd     # Full Adder structural Module VHDL code
├── fulladder_structural_tb.vhd  # Testbench for Full Adder structural Module simulation 
├── fulladder_structural.png     # Full Adder structural Module Waveform
Full Adder/
├── half_adder_behavioral.vhd    # Half Adder Behavioral Module VHDL code
├── half_adder_behavioral_tb.vhd # Testbench for Half Adder Behavioral Module simulation 
├── half_adder_behavioral.png    # Half Adder Behavioral Module Waveform
├── half_adder_dataflow.vhd      # Half Adder dataflow Module VHDL code
├── half_adder_dataflow_tb.vhd   # Testbench for Half Adder dataflow Module simulation 
├── half_adder_dataflow.png      # Half Adder dataflow Module Waveform
├── half_adder_structural.vhd    # Half Adder structural Module VHDL code
├── half_adder_structural_tb.vhd # Testbench for Half Adder structural Module simulation 
├── half_adder_structural.png    # Half Adder structural Module Waveform
Ripple Carry Adder/
├── rca_behavioral.vhd           # Ripple Carry Adder Behavioral Module VHDL code
├── rca_behavioral_tb.vhd        # Testbench for Ripple Carry Adder Behavioral Module simulation 
├── rca_behavioral.png           # Ripple Carry Adder Behavioral Module Waveform
├── rca_dataflow.vhd             # Ripple Carry Adder dataflow Module VHDL code
├── rca_dataflow_tb.vhd          # Testbench for Ripple Carry Adder dataflow Module simulation 
├── rca_dataflow.png             # Ripple Carry Adder dataflow Module Waveform
├── rca_structural.vhd           # Ripple Carry Adder structural Module VHDL code
├── rca_structural_tb.vhd        # Testbench for Ripple Carry Adder structural Module simulation 
├── rca_structural.png           # Ripple Carry Adder structural Module Waveform

# Half Adder
## Truth Table (Half Adder)

| A | B |     Sum     |     Carry     |
|---|---|-------------|---------------|
| 0 | 0 |      0      |       0       |
| 0 | 1 |      1      |       0       |
| 1 | 0 |      1      |       0       |
| 1 | 1 |      0      |       1       |


# Full Adder
## Truth Table (Full Adder)

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 |  0  |  0  |  0   |
| 0 | 0 |  1  |  1  |  0   |
| 0 | 1 |  0  |  1  |  0   |
| 0 | 1 |  1  |  0  |  1   |
| 1 | 0 |  0  |  1  |  0   |
| 1 | 0 |  1  |  0  |  1   |
| 1 | 1 |  0  |  0  |  1   |
| 1 | 1 |  1  |  1  |  1   |

# Ripple Carry Adder
## Truth Table (Ripple Carry Adder)

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

## How to Simulate
Use Xilinx ISE, ModelSim, or Vivado:
1. Compile both `.vhd` files
2. Run simulation
3. Verify waveform

## Tools Used
- VHDL (IEEE STD_LOGIC_1164)
- Xilinx ISE / ISIM (Simulation tools)

🙋‍♀️ Author Developed by Sanjida Orin Tawhid

More modules will be added as I progress through the course.

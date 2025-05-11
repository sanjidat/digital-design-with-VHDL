# AND Gate (VHDL)

This project implements a basic **2-input AND Gate** using VHDL, along with a testbench to simulate and verify its functionality.

## 🔧 Description

An AND gate is a basic digital logic gate that outputs `1` only when **both inputs** are `1`. Otherwise, it outputs `0`.

### Truth Table

| A | B | Output |
|---|---|--------|
| 0 | 0 |   0    |
| 0 | 1 |   0    |
| 1 | 0 |   0    |
| 1 | 1 |   1    |

## 📁 Project Structure

and_gate/
├── and_gate.vhd # AND gate VHDL code
├── and_gate_tb.vhd # Testbench for simulation
├── and_gate_waveform.png # AND gate Waveform

▶️ How to Simulate
Open your preferred VHDL simulator (e.g., ModelSim, Vivado, GHDL).
Add both .vhd files to your project.
Run the simulation on and_gate_tb.
Observe the output waveform or console results.

## Tools Used
- VHDL (IEEE STD_LOGIC_1164)
- Xilinx ISE / ISIM (Simulation tools)

🙋‍♀️ Author Developed by Sanjida Orin Tawhid

More modules will be added as I progress through the course.

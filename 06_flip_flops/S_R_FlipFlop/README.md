# SR Flip-Flop (Set-Reset Flip-Flop) - VHDL Implementation

This repository contains the VHDL implementation and testbench for an **SR Flip-Flop**, a fundamental sequential logic circuit used in digital electronics.

## 📘 Description

An **SR Flip-Flop** (Set-Reset Flip-Flop) is a simple memory element with two inputs:

- **S (Set)**: Sets the output to 1.
- **R (Reset)**: Resets the output to 0.

The flip-flop stores a bit of data until the inputs are changed and is often used in sequential circuits like latches, registers, and counters.

### Truth Table

| S | R | Q (next) | Description       |
|---|---|-----------|-------------------|
| 0 | 0 | Q (no change) | Hold state        |
| 0 | 1 | 0         | Reset             |
| 1 | 0 | 1         | Set               |
| 1 | 1 | Invalid   | Not allowed       |

> **Note:** The (1,1) condition is considered invalid or forbidden in basic SR flip-flop design.

---
# 📁 Project Structure
<pre>
06_flip_flops
├── S_R_FlipFlop
│ └── SR_FlipFlop.vhd           # Main VHDL Module for SR FlipFlop
│ └── SR_FlipFlop_tb.vhd        # Testbench for simulation
│ └── S_R_FlipFlop_Waveform.PNG # SR FlipFlop Waveform
└──   README.md                 # This File
</pre>

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

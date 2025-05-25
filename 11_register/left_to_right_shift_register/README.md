# Left-to-Right Shift Register - VHDL Implementation

This repository contains the VHDL implementation and testbench for an **SR Flip-Flop**, a fundamental sequential logic circuit used in digital electronics.

## 📘 Overview

This project implements a **Left-to-Right Shift Register** in VHDL. It is a fundamental digital component used to shift bits serially from the most significant bit (MSB) toward the least significant bit (LSB) on each clock cycle.

This simple design is ideal for learning how sequential circuits and bit manipulation work in digital systems.

---
## 🔧 Features

- Shifts data from left to right (MSB → LSB)
- Synchronous operation with rising-edge clock
- Asynchronous reset functionality
- Designed for simulation and educational use

---

```markdown
# 📁 Project Structure
11_register
├── left_to_right_shift_register
│ └── README.md
│ └── shift_register.vhd                            # Main VHDL Module 
│ └── shift_register_tb.vhd                         # Testbench for simulation
│ └── left_to_right_shift_register_Waveform.PNG     # Waveform

```markdown


🧠 Applications
- Serial data transmission and reception

- Signal delay buffers

- Finite State Machine (FSM) implementation

- Basic data path operations

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

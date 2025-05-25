# Universal Shift Register (4-bit) - VHDL Implementation

## 📘 Overview

This project implements a **Universal Shift Register** in VHDL. Unlike basic shift registers, a universal shift register supports **multiple modes of operation** including parallel load, shift left, shift right, and hold.

It is a versatile component commonly used in complex digital systems such as microprocessors, communication circuits, and data processing pipelines.

---

## 🔧 Features

- **4-bit register width**
- Supports 4 modes of operation:
  - **Hold** (no change)
  - **Shift Left**
  - **Shift Right**
  - **Parallel Load**
- Synchronous control using a mode select signal
- Clock-driven operation
- Asynchronous reset

---

## 🧾 Mode Control

| `mode` Value | Operation       |
|--------------|-----------------|
| `00`         | Hold            |
| `01`         | Shift Right     |
| `10`         | Shift Left      |
| `11`         | Parallel Load   |

---

# 📁 Project Structure
<pre>
11_register
├── universal_shift_register_4_bit
│ └── README.md
│ └── universal_shift_register.vhd           # Main VHDL Module 
│ └── universal_shift_register_tb.vhd        # Testbench for simulation
│ └── universal_shift_register_Waveform.PNG  # Waveform
</pre>

🧠 Applications
- CPU and ALU registers

- Bit-wise data manipulation

- Serial-to-parallel or parallel-to-serial conversion

- Communication protocols



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

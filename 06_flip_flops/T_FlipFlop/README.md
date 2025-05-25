# 🔁 T Flip-Flop - VHDL Implementation

## 📝 Overview

This project implements a **T (Toggle) Flip-Flop** using VHDL. The T flip-flop is a fundamental sequential logic device that changes its output state on each clock pulse when its T input is high. It is commonly used in counters and frequency divider circuits.

---
## ⚙️ Features

- **Toggle behavior** when T = 1
- **No change** when T = 0
- Synchronous operation with rising clock edge
- Asynchronous reset functionality
- Synthesizable and testbench-verified design
- Ideal for use in sequential circuits and digital systems

---
| **T (Toggle Input)** | **Clock Edge** | **Q (Next State)** | **Description**    |
| -------------------- | -------------- | ------------------ | ------------------ |
| 0                    | ↑ (Rising)     | Q (No Change)      | Hold current state |
| 1                    | ↑ (Rising)     | Q' (Toggle)        | Toggle the output  |

---

## 📁 Project Structure
<pre>
t_flip_flop/
├── t_flip_flop.vhd           # Main T Flip-Flop VHDL module
├── t_flip_flop_tb.vhd        # Testbench for simulation
├── t_flip_flop_waveform.PNG  # Output waveform image
└── README.md                 # Documentation
</pre>

---
## 🔄 Applications

- Binary counters
- Clock dividers
- Toggle-based control systems
- Sequential timing circuits

---
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

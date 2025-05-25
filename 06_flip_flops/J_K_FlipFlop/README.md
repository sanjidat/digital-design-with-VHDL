# 🔁 JK Flip-Flop (VHDL)

## 📝 Overview

This project implements a **JK Flip-Flop** using VHDL. A JK flip-flop is a fundamental memory element used in sequential digital circuits. It is an enhancement of the SR flip-flop that eliminates the invalid condition and provides toggling functionality.

---

## ⚙️ Features

- Standard JK flip-flop behavior:
  - **J = 0, K = 0** → No change
  - **J = 0, K = 1** → Reset
  - **J = 1, K = 0** → Set
  - **J = 1, K = 1** → Toggle
- Synchronous with rising clock edge
- Asynchronous reset input
- Synthesizable design
- Verified with testbench and simulation

---
### Truth Table

| J | K | Q (next)      | Description       |
|---|---|---------------|-------------------|
| 0 | 0 | Q (no change) | Hold state        |
| 0 | 1 | 0             | Reset             |
| 1 | 0 | 1             | Set               |
| 1 | 1 | Toggle        | Toggle            |

## 📁 Project Structure

<pre>
jk_flip_flop/
├── jk_flip_flop.vhd           # Main JK Flip-Flop VHDL module
├── jk_flip_flop_tb.vhd        # Testbench for simulation
├── jk_flip_flop_waveform.PNG  # Simulation waveform output
└── README.md                  # Documentation
</pre>

---

## 🧪 How to Simulate

1. Open your preferred VHDL simulator (e.g., **ModelSim**, **Vivado**, **GHDL**).
2. Add both `jk_flip_flop.vhd` and `jk_flip_flop_tb.vhd` to your project.
3. Run the simulation using the testbench.
4. Inspect the waveform to verify correct JK flip-flop behavior.

---

## 🔄 Applications

- Binary counters
- Frequency dividers
- Finite State Machines (FSMs)
- Basic sequential logic components

---

## 🧰 Tools Used

- VHDL (IEEE STD_LOGIC_1164)
- Xilinx ISE / Vivado or any simulator supporting VHDL

---

🙋‍♀️ Author Developed by Sanjida Orin Tawhid

More modules will be added as I progress through the course.

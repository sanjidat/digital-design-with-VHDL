# D Flip-Flop (DFF) in VHDL
```markdown
This repository contains the VHDL implementation of a **D Flip-Flop**, one of the fundamental building blocks in digital electronics used for edge-triggered data storage.

## 🧠 What is a D Flip-Flop?

A **D Flip-Flop** (Data or Delay Flip-Flop) stores and transfers the value of the input `D` to the output `Q` **only on the rising (or falling) edge** of a clock signal. It is widely used in registers, counters, and memory elements.


### Truth Table

| Clock Edge | D (Input) | Q (Output) |
|------------|-----------|------------|
| ↑ Rising   |     0     |     0      |
| ↑ Rising   |     1     |     1      |
| No Edge    |     X     |   No Change|

> Note: The DFF only updates on the **rising clock edge**.

---

# 📁 Project Structure
06_flip_flops
├── D_FlipFlop
│ └── D_FlipFlop.vhd           # Main VHDL Module for D FlipFlop
│ └── D_FlipFlop_tb.vhd        # Testbench for simulation
│ └── d_flip_flop_waveform.PNG # D FlipFlop Waveform

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

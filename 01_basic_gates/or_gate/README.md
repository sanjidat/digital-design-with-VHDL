# OR Gate (VHDL)
```markdown
This project demonstrates a basic **2-input OR Gate** designed in VHDL. It includes both the implementation and a testbench for simulation.

## 🧠 What is an OR Gate?

An OR gate is a digital logic gate that outputs `1` when **at least one input** is `1`. It outputs `0` only when **both inputs are 0**.

### Truth Table

| A | B | Output |
|---|---|--------|
| 0 | 0 |   0    |
| 0 | 1 |   1    |
| 1 | 0 |   1    |
| 1 | 1 |   1    |

# 📁 Project Structure
and_gate/
├── or_gate.vhd # OR gate VHDL code
├── or_gate_tb.vhd # Testbench for simulation
├── or_gate_waveform.png # OR gate Waveform

▶️ How to Simulate
Open your preferred VHDL simulator (e.g.,Xilinx ISE, ModelSim, Vivado, GHDL).
Add both .vhd files to your project.
Run the simulation on and_gate_tb.
Observe the output waveform or console results.

## Tools Used
- VHDL (IEEE STD_LOGIC_1164)
- Xilinx ISE / ISIM (Simulation tools)

🙋‍♀️ Author Developed by Sanjida Orin Tawhid

More modules will be added as I progress through the course.

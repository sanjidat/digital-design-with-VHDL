# XOR Gate (VHDL)

```markdown
This project demonstrates a basic **2-input XOR Gate** designed in VHDL. It includes both the implementation and a testbench for simulation.

## 🧠 What is an XOR Gate?

An XOR (Exclusive OR) gate is a digital logic gate that outputs `1` when **the number of high inputs is odd**. For a 2-input XOR gate, the output is `1` if the inputs are different, and `0` if they are the same.

### 🔍 Truth Table

| A | B | Output (Y) |
|---|---|-------------|
| 0 | 0 |     0       |
| 0 | 1 |     1       |
| 1 | 0 |     1       |
| 1 | 1 |     0       |

# 📁 Project Structure
xor_gate/
├── xor_gate.vhd # VHDL code for the XOR gate
├── xor_gate_tb.vhd # Testbench file for simulation
├── xor_gate_waveform.png # XOR gate Waveform

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

# D Latch in VHDL
```markdown
This repository provides a VHDL implementation of a **D Latch**, an essential memory element used in sequential digital circuits.

## 🧠 What is a D Latch?

A **D Latch** (Data Latch) is a level-sensitive storage device. When the **enable** signal is active (`EN = 1`), the output `Q` follows the input `D`. When **enable** is low, the output retains its last value.

### 🧪 Truth Table

| Enable (EN) | D (Input) | Q (Output) |
|-------------|-----------|------------|
|     0       |     X     |   No Change |
|     1       |     0     |     0       |
|     1       |     1     |     1       |

> **Note:** The D Latch is **level-sensitive**, not edge-triggered like a flip-flop.

---

# 📁 Project Structure
06_flip_flops
├── D_Latch
│ └── D_Latch_Behavioral.vhd           # Main VHDL Behavioral Module for D_Latch
│ └── D_Latch_Behavioral_tb.vhd        # Testbench for D_Latch Behavioral Module simulation
│ └── D_Latch_Behavioral.PNG           # D_Latch Behavioral Module Waveform
│ └── D_Latch_Dataflow.vhd             # Main VHDL Dataflow Module for D_Latch
│ └── D_Latch_Dataflow_tb.vhd          # Testbench for D_Latch Dataflow Module simulation
│ └── D_Latch_Dataflow.PNG             # D_Latch Dataflow Module Waveform
│ └── D_Latch_Structural.vhd           # Main VHDL Structural Module for D_Latch
│ └── D_Latch_Structural_tb.vhd        # Testbench for D_Latch Structural Module simulation
│ └── D_Latch_Structural.PNG           # D_Latch Structural Module Waveform

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

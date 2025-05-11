# Half Adder
```markdown
Implements a simple Half Adder and its testbench.

## 📁 Files
Half Adder/
├── half_adder_behavioral.vhd    # Half Adder Behavioral Module VHDL code
├── half_adder_behavioral_tb.vhd # Testbench for Half Adder Behavioral Module simulation 
├── half_adder_behavioral.png    # Half Adder Behavioral Module Waveform
├── half_adder_dataflow.vhd      # Half Adder dataflow Module VHDL code
├── half_adder_dataflow_tb.vhd   # Testbench for Half Adder dataflow Module simulation 
├── half_adder_dataflow.png      # Half Adder dataflow Module Waveform
├── half_adder_structural.vhd    # Half Adder structural Module VHDL code
├── half_adder_structural_tb.vhd # Testbench for Half Adder structural Module simulation 
├── half_adder_structural.png    # Half Adder structural Module Waveform

## Truth Table

| A | B | Sum (A ? B) | Carry (A · B) |
|---|---|-------------|---------------|
| 0 | 0 |      0      |       0       |
| 0 | 1 |      1      |       0       |
| 1 | 0 |      1      |       0       |
| 1 | 1 |      0      |       1       |

## How to Simulate
Use Xilinx ISE, ModelSim, or Vivado:
1. Compile both `.vhd` files
2. Run simulation
3. Verify waveform

## Tools Used
- VHDL (IEEE STD_LOGIC_1164)
- Xilinx ISE / ISIM (Simulation tools)

🙋‍♀️ Author Developed by Sanjida Orin Tawhid

More modules will be added as I progress through the course.

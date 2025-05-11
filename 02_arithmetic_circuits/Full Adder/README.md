# Full Adder
```markdown
Implements a simple Full Adder and its testbench.

## 📁 Files
Full Adder/
├── fulladder_behavioral.vhd     # Full Adder Behavioral Module VHDL code
├── fulladder_behavioral_tb.vhd  # Testbench for Full Adder Behavioral Module simulation 
├── fulladder_behavioral.png     # Full Adder Behavioral Module Waveform
├── fulladder_dataflow.vhd       # Full Adder dataflow Module VHDL code
├── fulladder_dataflow_tb.vhd    # Testbench for Full Adder dataflow Module simulation 
├── fulladder_dataflow.png       # Full Adder dataflow Module Waveform
├── fulladder_structural.vhd     # Full Adder structural Module VHDL code
├── fulladder_structural_tb.vhd  # Testbench for Full Adder structural Module simulation 
├── fulladder_structural.png     # Full Adder structural Module Waveform
## Truth Table

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 |  0  |  0  |  0   |
| 0 | 0 |  1  |  1  |  0   |
| 0 | 1 |  0  |  1  |  0   |
| 0 | 1 |  1  |  0  |  1   |
| 1 | 0 |  0  |  1  |  0   |
| 1 | 0 |  1  |  0  |  1   |
| 1 | 1 |  0  |  0  |  1   |
| 1 | 1 |  1  |  1  |  1   |


## How to Simulate
Use Xilinx ISE, ModelSim, or Vivado:
1. Compile both ".vhd" files
2. Run simulation
3. Verify waveform

## Tools Used
- VHDL (IEEE STD_LOGIC_1164)
- Xilinx ISE / ISIM (Simulation tools)

🙋‍♀️ Author Developed by Sanjida Orin Tawhid

More modules will be added as I progress through the course.

# Full Adder

Implements a simple Full Adder and its testbench.

## Files
- `fulladder.vhd` – VHDL code for the Full Adder structural, Dataflow and Behavioral 
- `fulladder_tb.vhd` – Testbench for simulation

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

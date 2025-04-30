# Half Adder (2-input)

Implements a simple 2-input Half Adder and its testbench.

## Files
- `half_adder.vhd` – VHDL code for the XOR gate
- `half_adder_tb.vhd` – Testbench for simulation

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

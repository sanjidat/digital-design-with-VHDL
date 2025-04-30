# AND Gate (2-input)

Implements a simple 2-input AND gate and its testbench.

## Files
- `and_gate.vhd` – VHDL code for the AND gate
- `and_gate_tb.vhd` – Testbench for simulation

## Truth Table

| A | B | Y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |


# XOR Gate (2-input)

Implements a simple 2-input XOR gate and its testbench.

## Files
- `xor_gate.vhd` – VHDL code for the XOR gate
- `xor_gate_tb.vhd` – Testbench for simulation

## Truth Table

| A | B | Y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |



## How to Simulate
Use Xilinx ISE, ModelSim, or Vivado:
1. Compile both `.vhd` files
2. Run simulation
3. Verify waveform
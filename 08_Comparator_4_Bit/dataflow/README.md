# 🔍 4-Bit Comparator (Dataflow Modeling) — VHDL
```markdown
This module implements a **4-bit comparator** using **dataflow modeling** in VHDL. It compares two 4-bit binary inputs `A` and `B`, and produces three output signals:

- `G` (Greater): `1` if `A > B`
- `E` (Equal): `1` if `A = B`
- `L` (Less): `1` if `A < B`

### 🧩 Design Summary

- **VHDL Style**: Dataflow
- **Tools**: Xilinx ISE, ISim
- **Testbench**: Included and simulates multiple input cases

# 📂 Files

07_Comparator_4_Bit/
dataflow/
├── comparator_4bit_dataflow.vhd       # Dataflow model of the 4-bit comparator
├── comparator_4bit_dataflow_tb.vhd    # Testbench for simulation
├── comparator_4_bit_waveform.vhd      # waveform
└── README.md                          # This file

🧪 Testbench
The provided testbench (comparator_4bit_dataflow_tb.vhd) simulates various combinations of inputs to validate the comparator behavior, including:

A < B

A > B

A = B

Edge cases

Run the simulation using Xilinx ISE, ModelSim, or your preferred VHDL simulator.

✅ Expected Output Behavior
| A      | B      | G | E | L |
| ------ | ------ | - | - | - |
| `0101` | `1010` | 0 | 0 | 1 |
| `0111` | `0011` | 1 | 0 | 0 |
| `0110` | `0110` | 0 | 1 | 0 |
| `1101` | `1110` | 0 | 0 | 1 |
| `1100` | `1101` | 0 | 0 | 1 |
| `0011` | `0011` | 0 | 1 | 0 |


## 📝 Learnings

- Gained hands-on experience in structural VHDL design.
- Understood the implementation of basic logic gates and their integration into a larger system.
- Learned to create and utilize testbenches for verifying digital designs.

🧑‍💻 Author
Sanjida Orin Tawhid

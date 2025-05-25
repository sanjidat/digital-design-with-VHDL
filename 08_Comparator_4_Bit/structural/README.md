# 🔍 4-Bit Comparator

# 4-Bit Comparator (Structural VHDL - Xilinx ISE)
This project implements a **4-bit digital comparator** in **structural VHDL**, using basic logic gate components like `XNOR`, `AND`, `NOT`, and `OR`. The design was created and simulated using **Xilinx ISE**.

### 🎯 Objective

Compare two 4-bit binary numbers (`A` and `B`) and output:
- `G` = 1 if A > B
- `E` = 1 if A = B
- `L` = 1 if A < B

### 🧩 Design Summary

- **VHDL Style**: Structural
- **Components Used**: NOT, AND (2- to 5-input), OR4, XNOR
- **Tools**: Xilinx ISE, ISim
- **Testbench**: Included and simulates multiple input cases

# 📂 Files
<pre>
07_Comparator_4_Bit/
├── structural/
│ ├── comparator_4bit.vhd # Top-level structural comparator
│ ├── components/
│ │ ├── and_gate.vhd              # 2-input AND gate component
│ │ ├── and3_gate.vhd             # 3-input AND gate component
│ │ ├── and4_gate.vhd             # 4-input AND gate component
│ │ ├── and5_gate.vhd             # 5-input AND gate component
│ │ ├── not_gate.vhd              # NOT gate component
│ │ ├── or4_gate.vhd              # 4-input OR gate component
│ │ ├── xnor_gate.vhd             # XNOR gate component
│ ├── comparator_4bit_tb.vhd      # Testbench
│ ├── comparator_4_bit_waveform   # waveform
│ └── README.md                   # This file
</pre>

## 🧪 Simulation Results

The testbench applies various input combinations to verify the comparator's functionality. Below are some sample results:

| A     | B     | G | E | L |
|-------|-------|---|---|---|
| 0100  | 1000  | 0 | 0 | 1 |
| 0000  | 0000  | 0 | 1 | 0 |
| 1100  | 1000  | 1 | 0 | 0 |
| 0110  | 0010  | 1 | 0 | 0 |
| 1111  | 1111  | 0 | 1 | 0 |
| 0001  | 0000  | 1 | 0 | 0 |
| 1110  | 1110  | 0 | 1 | 0 |
| 1100  | 0101  | 1 | 0 | 0 |

## 📝 Learnings

- Gained hands-on experience in structural VHDL design.
- Understood the implementation of basic logic gates and their integration into a larger system.
- Learned to create and utilize testbenches for verifying digital designs.

🧑‍💻 Author
Sanjida Orin Tawhid

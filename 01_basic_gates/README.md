# Basic Logic Gates (VHDL)
```markdown
This project demonstrates the implementation of the fundamental **Logic Gates** using **VHDL**. The following gates are included:

- AND Gate
- OR Gate
- XOR Gate
- NOT Gate (Inverter)

Each gate is implemented in VHDL, and corresponding testbenches are provided for simulation.

## 🔍 Overview of Logic Gates

### 1. AND Gate
The **AND Gate** is a digital logic gate that outputs `1` only when all of its inputs are `1`. Otherwise, the output is `0`.

**Truth Table:**
| A | B | Output (Y) |
|---|---|-------------|
| 0 | 0 |     0       |
| 0 | 1 |     0       |
| 1 | 0 |     0       |
| 1 | 1 |     1       |

### 2. OR Gate
The **OR Gate** is a digital logic gate that outputs `1` if at least one of its inputs is `1`. Otherwise, the output is `0`.

**Truth Table:**
| A | B | Output (Y) |
|---|---|-------------|
| 0 | 0 |     0       |
| 0 | 1 |     1       |
| 1 | 0 |     1       |
| 1 | 1 |     1       |

### 3. XOR Gate
The **XOR Gate** (Exclusive OR) is a digital logic gate that outputs `1` if the number of `1` inputs is odd. Otherwise, the output is `0`.

**Truth Table:**
| A | B | Output (Y) |
|---|---|-------------|
| 0 | 0 |     0       |
| 0 | 1 |     1       |
| 1 | 0 |     1       |
| 1 | 1 |     0       |

### 4. NOT Gate
The **NOT Gate** (Inverter) is a digital logic gate that inverts its input. If the input is `1`, the output will be `0`, and if the input is `0`, the output will be `1`.

**Truth Table:**
| A | Output (Y) |
|---|-------------|
| 0 |     1       |
| 1 |     0       |

---
## 📁 Project Structure

basic_gates/
├── and_gate/
│ ├── and_gate.vhd # AND Gate VHDL code
│ ├── and_gate_tb.vhd # AND Gate Testbench
│ ├── and_gate_waveform.png # AND Gate Waveform
│
├── or_gate/
│ ├── or_gate.vhd # OR Gate VHDL code
│ ├── or_gate_tb.vhd # OR Gate Testbench
│ ├── or_gate_waveform.png # OR Gate Waveform
│
├── xor_gate/
│ ├── xor_gate.vhd # XOR Gate VHDL code
│ ├── xor_gate_tb.vhd # XOR Gate Testbench
│ ├── xor_gate_waveform.png # XOR Gate Waveform
│
├── not_gate/
│ ├── not_gate.vhd # NOT Gate VHDL code
│ ├── not_gate_tb.vhd # NOT Gate Testbench
│ ├── not_gate_waveform.png # NOT Gate Waveform


## How to Simulate
Use Xilinx ISE, ModelSim, or Vivado:
1. Compile both `.vhd` files
2. Run simulation
3. Verify waveform


🙋‍♀️ Author Developed by Sanjida Orin Tawhid

More modules will be added as I progress through the course.

This `README.md` provides an overview of the project, the individual gates, their truth tables, and instructions on how to simulate the VHDL code for each gate. It's suitable for a GitHub repository and can help users understand and use the logic gate implementations effectively.

Let me know if you'd like any additional information or improvements!

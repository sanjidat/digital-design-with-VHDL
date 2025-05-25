# 🧮 4-bit Binary to BCD Converter (VHDL)

This project implements a simple **4-bit binary to BCD (Binary-Coded Decimal)** converter using VHDL. It includes both the behavioral module and a testbench for simulation and verification.

---

## 📁 Files
<pre>
- `binary_to_bcd.vhd` – Main VHDL module that converts 4-bit binary to BCD.
- `binary_to_bcd_tb.vhd` – Testbench for simulating and verifying the design.
- `binary_to_bcd.png` – Waveform.
</pre>

## 📘 Description

This module takes a 4-bit binary number as input (`bin`) and outputs the equivalent BCD value using two 4-bit outputs: `tens` and `ones`. It also combines these into an 8-bit output (`bcd_output`).

🔁 Operation
Convert binary input to an integer.

Compute:

tens = value / 10

ones = value mod 10

Convert both digits back to std_logic_vector.

Concatenate for final 8-bit BCD output.

🧪 Simulation
Run the testbench (binary_to_bcd_tb.vhd) using any VHDL simulator (like ModelSim or Vivado). It will apply a range of inputs from 0 to 15 and show corresponding BCD outputs.

| Binary Input | Decimal | Tens   | Ones   | BCD Output |
| ------------ | ------- | ------ | ------ | ---------- |
| `0111`       |   7     | `0000` | `0111` | `00000111` |
| `1010`       |   10    | `0001` | `0000` | `00010000` |
| `1100`       |   12    | `0001` | `0010` | `00010010` |

🛠️ Requirements
VHDL simulator (Xilinx ISE, ISIM)

Basic knowledge of digital logic and VHDL


🙋‍♀️ Author
Developed by Sanjida Orin Tawhid

More modules will be added as I progress through the course.

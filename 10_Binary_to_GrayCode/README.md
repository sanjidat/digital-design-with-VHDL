# Binary to Gray Code Converter (VHDL)

This project implements a **4-bit Binary to Gray Code converter** using VHDL, along with a testbench to verify functionality.

## 🧠 What is Gray Code?

Gray Code is a binary numeral system where two successive values differ by only one bit. It's commonly used in digital encoders, error correction, and analog to digital conversion to prevent spurious outputs.

## 📁 Project Structure
<pre>
09_Binary_to_GrayCode/
├── binary_to_gray_code.vhd # Main VHDL module (Behavioral architecture)
├── binary_to_gray_code_tb.vhd # Testbench for simulation
├── binary to gray code Waveform.png # Waveform
</pre>

### How to Run Simulations

For each project, you’ll find:
- A `.vhd` file with the digital circuit
- A corresponding testbench file (`_tb.vhd`)
- Instructions to run the simulation (usually via ModelSim or Vivado)

---

## Tools Used
- VHDL (IEEE STD_LOGIC_1164)
- Xilinx ISE/ ISIM (Simulation tools)

## ⚙️ How It Works

```vhdl
Given a 4-bit binary input, the module converts it to 4-bit Gray Code using the formula:

gray(3) <= bin(3);
gray(2) <= bin(3) xor bin(2);
gray(1) <= bin(2) xor bin(1);
gray(0) <= bin(1) xor bin(0);

🧪 Simulation
The testbench applies various input values and checks the output:

Binary Input	Expected Gray Code
0000	0000
0001	0001
0010	0011
0100	0110
1010	1111
1100	1010

Use ModelSim, Vivado, or GHDL to run the simulation.

✅ How to Run
Open your VHDL simulator.
Add binary_to_gray_code.vhd and binary_to_gray_code_tb.vhd to the project.
Compile and run the testbench.
Observe waveforms or simulation logs.

🛠️ Requirements VHDL simulator (Xilinx ISE, ISIM)
Basic knowledge of digital logic and VHDL

🙋‍♀️ Author Developed by Sanjida Orin Tawhid

More modules will be added as I progress through the course.

# Register Modules in VHDL

## 📘 Overview
```markdown
This repository contains two VHDL modules that implement commonly used **registers** in digital systems:

- `left_to_right_shift_register`: A basic shift register shifting data from left to right.
- `universal_shift_register_4_bit`: A 4-bit universal shift register that supports multiple modes including hold, shift left, shift right, and parallel load.

These components are essential building blocks in digital design for tasks such as data storage, serial-to-parallel conversion, and configurable data routing.
---
## 🔧 Features

### 🌀 Left-to-Right Shift Register
- Shifts input data from **left to right**
- Clock-controlled operation
- Resettable
- Simple and educational design

### 🔁 4-bit Universal Shift Register
- Supports 4 modes:
  - **Hold**
  - **Shift Left**
  - **Shift Right**
  - **Parallel Load**
- Controlled by a 2-bit mode signal
- Asynchronous reset
- Useful for configurable data operations

---
## 📁 File Structure

11_register/
├── left_to_right_shift_register/
│ ├── README.md
│ ├── left_to_right_shift_register_waveform.PNG   # Waveform
│ ├── shift_register.vhd #  VHDL code
│ ├── shift_register_tb.vhd # testbench
│
├── universal_shift_register_4_bit/
│ ├── README.md
│ ├── universal_shift_register_waveform.png #  Waveform
│ ├── universal_shift_register.vhd # VHDL code
│ ├── universal_shift_register_tb.vhd # Testbench


## How to Simulate
Use Xilinx ISE, ModelSim, or Vivado:
1. Compile both `.vhd` files
2. Run simulation
3. Verify waveform


🙋‍♀️ Author Developed by Sanjida Orin Tawhid

More modules will be added as I progress through the course.

This `README.md` provides an overview of the project and instructions on how to simulate the VHDL code. 
Let me know if you'd like any additional information or improvements!

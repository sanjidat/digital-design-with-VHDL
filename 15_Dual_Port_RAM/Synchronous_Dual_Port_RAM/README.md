# Synchronous Dual-Port RAM

This repository is my collection of hands-on projects and exercises from the **"Design of Digital Circuits with VHDL Programming"** course.

🧠 Overview
This project demonstrates the design and simulation of a Synchronous Dual-Port RAM using VHDL. The RAM supports two independent ports (Port A and Port B) that can simultaneously read from or write to memory using a shared clock.

🧩 Features
- 8-bit wide data lines (data_in, data_out)
 
- 8-bit address space (256 locations)

- Independent write enables (we_a, we_b) for each port

- Single shared clock (clk) for both ports

- Fully synchronous behavior (writes/reads happen on rising edge of clock)

---
## 📁 File Structure

15_Dual_Port_RAM/
├── Synchronous_Dual_Port_Memory
│└── README.md
│└── Synchronous_Dual_Port_RAM.vhd            # Main VHDL Module
│└── Synchronous_Dual_Port_RAM_tb.vhd         # Testbench File
│└── Synchronous_Dual_Port_RAM_waveform.PNG   # Waveform
│└── Synchronous_Dual_Port_RAM_RTL.PNG        # RTL Module

### How to Run Simulations

For each project, you’ll find:
- A `.vhd` file with the digital circuit
- A corresponding testbench file (`_tb.vhd`)
- Instructions to run the simulation (usually via ModelSim or Vivado)

---

## Tools Used
- VHDL (IEEE STD_LOGIC_1164)
- ModelSim / Vivado (Simulation tools)

---

More modules will be added as I progress through the course.

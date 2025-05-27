🧠 Single Port RAM in VHDL

This project implements a Single Port RAM module in VHDL, allowing both read and write operations using a single clock, address, and data interface. It includes behavioral simulation and waveform analysis to verify functionality.
---
📌 Features
- 8-bit address line → Supports up to 256 memory locations (the design can be changed for smaller sizes like 7x8 RAM).

- 8-bit data line → Each memory location stores 8-bit data.

- Synchronous operations (on clock rising edge).

- Enable and Read/Write (rd_wr) control lines.

- Supports Behavioral modeling.
---
📐 VHDL Port Description
| Port Name  | Direction | Description                     |
| ---------- | --------- | ------------------------------- |
| `clk`      | in        | Clock signal                    |
| `data_in`  | in        | 8-bit data input                |
| `ram_addr` | in        | 8-bit address input             |
| `enable`   | in        | Enables read/write operation    |
| `rd_wr`    | in        | `'1'` = write, `'0'` = read     |
| `data_out` | out       | 8-bit data output (during read) |
---
📁 Project Structure
<pre>
  14_Single_Port_RAM/
├── Single_Port_RAM.vhd                 -- Main RAM module (Behavioral)
├── Single_Port_RAM_tb.vhd              -- Testbench for simulation
├── single_port_ram_RTL.PNG             -- RTL configuration
├── single_port_ram_waveform.PNG        -- Waveform configuration
└── README.md
</pre>
---

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
🙋‍♀️ Author Developed by Sanjida Orin Tawhid
More modules will be added as I progress through the course.

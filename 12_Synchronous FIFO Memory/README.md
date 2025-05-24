# Synchronous FIFO in VHDL

```markdown
## 📘 Overview

This project implements a **Synchronous FIFO (First-In First-Out)** memory buffer using VHDL. A synchronous FIFO operates with a **single clock domain** shared between the write and read logic. It is commonly used in digital systems where producer and consumer logic share a common clock but still need to decouple data flow.

This design is **synthesizable** and includes a **testbench** for simulation.

---

## 🔧 Features

- **8-bit wide data**
- **8-entry depth** (configurable via `addr_width`)
- **Single clock** operation
- Full and Empty status flags
- Efficient memory utilization
- Simple and robust design
- Testbench provided for functional verification

## 🧠 Architecture

The design uses:
- A register array to implement the FIFO buffer
- Binary counters for read and write pointers
- Simple logic to assert `full` and `empty` flags based on pointer comparison

---
## 📁 File Structure

12_Asynchronous FIFO Memory/
├── README.md
├── syn_fifo_memory.vhd
├── syn_fifo_memory_tb.vhd
├── syn_fifo_waveform.PNG

💡 Applications
1. Buffering data between pipeline stages
2. Input/output queues in hardware accelerators
3. Rate matching within a shared-clock system

## How to Simulate
Use Xilinx ISE, ModelSim, or Vivado:
1. Compile both `.vhd` files
2. Run simulation
3. Verify waveform


🙋‍♀️ Author Developed by Sanjida Orin Tawhid

More modules will be added as I progress through the course.

This `README.md` provides an overview of the project, the individual gates, their truth tables, and instructions on how to simulate the VHDL code. 
Let me know if you'd like any additional information or improvements!

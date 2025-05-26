# 🔀 4-Bit Data Routing Modules (MUX, DEMUX, Encoder, Decoder)

This repository contains basic data routing logic modules implemented in VHDL, including:
- 4-bit Multiplexer (MUX)
- 4-bit Demultiplexer (DEMUX)
- 4-bit Encoder
- 4-bit Decoder

Each module is implemented using **three different modeling styles**:
- **Behavioral**
- **Dataflow**
- **Structural**

These are essential components in digital logic design, used for directing data paths and simplifying logic control.

## 📁 Project Structure
<pre>
03_DEMUX_MUX_Decoder_Encoder/
├── 1_to_4_DEMUX/
│ ├── DEMUX_1_to_4_Behavioral/
│ │  ├── DEMUX_1 _to_4_Behavioral.PNG
│ │  ├── DEMUX_1 _to_4_Behavioral.vhd
│ │  ├── DEMUX_1 _to_4_Behavioral_tb.vhd
│ │  └── README.md
│ ├── DEMUX_1_to_4_Dataflow/
│ │  ├── DEMUX_1 _to_4_Dataflow.PNG
│ │  ├── DEMUX_1 _to_4_Dataflow.vhd
│ │  ├── DEMUX_1 _to_4_Dataflow_tb.vhd
│ │  └── README.md
│ ├── DEMUX_1_to_4_Structural/
│ │  ├── DEMUX_1 _to_4_Structural.PNG
│ │  ├── DEMUX_1 _to_4_Structural.vhd
│ │  ├── DEMUX_1 _to_4_Structural_tb.vhd
│ │  └── README.md
├── encoder_4bit/
│ ├── encoder_behavioral.vhd
│ ├── encoder_dataflow.vhd
│ ├── encoder_structural.vhd
│ ├── encoder_4bit_tb.vhd
│ └── README.md
├── decoder_4bit/
│ ├── decoder_behavioral.vhd
│ ├── decoder_dataflow.vhd
│ ├── decoder_structural.vhd
│ ├── decoder_4bit_tb.vhd
│ └── README.md
└── README.md ← (this file)
</pre>
---

## 📦 Included Modules

### ➤ 4-bit Multiplexer (MUX)
- Selects one of several input lines and forwards it to the output.
- Controlled using select lines.

### ➤ 4-bit Demultiplexer (DEMUX)
- Directs a single input to one of many outputs based on select signals.

### ➤ 4-bit Encoder
- Converts one-hot input lines into a binary code.

### ➤ 4-bit Decoder
- Converts binary input into a one-hot output.

## 🧪 Testbenches
Each module includes a testbench file (`*_tb.vhd`) that provides input stimuli and verifies functional correctness via simulation.


## How to Simulate
Use Xilinx ISE, ModelSim, or Vivado:
1. Compile both `.vhd` files
2. Run simulation
3. Verify waveform


🙋‍♀️ Author Developed by Sanjida Orin Tawhid

More modules will be added as I progress through the course.

This `README.md` provides an overview of the project, the individual gates, their truth tables, and instructions on how to simulate the VHDL code for each gate. It's suitable for a GitHub repository and can help users understand and use the logic gate implementations effectively.

Let me know if you'd like any additional information or improvements!

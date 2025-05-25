# 🔁 Flip-Flops Collection (D, JK, SR, T)

This repository contains individual implementations and simulations of basic flip-flop circuits using VHDL. These are fundamental sequential logic building blocks commonly used in digital electronics and state machine design.

## 📁 Project Structure
<pre>
06_flipflops/
├── D_FlipFlop/
│ └── D_FlipFlop.vhd
│ └── D_FlipFlop_tb.vhd
│ └── d_flip_flop_waveform.PNG
│ └── README.md
│
├── J_K_FlipFlop/
│ └── JK_FlipFlop.vhd
│ └── JK_FlipFlop_tb.vhd
│ └── J_K_FlipFlop_waveform.PNG
│ └── README.md
│
├── S_R_FlipFlop/
│ └── SR_FlipFlop.vhd
│ └── SR_FlipFlop_tb.vhd
│ └── S_R_flipflop_waveform.PNG
│ └── README.md
│
├── T_FlipFlop/
│ └── T_FlipFlop.vhd
│ └── T_FlipFlop_tb.vhd
│ └── T_FlipFlop_Waveform.PNG
│ └── README.md
│
└── README.md ← (this file)
</pre>

## 🧩 Included Flip-Flops

### ✅ D Flip-Flop
- Stores the input value `D` on the rising edge of the clock.
- Commonly used in registers and memory elements.

### ✅ JK Flip-Flop
- Universal flip-flop with toggle capability.
- `J=1, K=1` → toggle; `J=0, K=0` → hold.

### ✅ SR Flip-Flop
- Set-Reset flip-flop; basic form of bistable multivibrator.
- Caution: `S=1, R=1` is an invalid condition.

### ✅ T Flip-Flop
- Toggles output when `T=1` on rising clock edge.
- Used for binary counters and toggle operations.


## How to Simulate
Use Xilinx ISE, ModelSim, or Vivado:
1. Compile both `.vhd` files
2. Run simulation
3. Verify waveform


🙋‍♀️ Author Developed by Sanjida Orin Tawhid

More modules will be added as I progress through the course.

This `README.md` provides an overview of the project and instructions on how to simulate the VHDL code. 
Let me know if you'd like any additional information or improvements!

# 🔍 4-Bit Comparator — Modeling Styles

This module contains 3 implementations of a 4-bit comparator:

| Modeling Style | Description                                  |
|----------------|----------------------------------------------|
| Structural     | Built using basic gate components            |
| Behavioral     | Uses conditional statements                  |
| Dataflow       | Uses concurrent signal assignments(when/else)|


Each version includes a testbench and simulation results.

Explore each folder to see how the same logic can be modeled in different ways!

# 📂 Files
<pre>
07_Comparator_4_Bit/
├── structural/
│ ├── comparator_4bit.vhd # Top-level structural comparator
│ ├── components/
│ │ ├── and_gate.vhd                    # 2-input AND gate component
│ │ ├── and3_gate.vhd                   # 3-input AND gate component
│ │ ├── and4_gate.vhd                   # 4-input AND gate component
│ │ ├── and5_gate.vhd                   # 5-input AND gate component
│ │ ├── not_gate.vhd                    # NOT gate component
│ │ ├── or4_gate.vhd                    # 4-input OR gate component
│ │ ├── xnor_gate.vhd                   # XNOR gate component
│ ├── comparator_4bit_tb.vhd            # Testbench
│ ├── comparator_4_bit_waveform         # Waveform
│ └── README.md
│
├── behavioral/
│ ├── comparator_4bit_behavioral.vhd    # Behavioral Module main file
│ ├── comparator_4bit_behavioral_tb.vhd # Behavioral Module Testbench
│ ├── comparator_4_bit_waveform         # Waveform
│ └── README.md
│
├── dataflow/
│ ├── comparator_4bit_dataflow.vhd      # Dataflow Module main vhdl file
│ ├── comparator_4bit_dataflow_tb.vhd   # Dataflow Module Testbench
│ ├── comparator_4_bit_waveform         # Waveform
│ └── README.md
│
└── README.md
</pre>
🧑‍💻 Author
Sanjida Orin Tawhid

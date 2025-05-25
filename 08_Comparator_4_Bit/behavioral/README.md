# 🔍 4-Bit Comparator

# 4-Bit Comparator — Behavioral Modeling 
This module implements a 4-bit comparator using **behavioral modeling** in VHDL. It determines whether one 4-bit binary input is greater than, equal to, or less than another input using a process-based approach.

### 🎯 Objective

Compare two 4-bit binary numbers (`A` and `B`) and output:
- `G` = 1 if A > B
- `E` = 1 if A = B
- `L` = 1 if A < B

# 📂 Files
<pre>
07_Comparator_4_Bit/
├── behavioral/
├── comparator_4bit_behavioral.vhd -- Behavioral architecture of the comparator
├── comparator_4bit_behavioral_tb.vhd -- Testbench for simulating and verifying the design
└── README.md -- This documentation
<\pre>

## 🔧 Module Overview

### 📥 Inputs:
- `A`: 4-bit input vector (`std_logic_vector(3 downto 0)`)
- `B`: 4-bit input vector (`std_logic_vector(3 downto 0)`)

### 📤 Outputs:
- `G`: High (`'1'`) if `A > B`
- `E`: High (`'1'`) if `A = B`
- `L`: High (`'1'`) if `A < B`

## 🧠 Implementation

This version uses a `process` block with `if-elsif-else` statements to describe behavior:

```vhdl
process (A, B)
begin
    if (A > B) then 
        G <= '1'; E <= '0'; L <= '0';
    elsif (A = B) then 
        E <= '1'; G <= '0'; L <= '0';
    else
        L <= '1'; E <= '0'; G <= '0';
    end if;
end process;

### 🧩 Design Summary

- **VHDL Style**: Structural
- **Components Used**: NOT, AND (2- to 5-input), OR4, XNOR
- **Tools**: Xilinx ISE, ISim
- **Testbench**: Included and simulates multiple input cases

## 🧪 Simulation Results

## 🔬 Testbench Summary

The testbench (`comparator_4bit_behavioral_tb.vhd`) drives various combinations of inputs and monitors the outputs. It validates that the comparator behaves as expected in all cases.

### ✅ Sample Simulation Results

|   A    |   B    | G | E | L |
|--------|--------|---|---|---|
| 0101   | 1000   | 0 | 0 | 1 |
| 1101   | 1100   | 1 | 0 | 0 |
| 1010   | 1010   | 0 | 1 | 0 |
| 1111   | 1101   | 1 | 0 | 0 |
| 0001   | 1001   | 0 | 0 | 1 |

## 📝 Learnings

- Gained hands-on experience in structural VHDL design.
- Understood the implementation of basic logic gates and their integration into a larger system.
- Learned to create and utilize testbenches for verifying digital designs.

## 👩‍💻 Author

Sanjida Orin Tawhid


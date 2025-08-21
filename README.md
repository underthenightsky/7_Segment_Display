# 7-Segment Display Verilog Simulation

## 📌 Overview
This project demonstrates the design and verification of a **7-segment display decoder** in Verilog.  
The decoder maps a **4-bit input (0–15)** into the corresponding **7-bit output** that controls the LED segments `a–g`.

## 🛠 Features
- Supports decimal digits **0–9**
- Extendable to hexadecimal **A–F**
- Provides **blank output** for invalid inputs
- Includes a **testbench** for automated simulation
- Compatible with open-source and industry HDL simulators

## 📂 Files
- `seven_segment.v` → Verilog module for the decoder  
- `seven_segment_tb.v` → Testbench applying input patterns and dumping results  
- `seven_segment.vcd` → Simulation dump file (viewable in GTKWave)  

## ▶️ Simulation
### Using Icarus Verilog + GTKWave
```bash
# Compile
iverilog -o tb_out seven_segment_tb.v seven_segment.v
```
# Run simulation
vvp tb_out

# View waveforms
gtkwave sevenseg.vcd

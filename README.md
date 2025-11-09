# 💾 4×1 RAM — Verilog RTL Design

### Overview
The **4×1 RAM** is a simple single-bit memory module designed in **Verilog HDL**.  
It demonstrates **synchronous write** and **asynchronous read** behavior — a foundational concept in memory design.  
This design is **fully synthesizable** and verified using the **Cadence RTL-to-GDSII flow**.

---

### Functional Description

| Signal | Direction | Width | Description |
|---------|------------|--------|--------------|
| `clk`   | Input | 1 | Clock signal (posedge triggered) |
| `we`    | Input | 1 | Write enable (active high) |
| `addr`  | Input | 2 | 2-bit address for memory location |
| `din`   | Input | 1 | Data input |
| `dout`  | Output | 1 | Data output from selected address |

---

### Features
- 4 memory cells (1-bit each)
- **Synchronous write**, **asynchronous read**
- Compact, synthesizable RTL module
- Ideal for small control memories in ASIC/FPGA designs

---

### Tools & Technologies
- **Language:** Verilog HDL  
- **Simulation:** Cadence nclaunch / Xcelium  
- **Synthesis:** Cadence Genus  
- **Layout:** Cadence Innovus  
- **Timing:** Cadence Tempus  
- **Design Style:** RTL (Register-Transfer Level)

---

### Design Flow

| Stage | Tool | Description |
|-------|------|-------------|
| RTL Coding | Verilog HDL | Implemented 4×1 RAM logic |
| Simulation | nclaunch | Verified read/write functionality |
| Synthesis | Genus | Generated gate-level netlist |
| Physical Design | Innovus | Floorplanning, routing, timing |
| STA | Tempus | Timing closure verification |

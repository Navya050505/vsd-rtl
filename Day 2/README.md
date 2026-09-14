# Day 2 – Timing Libraries, Synthesis & Flip-Flops

## Overview

Day 2 focuses on digital timing concepts, standard-cell libraries, RTL synthesis and flip-flop implementation.

## Topics Covered

- CMOS inverter fundamentals
- D Flip-Flop
- D Flip-Flop simulation
- Asynchronous reset D Flip-Flop
- RTL synthesis using Yosys
- Synthesized netlists
- Hierarchical design
- Flattened netlists
- SKY130 standard-cell library
- Technology mapping
- Netlist visualization

## Practical Work

### 1. CMOS Inverter
Implemented a basic CMOS inverter at RTL abstraction using Verilog.

### 2. D Flip-Flop
Designed a positive-edge-triggered D Flip-Flop and verified its behavior using a testbench and GTKWave.

### 3. Asynchronous D Flip-Flop
Implemented a D Flip-Flop with asynchronous reset and verified its waveform.

### 4. Synthesis
Synthesized the RTL designs using Yosys and generated netlists.

### 5. Hierarchical Design
Created a top module containing a D Flip-Flop submodule and generated a hierarchical netlist diagram.

### 6. Flattened Netlist
Used the Yosys `flatten` pass to convert the hierarchical design into a flattened representation.

### 7. SKY130 Technology Mapping
Used the SKY130 standard-cell timing library for technology mapping.

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys
- SKY130 standard-cell library
- GitHub Codespaces

## Key Learning

- Understanding D Flip-Flop operation
- Understanding asynchronous reset
- RTL simulation and waveform analysis
- RTL synthesis
- Hierarchical and flattened netlists
- Standard-cell technology mapping
- Basic timing-library concepts
- SKY130 digital design flow

## Conclusion

Day 2 provided practical experience with flip-flop design, simulation, synthesis, hierarchical design and technology mapping using the SKY130 standard-cell library.
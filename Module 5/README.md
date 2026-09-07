# Module 5 – RTL Constructs, Case/If Statements and Synthesis

## Overview

This module covers important RTL coding constructs and their effect on synthesis.

The designs were simulated using Icarus Verilog, waveforms were viewed using GTKWave, and synthesis and SKY130 technology mapping were performed using Yosys.

## Exercises

### 1. bad_case
Demonstrates a `case` statement for selecting between different inputs.

### 2. comp_case
Demonstrates a complete `case` statement and combinational logic synthesis.

### 3. demux_case
Implements a 1-to-4 demultiplexer using a `case` statement.

### 4. incomp_if
Demonstrates incomplete `if` logic and latch inference during synthesis.

### 5. incomp_if2
Demonstrates conditional RTL coding and its synthesis behavior.

### 6. mux_generate
Demonstrates the use of `generate` and `genvar` to create multiple multiplexer structures.

### 7. partial_case_assign
Demonstrates a partially assigned `case` statement and its synthesis behavior.

### 8. Ripple Carry Adder
Implements a 4-bit ripple carry adder using RTL arithmetic.

## Tools Used

- Icarus Verilog – RTL simulation
- GTKWave – waveform analysis
- Yosys – RTL synthesis
- SKY130 standard-cell library – technology mapping
- GitHub Codespaces – development environment

## Verification Flow

For each design:

1. Write the Verilog RTL.
2. Create a testbench.
3. Simulate using Icarus Verilog.
4. Generate a VCD waveform.
5. Analyze the waveform using GTKWave.
6. Synthesize using Yosys.
7. Map the design to SKY130 standard cells.
8. Check the synthesized cell statistics.

## Key Learning

This module helped me understand:

- `case` statements
- Complete and incomplete conditional assignments
- Latch inference
- `generate` and `genvar`
- Combinational RTL coding
- RTL simulation and waveform analysis
- Logic synthesis using Yosys
- SKY130 standard-cell technology mapping

## Author

Module 5 RTL Design and Synthesis Work
# Day 1 – VLSI Fundamentals

## 1. Introduction to VLSI

VLSI stands for Very Large Scale Integration.

VLSI is the process of designing and integrating a large number of electronic components, mainly transistors, on a single integrated circuit (IC).

Modern processors, memories, microcontrollers, communication chips and System-on-Chip (SoC) devices are examples of VLSI-based systems.

---

## 2. What is an Integrated Circuit?

An Integrated Circuit (IC) is a small electronic circuit fabricated on a semiconductor chip.

An IC can contain:
- Transistors
- Resistors
- Capacitors
- Logic gates
- Interconnections

---

## 3. What is a Transistor?

A transistor is a semiconductor device used mainly for switching and amplification.

In digital VLSI, MOSFETs are commonly used to implement logic circuits.

A digital transistor can be used as a switch representing:
- Logic 0
- Logic 1

---

## 4. Digital Logic

Digital circuits operate mainly using two logic levels:

- Logic 0 – LOW
- Logic 1 – HIGH

### Basic Logic Gates

- AND
- OR
- NOT
- NAND
- NOR
- XOR
- XNOR

These gates are the basic building blocks of digital circuits.

---

## 5. Combinational Circuits

In a combinational circuit, the output depends only on the present input values.

Examples:
- Multiplexer
- Demultiplexer
- Adder
- Subtractor
- Encoder
- Decoder
- Comparator

### Example

A 2:1 Multiplexer selects one of two inputs based on a select signal.

---

## 6. Sequential Circuits

In a sequential circuit, the output depends on the present inputs as well as the previous state.

Sequential circuits contain memory elements.

Examples:
- Flip-flop
- Register
- Counter
- Shift register

---

## 7. What is RTL?

RTL stands for Register Transfer Level.

RTL describes the behavior and data flow of a digital circuit using hardware description languages such as:

- Verilog
- SystemVerilog
- VHDL

RTL code is converted into a gate-level circuit during synthesis.

---

## 8. Verilog HDL

Verilog is a Hardware Description Language used to describe and design digital hardware.

Verilog can be used for:
- Combinational logic
- Sequential logic
- Testbenches
- RTL design
- Simulation

---

## 9. Simulation

Simulation is used to verify whether the RTL design behaves correctly.

In this stage:
1. RTL code is written.
2. A testbench is created.
3. The design is simulated.
4. Waveform data is generated.
5. The waveform is checked using GTKWave.

---

## 10. Synthesis

Synthesis converts RTL code into a gate-level representation using standard cells.

Yosys is an open-source synthesis tool used for RTL synthesis.

The synthesis process helps determine:
- Logic gates
- Cell usage
- Number of wires
- Design statistics

---

## 11. RTL-to-GDS Flow

The basic VLSI design
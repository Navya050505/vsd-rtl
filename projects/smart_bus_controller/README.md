Smart Bus Passenger Counting and Overcapacity Alert Controller

1. Project Overview

This project implements a Verilog-based digital controller for counting passengers entering and leaving a public bus. It detects when the passenger capacity is reached and generates an alert when an additional entry is attempted.

2. Objectives

- Count passenger entry and exit events.
- Indicate when the bus reaches its configured capacity.
- Generate an overcapacity alert when entry is attempted while full.
- Detect invalid exit events when the passenger count is zero.
- Verify the design using simulation and synthesis tools.

3. Inputs

- "clk" – clock signal.
- "reset" – resets the passenger count and alerts.
- "entry_event" – indicates a passenger entry.
- "exit_event" – indicates a passenger exit.
- "max_capacity" – configured maximum passenger capacity.

4. Outputs

- "passenger_count" – current passenger count.
- "bus_full" – indicates that the configured capacity is reached.
- "overcapacity_alert" – indicates an attempted entry while full.
- "invalid_event" – indicates an attempted exit while empty.

5. Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys
- GitHub Codespaces

6. Verification

The testbench checks reset, passenger entry, passenger exit, capacity detection, attempted entry while full, and attempted exit while empty. Icarus Verilog simulation produced the expected count and alert behavior. Yosys completed the generic synthesis checks with zero reported problems.

7. Project Structure

- "rtl/" – Verilog design.
- "tb/" – testbench.
- "sim/" – simulation executable and waveform.
- "synth/" – synthesis reports and netlist.
- "docs/" – project documentation.
- "screenshots/" – evidence screenshots.

8. Future Improvements

The design can be extended with a display interface, separate entry and exit sensors, and a physical implementation flow after validating the target technology and constraints.
`timescale 1ns/1ps

module tb_smart_bus_controller;

    reg clk;
    reg reset;
    reg entry_event;
    reg exit_event;
    reg [7:0] max_capacity;

    wire [7:0] passenger_count;
    wire bus_full;
    wire overcapacity_alert;
    wire invalid_event;

    smart_bus_controller #(
        .COUNT_WIDTH(8)
    ) dut (
        .clk(clk),
        .reset(reset),
        .entry_event(entry_event),
        .exit_event(exit_event),
        .max_capacity(max_capacity),
        .passenger_count(passenger_count),
        .bus_full(bus_full),
        .overcapacity_alert(overcapacity_alert),
        .invalid_event(invalid_event)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("sim/smart_bus_controller.vcd");
        $dumpvars(0, tb_smart_bus_controller);

        clk = 0;
        reset = 1;
        entry_event = 0;
        exit_event = 0;
        max_capacity = 3;

        #10;
        reset = 0;

        // Test passenger entries
        #10 entry_event = 1;
        #10 entry_event = 0;
        #10 entry_event = 1;
        #10 entry_event = 0;
        #10 entry_event = 1;
        #10 entry_event = 0;

        // Bus is full; another entry must trigger alert
        #10 entry_event = 1;
        #10 entry_event = 0;

        // Passenger exits
        #10 exit_event = 1;
        #10 exit_event = 0;

        // Entry should now be accepted
        #10 entry_event = 1;
        #10 entry_event = 0;

        // Empty the bus
        #10 exit_event = 1;
        #10 exit_event = 0;
        #10 exit_event = 1;
        #10 exit_event = 0;
        #10 exit_event = 1;
        #10 exit_event = 0;

        // Exit while empty must trigger invalid-event flag
        #10 exit_event = 1;
        #10 exit_event = 0;

        #20;
        $finish;
    end

    initial begin
        $monitor("Time=%0t | Count=%0d | Full=%b | Overcapacity Alert=%b | Invalid Event=%b",
                 $time, passenger_count, bus_full,
                 overcapacity_alert, invalid_event);
    end

endmodule
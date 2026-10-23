`timescale 1ns/1ps
module smart_bus_controller #(
    parameter COUNT_WIDTH = 8
)(
    input wire clk,
    input wire reset,
    input wire entry_event,
    input wire exit_event,
    input wire [COUNT_WIDTH-1:0] max_capacity,

    output reg [COUNT_WIDTH-1:0] passenger_count,
    output wire bus_full,
    output reg overcapacity_alert,
    output reg invalid_event
);

    // Bus is full when occupancy reaches the limit
    assign bus_full = (passenger_count >= max_capacity);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            passenger_count    <= 0;
            overcapacity_alert <= 0;
            invalid_event      <= 0;
        end else begin
            // Alerts indicate events detected in this clock cycle
            overcapacity_alert <= 0;
            invalid_event      <= 0;

            // Entry and exit events occurring together
            // are treated as no change in occupancy
            if (entry_event && exit_event) begin
                passenger_count <= passenger_count;
            end

            // Passenger entry
            else if (entry_event) begin
                if (max_capacity == 0) begin
                    overcapacity_alert <= 1;
                end
                else if (passenger_count >= max_capacity) begin
                    overcapacity_alert <= 1;
                end
                else begin
                    passenger_count <= passenger_count + 1'b1;
                end
            end

            // Passenger exit
            else if (exit_event) begin
                if (passenger_count == 0) begin
                    invalid_event <= 1;
                end
                else begin
                    passenger_count <= passenger_count - 1'b1;
                end
            end
        end
    end

endmodule
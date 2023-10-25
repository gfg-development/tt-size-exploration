`default_nettype none

module fma #( parameter WIDTH = 8) (
    input  wire                     clk,
    input  wire                     reset,

    input  wire [WIDTH - 1 : 0]     ina,
    input  wire [WIDTH - 1 : 0]     inb,
    input  wire                     enable,
    output wire [2 * WIDTH - 1 : 0] out
);

    reg [2 * WIDTH - 1 : 0] accu;
    always @(posedge clk) begin
        if (reset) begin
            accu        <= 0;
        end else begin
            if (enable) begin
                accu    <= accu + ina * inb;
            end
        end
    end

    assign out = accu;
endmodule

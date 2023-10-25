`default_nettype none

module mult #( parameter WIDTH = 8) (
    input  wire [WIDTH - 1 : 0]     ina,
    input  wire [WIDTH - 1 : 0]     inb,
    output wire [2 * WIDTH - 1 : 0] out
);

    assign out = ina * inb;
endmodule

`default_nettype none

module adder #( parameter WIDTH = 8) (
    input  wire [WIDTH - 1 : 0] ina,
    input  wire [WIDTH - 1 : 0] inb,
    output wire [WIDTH : 0]     out
);

    assign out = ina + inb;
endmodule

`default_nettype none

module adder_rc #( parameter WIDTH = 8) (
    input  wire [WIDTH - 1 : 0] ina,
    input  wire [WIDTH - 1 : 0] inb,
    output wire [WIDTH : 0]     out
);

    wire [WIDTH - 1 : 0]    carries;
    wire [WIDTH - 1 : 0]    sum;

    (* keep = "true" *) sky130_fd_sc_hd__ha_1 ha (
        .A(ina[0]), 
        .B(inb[0]), 
        .COUT(carries[0]), 
        .SUM(sum[0])
    );

    genvar i;
    generate
        for (i = 1; i < WIDTH; i = i + 1) begin
            (* keep = "true" *) sky130_fd_sc_hd__fa_1 fa (
                .A(ina[i]), 
                .B(inb[i]), 
                .CIN(carries[i - 1]), 
                .COUT(carries[i]), 
                .SUM(sum[i])
            );
        end
    endgenerate

    assign out      = {carries[WIDTH - 1], sum};

endmodule

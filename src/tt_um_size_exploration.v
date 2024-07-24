`default_nettype none

module tt_um_size_exploration #(
    parameter INPUT_WIDTH = 8,
    parameter COMPONENT = "MANDELBROT"
) (
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire [7:0] uio_in,   // IOs: Bidirectional Input path
    output wire [7:0] uio_out,  // IOs: Bidirectional Output path
    output wire [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    wire reset = ! rst_n;

    // use bidirectionals as outputs
    assign uio_oe = 8'b11111111;


    // handle outputs
    wire [31 : 0] result;

    assign uo_out   = ui_in[7] ? result[7 : 0]   : result[15 : 8];
    assign uio_out  = ui_in[7] ? result[23 : 16] : result[31 : 24];

    // handle inputs
    reg [32 * 3 - 1 : 0] inputs;
    wire [31 : 0] input_a;
    wire [31 : 0] input_b;
    integer i;
    always @(posedge clk) begin
        for (i = 0; i < 3; i++) begin
            // if reset, set counter to 0
            if (reset) begin
                inputs                <= 0;
            end else begin
                inputs[32 * i +: 32]  <= {inputs[32 * i +: 31], ui_in[i]};
            end
        end
    end

    assign input_a  = inputs[31 : 0];
    assign input_b  = inputs[63 : 32];

    // module under exploration
    generate
        if (COMPONENT == "FMA") begin
            fma #(.WIDTH(INPUT_WIDTH)) fma (
                .clk(clk),
                .reset(reset),
                .enable(ena),
                .ina(input_a[INPUT_WIDTH - 1 : 0]),
                .inb(input_b[INPUT_WIDTH - 1 : 0]),
                .out(result[2 * INPUT_WIDTH - 1 : 0])
            );
            assign result[31 : 2 * INPUT_WIDTH] = 0;
        end else if (COMPONENT == "MULT") begin
            mult #(.WIDTH(INPUT_WIDTH)) mult (
                .ina(input_a[INPUT_WIDTH - 1 : 0]),
                .inb(input_b[INPUT_WIDTH - 1 : 0]),
                .out(result[2 * INPUT_WIDTH - 1 : 0])
            );
            assign result[31 : 2 * INPUT_WIDTH] = 0;
        end else if (COMPONENT == "ADDER") begin
            adder #(.WIDTH(INPUT_WIDTH)) adder (
                .ina(input_a[INPUT_WIDTH - 1 : 0]),
                .inb(input_b[INPUT_WIDTH - 1 : 0]),
                .out(result[INPUT_WIDTH : 0])
            );
            assign result[31 : INPUT_WIDTH + 1] = 0;
        end else if (COMPONENT == "MANDELBROT") begin
            mandelbrot #(.WIDTH(INPUT_WIDTH)) adder (
                .in_cr(input_a[INPUT_WIDTH - 1 : 0]),
                .in_ci(input_a[2 * INPUT_WIDTH - 1 : INPUT_WIDTH]),
                .in_zr(input_b[INPUT_WIDTH - 1 : 0]),
                .in_zi(input_b[2 * INPUT_WIDTH - 1 : INPUT_WIDTH]),
                .out_zr(result[INPUT_WIDTH - 1 : 0]),
                .out_zi(result[2 * INPUT_WIDTH - 1 : INPUT_WIDTH])
            );
            assign result[31 : INPUT_WIDTH + 1] = 0;
        end else begin
            assign result = 0;
        end
    endgenerate    
endmodule

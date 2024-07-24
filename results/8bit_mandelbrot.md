# Linter output

    %Warning-UNUSEDSIGNAL: /work/src/tt_um_size_exploration.v:9:23: Signal is not used: 'uio_in'
                                                                  : ... In instance tt_um_size_exploration
        9 |     input  wire [7:0] uio_in,    
          |                       ^~~~~~
                           ... For warning description see https://verilator.org/warn/UNUSEDSIGNAL?v=5.009
                           ... Use "/* verilator lint_off UNUSEDSIGNAL */" and lint_on around source to disable this message.
    %Warning-UNUSEDSIGNAL: /work/src/tt_um_size_exploration.v:12:23: Signal is not used: 'ena'
                                                                   : ... In instance tt_um_size_exploration
       12 |     input  wire       ena,       
          |                       ^~~
    %Warning-UNUSEDSIGNAL: /work/src/tt_um_size_exploration.v:31:19: Bits of signal are not used: 'input_a'[31:16]
                                                                   : ... In instance tt_um_size_exploration
       31 |     wire [31 : 0] input_a;
          |                   ^~~~~~~
    %Warning-UNUSEDSIGNAL: /work/src/tt_um_size_exploration.v:32:19: Bits of signal are not used: 'input_b'[31:16]
                                                                   : ... In instance tt_um_size_exploration
       32 |     wire [31 : 0] input_b;
          |                   ^~~~~~~
    %Warning-UNUSEDSIGNAL: /work/src/mandelbrot.v:43:37: Bits of signal are not used: 'm1'[15:14,4:0]
                                                       : ... In instance tt_um_size_exploration....genblk1.adder
       43 |     wire signed [2 * WIDTH - 1 : 0] m1;
          |                                     ^~
    %Warning-UNUSEDSIGNAL: /work/src/mandelbrot.v:44:37: Bits of signal are not used: 'm2'[15:14,4:0]
                                                       : ... In instance tt_um_size_exploration....genblk1.adder
       44 |     wire signed [2 * WIDTH - 1 : 0] m2;
          |                                     ^~
    %Warning-UNUSEDSIGNAL: /work/src/mandelbrot.v:45:37: Bits of signal are not used: 'm3'[15,5:0]
                                                       : ... In instance tt_um_size_exploration....genblk1.adder
       45 |     wire signed [2 * WIDTH - 1 : 0] m3;
          |                                     ^~
    %Warning-UNUSEDSIGNAL: /work/src/mandelbrot.v:47:37: Bits of signal are not used: 't_zr'[9,0]
                                                       : ... In instance tt_um_size_exploration....genblk1.adder
       47 |     wire signed [WIDTH + 1 : 0]     t_zr;
          |                                     ^~~~
    %Warning-UNUSEDSIGNAL: /work/src/mandelbrot.v:48:37: Bits of signal are not used: 't_zi'[9,0]
                                                       : ... In instance tt_um_size_exploration....genblk1.adder
       48 |     wire signed [WIDTH + 1 : 0]     t_zi;
          |                                     ^~~~
    %Warning-UNUSEDSIGNAL: /work/src/mandelbrot.v:50:37: Bits of signal are not used: 't_sum'[5:0]
                                                       : ... In instance tt_um_size_exploration....genblk1.adder
       50 |     wire        [WIDTH + 1 : 0]     t_sum;
          |                                     ^~~~~

# Routing stats

| Utilisation (%) | Wire length (um) |
|-------------|------------------|
| 62.1 | 22642 |

# Cell usage by Category

| Category | Cells | Count |
|---------------|----------|-------|
|Fill | [decap](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/decap) [fill](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/fill) | 1234|
|Combo Logic | [a22oi](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/a22oi) [a21o](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/a21o) [o211a](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/o211a) [and2b](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/and2b) [a22o](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/a22o) [a32o](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/a32o) [a21oi](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/a21oi) [o21ai](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/o21ai) [a21bo](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/a21bo) [a31o](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/a31o) [and3b](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/and3b) [or2b](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/or2b) [or4b](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/or4b) [o22a](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/o22a) [and4bb](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/and4bb) [o2bb2a](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/o2bb2a) [a211o](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/a211o) [o211ai](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/o211ai) [o21a](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/o21a) [or3b](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/or3b) [o21bai](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/o21bai) [a211oi](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/a211oi) [a2111o](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/a2111o) [and4b](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/and4b) [a2bb2o](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/a2bb2o) [nor2b](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/nor2b) [o21ba](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/o21ba) [o32a](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/o32a) [a221oi](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/a221oi) [a31oi](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/a31oi) [o22ai](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/o22ai) [o31a](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/o31a) [a311o](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/a311o) [o2111a](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/o2111a) [o41a](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/o41a) [a221o](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/a221o) | 353|
|Tap | [tapvpwrvgnd](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/tapvpwrvgnd) | 246|
|NOR | [nor2](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/nor2) [xnor2](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/xnor2) [nor4](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/nor4) [nor3](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/nor3) | 200|
|NAND | [nand2](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/nand2) [nand3](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/nand3) [nand4](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/nand4) | 120|
|AND | [and4](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/and4) [and2](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/and2) [and3](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/and3) [a21boi](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/a21boi) | 119|
|OR | [xor2](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/xor2) [or2](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/or2) [or3](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/or3) [or4](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/or4) | 112|
|Buffer | [clkbuf](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/clkbuf) [buf](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/buf) | 97|
|Flip Flops | [dfxtp](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/dfxtp) | 32|
|Misc | [dlygate4sd3](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/dlygate4sd3) [conb](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/conb) | 27|
|Inverter | [inv](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/inv) | 13|
|Multiplexer | [mux2](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/mux2) | 3|
|Clock | [clkinv](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/clkinv) | 1|
## 1077 total cells (excluding fill and tap cells)

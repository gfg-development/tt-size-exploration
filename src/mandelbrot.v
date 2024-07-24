/* This is a simple component, that does one calculation step of the Mandelbrot.
 *
 * -----------------------------------------------------------------------------
 *
 * Copyright (C) 2024 Gerrit Grutzeck (g.grutzeck@gfg-development.de)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * -----------------------------------------------------------------------------
 *
 * Author   : Gerrit Grutzeck g.grutzeck@gfg-development.de
 * File     : fmeasurement.v
 * Create   : Jul 24, 2024
 * Revise   : Jul 24, 2024
 * Revision : 0.1
 *
 * -----------------------------------------------------------------------------
 */
 `default_nettype none

// assume that the format is 2.(WIDHT-2)

module mandelbrot #( parameter WIDTH = 8) (
    input  wire signed [WIDTH - 1 : 0]     in_cr,
    input  wire signed [WIDTH - 1 : 0]     in_ci,
    input  wire signed [WIDTH - 1 : 0]     in_zr,
    input  wire signed [WIDTH - 1 : 0]     in_zi,
    output wire signed [WIDTH - 1 : 0]     out_zr,
    output wire signed [WIDTH - 1 : 0]     out_zi
);
    wire signed [2 * WIDTH - 1 : 0] m1;
    wire signed [2 * WIDTH - 1 : 0] m2;
    wire signed [2 * WIDTH - 1 : 0] m3;

    assign m1       = in_zr * in_zr;
    assign m2       = in_zi * in_zi;
    assign m3       = in_zr * in_zi;
    
    assign out_zr   = m1[2 * WIDTH - 4 : WIDTH - 2] - m2[2 * WIDTH - 4 : WIDTH - 2] + in_cr;
    assign out_zi   = m3[2 * WIDTH - 4 : WIDTH - 2] + in_ci;
endmodule

module fir_filter (
    input clk,                  // Clock signal
    input rst,                  // Reset signal
    input [7:0] x_in,           // 8-bit input sample
    output reg [15:0] y_out     // 16-bit output result
);

// Coefficients for 4-tap FIR filter
parameter h0 = 1;
parameter h1 = 2;
parameter h2 = 3;
parameter h3 = 4;

// Shift register to store past input samples
reg [7:0] x_reg0, x_reg1, x_reg2, x_reg3;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        // Reset all registers and output to 0
        x_reg0 <= 0;
        x_reg1 <= 0;
        x_reg2 <= 0;
        x_reg3 <= 0;
        y_out <= 0;
    end else begin
        // Shift input samples
        x_reg3 <= x_reg2;
        x_reg2 <= x_reg1;
        x_reg1 <= x_reg0;
        x_reg0 <= x_in;

        // Multiply-accumulate operation
        y_out <= (h0 * x_reg0) + (h1 * x_reg1) + (h2 * x_reg2) + (h3 * x_reg3);
    end
end

endmodule

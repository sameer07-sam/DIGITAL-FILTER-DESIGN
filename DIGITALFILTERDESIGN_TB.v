module tb_fir_filter;

reg clk;                // Clock signal
reg rst;                // Reset signal
reg [7:0] x_in;         // 8-bit input
wire [15:0] y_out;      // 16-bit output from FIR

// Instantiate the FIR filter module
fir_filter uut (
    .clk(clk),
    .rst(rst),
    .x_in(x_in),
    .y_out(y_out)
);

// Clock generation: 10 ns period
always #5 clk = ~clk;

initial begin
    // Initialize signals
    clk = 0;
    rst = 1;
    x_in = 0;

    // Apply reset
    #10 rst = 0;

    // Apply input samples
    x_in = 8'd5;   #10;
    x_in = 8'd10;  #10;
    x_in = 8'd15;  #10;
    x_in = 8'd20;  #10;
    x_in = 8'd25;  #10;
    x_in = 8'd30;  #10;
    x_in = 8'd35;  #10;
    x_in = 8'd0;   #10;

    // Finish simulation
    #20 $finish;
end

endmodule

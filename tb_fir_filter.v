module tb_fir_filter;

    reg clk, reset;
    reg signed [7:0] x_in;
    wire signed [15:0] y_out;

    fir_filter uut (.clk(clk), .reset(reset), .x_in(x_in), .y_out(y_out));

    initial begin
        $display("Time\tInput\tOutput");
        $monitor("%g\t%d\t%d", $time, x_in, y_out);

        clk = 0;
        reset = 1;
        x_in = 0;
        #5 reset = 0;

        // Input sequence
        x_in = 10; #10;
        x_in = 20; #10;
        x_in = 30; #10;
        x_in = 40; #10;
        x_in = 50; #10;
        x_in = 0;  #10;

        #50 $finish;
    end

    always #5 clk = ~clk;

endmodule

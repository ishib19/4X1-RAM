module ram4x1_tb;
    reg clk;
    reg we;
    reg [1:0] addr;
    reg din;
    wire dout;

    ram4x1 demo (
        .clk(clk),
        .we(we),
        .addr(addr),
        .din(din),
        .dout(dout)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $display("Time\tWE\tADDR\tDIN\tDOUT\tOperation");

        we = 1; addr = 2'b00; din = 1; #10;
        $display("%0t\t%b\t%02b\t%b\t%b\tWrite 1 to addr 00", $time, we, addr, din, dout);

        addr = 2'b01; din = 0; #10;
        $display("%0t\t%b\t%02b\t%b\t%b\tWrite 0 to addr 01", $time, we, addr, din, dout);

        addr = 2'b10; din = 1; #10;
        $display("%0t\t%b\t%02b\t%b\t%b\tWrite 1 to addr 10", $time, we, addr, din, dout);

        addr = 2'b11; din = 0; #10;
        $display("%0t\t%b\t%02b\t%b\t%b\tWrite 0 to addr 11", $time, we, addr, din, dout);

        we = 0; addr = 2'b00; #10;
        $display("%0t\t%b\t%02b\t%b\t%b\tRead from addr 00", $time, we, addr, din, dout);

        addr = 2'b01; #10;
        $display("%0t\t%b\t%02b\t%b\t%b\tRead from addr 01", $time, we, addr, din, dout);

        addr = 2'b10; #10;
        $display("%0t\t%b\t%02b\t%b\t%b\tRead from addr 10", $time, we, addr, din, dout);

        addr = 2'b11; #10;
        $display("%0t\t%b\t%02b\t%b\t%b\tRead from addr 11", $time, we, addr, din, dout);

        $finish;
    end
endmodule


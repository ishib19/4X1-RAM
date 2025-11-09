module ram4x1 (
    input wire clk,
    input wire we,
    input wire [1:0] addr,
    input wire din,
    output reg dout
);

    reg [3:0] mem;

    always @(posedge clk) begin
        if (we)
            mem[addr] <= din;
        dout <= mem[addr];
    end
endmodule



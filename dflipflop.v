module dflipflop(
    input Din, Clk, Rst,
    output reg Q, notQ
    );
        initial begin
            Q = 1'b0;
            notQ = 1'b1;
        end
    always @(posedge Clk)
    begin
        if (Rst) begin
            Q     <= 1'b0;
            notQ  <= 1'b1;
        end
        else begin
            Q     <= Din;
            notQ  <= ~Din;
        end
    end
endmodule

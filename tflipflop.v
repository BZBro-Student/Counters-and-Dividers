module tflipflop(
input T, Clk, Rst,
output Q, notQ
    );
    
    jkflipflop jk (
    .Rst(Rst),
    .J(T),
    .K(T),
    .Clk(Clk),
    .Q(Q),
    .notQ(notQ)
    );
    
endmodule

module tflipflop(
input T, Clk,
output Q, notQ
    );
    
    jkflipflop jk (
    .J(T),
    .K(T),
    .Clk(Clk),
    .Q(Q),  
    .notQ(notQ)
    );
    
endmodule
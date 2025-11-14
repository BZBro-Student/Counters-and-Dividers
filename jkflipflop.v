module jkflipflop(
    input J, K, Clk,
    output Q, notQ
    );
    wire din = (~K & Q) | (J & ~Q);
        
        
        dflipflop d(
        .Din(din),
        .Clk(Clk),
        .Q(Q),
        .notQ(notQ)
        );

endmodule
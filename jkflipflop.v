module jkflipflop(
    input J, K, Clk,Rst,
    output Q, notQ
    );
    wire din = (~K & Q) | (J & ~Q);
        
        
        dflipflop d(
        .Rst(Rst),
        .Din(din),
        .Clk(Clk),
        .Q(Q),
        .notQ(notQ)
        );

endmodule
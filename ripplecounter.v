module ripplecounter(
    input clk, Rst,
    output wire stage1, stage2, stage3
    ); 
    tflipflop s1 (
       .Rst(Rst),
       .T(1'b1),
       .Clk(clk),
       .Q(stage1)
    );
    
    tflipflop s2 (
    .Rst(Rst),
        .T(1'b1),
        .Clk(stage1),
        .Q(stage2)
    );
    
    tflipflop s3 (
    .Rst(Rst),
        .T(1'b1),
        .Clk(stage2),
        .Q(stage3)
    );
    
    
    
endmodule

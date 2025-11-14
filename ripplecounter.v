module ripplecounter(
    input clk,
    output wire stage1, stage2, stage3
);
    reg t; 
    initial begin
        t = 1'b1;
    end
    
        
    tflipflop s1 (
        .T(t),
        .Clk(clk),
        .Q(stage1)
    );
    
    tflipflop s2 (
        .Clk(stage1),
        .Q(stage2)
    );
    
    tflipflop s3 (
        .Clk(stage2),
        .Q(stage3)
    );
    
endmodule
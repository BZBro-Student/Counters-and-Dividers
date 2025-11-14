module top (
    input btnC,
    input btnU,
    output [6:0] led
);

    modcounter mc (
        .reset(btnU),
        .clk(btnC),
        .state1(led[3]),
        .state2(led[4]),
        .state3(led[5]),
        .fout(led[6])
    );
    
    ripplecounter rc (
        .clk(btnC),
        .stage1(led[0]),
        .stage2(led[1]),
        .stage3(led[2])
    );
    
endmodule
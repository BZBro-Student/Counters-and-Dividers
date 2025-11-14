module modcounter(
    input reset, clk,
    output state1, state2, state3, fout
    );
    
    wire coutcin1, coutcin2;
    wire yd1, yd2, yd3;
    wire qacomp1,qacomp2,qacomp3;
    wire cmpreset;
    wire rst_all;
    
    full_adder fa1(
    .A(qacomp1),
    .B(1'b1),
    .Cin(1'b0),
    .Y(yd1),
    .Cout(coutcin1)
    );
    
     full_adder fa2(
    .A(qacomp2),
    .B(1'b0),
    .Cin(coutcin1),
    .Y(yd2),
    .Cout(coutcin2)
    );
    
     full_adder fa3(
    .A(qacomp3),
    .B(1'b0),
    .Cin(coutcin2),
    .Y(yd3)
    );
    assign cmpreset = qacomp1 & ~qacomp2 & qacomp3;
    assign rst_all = reset | cmpreset;
    
    dflipflop df1 (
    .Rst(rst_all),
    .Din(yd1),
    .Clk(clk),
    .Q(qacomp1)
    );
     dflipflop df2 (
     .Rst(rst_all),
    .Din(yd2),
    .Clk(clk),
    .Q(qacomp2)
    );
    
     dflipflop df3 (
     .Rst(rst_all),
    .Din(yd1),
    .Clk(clk),
    .Q(qacomp3)
    );
    assign fout = cmpreset;
    assign state1 = qacomp1;
    assign state2 = qacomp2;
    assign state3 = qacomp3;
    
    
endmodule

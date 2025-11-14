module modcounter (
    input reset, clk,
    output state1, state2, state3, fout
);

    wire coutcin1, coutcin2;
    wire yd1, yd2, yd3;
    wire qacomp1, qacomp2, qacomp3;
    wire cmpreset;
    wire rst_all;
    
    wire fout_q;
    wire fout_next;
    
    fulladder fa1 (
        .A(qacomp1),
        .B(1'b1),
        .Cin(1'b0),
        .Y(yd1),
        .Cout(coutcin1)
    );
    
    fulladder fa2 (
        .A(qacomp2),
        .B(1'b0),
        .Cin(coutcin1),
        .Y(yd2),
        .Cout(coutcin2)
    );
    
    fulladder fa3 (
        .A(qacomp3),
        .B(1'b0),
        .Cin(coutcin2),
        .Y(yd3)
    );
    assign cmpreset = qacomp3 & qacomp2 & ~qacomp1;

    assign rst_all = reset | cmpreset;
    
    dflipflop df1 (
        .Din(yd1),
        .Clk(clk),
        .Rst(rst_all),
        .Q(qacomp1)
    );
    
    dflipflop df2 (
        .Din(yd2),
        .Clk(clk),
        .Rst(rst_all),
        .Q(qacomp2)
    );
    
    dflipflop df3 (
        .Din(yd3),
        .Clk(clk),
        .Rst(rst_all),
        .Q(qacomp3)
    );
    
    assign fout_next = fout_q ^ cmpreset;

    dflipflop df_out (
        .Din(fout_next),
        .Clk(clk),
        .Rst(reset),
        .Q(fout_q)
    );
        
    assign fout = fout_q;
    assign state1 = qacomp1;
    assign state2 = qacomp2;
    assign state3 = qacomp3;

endmodule
module fulladder(
    input A,B,Cin,
    output Y, Cout
);
    
    assign Y = A^B^Cin;
    assign Cout = A&B | B&Cin | Cin&A;
    
    
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2023 10:43:38 PM
// Design Name: 
// Module Name: tb_minority_detector
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_minority_detector;

    reg a,b,c;
    wire f;
    integer i;
    
    Minority_Detector dut(.a(a),.b(b),.c(c),.f(f));
    initial
    begin 
        a=1'b0;
        b=1'b0;
        c=1'b0;
    end
    
    
    initial
    begin
        for(i=0;i<8;i=i+1)
        begin
            {a,b,c}=i;
            #10;
        end
    end
    
    initial
    begin
        $monitor(" input a=%b b=%b c=%b  f=%b",a,b,c,f);
        #100;
        $finish;
    end
endmodule

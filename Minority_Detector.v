`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2023 10:41:19 PM
// Design Name: 
// Module Name: Minority_Detector
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


module Minority_Detector(a,b,c,f);

    input a,b,c;
    output f;
    
    wire w1,w2,w3;
    
    assign w1=a&b;
    assign w2=b&c;
    assign w3=c&a;
    assign f=~(w1|w2|w3);
    
endmodule

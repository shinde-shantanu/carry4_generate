`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2019 16:26:32
// Design Name: 
// Module Name: top
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


module top(
    output wire [3:0] CO,
    output wire [3:0] O,
    input CYINIT  
    );
    
    reg gnd=0;
    wire [3:0] DI;
    wire [3:0] S;
    wire [3:0] CO1[0:8];
    wire [3:0] O1[0:8];
    genvar i;
        
    assign S[0]=1;
    assign S[1]=1;
    assign S[2]=1;
    assign S[3]=1;
    
    assign DI[0]=0;
    assign DI[1]=0;
    assign DI[2]=0;
    assign DI[3]=0;
    
    CARRY4 CARRY4_inst1(
        .CO(CO1[0]),         //4-bitcarryout
        .O(O1[0]),           //4-bitcarrychainXORdataout
        .CI(gnd),         //1-bitcarrycascadeinput
        .CYINIT(CYINIT), //1-bitcarryinitialization
        .DI(DI),         //4-bitcarry-MUXdatain
        .S(S)            //4-bitcarry-MUXselectinput
        );
    
    generate
        for (i = 1; i < 9; i = i + 1) begin
              CARRY4 CARRY4_inst(
                .CO(CO1[i]),         //4-bitcarryout
                .O(O1[i]),           //4-bitcarrychainXORdataout
                .CI(CO1[i-1][3]),         //1-bitcarrycascadeinput
                .CYINIT(gnd), //1-bitcarryinitialization
                .DI(DI),         //4-bitcarry-MUXdatain
                .S(S)            //4-bitcarry-MUXselectinput
                );
        end
    endgenerate
    
    CARRY4 CARRY4_inst2(
        .CO(CO),         //4-bitcarryout
        .O(O),           //4-bitcarrychainXORdataout
        .CI(CO1[8][3]),         //1-bitcarrycascadeinput
        .CYINIT(gnd), //1-bitcarryinitialization
        .DI(DI),         //4-bitcarry-MUXdatain
        .S(S)            //4-bitcarry-MUXselectinput
        );
    
endmodule

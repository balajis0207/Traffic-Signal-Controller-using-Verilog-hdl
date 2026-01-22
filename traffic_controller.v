`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2026 20:38:03
// Design Name: 
// Module Name: traffic_controller
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


module traffic_controller 
(
input CLOCK,
input CLEAR,
input X,                
output reg [1:0] HWY,     
output reg [1:0] CNTRY    
);

parameter RED    = 2'b00;
parameter YELLOW = 2'b01;
parameter GREEN  = 2'b10;
parameter S0 = 3'd0,
          S1 = 3'd1,
          S2 = 3'd2,
          S3 = 3'd3,
          S4 = 3'd4;
parameter Y2RDELAY = 3;   
parameter R2GDELAY = 2;   
reg [2:0] state, next_state;

always @(posedge CLOCK or posedge CLEAR) begin
if (CLEAR)
state <= S0;
else
state <= next_state;
end

always @(*) begin
HWY   = GREEN;   
CNTRY = RED;
case (state)
 S0: begin HWY = GREEN;  CNTRY = RED;    end
 S1: begin HWY = YELLOW; CNTRY = RED;    end
 S2: begin HWY = RED;    CNTRY = RED;    end
 S3: begin HWY = RED;    CNTRY = GREEN;  end
 S4: begin HWY = RED;    CNTRY = YELLOW; end
 endcase
 end
 
always @(*) begin
next_state = state;
case (state)
 S0: if (X) next_state = S1;
 S1: next_state = S2;
 S2: next_state = S3;
 S3: if (!X) next_state = S4;
 S4: next_state = S0;
 default: next_state = S0;
 endcase
 end
endmodule
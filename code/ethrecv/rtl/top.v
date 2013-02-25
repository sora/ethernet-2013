`default_nettype none

module top (
  // system interface
    input wire clock
  , input wire reset_n

  // Ethernet PHY#1 interface
  , input wire phy1_125M_clk
  , input wire phy1_tx_clk
  , input wire phy1_rx_clk
  , input wire phy1_rx_dv
  , input wire [7:0] phy1_rx_data
  , inout wire phy1_mii_data
  , output wire phy1_mii_clk
  , output wire phy1_rst_n
  , output wire phy1_gtx_clk
  , output wire phy1_tx_en
  , output wire [7:0] phy1_tx_data

  // Switch and LED
  , input wire [7:0] switch
  , output wire [7:0] led
);

//------------------------------------------------------------------
// Global counter (Clock: PHY1_125M_clk)
//------------------------------------------------------------------
reg [11:0] counter;
always @(posedge phy1_125M_clk) begin
  if (reset_n == 1'b0)
    counter <= 12'd0;
  else begin
    if (phy1_rx_dv)
      counter <= counter + 12'd1;
    else
      counter <= 11'd0;
  end
end


//------------------------------------------------------------------
// PHY cold reset (260 clock)
//------------------------------------------------------------------
reg [8:0] coldsys_rst = 0;
wire coldsys_rst260 = (coldsys_rst == 9'd260);
always @(posedge clock)
  coldsys_rst <= !coldsys_rst260 ? coldsys_rst + 9'd1 : 9'd260;
assign phy1_rst_n = coldsys_rst260;


//------------------------------------------------------------------
// Receiver logic
//------------------------------------------------------------------
reg [7:0] rx_data [0:1023];
integer i;
always @(posedge phy1_rx_clk) begin
  if (reset_n == 1'b0) begin
    for (i=0; i<=1023; i=i+1)
      rx_data[i] <= 8'h0;
  end else begin
    if (phy1_rx_dv)
      rx_data[counter] <= phy1_rx_data;
  end
end
assign phy1_mii_clk = 1'b0;
assign phy1_tx_en   = 1'b0;
assign phy1_tx_data = 8'h0;
assign phy1_gtx_clk = 1'b0;
assign led[7:0]     = ~rx_data[switch];   // display packet data using LED

endmodule

`default_nettype wire


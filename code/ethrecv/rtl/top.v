`default_nettype none

module top (
  // system interface
    input  wire clock
  , input  wire reset_n

  // Ethernet PHY#1 interface
  , input  wire phy1_125M_clk
  , input  wire phy1_rx_clk
  , input  wire phy1_rx_dv
  , input  wire [7:0] phy1_rx_data
  , output wire phy1_rst_n
  , output wire phy1_gtx_clk
  , output wire phy1_tx_en
  , output wire [7:0] phy1_tx_data

  // Switch and LED
  , input  wire [7:0] switch
  , output wire [7:0] led
);

//------------------------------------------------------------------
// PHY cold reset (10 ms)
//------------------------------------------------------------------
reg [19:0] coldsys_rst = 0;
wire coldsys_rst10ms = (coldsys_rst == 20'h100000);
always @(posedge clock)
  coldsys_rst <= !coldsys_rst10ms ? coldsys_rst + 20'h1 : 20'h100000;
assign phy1_rst_n = coldsys_rst10ms;


//------------------------------------------------------------------
// Global counter (Clock: phy1_rx_clk)
//------------------------------------------------------------------
reg [11:0] counter;
always @(posedge phy1_rx_clk) begin
  if (reset_n == 1'b0)
    counter <= 12'd0;
  else begin
    if (phy1_rx_dv)
      counter <= counter + 12'd1;
    else
      counter <= 12'd0;
  end
end


//------------------------------------------------------------------
// Receiver logic
//------------------------------------------------------------------
reg [7:0] rx_data [0:2047];
always @(posedge phy1_rx_clk) begin
  if (phy1_rx_dv)
    rx_data[counter] <= phy1_rx_data;
end
assign phy1_tx_en   = 1'b0;
assign phy1_tx_data = 8'h0;
assign phy1_gtx_clk = 1'b0;
assign led[7:0]     = ~rx_data[switch];   // display packet data using LED

endmodule

`default_nettype wire


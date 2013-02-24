module top (
  // system interface
    input        clock
  , input        reset_n

  // Ethernet PHY#1 interface
  , input        phy1_125M_clk
  , input        phy1_tx_clk
  , input        phy1_rx_clk
  , input        phy1_rx_dv
  , input  [7:0] phy1_rx_data
  , inout        phy1_mii_data
  , output       phy1_rst_n
  , output       phy1_gtx_clk
  , output       phy1_tx_en
  , output [7:0] phy1_tx_data
  , output       phy1_mii_clk

  // Switch and LED
  , input  [7:0] switch
  , output [7:0] led
);

assign phy1_mii_clk  = 1'b0;
assign phy1_mii_data = 1'b0;
assign phy1_tx_en    = 1'b0;
assign phy1_tx_data  = 8'h0;
assign phy1_gtx_clk  = 1'b0;

//------------------------------------------------------------------
// PHY cold reset (260 clock)
//------------------------------------------------------------------
reg [8:0] coldsys_rst = 0;
assign coldsys_rst260 = (coldsys_rst==9'd260);
always @(posedge clock)
  coldsys_rst <= !coldsys_rst260 ? coldsys_rst + 9'd1 : 9'd260;
assign phy1_rst_n = coldsys_rst260;


//------------------------------------------------------------------
// receiver logic
//------------------------------------------------------------------
reg [10:0] counter;
reg [7:0] rx_data [0:2047];
always @(posedge phy1_rx_clk) begin
  if (reset_n == 1'b0) begin
    counter <= 11'd0;
  end else begin
    if ( phy1_rx_dv ) begin
      rx_data[ counter ] <= phy1_rx_data;
      counter <= counter + 11'd1;
    end else
      counter <= 11'd0;
  end
end
assign led[7:0] = ~rx_data[switch];   // display packet data using LED

endmodule


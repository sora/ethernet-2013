`timescale 1ns / 1ns

module top_tb;

reg        clock;
reg        reset_n;
wire       phy1_rst_n;
reg        phy1_125M_clk;
reg        phy1_tx_clk;
wire       phy1_gtx_clk;
wire       phy1_tx_en;
wire [7:0] phy1_tx_data;
reg        phy1_rx_clk;
reg        phy1_rx_dv;
reg        phy1_rx_er;
reg  [7:0] phy1_rx_data;
reg        phy1_col;
reg        phy1_crs;
wire       phy1_mii_clk;
wire       phy1_mii_data;
reg  [7:0] switch;
wire [7:0] led;

top top_tb (
    .clock(clock)
  , .reset_n(reset_n)
  , .phy1_rst_n(phy1_rst_n)
  , .phy1_125M_clk(phy1_125M_clk)
  , .phy1_tx_clk(phy1_tx_clk)
  , .phy1_gtx_clk(phy1_gtx_clk)
  , .phy1_tx_en(phy1_tx_en)
  , .phy1_tx_data(phy1_tx_data)
  , .phy1_rx_clk(phy1_rx_clk)
  , .phy1_rx_dv(phy1_rx_dv)
  , .phy1_rx_er(phy1_rx_er)
  , .phy1_rx_data(phy1_rx_data)
  , .phy1_col(phy1_col)
  , .phy1_crs(phy1_crs)
  , .phy1_mii_clk(phy1_mii_clk)
  , .phy1_mii_data(phy1_mii_data)
  , .switch(switch)
  , .led(led)
);

initial begin
  clock         = 1'b0;
  reset_n       = 1'b0;
  phy1_125M_clk = 1'b0;
  phy1_tx_clk   = 1'b0;
  $monitor($realtime,,"ps %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h ",
            clock, reset_n, phy1_rst_n, phy1_125M_clk, phy1_tx_clk, phy1_gtx_clk,
            phy1_tx_en, phy1_tx_data, phy1_rx_clk, phy1_rx_dv, phy1_rx_er, 
            phy1_rx_data, phy1_col, phy1_crs, phy1_mii_clk, phy1_mii_data, switch, led);
  #300  reset_n = 1'b1;
  #1000 $finish;
end

always #1 begin
  clock         = ~clock;
  phy1_125M_clk = ~phy1_125M_clk;
  phy1_tx_clk   = ~phy1_tx_clk;
end

endmodule


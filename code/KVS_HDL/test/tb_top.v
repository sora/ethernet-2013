`default_nettype none

`timescale 1ps / 1ps
`define SIMULATION

module tb_top;

//------------------------------------------------------------------
// Clocks
//------------------------------------------------------------------

// verilator lint_save
// verilator lint_off STMTDLY
reg sys_clk;
initial sys_clk = 1'b0;
always #8 sys_clk = ~sys_clk;

// 125MHz RX clock
reg phy_rx_clk;
initial phy_rx_clk = 1'b0;
always #8 phy_rx_clk = ~phy_rx_clk;

// 125MHz TX clock
reg phy_tx_clk;
initial phy_tx_clk = 1'b0;
always #8 phy_tx_clk = ~phy_tx_clk;
// verilator lint_restore


//------------------------------------------------------------------
// testbench
//------------------------------------------------------------------
reg sys_rst;
reg phy_rx_dv;
reg [7:0] phy_rxd;

wire [7:0] gmii_0_txd, gmii_1_txd;
wire [7:0] gmii_0_rxd, gmii_1_rxd;
wire gmii_0_gtx_clk, gmii_1_gtx_clk;
wire gmii_0_rst, gmii_1_rst;
wire gmii_0_tx_en, gmii_1_tx_en;
wire gmii_0_rx_dv, gmii_1_rx_dv;
wire gmii_0_rx_er, gmii_1_rx_er;
wire gmii_0_col, gmii_1_col;
wire gmii_0_crs, gmii_1_crs;
wire phy_mii_clk;
wire[3:0] mii_0_txd, mii_1_txd;
wire[7:0] dip_data;
wire[7:0] led_data;

top top_ins (
    .clock(~sys_clk)
  , .reset_n(~sys_rst)

  , .phy1_rx_clk(phy_rx_clk)
  , .phy1_rx_er(gmii_0_rx_er)
  , .phy1_rx_dv(phy_rx_dv)
  , .phy1_rxd(phy_rxd)
  , .phy1_tx_clk()
  , .phy1_tx_en(gmii_0_tx_en)
  , .phy1_txd(gmii_0_txd)
  , .phy1_gtx_clk(gmii_0_gtx_clk)
  , .phy1_125M_clk(phy_tx_clk)

  , .phy2_rx_clk(phy_rx_clk)
  , .phy2_rx_er(gmii_1_rx_er)
  , .phy2_rx_dv()
  , .phy2_rxd()
  , .phy2_tx_clk()
  , .phy2_tx_en(gmii_1_tx_en)
  , .phy2_txd(gmii_1_txd)
  , .phy2_gtx_clk(gmii_1_gtx_clk)
  , .phy2_125M_clk(phy_tx_clk)

  , .switch(dip_data)
  , .led(led_data)
  , .segled(led_data)
);


//------------------------------------------------------------------
// a clock
//------------------------------------------------------------------
task waitclock;
begin
  @(posedge sys_clk);
  #1;
end
endtask


//------------------------------------------------------------------
// monitor
//------------------------------------------------------------------
//
//initial
//  $monitor("phy_rx_dv: %x, phy_rxd: %x", phy_rx_dv, phy_rxd);


//------------------------------------------------------------------
// scinario
//------------------------------------------------------------------
reg [8:0] rom [0:1024];
reg [11:0] counter = 12'b0;

always @(posedge phy_rx_clk) begin
  { phy_rx_dv, phy_rxd } <= rom[counter];
  counter                <= counter + 1;
  $display("phy_rx_dv: %x, phy_rxd: %x", phy_rx_dv, phy_rxd);
end

initial begin
  $dumpfile("./test.vcd");
  $dumpvars(0, tb_top);
  $readmemh("request.hex", rom);
  sys_rst = 1'b1;
  counter = 0;

  waitclock;
  waitclock;

  sys_rst = 1'b0;

  waitclock;

  // verilator lint_off STMTDLY
  #10000;
  $finish;
end

endmodule

`default_nettype wire


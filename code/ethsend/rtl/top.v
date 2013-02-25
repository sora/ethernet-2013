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
  , output wire phy1_mii_clk
  , output wire phy1_rst_n
  , output wire phy1_gtx_clk
  , output wire phy1_tx_en
  , output wire [7:0] phy1_tx_data

  // Switch/LED
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
  else
    counter <= counter + 12'd1;
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
// sender logic
//------------------------------------------------------------------
reg tx_en;
reg [7:0] tx_data;
reg crc_rd;
wire crc_init = (counter == 12'h08);
wire [31:0] crc_out;
wire crc_data_en = ~crc_rd;
always @(posedge phy1_125M_clk) begin
  if (reset_n == 1'b0) begin
    tx_data <= 11'h0;
    tx_en   <= 1'b0;
    crc_rd  <= 1'b0;
  end else begin
    case (counter)
      12'h00: begin
        tx_data <= 8'h55;
        tx_en   <= 1'b1;
      end
      12'h01: tx_data <= 8'h55;  // Preamble
      12'h02: tx_data <= 8'h55;
      12'h03: tx_data <= 8'h55;
      12'h04: tx_data <= 8'h55;
      12'h05: tx_data <= 8'h55;
      12'h06: tx_data <= 8'h55;
      12'h07: tx_data <= 8'hd5;  // preamble + Start Frame Delimiter
      12'h08: tx_data <= 8'hff;  // Destination MAC address = FF-FF-FF-FF-FF-FF-FF
      12'h09: tx_data <= 8'hff;
      12'h0a: tx_data <= 8'hff;
      12'h0b: tx_data <= 8'hff;
      12'h0c: tx_data <= 8'hff;
      12'h0d: tx_data <= 8'hff;
      12'h0e: tx_data <= 8'h00;  // Source MAC address = 00-30-1b-a0-a4-8e
      12'h0f: tx_data <= 8'h30;
      12'h10: tx_data <= 8'h1b;
      12'h11: tx_data <= 8'ha0;
      12'h12: tx_data <= 8'ha4;
      12'h13: tx_data <= 8'h8e;
      12'h14: tx_data <= 8'h08;  // Protocol Type = ARP (0x0806)
      12'h15: tx_data <= 8'h06;
      12'h16: tx_data <= 8'h00;  // Harware Type = Ethernet (1)
      12'h17: tx_data <= 8'h01;
      12'h18: tx_data <= 8'h08;  // Protocol Type = IP (0x0800)
      12'h19: tx_data <= 8'h00;
      12'h1a: tx_data <= 8'h06;  // Hardware size = 6
      12'h1b: tx_data <= 8'h04;  // Protocol size = 4
      12'h1c: tx_data <= 8'h00;  // Opcode = request (1)
      12'h1d: tx_data <= 8'h01;
      12'h1e: tx_data <= 8'h00;  // Sender MAC address = 00-30-1b-a0-a4-8e
      12'h1f: tx_data <= 8'h30;
      12'h20: tx_data <= 8'h1b;
      12'h21: tx_data <= 8'ha0;
      12'h22: tx_data <= 8'ha4;
      12'h23: tx_data <= 8'h8e;
      12'h24: tx_data <= 8'd10;  // Sender IP address = 10.0.21.10
      12'h25: tx_data <= 8'd00;
      12'h26: tx_data <= 8'd21;
      12'h27: tx_data <= 8'd10;
      12'h28: tx_data <= 8'h00;  // Target MAC address = 00-00-00-00-00-00
      12'h29: tx_data <= 8'h00;
      12'h2a: tx_data <= 8'h00;
      12'h2b: tx_data <= 8'h00;
      12'h2c: tx_data <= 8'h00;
      12'h2d: tx_data <= 8'h00;
      12'h2e: tx_data <= 8'd10;  // Target IP address = 10.0.21.99
      12'h2f: tx_data <= 8'd00;
      12'h30: tx_data <= 8'd21;
      12'h31: tx_data <= 8'd99;
      12'h32: tx_data <= 8'h00;  // Padding Area
      12'h33: tx_data <= 8'h00;
      12'h34: tx_data <= 8'h00;
      12'h35: tx_data <= 8'h00;
      12'h36: tx_data <= 8'h00;
      12'h37: tx_data <= 8'h00;
      12'h38: tx_data <= 8'h00;
      12'h39: tx_data <= 8'h00;
      12'h3a: tx_data <= 8'h00;
      12'h3b: tx_data <= 8'h00;
      12'h3c: tx_data <= 8'h00;
      12'h3d: tx_data <= 8'h00;
      12'h3e: tx_data <= 8'h00;
      12'h3f: tx_data <= 8'h00;
      12'h40: tx_data <= 8'h00;
      12'h41: tx_data <= 8'h00;
      12'h42: tx_data <= 8'h00;
      12'h43: tx_data <= 8'h00;
      12'h44: begin              // Frame Check Sequence
        crc_rd  <= 1'b1;
        tx_data <= crc_out[31:24];
      end
      12'h45: tx_data <= crc_out[23:16];
      12'h46: tx_data <= crc_out[15:8];
      12'h47: tx_data <= crc_out[7:0];
      12'h48: begin
        tx_en   <= 1'b0;
        tx_data <= 8'h0;
        crc_rd  <= 1'b0;
      end
      default: tx_data <= 8'h0;
    endcase
  end
end
assign phy1_mii_clk = 1'b0;
assign phy1_tx_en   = tx_en;
assign phy1_tx_data = tx_data;
assign phy1_gtx_clk = phy1_125M_clk;
assign led[7:0]     = tx_en ? 8'h0 : 8'hff;


//------------------------------------------------------------------
// ethernet FCS generator
//------------------------------------------------------------------
crc_gen crc_inst (
    .Reset(~reset_n)
  , .Clk(phy1_125M_clk)
  , .Init(crc_init)
  , .Frame_data(tx_data)
  , .Data_en(crc_data_en)
  , .CRC_rd(crc_rd)
  , .CRC_end()
  , .CRC_out(crc_out)
);

endmodule

`default_nettype wire

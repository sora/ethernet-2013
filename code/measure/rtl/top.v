`default_nettype none

module top (
  // system interface
    input  wire clock
  , input  wire reset_n

  // Ethernet PHY#1 interface
  , output wire phy1_rst_n
  , input  wire phy1_125M_clk
  , input  wire phy1_tx_clk
  , output wire phy1_gtx_clk
  , output wire phy1_tx_en
  , output wire [7:0] phy1_tx_data
  , input  wire phy1_rx_clk
  , input  wire phy1_rx_dv
  , input  wire [7:0] phy1_rx_data

  // Ethernet PHY#2 interface
  , output wire phy2_rst_n
  , input  wire phy2_125M_clk
  , input  wire phy2_tx_clk
  , output wire phy2_gtx_clk
  , output wire phy2_tx_en
  , output wire [7:0] phy2_tx_data
  , input  wire phy2_rx_clk
  , input  wire phy2_rx_dv
  , input  wire [7:0] phy2_rx_data

  // Switch and LED
  , input  wire [7:0] switch
  , output wire [7:0] led
  , output wire [14:0] segled
);

//------------------------------------------------------------------
// PHY cold reset (10 ms)
//------------------------------------------------------------------
reg [19:0] coldsys_rst = 0;
wire coldsys_rst10ms = (coldsys_rst == 20'h100000);
always @(posedge clock)
  coldsys_rst <= !coldsys_rst10ms ? coldsys_rst + 20'h1 : 20'h100000;
assign phy1_rst_n = coldsys_rst10ms;
assign phy2_rst_n = coldsys_rst10ms;


//------------------------------------------------------------------
// TX counter (Clock: phy1_125M_clk)
//------------------------------------------------------------------
reg [11:0] txcounter;
always @(posedge phy1_125M_clk) begin
  if (!reset_n)
    txcounter <= 12'd0;
  else
    txcounter <= txcounter + 12'd1;
end


//------------------------------------------------------------------
// RX counter (Clock: phy2_rx_clk)
//------------------------------------------------------------------
reg [11:0] rxcounter;
always @(posedge phy2_rx_clk) begin
  if (!reset_n)
    rxcounter <= 12'd0;
  else
    if (phy2_rx_dv)
      rxcounter <= rxcounter + 12'd1;
    else
      rxcounter <= 12'd0;
end


//------------------------------------------------------------------
// 32 bit counter for timestamp (Clock: phy1_125M_clk)
//------------------------------------------------------------------
reg [31:0] timer;
always @(posedge phy1_125M_clk) begin
  if (!reset_n)
    timer <= 32'd0;
  else
    timer <= timer + 32'd1;
end


//------------------------------------------------------------------
// Sender logic
//------------------------------------------------------------------
reg tx_en;
reg [7:0] tx_data;
reg crc_rd;
wire crc_init = (txcounter == 12'h08);
wire [31:0] crc_out;
wire crc_data_en = ~crc_rd;
always @(posedge phy1_125M_clk) begin
  if (!reset_n) begin
    tx_en   <= 1'b0;
    crc_rd  <= 1'b0;
    tx_data <= 8'h0;
  end else begin
    case (txcounter)
      12'h00: begin
        tx_en   <= 1'b1;
        tx_data <= 8'h55;
      end
      12'h01: tx_data <= 8'h55;  // Preamble
      12'h02: tx_data <= 8'h55;
      12'h03: tx_data <= 8'h55;
      12'h04: tx_data <= 8'h55;
      12'h05: tx_data <= 8'h55;
      12'h06: tx_data <= 8'h55;
      12'h07: tx_data <= 8'hd5;  // Preable + Start Frame Delimiter
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
      12'h32: tx_data <= 8'hde;  // Padding Area
      12'h33: tx_data <= 8'had;
      12'h34: tx_data <= 8'hbe;
      12'h35: tx_data <= 8'hef;
      12'h36: tx_data <= timer[31:24];  // 32 bit timestamp
      12'h37: tx_data <= timer[23:16];
      12'h38: tx_data <= timer[15: 8];
      12'h39: tx_data <= timer[ 7: 0];
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
      12'h44: begin        // Frame Check Sequence
        crc_rd  <= 1'b1;
        tx_data <= crc_out[31:24];
      end
      12'h45: tx_data <= crc_out[23:16];
      12'h46: tx_data <= crc_out[15: 8];
      12'h47: tx_data <= crc_out[ 7: 0];
      12'h48: begin
        tx_en   <= 1'b0;
        tx_data <= 8'h0;
        crc_rd  <= 1'b0;
      end
      default: tx_data <= 8'h0;
    endcase
  end
end
assign phy1_tx_en   = tx_en;
assign phy1_tx_data = tx_data;
assign phy1_gtx_clk = phy1_125M_clk;


//------------------------------------------------------------------
// Ethernet FCS generator
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


//------------------------------------------------------------------
// Receiver logic
//------------------------------------------------------------------
reg [31:0] magic_code;
reg [31:0] recv_timer;
reg [31:0] latency;
always @(posedge phy2_rx_clk) begin
  if (!reset_n) begin
    recv_timer <= 32'd0;
    latency    <= 32'd0;
  end else begin
    if (phy2_rx_dv) begin
      case (rxcounter)
        12'h32: magic_code[31:24] <= phy2_rx_data;
        12'h33: magic_code[24:16] <= phy2_rx_data;
        12'h34: magic_code[15: 8] <= phy2_rx_data;
        12'h35: magic_code[ 7: 0] <= phy2_rx_data;
        12'h36: recv_timer[31:24] <= phy2_rx_data;
        12'h37: recv_timer[23:16] <= phy2_rx_data;
        12'h38: recv_timer[15: 8] <= phy2_rx_data;
        12'h39: recv_timer[ 7: 0] <= phy2_rx_data;
        12'h3a:
          if (magic_code == 32'hdeadbeef)
            latency <= timer - recv_timer;
      endcase
    end
  end
end
assign phy2_tx_en   = 1'b0;
assign phy2_tx_data = 8'h0;
assign phy2_gtx_clk = phy2_125M_clk;
assign led          = phy2_rx_dv == 1'b1 ? 8'h0 : 8'hff; // displaying when received a packet


//------------------------------------------------------------------
// num: a part of the latency value for display
//------------------------------------------------------------------
reg [3:0] num;
always @(posedge phy2_rx_clk) begin
  if (!reset_n)
    num <= 4'b0;
  else begin
    if      (switch[0]) num <= latency[ 3: 0];
    else if (switch[1]) num <= latency[ 7: 4];
    else if (switch[2]) num <= latency[11: 8];
    else if (switch[3]) num <= latency[15:12];
    else if (switch[4]) num <= latency[19:16];
    else if (switch[5]) num <= latency[23:20];
    else if (switch[6]) num <= latency[27:24];
    else if (switch[6]) num <= latency[27:24];
    else if (switch[7]) num <= latency[31:28];
    else                num <= latency[ 3: 0];
  end
end

//------------------------------------------------------------------
// segled: 14-segment LED
//------------------------------------------------------------------
reg [14:0] segled_reg;
always @(posedge clock) begin
  if (!reset_n)
    segled_reg <= 15'h0;
  else begin
    case (num)
      //                      .PNMLKJHGFEDCBA
      4'h0: segled_reg <= 15'b000000000111111;
      4'h1: segled_reg <= 15'b000000000000110;
      4'h2: segled_reg <= 15'b010001000011011;
      4'h3: segled_reg <= 15'b010001000001111;
      4'h4: segled_reg <= 15'b010001000100110;
      4'h5: segled_reg <= 15'b010001000101101;
      4'h6: segled_reg <= 15'b010001000111101;
      4'h7: segled_reg <= 15'b000000000000111;
      4'h8: segled_reg <= 15'b010001000111111;
      4'h9: segled_reg <= 15'b010001000100111;
      4'ha: segled_reg <= 15'b010001000110111;
      4'hb: segled_reg <= 15'b010001000111100;
      4'hc: segled_reg <= 15'b000000000111001;
      4'hd: segled_reg <= 15'b010001000011110;
      4'he: segled_reg <= 15'b010001000111001;
      4'hf: segled_reg <= 15'b010001000110001;
    endcase
  end
end
assign segled = ~segled_reg;

endmodule

`default_nettype wire


module memory #(
    parameter ADDR_WIDTH = 8
  , parameter DATA_WIDTH = 256
  , parameter MEM_DEPTH  = 1 << ADDR_WIDTH
//  , parameter EN_WIDTH   = 1 << DATA_WIDTH
) (
    input wire rst_n
  , input wire clock

  , input wire [ADDR_WIDTH-1:0] address
  , input wire [DATA_WIDTH-1:0] dataIn
 // , input wire [EN_WIDTH-1:0] byte_en
  , input wire rd_en
  , input wire wr_en
  , output reg [DATA_WIDTH-1:0] q
);

reg [DATA_WIDTH-1:0] mem [0:MEM_DEPTH-1];

integer i;
always @(posedge clock) begin
  if (!rst_n) begin
//    for (i=0; i<MEM_DEPTH; i=i+1)
 //     mem[i] <= {DATA_WIDTH{1'b0}};
  end else begin
    if (rd_en)
      q <= mem[address];
    else if (wr_en)
      mem[address] <= dataIn;
  end
end

endmodule


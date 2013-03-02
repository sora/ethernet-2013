// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Copyright (c) 2002-2012 by Lattice Semiconductor Corporation
// --------------------------------------------------------------------
//
//
//                     Lattice Semiconductor Corporation
//                     5555 NE Moore Court
//                     Hillsboro, OR 97214
//                     U.S.A
//
//                     TEL: 1-800-Lattice (USA and Canada)
//                          408-826-6000 (other locations)
//
//                     web: http://www.latticesemi.com/
//                     email: techsupport@latticesemi.com
//
// --------------------------------------------------------------------
//
// Header files for ECP3 family
//
// --------------------------------------------------------------------

module AGEB2 (A1, A0, B1, B0, CI, GE);  //synthesis syn_black_box 
input  A1 ;
input  A0 ;
input  B1 ;
input  B0 ;
input  CI ;
output GE ;
endmodule

module ALEB2 (A1, A0, B1, B0, CI, LE);  //synthesis syn_black_box 
input  A1 ;
input  A0 ;
input  B1 ;
input  B0 ;
input  CI ;
output LE ;
endmodule

module AND2 (A, B, Z);  //synthesis syn_black_box
  input A ;
  input B ;
  output Z ;
endmodule

module  AND3  (A, B, C, Z);  //synthesis syn_black_box
  input A ;
  input B ;
  input C ;
  output Z ;
endmodule 

module  AND4  (A, B, C, D, Z);  //synthesis syn_black_box
  input A ;
  input B ;
  input C ;
  input D ;
  output Z ;
endmodule 

module  AND5  (A, B, C, D, E, Z);  //synthesis syn_black_box
  input A ;
  input B ;
  input C ;
  input D ;
  input E ;
  output Z ;
endmodule 

module ANEB2 (A1, A0, B1, B0, CI, NE);  //synthesis syn_black_box 
input  A1 ;
input  A0 ;
input  B1 ;
input  B0 ;
input  CI ;
output NE ;
endmodule

module BB (I, T, O, B);  //synthesis syn_black_box black_box_pad_pin="B"
input  I ;
input  T ;
output O ;
inout  B ;
endmodule 

module BBPD (I, T, O, B);  //synthesis syn_black_box black_box_pad_pin="B"
input  I ;
input  T ;
output O;
inout  B ;
endmodule

module BBPU (I, T, O, B);  //synthesis syn_black_box black_box_pad_pin="B"
input  I ;
input  T ;
output O;
inout  B ;
endmodule

module BBW (I, T, O, B);  //synthesis syn_black_box black_box_pad_pin="B"
input  I ;
input  T ;
output O;
inout  B ;
endmodule 

module CB2 (CI, PC1, PC0, CON, CO, NC1, NC0); //synthesis syn_black_box
  input  CI;
  input  PC1;
  input  PC0;
  input  CON;
  output CO;
  output NC1;
  output NC0;
endmodule

module CD2 (CI, PC1, PC0, CO, NC1, NC0);  //synthesis syn_black_box
input  CI ;
input  PC1 ;
input  PC0 ;
output CO ;
output NC1 ;
output NC0 ;
endmodule 

module CU2 (CI, PC1, PC0, CO, NC1, NC0);  //synthesis syn_black_box
input  CI ;
input  PC1 ;
input  PC0 ;
output CO ;
output NC1 ;
output NC0 ;
endmodule 

module DCS (CLK1, CLK0, SEL, DCSOUT);  //synthesis syn_black_box

parameter   DCSMODE  = "NEG";

input  CLK1 ;
input  CLK0 ;
input  SEL ;
output DCSOUT ;
endmodule

module FADD2B (A1, A0,  B1, B0, CI, 
       COUT, S1, S0);  //synthesis syn_black_box
input  A1, A0, B1, B0, CI;
output COUT, S1, S0;
endmodule

module FADSU2 (A1, A0, B1, B0, BCI, CON, BCO, S1, S0); //synthesis syn_black_box
  input  A1;
  input  A0;
  input  B1;
  input  B0;
  input  BCI;
  input  CON;
  output BCO;
  output S1;
  output S0;
endmodule

module FD1P3AX (D, SP, CK, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D ;
input SP ;
input CK ;
output Q ;
endmodule

module FD1P3AY (D, SP, CK, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D ;
input SP ;
input CK ;
output Q ;
endmodule

module FD1P3BX (D, SP, CK, PD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D ;
input SP ;
input CK ;
input PD ;
output Q ;
endmodule

module FD1P3DX (D, SP, CK, CD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D ;
input SP ;
input CK ;
input CD ;
output Q ;
endmodule

module FD1P3IX (D, SP, CK, CD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D ;
input SP ;
input CK ;
input CD ;
output Q ;
endmodule

module FD1P3JX (D, SP, CK, PD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D ;
input SP ;
input CK ;
input PD ;
output Q ;
endmodule

module FD1S3AX (D, CK, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input  D ;
input  CK ;
output Q ;
endmodule

module FD1S3AY (D, CK, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input  D ;
input  CK ;
output Q ;
endmodule

module FD1S3BX (D, CK, PD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input  D ;
input  CK ;
input  PD ;
output Q ;
endmodule

module FD1S3DX (D, CK, CD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input  D ;
input  CK ;
input  CD ;
output Q ;
endmodule

module FD1S3IX (D, CK, CD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input  D ;
input  CK ;
input  CD ;
output Q ;
endmodule

module FD1S3JX (D, CK, PD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input  D ;
input  CK ;
input  PD ;
output Q ;
endmodule

module FL1P3AY (D1, D0, SP, CK, SD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D1 ;
input D0 ;
input SP ;
input CK ;
input SD ;
output Q ;
endmodule

module FL1P3AZ (D1, D0, SP, CK, SD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D1 ;
input D0 ;
input SP ;
input CK ;
input SD ;
output Q ;
endmodule

module FL1P3BX (D1, D0, SP, CK, SD, PD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D1 ;
input D0 ;
input SP ;
input CK ;
input SD ;
input PD ;
output Q ;
endmodule

module FL1P3DX (D1, D0, SP, CK, SD, CD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D1 ;
input D0 ;
input SP ;
input CK ;
input SD ;
input CD ;
output Q ;
endmodule

module FL1P3IY (D1, D0, SP, CK, SD, CD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D1 ;
input D0 ;
input SP ;
input CK ;
input SD ;
input CD ;
output Q ;
endmodule

module FL1P3JY (D1, D0, SP, CK, SD, PD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D1 ;
input D0 ;
input SP ;
input CK ;
input SD ;
input PD ;
output Q ;
endmodule

module FL1S3AX (D1, D0, CK, SD, Q); //synthesis syn_black_box
  parameter GSR = "ENABLED";
  input  D1;
  input  D0;
  input  CK;
  input  SD;
  output Q;
endmodule

module FL1S3AY (D1, D0, CK, SD, Q); //synthesis syn_black_box
  parameter GSR = "ENABLED";
  input  D1;
  input  D0;
  input  CK;
  input  SD;
  output Q;
endmodule

module FSUB2B (A1, A0, B1, B0, BI, BOUT, S1, S0); //synthesis syn_black_box

  input  A1, A0, B1, B0, BI;
  output BOUT, S1, S0;
endmodule 

module GSR (GSR)  /* synthesis syn_black_box syn_noprune=1 */;
input GSR ;
endmodule

module IB (I, O);  //synthesis syn_black_box black_box_pad_pin="I"
input  I ;
output O ;
endmodule

module IBPD (I, O);  //synthesis syn_black_box black_box_pad_pin="I"
input  I ;
output O ;
endmodule

module IBPU (I, O);  //synthesis syn_black_box black_box_pad_pin="I"
input  I;
output O;
endmodule

module IFS1P3BX (D, SP, SCLK, PD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D;
input SP;
input SCLK;
input PD;
output Q;
endmodule

module IFS1P3DX (D, SP, SCLK, CD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D;
input SP;
input SCLK;
input CD;
output Q;
endmodule

module IFS1P3IX (D, SP, SCLK, CD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D;
input SP;
input SCLK;
input CD;
output Q;
endmodule

module IFS1P3JX (D, SP, SCLK, PD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D;
input SP;
input SCLK;
input PD;
output Q;
endmodule

module ILVDS (A, AN, Z); //synthesis syn_black_box black_box_pad_pin="A,AN"
  input  A;
  input  AN;
  output Z;
endmodule

module INV (A, Z);  //synthesis syn_black_box
input A;
output Z;
endmodule

module L6MUX21 (D0, D1, SD, Z);  //synthesis syn_black_box

input D0;
input D1;
input SD;
output Z;
endmodule

module LB2P3AX (D1, D0, CI, SP, CK, SD, CON, CO, Q1, Q0);  //synthesis syn_black_box
  parameter GSR = "ENABLED";
input  D1, D0, CI, SP, CK, SD, CON;
output CO, Q1, Q0;
endmodule

module LB2P3AY (D1, D0, CI, SP, CK, SD, CON, CO, Q1, Q0);  //synthesis syn_black_box
  parameter GSR = "ENABLED";
input  D1, D0, CI, SP, CK, SD, CON;
output CO, Q1, Q0;
endmodule

module LB2P3BX (D1, D0, CI, SP, CK, SD, PD, CON, CO, Q1, Q0);  //synthesis syn_black_box
  parameter GSR = "ENABLED";
input  D1, D0, CI, SP, CK, SD, PD, CON;
output CO, Q1, Q0;
endmodule

module LB2P3DX (D1, D0, CI, SP, CK, SD, CD, CON, CO, Q1, Q0);  //synthesis syn_black_box
  parameter GSR = "ENABLED";
input  D1, D0, CI, SP, CK, SD, CD, CON;
output CO, Q1, Q0;
endmodule

module LB2P3IX (D1, D0, CI, SP, CK, SD, CD, CON, CO, Q1, Q0); //synthesis syn_black_box
  parameter GSR = "ENABLED";
input  D1, D0, CI, SP, CK, SD, CD, CON;
output CO, Q1, Q0;
endmodule

module LB2P3JX (D1, D0, CI, SP, CK, SD, PD, CON, CO, Q1, Q0); //synthesis syn_black_box
  parameter GSR = "ENABLED";
input  D1, D0, CI, SP, CK, SD, PD, CON;
output CO, Q1, Q0;
endmodule

module LD2P3AX (D1, D0, CI, SP, CK, SD, CO, Q1, Q0); //synthesis syn_black_box
  parameter GSR = "ENABLED";
input  D1, D0, CI, SP, CK, SD;
output CO, Q1, Q0;
endmodule

module LD2P3AY (D1, D0, CI, SP, CK, SD, CO, Q1, Q0); //synthesis syn_black_box
  parameter GSR = "ENABLED";
input  D1, D0, CI, SP, CK, SD;
output CO, Q1, Q0;
endmodule

module LD2P3BX (D1, D0, CI, SP, CK, SD, PD, CO, Q1, Q0); //synthesis syn_black_box
  parameter GSR = "ENABLED";
input  D1, D0, CI, SP, CK, SD, PD;
output CO, Q1, Q0;
endmodule

module LD2P3DX (D1, D0, CI, SP, CK, SD, CD, CO, Q1, Q0); //synthesis syn_black_box
  parameter GSR = "ENABLED";
input  D1, D0, CI, SP, CK, SD, CD;
output CO, Q1, Q0;
endmodule

module LD2P3IX (D1, D0, CI, SP, CK, SD, CD, CO, Q1, Q0); //synthesis syn_black_box
  parameter GSR = "ENABLED";
input  D1, D0, CI, SP, CK, SD, CD;
output CO, Q1, Q0;
endmodule

module LD2P3JX (D1, D0, CI, SP, CK, SD, PD, CO, Q1, Q0); //synthesis syn_black_box
  parameter GSR = "ENABLED";
input  D1, D0, CI, SP, CK, SD, PD;
output CO, Q1, Q0;
endmodule

module LU2P3AX (D1, D0, CI, SP, CK, SD, CO, Q1, Q0); //synthesis syn_black_box
  parameter GSR = "ENABLED";
input  D1, D0, CI, SP, CK, SD;
output CO, Q1, Q0;
endmodule

module LU2P3AY (D1, D0, CI, SP, CK, SD, CO, Q1, Q0); //synthesis syn_black_box
  parameter GSR = "ENABLED";
input  D1, D0, CI, SP, CK, SD;
output CO, Q1, Q0;
endmodule

module LU2P3BX (D1, D0, CI, SP, CK, SD, PD, CO, Q1, Q0); //synthesis syn_black_box
  parameter GSR = "ENABLED";
input  D1, D0, CI, SP, CK, SD, PD;
output CO, Q1, Q0;
endmodule

module LU2P3DX (D1, D0, CI, SP, CK, SD, CD, CO, Q1, Q0); //synthesis syn_black_box
  parameter GSR = "ENABLED";
input  D1, D0, CI, SP, CK, SD, CD;
output CO, Q1, Q0;
endmodule

module LU2P3IX (D1, D0, CI, SP, CK, SD, CD, CO, Q1, Q0); //synthesis syn_black_box
  parameter GSR = "ENABLED";
input  D1, D0, CI, SP, CK, SD, CD;
output CO, Q1, Q0;
endmodule

module LU2P3JX (D1, D0, CI, SP, CK, SD, PD, CO, Q1, Q0); //synthesis syn_black_box
  parameter GSR = "ENABLED";
input  D1, D0, CI, SP, CK, SD, PD;
output CO, Q1, Q0;
endmodule

module MULT2 (P1, P0, CO, A3, A2, A1, A0, B3, B2, B1, B0, CI); //synthesis syn_black_box
input  A3;
input  A2;
input  A1;
input  A0;
input  B3;
input  B2;
input  B1;
input  B0;
input  CI;
output P1; 
output P0; 
output CO; 
endmodule

module MUX161 (D15, D14, D13, D12, D11, D10, D9, D8, D7, D6, D5, D4, D3, D2, D1, D0, SD4, SD3, SD2, SD1, Z);  //synthesis syn_black_box
input D15;
input D14;
input D13;
input D12;
input D11;
input D10;
input D9;
input D8;
input D7;
input D6;
input D5;
input D4;
input D3;
input D2;
input D1;
input D0;
input SD4;
input SD3;
input SD2;
input SD1;
output Z;
endmodule


module MUX21 (D1, D0, SD, Z);  //synthesis syn_black_box

input D1;
input D0;
input SD;
output Z;
endmodule

module MUX321 (D31, D30, D29, D28, D27, D26, D25, D24, D23, D22, D21, D20, D19, D18, D17, D16, D15, D14, D13, D12, D11, D10, D9, D8, D7, D6, D5, D4, D3, D2, D1, D0, SD5, SD4, SD3, SD2, SD1, Z);  //synthesis syn_black_box
input D31;
input D30;
input D29;
input D28;
input D27;
input D26;
input D25;
input D24;
input D23;
input D22;
input D21;
input D20;
input D19;
input D18;
input D17;
input D16;
input D15;
input D14;
input D13;
input D12;
input D11;
input D10;
input D9;
input D8;
input D7;
input D6;
input D5;
input D4;
input D3;
input D2;
input D1;
input D0;
input SD5;
input SD4;
input SD3;
input SD2;
input SD1;
output Z;
endmodule

module MUX41 (D3, D2, D1, D0, SD2, SD1, Z);  //synthesis syn_black_box
input D3 ;
input D2 ;
input D1 ;
input D0 ;
input SD2 ;
input SD1 ;
output Z ;
endmodule

module MUX81 (D7, D6, D5, D4, D3, D2, D1, D0, SD3, SD2, SD1, Z);  //synthesis syn_black_box
input D7 ;
input D6 ;
input D5 ;
input D4 ;
input D3 ;
input D2 ;
input D1 ;
input D0 ;
input SD3 ;
input SD2 ;
input SD1 ;
output Z ;
endmodule

module ND2 (A, B, Z);  //synthesis syn_black_box
input  A ;
input  B ;
output Z ;
endmodule

module  ND3  (A, B, C, Z);  //synthesis syn_black_box
input  A ;
input  B ;
input  C ;
output Z ;
endmodule 

module  ND4  (A, B, C, D, Z);  //synthesis syn_black_box
input  A ;
input  B ;
input  C ;
input  D ;
output Z ;
endmodule 

module  ND5  (A, B, C, D, E, Z);  //synthesis syn_black_box
input  A ;
input  B ;
input  C ;
input  D ;
input  E ;
output Z ;
endmodule 

module NR2 (A, B, Z);  //synthesis syn_black_box
input  A ;
input  B ;
output Z ;
endmodule 

module NR3 (A, B, C, Z);  //synthesis syn_black_box
input  A ;
input  B ;
input  C ;
output Z ;
endmodule 

module NR4 (A, B, C, D, Z);  //synthesis syn_black_box
input  A ;
input  B ;
input  C ;
input  D ;
output Z ;
endmodule 

module NR5 (A, B, C, D, E, Z);  //synthesis syn_black_box
input  A ;
input  B ;
input  C ;
input  D ;
input  E ;
output Z ;
endmodule 

module OB (I, O);  //synthesis syn_black_box black_box_pad_pin="O"
input  I ;
output O ;
endmodule 

module OBCO (I, OT, OC);  //synthesis syn_black_box black_box_pad_pin="OT,OC"
input  I ;
output OT ;
output OC ;
endmodule 

module OBZ (I, T, O);  //synthesis syn_black_box black_box_pad_pin="O"
input I ;
input T ;
output O ;
endmodule 

module OBZPU (I, T, O);  //synthesis syn_black_box black_box_pad_pin="O"
input I ;
input T ;
output O ;
endmodule

module OFD1S3AX (D, SCLK, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input  D ;
input  SCLK ;
output Q ;
endmodule

module OFS1P3BX (D, SP, SCLK, PD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D ;
input SP ;
input SCLK ;
input PD ;
output Q ;
endmodule

module OFS1P3DX (D, SP, SCLK, CD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D ;
input SP ;
input SCLK ;
input CD ;
output Q ;
endmodule

module OFS1P3IX (D, SP, SCLK, CD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D ;
input SP ;
input SCLK ;
input CD ;
output Q ;
endmodule

module OFS1P3JX (D, SP, SCLK, PD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D ;
input SP ;
input SCLK ;
input PD ;
output Q ;
endmodule

module OLVDS (A, Z, ZN); //synthesis syn_black_box black_box_pad_pin="Z,ZN"
  input  A;
  output Z;
  output ZN;
endmodule

module OR2 (A, B, Z);  //synthesis syn_black_box
input  A ;
input  B ;
output Z ;
endmodule 

module OR3 (A, B, C, Z);  //synthesis syn_black_box
input  A ;
input  B ;
input  C ;
output Z ;
endmodule 

module OR4 (A, B, C, D, Z);  //synthesis syn_black_box
input  A ;
input  B ;
input  C ;
input  D ;
output Z ;
endmodule 

module OR5 (A, B, C, D, E, Z);  //synthesis syn_black_box
input  A ;
input  B ;
input  C ;
input  D ;
input  E ;
output Z ;
endmodule 

module LUT4 (A, B, C, D, Z);  //synthesis syn_black_box

parameter  [15:0]init = 16'h0000 ;

input  A ;
input  B ;
input  C ;
input  D ;
output Z ;
endmodule

module LUT5 (Z, A, B, C, D, E);  //synthesis syn_black_box

parameter  [31:0]init = 32'h00000000 ;

input  A ;
input  B ;
input  C ;
input  D ;
input  E ;
output Z ;
endmodule

module LUT6 (Z, A, B, C, D, E, F);  //synthesis syn_black_box

parameter  [63:0]init = 64'h0000000000000000 ;

input  A ;
input  B ;
input  C ;
input  D ;
input  E ;
input  F ;
output Z ;
endmodule

module LUT7 (Z, A, B, C, D, E, F, G);  //synthesis syn_black_box

parameter  [127:0]init = 128'h00000000000000000000000000000000 ;

input  A ;
input  B ;
input  C ;
input  D ;
input  E ;
input  F ;
input  G ;
output  Z ;
endmodule

module LUT8 (Z, A, B, C, D, E, F, G, H);  //synthesis syn_black_box

parameter  [255:0]init = 256'h0000000000000000000000000000000000000000000000000000000000000000;

input  A ;
input  B ;
input  C ;
input  D ;
input  E ;
input  F ;
input  G ;
input  H ;
output  Z ;
endmodule


module PFUMX (ALUT, BLUT, C0, Z);  //synthesis syn_black_box
input  ALUT ;
input  BLUT ;
input  C0 ;
output Z ;
endmodule

module PUR (PUR)/* synthesis syn_black_box syn_noprune=1 */;
  parameter RST_PULSE = 1;
  input PUR;
endmodule

module ROM128X1A ( AD6, AD5, AD4, AD3, AD2, AD1, AD0, DO0);  //synthesis syn_black_box

parameter [127:0] initval = 128'h00000000000000000000000000000000;

input AD6 ;
input AD5 ;
input AD4 ;
input AD3 ;
input AD2 ;
input AD1 ;
input AD0 ;
output DO0 ;
endmodule

module ROM16X1A ( AD3, AD2, AD1, AD0, DO0);  //synthesis syn_black_box

parameter [15:0] initval = 16'h0000;

input AD3 ;
input AD2 ;
input AD1 ;
input AD0 ;
output DO0 ;
endmodule

module ROM256X1A ( AD7, AD6, AD5, AD4, AD3, AD2, AD1, AD0, DO0);  //synthesis syn_black_box

parameter [255:0] initval = 256'h0000000000000000000000000000000000000000000000000000000000000000;

input AD7 ;
input AD6 ;
input AD5 ;
input AD4 ;
input AD3 ;
input AD2 ;
input AD1 ;
input AD0 ;
output DO0 ;
endmodule

module ROM32X1A ( AD4, AD3, AD2, AD1, AD0, DO0);  //synthesis syn_black_box

parameter [31:0] initval = 32'h00000000;

input AD4 ;
input AD3 ;
input AD2 ;
input AD1 ;
input AD0 ;
output DO0 ;
endmodule

module ROM64X1A ( AD5, AD4, AD3, AD2, AD1, AD0, DO0);  //synthesis syn_black_box

parameter [63:0] initval = 64'h0000000000000000;

input AD5 ;
input AD4 ;
input AD3 ;
input AD2 ;
input AD1 ;
input AD0 ;
output DO0 ;
endmodule

module CCU2C (
   CIN,
   A0, B0, C0, D0,
   A1, B1, C1, D1,
   S0, S1, COUT 
); //synthesis syn_black_box

input CIN;
input A1, B1, C1, D1;
input A0, B0, C0, D0;
output S1, S0, COUT;

parameter [15:0] INIT0 = 16'h0000;
parameter [15:0] INIT1 = 16'h0000;
parameter INJECT1_0 = "YES";
parameter INJECT1_1 = "YES";
endmodule

module VHI ( Z );  //synthesis syn_black_box
    output Z ;
endmodule 

module VLO ( Z );  //synthesis syn_black_box
    output Z ;
endmodule

module XNOR2 (A, B, Z);  //synthesis syn_black_box
  input  A ;
  input  B ;
  output Z;
endmodule 

module XNOR3 (A, B, C, Z);  //synthesis syn_black_box
  input  A ;
  input  B ;
  input  C ;
  output Z;
endmodule 

module XNOR4 (A, B, C, D, Z);  //synthesis syn_black_box
  input  A ;
  input  B ;
  input  C ;
  input  D ;
  output Z;
endmodule 

module XNOR5 (A, B, C, D, E, Z);  //synthesis syn_black_box
  input  A ;
  input  B ;
  input  C ;
  input  D ;
  input  E ;
  output Z;
endmodule 

module XOR11 ( A, B, C, D, E, F, G, H, I, J, K, Z);  //synthesis syn_black_box
  input  A ;
  input  B ;
  input  C ;
  input  D ;
  input  E ;
  input  F ;
  input  G ;
  input  H ;
  input  I ;
  input  J ;
  input  K ;
  output Z;
endmodule 

module XOR2 (A, B, Z);  //synthesis syn_black_box
input A ;
input B ;
output Z;
endmodule 

module XOR21 ( A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, Z); //synthesis syn_black_box 
  input  A ;
  input  B ;
  input  C ;
  input  D ;
  input  E ;
  input  F ;
  input  G ;
  input  H ;
  input  I ;
  input  J ;
  input  K ;
  input  L ;
  input  M ;
  input  N ;
  input  O ; 
  input  P ; 
  input  Q ; 
  input  R ; 
  input  S ; 
  input  T ; 
  input  U ; 
  output Z ;
endmodule 

module XOR3 (A, B, C, Z);  //synthesis syn_black_box
input A ;
input B ;
input C ;
output Z;
endmodule 

module XOR4 (A, B, C, D, Z);  //synthesis syn_black_box
input A ;
input B ;
input C ;
input D ;
output Z;
endmodule 

module XOR5 (A, B, C, D, E, Z);  //synthesis syn_black_box
input A ;
input B ;
input C ;
input D ;
input E ;
output Z;
endmodule 

module IFS1S1B (D, SCLK, PD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D;
input SCLK;
input PD;
output Q;
endmodule

module IFS1S1D (D, SCLK, CD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D;
input SCLK;
input CD;
output Q;
endmodule

module IFS1S1I (D, SCLK, CD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D;
input SCLK;
input CD;
output Q;
endmodule

module IFS1S1J (D, SCLK, PD, Q);  //synthesis syn_black_box

  parameter GSR = "ENABLED";

input D;
input SCLK;
input PD;
output Q;
endmodule

module DPR16X4C ( DI3, DI2, DI1, DI0, WAD3, WAD2, WAD1, WAD0, WRE, WCK,
                 RAD3, RAD2, RAD1, RAD0, DO3, DO2, DO1, DO0); //synthesis syn_black_box

  input DI3,DI2,DI1,DI0, WAD3,WAD2,WAD1,WAD0,WCK,WRE;
  input RAD3,RAD2,RAD1,RAD0;
  output DO3, DO2, DO1, DO0;

  parameter initval = "0x0000000000000000";
endmodule

module SPR16X4C (DI3, DI2, DI1, DI0, AD3, AD2, AD1, AD0, WRE, CK,
                 DO3, DO2, DO1, DO0);  //synthesis syn_black_box

  input DI3,DI2,DI1,DI0,AD3,AD2,AD1,AD0,CK,WRE;
  output DO3,DO2,DO1,DO0;

  parameter initval = "0x0000000000000000";
endmodule

module SGSR (GSR, CLK)  /* synthesis syn_black_box syn_noprune=1 */;
input GSR, CLK;
endmodule

module CLKDIVB (CLKI, RST, RELEASE, CDIV1, CDIV2, CDIV4, CDIV8); //synthesis syn_black_box
input   CLKI, RST, RELEASE;
output  CDIV1, CDIV2, CDIV4, CDIV8;
parameter  GSR = "ENABLED";
endmodule

module OSCF (OSC); //synthesis syn_black_box
output   OSC;
parameter  NOM_FREQ = "2.5" ;
endmodule

module DCCA (CLKI, CE, CLKO); //synthesis syn_black_box
input CLKI, CE;
output   CLKO;
endmodule

module JTAGE ( TCK, TMS, TDI, JTDO2, JTDO1,
  TDO, JTDI, JTCK, JRTI2, JRTI1, JSHIFT, JUPDATE, JRSTN, JCE2, JCE1)  /* synthesis syn_black_box syn_noprune=1 */;
 parameter ER1 = "ENABLED";
 parameter ER2 = "ENABLED";
input TCK, TMS, TDI, JTDO2, JTDO1;
output TDO, JTDI, JTCK, JRTI2, JRTI1; 
output JSHIFT, JUPDATE, JRSTN, JCE2, JCE1;
endmodule

module SEDCA (SEDENABLE, SEDSTART, SEDFRCERR, SEDERR, SEDDONE, SEDINPROG, SEDCLKOUT); //synthesis syn_black_box
input SEDENABLE, SEDSTART, SEDFRCERR; 
output SEDERR, SEDDONE, SEDINPROG, SEDCLKOUT;
parameter OSC_DIV = 1;
parameter CHECKALWAYS = "DISABLED";
parameter AUTORECONFIG = "OFF";
parameter MCCLK_FREQ = "2.5";
parameter DEV_DENSITY = "95K";
endmodule

module START (STARTCLK) /* synthesis syn_black_box syn_noprune=1 */;
input  STARTCLK;
endmodule

module SPIM (SEL, A7, A6, A5, A4, A3, A2, A1, A0); //synthesis syn_black_box syn_noprune=1 
input SEL, A7, A6, A5, A4, A3, A2, A1, A0; 
endmodule

module PERREGA (D15, D14, D13, D12, D11, D10, D9, D8, D7, D6, D5, D4, D3, D2, D1, D0, Q15, Q14, Q13, Q12, Q11, Q10, Q9, Q8, Q7, Q6, Q5, Q4, Q3, Q2, Q1, Q0); //synthesis syn_black_box syn_noprune=1 
input D15, D14, D13, D12, D11, D10, D9, D8, D7, D6, D5, D4, D3, D2, D1, D0;
output Q15, Q14, Q13, Q12, Q11, Q10, Q9, Q8, Q7, Q6, Q5, Q4, Q3, Q2, Q1, Q0; 
endmodule

module AMBOOTA (CSI,AUTOREBOOTI,A7,A6,A5,A4,A3,A2,A1,A0,CSO,O7,O6,O5,O4,O3,O2,O1,O0); //synthesis syn_black_box syn_noprune=1 
input CSI, AUTOREBOOTI, A7, A6, A5, A4, A3, A2, A1, A0; 
output CSO, O7, O6, O5, O4, O3, O2, O1, O0; 
parameter CS_SS = "STATIC";
parameter AUTOREBOOT = "OFF";
parameter CS_SS_VAL = "CHIP1";
parameter SECTOR_ADDRESS = "0x00";
endmodule

module DP16KC (DIA17, DIA16, DIA15, DIA14, DIA13, DIA12, DIA11, DIA10, DIA9,
         DIA8, DIA7, DIA6, DIA5, DIA4, DIA3, DIA2, DIA1, DIA0,
         ADA13, ADA12, ADA11, ADA10, ADA9, ADA8, ADA7, ADA6, ADA5,
         ADA4, ADA3, ADA2, ADA1, ADA0,
         CEA, OCEA, CLKA, WEA, CSA2, CSA1, CSA0, RSTA, 
         DIB17, DIB16, DIB15, DIB14, DIB13, DIB12, DIB11, DIB10, DIB9,
         DIB8, DIB7, DIB6, DIB5, DIB4, DIB3, DIB2, DIB1, DIB0,
         ADB13, ADB12, ADB11, ADB10, ADB9, ADB8, ADB7, ADB6, ADB5,
         ADB4, ADB3, ADB2, ADB1, ADB0,
         CEB, OCEB, CLKB, WEB, CSB2, CSB1, CSB0, RSTB, 
         DOA17, DOA16, DOA15, DOA14, DOA13, DOA12, DOA11, DOA10, DOA9,
         DOA8, DOA7, DOA6, DOA5, DOA4, DOA3, DOA2, DOA1, DOA0,
         DOB17, DOB16, DOB15, DOB14, DOB13, DOB12, DOB11, DOB10, DOB9,
         DOB8, DOB7, DOB6, DOB5, DOB4, DOB3, DOB2, DOB1, DOB0); //synthesis syn_black_box

   parameter  DATA_WIDTH_A = 18;            //1, 2, 4, 9, 18
   parameter  DATA_WIDTH_B = 18;            //1, 2, 4, 9, 18
   parameter  REGMODE_A = "NOREG";          // "NOREG", "OUTREG"
   parameter  REGMODE_B = "NOREG";          // "NOREG", "OUTREG"
   parameter  CSDECODE_A = "0b000";          
   parameter  CSDECODE_B = "0b000"; 
   parameter  WRITEMODE_A = "NORMAL";       // "NORMAL", "READBEFOREWRITE", "WRITETHROUGH"
   parameter  WRITEMODE_B = "NORMAL";       // "NORMAL", "READBEFOREWRITE", "WRITETHROUGH"
   parameter  GSR = "DISABLED";             // 

parameter INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";

input    DIA17, DIA16, DIA15, DIA14, DIA13, DIA12, DIA11, DIA10, DIA9,
         DIA8, DIA7, DIA6, DIA5, DIA4, DIA3, DIA2, DIA1, DIA0,
         ADA13, ADA12, ADA11, ADA10, ADA9, ADA8, ADA7, ADA6, ADA5,
         ADA4,  ADA3,  ADA2, ADA1, ADA0,
         CEA, OCEA, CLKA, WEA, CSA2, CSA1, CSA0, RSTA, 
         DIB17, DIB16, DIB15, DIB14, DIB13, DIB12, DIB11, DIB10, DIB9,
         DIB8, DIB7, DIB6, DIB5, DIB4, DIB3, DIB2, DIB1, DIB0,
         ADB13, ADB12, ADB11, ADB10, ADB9, ADB8, ADB7, ADB6, ADB5,
         ADB4,  ADB3,  ADB2, ADB1, ADB0,
         CEB, OCEB, CLKB, WEB, CSB2, CSB1, CSB0, RSTB; 
output   DOA17, DOA16, DOA15, DOA14, DOA13, DOA12, DOA11, DOA10, DOA9,
         DOA8, DOA7, DOA6, DOA5, DOA4, DOA3, DOA2, DOA1, DOA0,
         DOB17, DOB16, DOB15, DOB14, DOB13, DOB12, DOB11, DOB10, DOB9,
         DOB8, DOB7, DOB6, DOB5, DOB4, DOB3, DOB2, DOB1, DOB0;
endmodule


module PDPW16KC (DI35, DI34, DI33, DI32, DI31, DI30, DI29, DI28, DI27,
         DI26, DI25, DI24, DI23, DI22, DI21, DI20, DI19, DI18,
         DI17, DI16, DI15, DI14, DI13, DI12, DI11, DI10, DI9,
         DI8, DI7, DI6, DI5, DI4, DI3, DI2, DI1, DI0,
         ADW8, ADW7, ADW6, ADW5, ADW4, ADW3, ADW2, ADW1, ADW0,
         BE3, BE2, BE1, BE0,
         CEW, CLKW, CSW2, CSW1, CSW0,  
         ADR13, ADR12, ADR11, ADR10, ADR9, ADR8, ADR7, ADR6, ADR5,
         ADR4,  ADR3,  ADR2, ADR1, ADR0,
         CER, CLKR, CSR2, CSR1, CSR0, RST, 
         DO35, DO34, DO33, DO32, DO31, DO30, DO29, DO28, DO27,
         DO26, DO25, DO24, DO23, DO22, DO21, DO20, DO19, DO18,
         DO17, DO16, DO15, DO14, DO13, DO12, DO11, DO10, DO9,
         DO8, DO7, DO6, DO5, DO4, DO3, DO2, DO1, DO0); //synthesis syn_black_box,
   parameter  DATA_WIDTH_W = 18;
   parameter  DATA_WIDTH_R = 18;
   parameter  REGMODE = "NOREG";
   parameter  CSDECODE_W = "0b000";
   parameter  CSDECODE_R = "0b000";
   parameter  GSR = "DISABLED";

parameter INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";

input    DI35, DI34, DI33, DI32, DI31, DI30, DI29, DI28, DI27,
         DI26, DI25, DI24, DI23, DI22, DI21, DI20, DI19, DI18,
         DI17, DI16, DI15, DI14, DI13, DI12, DI11, DI10, DI9,
         DI8, DI7, DI6, DI5, DI4, DI3, DI2, DI1, DI0,
         ADW8, ADW7, ADW6, ADW5, ADW4, ADW3, ADW2, ADW1, ADW0,
	 BE3, BE2, BE1, BE0,
         CEW, CLKW, CSW2, CSW1, CSW0, 
         ADR13, ADR12, ADR11, ADR10, ADR9, ADR8, ADR7, ADR6, ADR5,
         ADR4,  ADR3,  ADR2, ADR1, ADR0,
         CER, CLKR, CSR2, CSR1, CSR0, RST; 

output   DO35, DO34, DO33, DO32, DO31, DO30, DO29, DO28, DO27,
         DO26, DO25, DO24, DO23, DO22, DO21, DO20, DO19, DO18,
         DO17, DO16, DO15, DO14, DO13, DO12, DO11, DO10, DO9,
         DO8, DO7, DO6, DO5, DO4, DO3, DO2, DO1, DO0;
endmodule

module SP16KC (DI17, DI16, DI15, DI14, DI13, DI12, DI11, DI10, DI9,
         DI8, DI7, DI6, DI5, DI4, DI3, DI2, DI1, DI0,
         AD13, AD12, AD11, AD10, AD9, AD8, AD7, AD6, AD5,
         AD4, AD3, AD2, AD1, AD0,
         CE, OCE, CLK, WE, CS2, CS1, CS0, RST, 
         DO17, DO16, DO15, DO14, DO13, DO12, DO11, DO10, DO9,
         DO8, DO7, DO6, DO5, DO4, DO3, DO2, DO1, DO0);  //synthesis syn_black_box

   parameter  DATA_WIDTH = 18;
   parameter  REGMODE = "NOREG";
   parameter  CSDECODE = "0b000";
   parameter  WRITEMODE = "NORMAL";
   parameter  GSR = "DISABLED";

parameter INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
parameter INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";

input    DI17, DI16, DI15, DI14, DI13, DI12, DI11, DI10, DI9,
         DI8, DI7, DI6, DI5, DI4, DI3, DI2, DI1, DI0,
         AD13, AD12, AD11, AD10, AD9, AD8, AD7, AD6, AD5,
         AD4,  AD3,  AD2, AD1, AD0,
         CE, OCE, CLK, WE, CS2, CS1, CS0, RST;

output   DO17, DO16, DO15, DO14, DO13, DO12, DO11, DO10, DO9,
         DO8, DO7, DO6, DO5, DO4, DO3, DO2, DO1, DO0;
endmodule

module EHXPLLF (CLKI, CLKFB, RST, RSTK, DRPAI3, DRPAI2, DRPAI1, DRPAI0,
DFPAI3, DFPAI2, DFPAI1, DFPAI0, FDA3, FDA2, FDA1, FDA0, WRDEL, 
CLKOP, CLKOS, CLKOK, CLKOK2, LOCK, CLKINTFB); //synthesis syn_black_box

input  CLKI, CLKFB, RST, RSTK, DRPAI3, DRPAI2, DRPAI1, DRPAI0;
input  DFPAI3, DFPAI2, DFPAI1, DFPAI0;
input  FDA3, FDA2, FDA1, FDA0, WRDEL;
output CLKOP, CLKOS, CLKOK, CLKOK2, LOCK, CLKINTFB;

parameter FIN = "100.0000";
parameter CLKI_DIV = 1;
parameter CLKFB_DIV = 1;
parameter CLKOP_DIV = 8;
parameter CLKOK_DIV = 2;
parameter PHASEADJ = "0.0";
parameter DUTY = 8;
parameter FEEDBK_PATH = "CLKOP";
parameter PHASE_DELAY_CNTL = "STATIC";
parameter CLKOP_BYPASS = "DISABLED";
parameter CLKOS_BYPASS = "DISABLED";
parameter CLKOK_BYPASS = "DISABLED";
parameter CLKOP_TRIM_POL = "RISING";
parameter CLKOP_TRIM_DELAY = 0;
parameter CLKOS_TRIM_POL = "RISING";
parameter CLKOS_TRIM_DELAY = 0;
parameter DELAY_VAL = 0;
parameter DELAY_PWD = "DISABLED";
parameter CLKOK_INPUT = "CLKOP";
endmodule

module TRDLLB (CLKI, RSTN, ALUHOLD, UDDCNTL, CLKOP, CLKOS, LOCK, INCO, DIFF, GRAYO5, GRAYO4, GRAYO3, GRAYO2, GRAYO1, GRAYO0, DCNTL5, DCNTL4, DCNTL3, DCNTL2, DCNTL1, DCNTL0 ); //synthesis syn_black_box

input CLKI, RSTN, ALUHOLD, UDDCNTL;
output CLKOP, CLKOS, LOCK, INCO, DIFF;
output GRAYO5, GRAYO4, GRAYO3, GRAYO2, GRAYO1, GRAYO0;
output DCNTL5, DCNTL4, DCNTL3, DCNTL2, DCNTL1, DCNTL0;
parameter CLKOP_PHASE = 0;
parameter CLKOS_PHASE = 0;
parameter CLKOS_FPHASE = 0;
parameter CLKOS_DIV = 1;
parameter GSR = "DISABLED";
parameter CLKOS_FPHASE_ADJVAL = 0;
parameter ALU_LOCK_CNT = 3;
parameter ALU_UNLOCK_CNT = 15;
parameter GLITCH_TOLERANCE = 2;
parameter LOCK_DELAY=100;
parameter CLKOP_DUTY50 = "DISABLED";
parameter CLKOS_DUTY50 = "DISABLED";
endmodule

module TR1DLLB (CLKI, RSTN, ALUHOLD, UDDCNTL, DELADJPOL, DELVAL4,
DELVAL3, DELVAL2, DELVAL1, DELVAL0, CLKOP, CLKOS, LOCK, INCO, DIFF, GRAYO5, GRAYO4, GRAYO3, GRAYO2, GRAYO1, GRAYO0, DCNTL5, DCNTL4, DCNTL3, DCNTL2, DCNTL1, DCNTL0 ); //synthesis syn_black_box

input CLKI, RSTN, ALUHOLD, UDDCNTL, DELADJPOL; 
input DELVAL4, DELVAL3, DELVAL2, DELVAL1, DELVAL0;
output CLKOP, CLKOS, LOCK, INCO, DIFF;
output GRAYO5, GRAYO4, GRAYO3, GRAYO2, GRAYO1, GRAYO0;
output DCNTL5, DCNTL4, DCNTL3, DCNTL2, DCNTL1, DCNTL0;
parameter CLKOP_PHASE = 0;
parameter CLKOS_PHASE = 0;
parameter CLKOS_FPHASE = 0;
parameter CLKOS_DIV = 1;
parameter GSR = "DISABLED";
parameter CLKOS_FPHASE_ADJVAL = 0;
parameter ALU_LOCK_CNT = 3;
parameter ALU_UNLOCK_CNT = 15;
parameter GLITCH_TOLERANCE = 2;
parameter LOCK_DELAY=100;
parameter CLKOP_DUTY50 = "DISABLED";
parameter CLKOS_DUTY50 = "DISABLED";
endmodule

module CIMDLLB (CLKI, CLKFB, RSTN, ALUHOLD, INCI, UDDCNTL,
GRAYI5, GRAYI4, GRAYI3, GRAYI2, GRAYI1, GRAYI0,
CLKOP, CLKOS, LOCK, DIFF,DCNTL0, DCNTL1, DCNTL2, DCNTL3, 
DCNTL4, DCNTL5); //synthesis syn_black_box

input CLKI, CLKFB, RSTN, ALUHOLD, INCI, UDDCNTL;
input GRAYI0, GRAYI1, GRAYI2, GRAYI3, GRAYI4, GRAYI5;
output CLKOP, CLKOS, LOCK, DIFF;
output DCNTL5, DCNTL4, DCNTL3, DCNTL2, DCNTL1, DCNTL0;

parameter CLKOS_FPHASE = 0;
parameter CLKOS_DIV = 1;
parameter GSR = "DISABLED";
parameter ALU_LOCK_CNT = 3;
parameter ALU_UNLOCK_CNT = 15;
parameter GLITCH_TOLERANCE = 2;
parameter LOCK_DELAY=100;
parameter CLKOS_FDEL_ADJ = "DISABLED";
endmodule

module CIDDLLB (CLKI, CLKFB, RSTN, ALUHOLD, INCI,
GRAYI5, GRAYI4, GRAYI3, GRAYI2, GRAYI1, GRAYI0,
CLKOP, CLKOS, LOCK); //synthesis syn_black_box
input CLKI, CLKFB, RSTN, ALUHOLD, INCI;
input GRAYI5, GRAYI4, GRAYI3, GRAYI2, GRAYI1, GRAYI0;
output CLKOP, CLKOS, LOCK;

parameter CLKOP_PHASE = 360;
parameter CLKOS_PHASE = 360;
parameter CLKOS_FPHASE = 0;
parameter CLKI_DIV = 1;
parameter CLKOS_DIV = 1;
parameter GSR = "DISABLED";
parameter ALU_LOCK_CNT = 3;
parameter ALU_UNLOCK_CNT = 15;
parameter GLITCH_TOLERANCE = 2;
parameter ALU_INIT_CNTVAL = 10;
parameter LOCK_DELAY=100;
parameter CLKOP_DUTY50="DISABLED";
parameter CLKOS_DUTY50="DISABLED";
parameter DEL0_GRAY="DISABLED";
parameter DEL1_GRAY="DISABLED";
parameter DEL2_GRAY="DISABLED";
parameter DEL3_GRAY="DISABLED";
parameter DEL4_GRAY="DISABLED";
endmodule

module DLLDELB (CLKI, DCNTL5, DCNTL4, DCNTL3, DCNTL2, DCNTL1, DCNTL0, CLKO); //synthesis syn_black_box
input   CLKI, DCNTL5, DCNTL4, DCNTL3, DCNTL2, DCNTL1, DCNTL0;
output  CLKO;
endmodule

module IDDRXD (D, SCLK, ECLKDQSR, DDRCLKPOL, QA, QB); //synthesis syn_black_box
input  D, SCLK, ECLKDQSR, DDRCLKPOL;
output QA, QB;
parameter SCLKLATENCY = 1;
parameter DELAYMODE = "ALIGNED";
endmodule

module IDDRXD1 (D, SCLK, QA, QB); //synthesis syn_black_box
input  D, SCLK;
output QA, QB;
endmodule

module IDDRX2D (D, SCLK, ECLKDQSR, ECLK, DDRLAT, DDRCLKPOL, QA0, QB0, QA1, QB1); //synthesis syn_black_box
input  D, SCLK, ECLKDQSR, ECLK, DDRLAT, DDRCLKPOL;
output QA0, QB0, QA1, QB1;
parameter SCLKLATENCY = 1;
parameter DELAYMODE = "ALIGNED";
endmodule

module IDDRX2D1 (D, SCLK, ECLK, QA0, QB0, QA1, QB1); //synthesis syn_black_box
input  D, SCLK, ECLK;
output QA0, QB0, QA1, QB1;
parameter DR_CONFIG = "DISABLED";
endmodule

module ODDRXD (SCLK, DA, DB, DQCLK1, Q); //synthesis syn_black_box
input   SCLK, DA, DB, DQCLK1;
output  Q;
parameter MEMMODE = "DISABLED";
endmodule

module ODDRXD1 (SCLK, DA, DB, Q); //synthesis syn_black_box
input   SCLK, DA, DB;
output  Q;
endmodule

module ODDRX2D (SCLK, DA1, DB1, DA0, DB0, DQCLK1, DQCLK0, Q); //synthesis syn_black_box
input   SCLK, DA1, DB1, DA0, DB0, DQCLK1, DQCLK0;
output  Q;
parameter ISI_CAL = "BYPASS";
parameter MEMMODE  = "DISABLED";
endmodule

module ODDRTDQA (TA, SCLK, DQCLK1, DQCLK0, Q); //synthesis syn_black_box
input   TA, SCLK, DQCLK1, DQCLK0;
output  Q;
endmodule

module ODDRXDQSA (SCLK, DA, DQSW, DQCLK1, Q, DQSTCLK); //synthesis syn_black_box
input SCLK, DA, DQSW, DQCLK1;
output  Q, DQSTCLK;
parameter MEMMODE = "DISABLED";
endmodule

module ODDRTDQSA (TA, SCLK, DQSTCLK, DQSW, DB, Q); //synthesis syn_black_box
input   TA, SCLK, DQSTCLK, DQSW, DB;
output  Q;
endmodule

module ODDRX2DQSA (SCLK, DB1, DB0, DQCLK1, DQCLK0, DQSW, Q, DQSTCLK); //synthesis syn_black_box
input SCLK, DB1, DB0, DQCLK1, DQCLK0, DQSW;
output  Q, DQSTCLK;
parameter ISI_CAL = "BYPASS";
parameter MEMMODE = "DISABLED";
endmodule

module DQSBUFD (DQSI, SCLK, READ, DQSDEL, ECLK, ECLKW, RST, DYNDELPOL, DYNDELAY6, DYNDELAY5, DYNDELAY4, DYNDELAY3, DYNDELAY2, DYNDELAY1, DYNDELAY0, DQSW, DDRCLKPOL, PRMBDET, DATAVALID, DDRLAT, ECLKDQSR, DQCLK0, DQCLK1); //synthesis syn_black_box

parameter DYNDEL_TYPE = "NORMAL";
parameter DYNDEL_VAL = 0;
parameter DYNDEL_CNTL = "DYNAMIC";
parameter NRZMODE = "DISABLED";

input DQSI, SCLK, READ, DQSDEL, ECLK, ECLKW, RST;
input DYNDELPOL, DYNDELAY6, DYNDELAY5, DYNDELAY4, DYNDELAY3, DYNDELAY2, DYNDELAY1, DYNDELAY0;
output DQSW, DDRCLKPOL, PRMBDET, DATAVALID, DDRLAT, ECLKDQSR, DQCLK0, DQCLK1;
endmodule

module DQSBUFE (ECLK, SCLK, ECLKW, RST, DYNDELPOL, DYNDELAY6, DYNDELAY5, DYNDELAY4, DYNDELAY3, DYNDELAY2, DYNDELAY1, DYNDELAY0, DQCLK0, DQCLK1, DDRCLKPOL, DDRLAT); //synthesis syn_black_box

input ECLK, SCLK, ECLKW, RST;
input DYNDELPOL, DYNDELAY6, DYNDELAY5, DYNDELAY4, DYNDELAY3, DYNDELAY2, DYNDELAY1, DYNDELAY0;
output DQCLK0, DQCLK1, DDRCLKPOL, DDRLAT;
parameter DYNDEL_TYPE = "NORMAL";
parameter DYNDEL_VAL = 0;
parameter DYNDEL_CNTL = "DYNAMIC";
endmodule

module DQSBUFE1 (ECLKW, RST, DYNDELPOL, DYNDELAY6, DYNDELAY5, DYNDELAY4, DYNDELAY3, DYNDELAY2, DYNDELAY1, DYNDELAY0, DQCLK0, DQCLK1); //synthesis syn_black_box

input ECLKW, RST;
input DYNDELPOL, DYNDELAY6, DYNDELAY5, DYNDELAY4, DYNDELAY3, DYNDELAY2, DYNDELAY1, DYNDELAY0;
output DQCLK0, DQCLK1;
parameter DYNDEL_TYPE = "NORMAL";
parameter DYNDEL_VAL = 0;
parameter DYNDEL_CNTL = "DYNAMIC";
endmodule

module DQSBUFF (DQSI, SCLK, READ, DQSDEL,
DQSW, DDRCLKPOL, PRMBDET, DATAVALID, ECLKDQSR, DQCLK1); //synthesis syn_black_box
input DQSI, SCLK, READ, DQSDEL;
output DQSW, DDRCLKPOL, PRMBDET, DATAVALID, ECLKDQSR, DQCLK1;
endmodule

module DQSBUFG (SCLK, DDRCLKPOL, DQCLK1); //synthesis syn_black_box
input SCLK;
output DDRCLKPOL, DQCLK1;
endmodule

module DQSDLLB (CLK, RST, UDDCNTLN, LOCK, DQSDEL); //synthesis syn_black_box
input   CLK, RST, UDDCNTLN;
output  LOCK, DQSDEL;
parameter LOCK_SENSITIVITY = "LOW";
endmodule

module ECLKSYNCA (ECLKI, STOP, ECLKO); //synthesis syn_black_box
input   ECLKI, STOP;
output  ECLKO;
endmodule

module DELAYB (A, DEL3, DEL2, DEL1, DEL0, Z);  //synthesis syn_black_box
input A, DEL3, DEL2, DEL1, DEL0;
output Z ;
endmodule

module DELAYC (A, Z);  //synthesis syn_black_box
input A ;
output Z ;
endmodule

module MULT18X18C (
A17,A16,A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0,
B17,B16,B15,B14,B13,B12,B11,B10,B9,B8,B7,B6,B5,B4,B3,B2,B1,B0,
SIGNEDA,SIGNEDB,SOURCEA,SOURCEB, 
CE3,CE2,CE1,CE0,CLK3,CLK2,CLK1,CLK0,RST3,RST2,RST1,RST0,
SRIA17,SRIA16,SRIA15,SRIA14,SRIA13,SRIA12,SRIA11,SRIA10,SRIA9,SRIA8,SRIA7,SRIA6,SRIA5,SRIA4,SRIA3,SRIA2,SRIA1,SRIA0,
SRIB17,SRIB16,SRIB15,SRIB14,SRIB13,SRIB12,SRIB11,SRIB10,SRIB9,SRIB8,SRIB7,SRIB6,SRIB5,SRIB4,SRIB3,SRIB2,SRIB1,SRIB0,
SROA17,SROA16,SROA15,SROA14,SROA13,SROA12,SROA11,SROA10,SROA9,SROA8,SROA7,SROA6,SROA5,SROA4,SROA3,SROA2,SROA1,SROA0,
SROB17,SROB16,SROB15,SROB14,SROB13,SROB12,SROB11,SROB10,SROB9,SROB8,SROB7,SROB6,SROB5,SROB4,SROB3,SROB2,SROB1,SROB0,
ROA17,ROA16,ROA15,ROA14,ROA13,ROA12,ROA11,ROA10,ROA9,ROA8,ROA7,ROA6,ROA5,ROA4,ROA3,ROA2,ROA1,ROA0,
ROB17,ROB16,ROB15,ROB14,ROB13,ROB12,ROB11,ROB10,ROB9,ROB8,ROB7,ROB6,ROB5,ROB4,ROB3,ROB2,ROB1,ROB0, 
P35,P34,P33,P32,P31,P30,P29,P28,P27,P26,P25,P24,P23,P22,P21,P20,P19,
P18,P17,P16,P15,P14,P13,P12,P11,P10,P9,P8,P7,P6,P5,P4,P3,P2,P1,P0,SIGNEDP); //synthesis syn_black_box

input A17,A16,A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0;
input B17,B16,B15,B14,B13,B12,B11,B10,B9,B8,B7,B6,B5,B4,B3,B2,B1,B0;
input SIGNEDA,SIGNEDB,SOURCEA,SOURCEB;
input CE3,CE2,CE1,CE0,CLK3,CLK2,CLK1,CLK0,RST3,RST2,RST1,RST0;
input SRIA17,SRIA16,SRIA15,SRIA14,SRIA13,SRIA12,SRIA11,SRIA10,SRIA9;
input SRIA8,SRIA7,SRIA6,SRIA5,SRIA4,SRIA3,SRIA2,SRIA1,SRIA0;
input SRIB17,SRIB16,SRIB15,SRIB14,SRIB13,SRIB12,SRIB11,SRIB10,SRIB9;
input SRIB8,SRIB7,SRIB6,SRIB5,SRIB4,SRIB3,SRIB2,SRIB1,SRIB0;
output SROA17,SROA16,SROA15,SROA14,SROA13,SROA12,SROA11,SROA10,SROA9;
output SROA8,SROA7,SROA6,SROA5,SROA4,SROA3,SROA2,SROA1,SROA0;
output SROB17,SROB16,SROB15,SROB14,SROB13,SROB12,SROB11,SROB10,SROB9;
output SROB8,SROB7,SROB6,SROB5,SROB4,SROB3,SROB2,SROB1,SROB0;
output ROA17,ROA16,ROA15,ROA14,ROA13,ROA12,ROA11,ROA10,ROA9,ROA8,ROA7,ROA6,ROA5,ROA4,ROA3,ROA2,ROA1,ROA0; 
output ROB17,ROB16,ROB15,ROB14,ROB13,ROB12,ROB11,ROB10,ROB9,ROB8,ROB7,ROB6,ROB5,ROB4,ROB3,ROB2,ROB1,ROB0; 
output P35,P34,P33,P32,P31,P30,P29,P28,P27,P26,P25,P24,P23,P22,P21,P20,P19,P18; 
output P17,P16,P15,P14,P13,P12,P11,P10,P9,P8,P7,P6,P5,P4,P3,P2,P1,P0; 
output SIGNEDP;

parameter REG_INPUTA_CLK = "NONE";
parameter REG_INPUTA_CE = "CE0";
parameter REG_INPUTA_RST = "RST0";
parameter REG_INPUTB_CLK = "NONE";
parameter REG_INPUTB_CE = "CE0";
parameter REG_INPUTB_RST = "RST0";
parameter REG_PIPELINE_CLK = "NONE";
parameter REG_PIPELINE_CE = "CE0";
parameter REG_PIPELINE_RST = "RST0";
parameter REG_OUTPUT_CLK = "NONE";
parameter REG_OUTPUT_CE = "CE0";
parameter REG_OUTPUT_RST = "RST0";
parameter CAS_MATCH_REG = "FALSE";
parameter MULT_BYPASS = "DISABLED";
parameter GSR = "ENABLED";
parameter RESETMODE = "SYNC";
endmodule

module MULT9X9C (
A8,A7,A6,A5,A4,A3,A2,A1,A0,B8,B7,B6,B5,B4,B3,B2,B1,B0,
SIGNEDA,SIGNEDB,SOURCEA,SOURCEB,
CE3,CE2,CE1,CE0,CLK3,CLK2,CLK1,CLK0,RST3,RST2,RST1,RST0,
SRIA8,SRIA7,SRIA6,SRIA5,SRIA4,SRIA3,SRIA2,SRIA1,SRIA0,
SRIB8,SRIB7,SRIB6,SRIB5,SRIB4,SRIB3,SRIB2,SRIB1,SRIB0,
SROA8,SROA7,SROA6,SROA5,SROA4,SROA3,SROA2,SROA1,SROA0,
SROB8,SROB7,SROB6,SROB5,SROB4,SROB3,SROB2,SROB1,SROB0,
ROA8,ROA7,ROA6,ROA5,ROA4,ROA3,ROA2,ROA1,ROA0,
ROB8,ROB7,ROB6,ROB5,ROB4,ROB3,ROB2,ROB1,ROB0,
P17,P16,P15,P14,P13,P12,P11,P10,P9,P8,P7,P6,P5,P4,P3,P2,P1,P0,
SIGNEDP); //synthesis syn_black_box

input A8,A7,A6,A5,A4,A3,A2,A1,A0;
input B8,B7,B6,B5,B4,B3,B2,B1,B0;
input SIGNEDA,SIGNEDB,SOURCEA,SOURCEB;
input CE0,CE1,CE2,CE3,CLK0,CLK1,CLK2,CLK3,RST0,RST1,RST2,RST3;
input SRIA8,SRIA7,SRIA6,SRIA5,SRIA4,SRIA3,SRIA2,SRIA1,SRIA0;
input SRIB8,SRIB7,SRIB6,SRIB5,SRIB4,SRIB3,SRIB2,SRIB1,SRIB0;
output SROA8,SROA7,SROA6,SROA5,SROA4,SROA3,SROA2,SROA1,SROA0;
output SROB8,SROB7,SROB6,SROB5,SROB4,SROB3,SROB2,SROB1,SROB0;
output ROA8,ROA7,ROA6,ROA5,ROA4,ROA3,ROA2,ROA1,ROA0;
output ROB8,ROB7,ROB6,ROB5,ROB4,ROB3,ROB2,ROB1,ROB0;
output P17,P16,P15,P14,P13,P12,P11,P10,P9,P8,P7,P6,P5,P4,P3,P2,P1,P0; 
output SIGNEDP;

parameter REG_INPUTA_CLK = "NONE";
parameter REG_INPUTA_CE = "CE0";
parameter REG_INPUTA_RST = "RST0";
parameter REG_INPUTB_CLK = "NONE";
parameter REG_INPUTB_CE = "CE0";
parameter REG_INPUTB_RST = "RST0";
parameter REG_PIPELINE_CLK = "NONE";
parameter REG_PIPELINE_CE = "CE0";
parameter REG_PIPELINE_RST = "RST0";
parameter REG_OUTPUT_CLK = "NONE";
parameter REG_OUTPUT_CE = "CE0";
parameter REG_OUTPUT_RST = "RST0";
parameter CAS_MATCH_REG = "FALSE";
parameter MULT_BYPASS = "DISABLED";
parameter GSR = "ENABLED";
parameter RESETMODE = "SYNC";
endmodule

module ALU54A( 
CE3,CE2,CE1,CE0,CLK3,CLK2,CLK1,CLK0,RST3,RST2,RST1,RST0,SIGNEDIA,SIGNEDIB,
A35,A34,A33,A32,A31,A30,A29,A28,A27,A26,A25,A24,A23,A22,A21,A20,A19,A18,
A17,A16,A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0,
B35,B34,B33,B32,B31,B30,B29,B28,B27,B26,B25,B24,B23,B22,B21,B20,B19,B18,
B17,B16,B15,B14,B13,B12,B11,B10,B9,B8,B7,B6,B5,B4,B3,B2,B1,B0,
C53,C52,C51,C50,C49,C48,C47,C46,C45,C44,C43,C42,C41,C40,C39,C38,C37,C36,
C35,C34,C33,C32,C31,C30,C29,C28,C27,C26,C25,C24,C23,C22,C21,C20,C19,C18,
C17,C16,C15,C14,C13,C12,C11,C10,C9,C8,C7,C6,C5,C4,C3,C2,C1,C0,
MA35,MA34,MA33,MA32,MA31,MA30,MA29,MA28,MA27,MA26,MA25,MA24,MA23,MA22,MA21,
MA20,MA19,MA18,MA17,MA16,MA15,MA14,MA13,MA12,MA11,MA10,MA9,MA8,MA7,MA6,MA5,
MA4,MA3,MA2,MA1,MA0,
MB35,MB34,MB33,MB32,MB31,MB30,MB29,MB28,MB27,MB26,MB25,MB24,MB23,MB22,MB21,
MB20,MB19,MB18,MB17,MB16,MB15,MB14,MB13,MB12,MB11,MB10,MB9,MB8,MB7,MB6,MB5,
MB4,MB3,MB2,MB1,MB0,
CIN53,CIN52,CIN51,CIN50,CIN49,CIN48,CIN47,CIN46,CIN45,CIN44,CIN43,CIN42,
CIN41,CIN40,CIN39,CIN38,CIN37,CIN36,CIN35,CIN34,CIN33,CIN32,CIN31,CIN30,CIN29,
CIN28,CIN27,CIN26,CIN25,CIN24,CIN23,CIN22,CIN21,CIN20,CIN19,CIN18,CIN17,CIN16,
CIN15,CIN14,CIN13,CIN12,CIN11,CIN10,CIN9,CIN8,CIN7,CIN6,CIN5,CIN4,CIN3,CIN2,CIN1,CIN0,
OP10,OP9,OP8,OP7,OP6,OP5,OP4,OP3,OP2,OP1,OP0,SIGNEDCIN,
R53,R52,R51,R50,R49,R48,R47,R46,R45,R44,R43,R42,R41,R40,R39,R38,R37,R36,
R35,R34,R33,R32,R31,R30,R29,R28,R27,R26,R25,R24,R23,R22,R21,R20,R19,R18,
R17,R16,R15,R14,R13,R12,R11,R10,R9,R8,R7,R6,R5,R4,R3,R2,R1,R0,
EQZ,EQZM,EQOM,EQPAT,EQPATB,OVER,UNDER,OVERUNDER,SIGNEDR); //synthesis syn_black_box

input CE0,CE1,CE2,CE3,CLK0,CLK1,CLK2,CLK3,RST0,RST1,RST2,RST3,SIGNEDIA,SIGNEDIB;
input A35,A34,A33,A32,A31,A30,A29,A28,A27,A26,A25,A24,A23,A22,A21,A20,A19,A18;
input A17,A16,A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0;
input B35,B34,B33,B32,B31,B30,B29,B28,B27,B26,B25,B24,B23,B22,B21,B20,B19,B18;
input B17,B16,B15,B14,B13,B12,B11,B10,B9,B8,B7,B6,B5,B4,B3,B2,B1,B0;
input C53,C52,C51,C50,C49,C48,C47,C46,C45,C44,C43,C42,C41,C40,C39,C38,C37,C36;
input C35,C34,C33,C32,C31,C30,C29,C28,C27,C26,C25,C24,C23,C22,C21,C20,C19,C18;
input C17,C16,C15,C14,C13,C12,C11,C10,C9,C8,C7,C6,C5,C4,C3,C2,C1,C0;
input MA35,MA34,MA33,MA32,MA31,MA30,MA29,MA28,MA27,MA26,MA25,MA24,MA23,MA22,MA21;
input MA20,MA19,MA18,MA17,MA16,MA15,MA14,MA13,MA12,MA11,MA10,MA9,MA8,MA7,MA6,MA5;
input MA4,MA3,MA2,MA1,MA0;
input MB35,MB34,MB33,MB32,MB31,MB30,MB29,MB28,MB27,MB26,MB25,MB24,MB23,MB22,MB21;
input MB20,MB19,MB18,MB17,MB16,MB15,MB14,MB13,MB12,MB11,MB10,MB9,MB8,MB7,MB6,MB5;
input MB4,MB3,MB2,MB1,MB0;
input CIN53,CIN52,CIN51,CIN50,CIN49,CIN48,CIN47,CIN46,CIN45,CIN44,CIN43,CIN42;
input CIN41,CIN40,CIN39,CIN38,CIN37,CIN36,CIN35,CIN34,CIN33,CIN32,CIN31,CIN30,CIN29;
input CIN28,CIN27,CIN26,CIN25,CIN24,CIN23,CIN22,CIN21,CIN20,CIN19,CIN18,CIN17,CIN16;
input CIN15,CIN14,CIN13,CIN12,CIN11,CIN10,CIN9,CIN8,CIN7,CIN6,CIN5,CIN4,CIN3,CIN2,CIN1,CIN0;
input OP10,OP9,OP8,OP7,OP6,OP5,OP4,OP3,OP2,OP1,OP0,SIGNEDCIN;
output R53,R52,R51,R50,R49,R48,R47,R46,R45,R44,R43,R42,R41,R40,R39,R38,R37,R36;
output R35,R34,R33,R32,R31,R30,R29,R28,R27,R26,R25,R24,R23,R22,R21,R20,R19,R18;
output R17,R16,R15,R14,R13,R12,R11,R10,R9,R8,R7,R6,R5,R4,R3,R2,R1,R0;
output EQZ,EQZM,EQOM,EQPAT,EQPATB,OVER,UNDER,OVERUNDER,SIGNEDR;

parameter REG_INPUTC0_CLK = "NONE";
parameter REG_INPUTC0_CE = "CE0";
parameter REG_INPUTC0_RST = "RST0";
parameter REG_INPUTC1_CLK = "NONE";
parameter REG_INPUTC1_CE = "CE0";
parameter REG_INPUTC1_RST = "RST0";
parameter REG_OPCODEOP0_0_CLK = "NONE";
parameter REG_OPCODEOP0_0_CE  = "CE0";
parameter REG_OPCODEOP0_0_RST = "RST0";
parameter REG_OPCODEOP1_0_CLK = "NONE";
parameter REG_OPCODEOP0_1_CLK = "NONE";
parameter REG_OPCODEOP0_1_CE = "CE0";
parameter REG_OPCODEOP0_1_RST = "RST0";
parameter REG_OPCODEOP1_1_CLK = "NONE";
parameter REG_OPCODEIN_0_CLK = "NONE";
parameter REG_OPCODEIN_0_CE = "CE0";
parameter REG_OPCODEIN_0_RST = "RST0";
parameter REG_OPCODEIN_1_CLK = "NONE";
parameter REG_OPCODEIN_1_CE = "CE0";
parameter REG_OPCODEIN_1_RST = "RST0";
parameter REG_OUTPUT0_CLK = "NONE";
parameter REG_OUTPUT0_CE = "CE0";
parameter REG_OUTPUT0_RST = "RST0";
parameter REG_OUTPUT1_CLK = "NONE";
parameter REG_OUTPUT1_CE = "CE0";
parameter REG_OUTPUT1_RST = "RST0";
parameter REG_FLAG_CLK = "NONE";
parameter REG_FLAG_CE = "CE0";
parameter REG_FLAG_RST = "RST0";
parameter MCPAT_SOURCE = "STATIC";
parameter MASKPAT_SOURCE = "STATIC";
parameter MASK01 = "0x00000000000000";
parameter MCPAT = "0x00000000000000";
parameter MASKPAT = "0x00000000000000";
parameter RNDPAT = "0x00000000000000";
parameter GSR = "ENABLED";
parameter RESETMODE = "SYNC";
parameter MULT9_MODE = "DISABLED";
parameter FORCE_ZERO_BARREL_SHIFT = "DISABLED";
parameter LEGACY = "DISABLED";
endmodule


module ALU24A( 
MA17,MA16,MA15,MA14,MA13,MA12,MA11,MA10,MA9,MA8,MA7,MA6,MA5,
MA4,MA3,MA2,MA1,MA0,
MB17,MB16,MB15,MB14,MB13,MB12,MB11,MB10,MB9,MB8,MB7,MB6,MB5,
MB4,MB3,MB2,MB1,MB0,
CIN23,CIN22,CIN21,CIN20,CIN19,CIN18,CIN17,CIN16,
CIN15,CIN14,CIN13,CIN12,CIN11,CIN10,CIN9,CIN8,CIN7,CIN6,CIN5,CIN4,CIN3,CIN2,CIN1,CIN0,
CE3,CE2,CE1,CE0,CLK3,CLK2,CLK1,CLK0,RST3,RST2,RST1,RST0,SIGNEDIA,SIGNEDIB,OPADDNSUB,OPCINSEL,
R23,R22,R21,R20,R19,R18,
R17,R16,R15,R14,R13,R12,R11,R10,R9,R8,R7,R6,R5,R4,R3,R2,R1,R0); //synthesis syn_black_box

input MA17,MA16,MA15,MA14,MA13,MA12,MA11,MA10,MA9,MA8,MA7,MA6,MA5;
input MA4,MA3,MA2,MA1,MA0;
input MB17,MB16,MB15,MB14,MB13,MB12,MB11,MB10,MB9,MB8,MB7,MB6,MB5;
input MB4,MB3,MB2,MB1,MB0;
input CIN23,CIN22,CIN21,CIN20,CIN19,CIN18,CIN17,CIN16;
input CIN15,CIN14,CIN13,CIN12,CIN11,CIN10,CIN9,CIN8,CIN7,CIN6,CIN5,CIN4,CIN3,CIN2,CIN1,CIN0;
input CE0,CE1,CE2,CE3,CLK0,CLK1,CLK2,CLK3,RST0,RST1,RST2,RST3,SIGNEDIA,SIGNEDIB,OPADDNSUB,OPCINSEL;
output R23,R22,R21,R20,R19,R18;
output R17,R16,R15,R14,R13,R12,R11,R10,R9,R8,R7,R6,R5,R4,R3,R2,R1,R0;

parameter REG_OUTPUT_CLK = "NONE";
parameter REG_OUTPUT_CE = "CE0";
parameter REG_OUTPUT_RST = "RST0";
parameter REG_OPCODE_0_CLK = "NONE";
parameter REG_OPCODE_0_CE  = "CE0";
parameter REG_OPCODE_0_RST = "RST0";
parameter REG_OPCODE_1_CLK = "NONE";
parameter REG_OPCODE_1_CE = "CE0";
parameter REG_OPCODE_1_RST = "RST0";
parameter GSR = "ENABLED";
parameter RESETMODE = "SYNC";
endmodule

module MULT9X9B (A8,A7,A6,A5,A4,A3,A2,A1,A0,B8,B7,B6,B5,B4,B3,B2,B1,B0,
SIGNEDA,SIGNEDB,SOURCEA,SOURCEB,
CE3,CE2,CE1,CE0,CLK3,CLK2,CLK1,CLK0,RST3,RST2,RST1,RST0,
SRIA8,SRIA7,SRIA6,SRIA5,SRIA4,SRIA3,SRIA2,SRIA1,SRIA0,
SRIB8,SRIB7,SRIB6,SRIB5,SRIB4,SRIB3,SRIB2,SRIB1,SRIB0,
SROA8,SROA7,SROA6,SROA5,SROA4,SROA3,SROA2,SROA1,SROA0,
SROB8,SROB7,SROB6,SROB5,SROB4,SROB3,SROB2,SROB1,SROB0,
P17,P16,P15,P14,P13,P12,P11,P10,P9,P8,P7,P6,P5,P4,P3,P2,P1,P0); //synthesis syn_black_box
input A8,A7,A6,A5,A4,A3,A2,A1,A0;
input B8,B7,B6,B5,B4,B3,B2,B1,B0;
input SIGNEDA,SIGNEDB,SOURCEA,SOURCEB;
input CE3,CE2,CE1,CE0,CLK3,CLK2,CLK1,CLK0,RST3,RST2,RST1,RST0;
input SRIA8,SRIA7,SRIA6,SRIA5,SRIA4,SRIA3,SRIA2,SRIA1,SRIA0;
input SRIB8,SRIB7,SRIB6,SRIB5,SRIB4,SRIB3,SRIB2,SRIB1,SRIB0;
output SROA8,SROA7,SROA6,SROA5,SROA4,SROA3,SROA2,SROA1,SROA0;
output SROB8,SROB7,SROB6,SROB5,SROB4,SROB3,SROB2,SROB1,SROB0;
output P17,P16,P15,P14,P13,P12,P11,P10,P9,P8,P7,P6,P5,P4,P3,P2,P1,P0; 

parameter REG_INPUTA_CLK = "NONE";
parameter REG_INPUTA_CE = "CE0";
parameter REG_INPUTA_RST = "RST0";
parameter REG_INPUTB_CLK = "NONE";
parameter REG_INPUTB_CE = "CE0";
parameter REG_INPUTB_RST = "RST0";
parameter REG_PIPELINE_CLK = "NONE";
parameter REG_PIPELINE_CE = "CE0";
parameter REG_PIPELINE_RST = "RST0";
parameter REG_OUTPUT_CLK = "NONE";
parameter REG_OUTPUT_CE = "CE0";
parameter REG_OUTPUT_RST = "RST0";
parameter REG_SIGNEDA_CLK = "NONE";
parameter REG_SIGNEDA_CE = "CE0";
parameter REG_SIGNEDA_RST = "RST0";
parameter REG_SIGNEDB_CLK = "NONE";
parameter REG_SIGNEDB_CE = "CE0";
parameter REG_SIGNEDB_RST = "RST0";
parameter GSR = "ENABLED";
endmodule

module MULT9X9ADDSUBB ( A08,A07,A06,A05,A04,A03,A02,A01,A00,
A18,A17,A16,A15,A14,A13,A12,A11,A10,
B08,B07,B06,B05,B04,B03,B02,B01,B00,
B18,B17,B16,B15,B14,B13,B12,B11,B10,
SIGNEDA,SIGNEDB,ADDNSUB,SOURCEA1,SOURCEA0,SOURCEB1,SOURCEB0,
CE3,CE2,CE1,CE0,CLK3,CLK2,CLK1,CLK0,RST3,RST2,RST1,RST0,
SRIA8,SRIA7,SRIA6,SRIA5,SRIA4,SRIA3,SRIA2,SRIA1,SRIA0,
SRIB8,SRIB7,SRIB6,SRIB5,SRIB4,SRIB3,SRIB2,SRIB1,SRIB0,
SROA8,SROA7,SROA6,SROA5,SROA4,SROA3,SROA2,SROA1,SROA0,
SROB8,SROB7,SROB6,SROB5,SROB4,SROB3,SROB2,SROB1,SROB0,
SUM18,SUM17,SUM16,SUM15,SUM14,SUM13,SUM12,SUM11,SUM10,SUM9,SUM8,SUM7,SUM6,SUM5,SUM4,SUM3,SUM2,SUM1,SUM0);  //synthesis syn_black_box
input A08,A07,A06,A05,A04,A03,A02,A01,A00;
input A18,A17,A16,A15,A14,A13,A12,A11,A10;
input B08,B07,B06,B05,B04,B03,B02,B01,B00;
input B18,B17,B16,B15,B14,B13,B12,B11,B10;
input SIGNEDA,SIGNEDB,ADDNSUB,SOURCEA1, SOURCEA0, SOURCEB1, SOURCEB0;
input CE3,CE2,CE1,CE0,CLK3,CLK2,CLK1,CLK0,RST3,RST2,RST1,RST0;
input SRIA8,SRIA7,SRIA6,SRIA5,SRIA4,SRIA3,SRIA2,SRIA1,SRIA0;
input SRIB8,SRIB7,SRIB6,SRIB5,SRIB4,SRIB3,SRIB2,SRIB1,SRIB0;
output SROA8,SROA7,SROA6,SROA5,SROA4,SROA3,SROA2,SROA1,SROA0;
output SROB8,SROB7,SROB6,SROB5,SROB4,SROB3,SROB2,SROB1,SROB0;
output SUM18,SUM17,SUM16,SUM15,SUM14,SUM13,SUM12,SUM11,SUM10,SUM9,SUM8,SUM7,SUM6,SUM5,SUM4,SUM3,SUM2,SUM1,SUM0; 

parameter REG_INPUTA0_CLK = "NONE";
parameter REG_INPUTA0_CE = "CE0";
parameter REG_INPUTA0_RST = "RST0";
parameter REG_INPUTA1_CLK = "NONE";
parameter REG_INPUTA1_CE = "CE0";
parameter REG_INPUTA1_RST = "RST0";
parameter REG_INPUTB0_CLK = "NONE";
parameter REG_INPUTB0_CE = "CE0";
parameter REG_INPUTB0_RST = "RST0";
parameter REG_INPUTB1_CLK = "NONE";
parameter REG_INPUTB1_CE = "CE0";
parameter REG_INPUTB1_RST = "RST0";
parameter REG_PIPELINE0_CLK = "NONE";
parameter REG_PIPELINE0_CE = "CE0";
parameter REG_PIPELINE0_RST = "RST0";
parameter REG_PIPELINE1_CLK = "NONE";
parameter REG_PIPELINE1_CE = "CE0";
parameter REG_PIPELINE1_RST = "RST0";
parameter REG_OUTPUT_CLK = "NONE";
parameter REG_OUTPUT_CE = "CE0";
parameter REG_OUTPUT_RST = "RST0";
parameter REG_SIGNEDA_0_CLK = "NONE";
parameter REG_SIGNEDA_0_CE = "CE0";
parameter REG_SIGNEDA_0_RST = "RST0";
parameter REG_SIGNEDA_1_CLK = "NONE";
parameter REG_SIGNEDA_1_CE = "CE0";
parameter REG_SIGNEDA_1_RST = "RST0";
parameter REG_SIGNEDB_0_CLK = "NONE";
parameter REG_SIGNEDB_0_CE = "CE0";
parameter REG_SIGNEDB_0_RST = "RST0";
parameter REG_SIGNEDB_1_CLK = "NONE";
parameter REG_SIGNEDB_1_CE = "CE0";
parameter REG_SIGNEDB_1_RST = "RST0";
parameter REG_ADDNSUB_0_CLK = "NONE";
parameter REG_ADDNSUB_0_CE = "CE0";
parameter REG_ADDNSUB_0_RST = "RST0";
parameter REG_ADDNSUB_1_CLK = "NONE";
parameter REG_ADDNSUB_1_CE = "CE0";
parameter REG_ADDNSUB_1_RST = "RST0";
parameter GSR = "ENABLED";
endmodule

module MULT9X9ADDSUBSUMB (
A08,A07,A06,A05,A04,A03,A02,A01,A00,
A18,A17,A16,A15,A14,A13,A12,A11,A10,
A28,A27,A26,A25,A24,A23,A22,A21,A20,
A38,A37,A36,A35,A34,A33,A32,A31,A30,
B08,B07,B06,B05,B04,B03,B02,B01,B00,
B18,B17,B16,B15,B14,B13,B12,B11,B10,
B28,B27,B26,B25,B24,B23,B22,B21,B20,
B38,B37,B36,B35,B34,B33,B32,B31,B30,
SIGNEDA,SIGNEDB,ADDNSUB3,ADDNSUB1,
SOURCEA3,SOURCEA2,SOURCEA1,SOURCEA0,
SOURCEB3,SOURCEB2,SOURCEB1,SOURCEB0,
CE3,CE2,CE1,CE0,CLK3,CLK2,CLK1,CLK0,RST3,RST2,RST1,RST0,
SRIA8,SRIA7,SRIA6,SRIA5,SRIA4,SRIA3,SRIA2,SRIA1,SRIA0,
SRIB8,SRIB7,SRIB6,SRIB5,SRIB4,SRIB3,SRIB2,SRIB1,SRIB0,
SROA8,SROA7,SROA6,SROA5,SROA4,SROA3,SROA2,SROA1,SROA0,
SROB8,SROB7,SROB6,SROB5,SROB4,SROB3,SROB2,SROB1,SROB0,
SUM19,SUM18,SUM17,SUM16,SUM15,SUM14,SUM13,SUM12,SUM11,SUM10,SUM9,SUM8,SUM7,SUM6,SUM5,SUM4,SUM3,SUM2,SUM1,SUM0); //synthesis syn_black_box
input A08,A07,A06,A05,A04,A03,A02,A01,A00;
input A18,A17,A16,A15,A14,A13,A12,A11,A10;
input A28,A27,A26,A25,A24,A23,A22,A21,A20;
input A38,A37,A36,A35,A34,A33,A32,A31,A30;
input B08,B07,B06,B05,B04,B03,B02,B01,B00;
input B18,B17,B16,B15,B14,B13,B12,B11,B10;
input B28,B27,B26,B25,B24,B23,B22,B21,B20;
input B38,B37,B36,B35,B34,B33,B32,B31,B30;
input SIGNEDA,SIGNEDB,ADDNSUB3,ADDNSUB1;
input SOURCEA3, SOURCEA2, SOURCEA1,SOURCEA0,SOURCEB3,SOURCEB2,SOURCEB1,SOURCEB0;
input CE3,CE2,CE1,CE0,CLK3,CLK2,CLK1,CLK0,RST3,RST2,RST1,RST0;
input SRIA8,SRIA7,SRIA6,SRIA5,SRIA4,SRIA3,SRIA2,SRIA1,SRIA0;
input SRIB8,SRIB7,SRIB6,SRIB5,SRIB4,SRIB3,SRIB2,SRIB1,SRIB0;
output SROA8,SROA7,SROA6,SROA5,SROA4,SROA3,SROA2,SROA1,SROA0;
output SROB8,SROB7,SROB6,SROB5,SROB4,SROB3,SROB2,SROB1,SROB0;
output SUM19,SUM18,SUM17,SUM16,SUM15,SUM14,SUM13,SUM12,SUM11,SUM10,SUM9,SUM8,SUM7,SUM6,SUM5,SUM4,SUM3,SUM2,SUM1,SUM0; 

parameter REG_INPUTA0_CLK = "NONE";
parameter REG_INPUTA0_CE = "CE0";
parameter REG_INPUTA0_RST = "RST0";
parameter REG_INPUTA1_CLK = "NONE";
parameter REG_INPUTA1_CE = "CE0";
parameter REG_INPUTA1_RST = "RST0";
parameter REG_INPUTA2_CLK = "NONE";
parameter REG_INPUTA2_CE = "CE0";
parameter REG_INPUTA2_RST = "RST0";
parameter REG_INPUTA3_CLK = "NONE";
parameter REG_INPUTA3_CE = "CE0";
parameter REG_INPUTA3_RST = "RST0";
parameter REG_INPUTB0_CLK = "NONE";
parameter REG_INPUTB0_CE = "CE0";
parameter REG_INPUTB0_RST = "RST0";
parameter REG_INPUTB1_CLK = "NONE";
parameter REG_INPUTB1_CE = "CE0";
parameter REG_INPUTB1_RST = "RST0";
parameter REG_INPUTB2_CLK = "NONE";
parameter REG_INPUTB2_CE = "CE0";
parameter REG_INPUTB2_RST = "RST0";
parameter REG_INPUTB3_CLK = "NONE";
parameter REG_INPUTB3_CE = "CE0";
parameter REG_INPUTB3_RST = "RST0";
parameter REG_PIPELINE0_CLK = "NONE";
parameter REG_PIPELINE0_CE = "CE0";
parameter REG_PIPELINE0_RST = "RST0";
parameter REG_PIPELINE1_CLK = "NONE";
parameter REG_PIPELINE1_CE = "CE0";
parameter REG_PIPELINE1_RST = "RST0";
parameter REG_PIPELINE2_CLK = "NONE";
parameter REG_PIPELINE2_CE = "CE0";
parameter REG_PIPELINE2_RST = "RST0";
parameter REG_PIPELINE3_CLK = "NONE";
parameter REG_PIPELINE3_CE = "CE0";
parameter REG_PIPELINE3_RST = "RST0";
parameter REG_OUTPUT_CLK = "NONE";
parameter REG_OUTPUT_CE = "CE0";
parameter REG_OUTPUT_RST = "RST0";
parameter REG_SIGNEDA_0_CLK = "NONE";
parameter REG_SIGNEDA_0_CE = "CE0";
parameter REG_SIGNEDA_0_RST = "RST0";
parameter REG_SIGNEDA_1_CLK = "NONE";
parameter REG_SIGNEDA_1_CE = "CE0";
parameter REG_SIGNEDA_1_RST = "RST0";
parameter REG_SIGNEDB_0_CLK = "NONE";
parameter REG_SIGNEDB_0_CE = "CE0";
parameter REG_SIGNEDB_0_RST = "RST0";
parameter REG_SIGNEDB_1_CLK = "NONE";
parameter REG_SIGNEDB_1_CE = "CE0";
parameter REG_SIGNEDB_1_RST = "RST0";
parameter REG_ADDNSUB1_0_CLK = "NONE";
parameter REG_ADDNSUB1_0_CE = "CE0";
parameter REG_ADDNSUB1_0_RST = "RST0";
parameter REG_ADDNSUB1_1_CLK = "NONE";
parameter REG_ADDNSUB1_1_CE = "CE0";
parameter REG_ADDNSUB1_1_RST = "RST0";
parameter REG_ADDNSUB3_0_CLK = "NONE";
parameter REG_ADDNSUB3_0_CE = "CE0";
parameter REG_ADDNSUB3_0_RST = "RST0";
parameter REG_ADDNSUB3_1_CLK = "NONE";
parameter REG_ADDNSUB3_1_CE = "CE0";
parameter REG_ADDNSUB3_1_RST = "RST0";
parameter GSR = "ENABLED";
endmodule

module MULT18X18B (
A17,A16,A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0,
B17,B16,B15,B14,B13,B12,B11,B10,B9,B8,B7,B6,B5,B4,B3,B2,B1,B0,
SIGNEDA,SIGNEDB,SOURCEA,SOURCEB,
CE3,CE2,CE1,CE0,CLK3,CLK2,CLK1,CLK0,RST3,RST2,RST1,RST0,
SRIA17,SRIA16,SRIA15,SRIA14,SRIA13,SRIA12,SRIA11,SRIA10,SRIA9,SRIA8,SRIA7,SRIA6,SRIA5,SRIA4,SRIA3,SRIA2,SRIA1,SRIA0,
SRIB17,SRIB16,SRIB15,SRIB14,SRIB13,SRIB12,SRIB11,SRIB10,SRIB9,SRIB8,SRIB7,SRIB6,SRIB5,SRIB4,SRIB3,SRIB2,SRIB1,SRIB0,
SROA17,SROA16,SROA15,SROA14,SROA13,SROA12,SROA11,SROA10,SROA9,SROA8,SROA7,SROA6,SROA5,SROA4,SROA3,SROA2,SROA1,SROA0,
SROB17,SROB16,SROB15,SROB14,SROB13,SROB12,SROB11,SROB10,SROB9,SROB8,SROB7,SROB6,SROB5,SROB4,SROB3,SROB2,SROB1,SROB0,
P35,P34,P33,P32,P31,P30,P29,P28,P27,P26,P25,P24,P23,P22,P21,P20,P19,
P18,P17,P16,P15,P14,P13,P12,P11,P10,P9,P8,P7,P6,P5,P4,P3,P2,P1,P0
); //synthesis syn_black_box
input A17,A16,A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0;
input B17,B16,B15,B14,B13,B12,B11,B10,B9,B8,B7,B6,B5,B4,B3,B2,B1,B0;
input SIGNEDA,SIGNEDB,SOURCEA,SOURCEB;
input CE0,CE1,CE2,CE3,CLK0,CLK1,CLK2,CLK3,RST0,RST1,RST2,RST3;
input SRIA17,SRIA16,SRIA15,SRIA14,SRIA13,SRIA12,SRIA11,SRIA10,SRIA9;
input SRIA8,SRIA7,SRIA6,SRIA5,SRIA4,SRIA3,SRIA2,SRIA1,SRIA0;
input SRIB17,SRIB16,SRIB15,SRIB14,SRIB13,SRIB12,SRIB11,SRIB10,SRIB9;
input SRIB8,SRIB7,SRIB6,SRIB5,SRIB4,SRIB3,SRIB2,SRIB1,SRIB0;
output SROA17,SROA16,SROA15,SROA14,SROA13,SROA12,SROA11,SROA10,SROA9;
output SROA8,SROA7,SROA6,SROA5,SROA4,SROA3,SROA2,SROA1,SROA0;
output SROB17,SROB16,SROB15,SROB14,SROB13,SROB12,SROB11,SROB10,SROB9;
output SROB8,SROB7,SROB6,SROB5,SROB4,SROB3,SROB2,SROB1,SROB0;
output P35,P34,P33,P32,P31,P30,P29,P28,P27,P26,P25,P24,P23,P22,P21,P20,P19,P18; 
output P17,P16,P15,P14,P13,P12,P11,P10,P9,P8,P7,P6,P5,P4,P3,P2,P1,P0; 

parameter REG_INPUTA_CLK = "NONE";
parameter REG_INPUTA_CE = "CE0";
parameter REG_INPUTA_RST = "RST0";
parameter REG_INPUTB_CLK = "NONE";
parameter REG_INPUTB_CE = "CE0";
parameter REG_INPUTB_RST = "RST0";
parameter REG_PIPELINE_CLK = "NONE";
parameter REG_PIPELINE_CE = "CE0";
parameter REG_PIPELINE_RST = "RST0";
parameter REG_OUTPUT_CLK = "NONE";
parameter REG_OUTPUT_CE = "CE0";
parameter REG_OUTPUT_RST = "RST0";
parameter REG_SIGNEDA_CLK = "NONE";
parameter REG_SIGNEDA_CE = "CE0";
parameter REG_SIGNEDA_RST = "RST0";
parameter REG_SIGNEDB_CLK = "NONE";
parameter REG_SIGNEDB_CE = "CE0";
parameter REG_SIGNEDB_RST = "RST0";
parameter GSR = "ENABLED";
endmodule

module MULT18X18ADDSUBB (
A017,A016,A015,A014,A013,A012,A011,A010,A09,A08,A07,A06,A05,A04,A03,A02,A01,A00,
A117,A116,A115,A114,A113,A112,A111,A110,A19,A18,A17,A16,A15,A14,A13,A12,A11,A10,B017,B016,B015,B014,B013,B012,B011,B010,B09,B08,B07,B06,B05,B04,B03,B02,B01,B00,
B117,B116,B115,B114,B113,B112,B111,B110,B19,B18,B17,B16,B15,B14,B13,B12,B11,B10,
SIGNEDA,SIGNEDB,SOURCEA1,SOURCEA0,SOURCEB1,SOURCEB0,ADDNSUB,
CE3,CE2,CE1,CE0,CLK3,CLK2,CLK1,CLK0,RST3,RST2,RST1,RST0,
SRIA17,SRIA16,SRIA15,SRIA14,SRIA13,SRIA12,SRIA11,SRIA10,SRIA9,SRIA8,SRIA7,SRIA6,SRIA5,SRIA4,SRIA3,SRIA2,SRIA1,SRIA0,
SRIB17,SRIB16,SRIB15,SRIB14,SRIB13,SRIB12,SRIB11,SRIB10,SRIB9,SRIB8,SRIB7,SRIB6,SRIB5,SRIB4,SRIB3,SRIB2,SRIB1,SRIB0,
SROA17,SROA16,SROA15,SROA14,SROA13,SROA12,SROA11,SROA10,SROA9,SROA8,SROA7,SROA6,SROA5,SROA4,SROA3,SROA2,SROA1,SROA0,
SROB17,SROB16,SROB15,SROB14,SROB13,SROB12,SROB11,SROB10,SROB9,SROB8,SROB7,SROB6,SROB5,SROB4,SROB3,SROB2,SROB1,SROB0,
SUM36,SUM35,SUM34,SUM33,SUM32,SUM31,SUM30,SUM29,SUM28,SUM27,SUM26,SUM25,SUM24,SUM23,SUM22,SUM21,SUM20,SUM19,SUM18,SUM17,SUM16,SUM15,SUM14,SUM13,SUM12,SUM11,SUM10,SUM9,SUM8,SUM7,SUM6,SUM5,SUM4,SUM3,SUM2,SUM1,SUM0);  //synthesis syn_black_box
input A017,A016,A015,A014,A013,A012,A011,A010,A09;
input A08,A07,A06,A05,A04,A03,A02,A01,A00;
input A117,A116,A115,A114,A113,A112,A111,A110,A19;
input A18,A17,A16,A15,A14,A13,A12,A11,A10;
input B017,B016,B015,B014,B013,B012,B011,B010,B09;
input B08,B07,B06,B05,B04,B03,B02,B01,B00;
input B117,B116,B115,B114,B113,B112,B111,B110,B19;
input B18,B17,B16,B15,B14,B13,B12,B11,B10;
input SIGNEDA,SIGNEDB,SOURCEA1,SOURCEA0,SOURCEB1,SOURCEB0,ADDNSUB;
input CE3,CE2,CE1,CE0,CLK3,CLK2,CLK1,CLK0,RST3,RST2,RST1,RST0;
input SRIA17,SRIA16,SRIA15,SRIA14,SRIA13,SRIA12,SRIA11,SRIA10,SRIA9;
input SRIA8,SRIA7,SRIA6,SRIA5,SRIA4,SRIA3,SRIA2,SRIA1,SRIA0;
input SRIB17,SRIB16,SRIB15,SRIB14,SRIB13,SRIB12,SRIB11,SRIB10,SRIB9;
input SRIB8,SRIB7,SRIB6,SRIB5,SRIB4,SRIB3,SRIB2,SRIB1,SRIB0;
output SROA17,SROA16,SROA15,SROA14,SROA13,SROA12,SROA11,SROA10,SROA9;
output SROA8,SROA7,SROA6,SROA5,SROA4,SROA3,SROA2,SROA1,SROA0;
output SROB17,SROB16,SROB15,SROB14,SROB13,SROB12,SROB11,SROB10,SROB9;
output SROB8,SROB7,SROB6,SROB5,SROB4,SROB3,SROB2,SROB1,SROB0;
output SUM36,SUM35,SUM34,SUM33,SUM32,SUM31,SUM30,SUM29,SUM28,SUM27,SUM26,SUM25,SUM24,SUM23,SUM22,SUM21,SUM20,SUM19,SUM18,SUM17,SUM16,SUM15,SUM14,SUM13,SUM12,SUM11,SUM10,SUM9,SUM8,SUM7,SUM6,SUM5,SUM4,SUM3,SUM2,SUM1,SUM0; 

parameter REG_INPUTA0_CLK = "NONE";
parameter REG_INPUTA0_CE = "CE0";
parameter REG_INPUTA0_RST = "RST0";
parameter REG_INPUTA1_CLK = "NONE";
parameter REG_INPUTA1_CE = "CE0";
parameter REG_INPUTA1_RST = "RST0";
parameter REG_INPUTB0_CLK = "NONE";
parameter REG_INPUTB0_CE = "CE0";
parameter REG_INPUTB0_RST = "RST0";
parameter REG_INPUTB1_CLK = "NONE";
parameter REG_INPUTB1_CE = "CE0";
parameter REG_INPUTB1_RST = "RST0";
parameter REG_PIPELINE0_CLK = "NONE";
parameter REG_PIPELINE0_CE = "CE0";
parameter REG_PIPELINE0_RST = "RST0";
parameter REG_PIPELINE1_CLK = "NONE";
parameter REG_PIPELINE1_CE = "CE0";
parameter REG_PIPELINE1_RST = "RST0";
parameter REG_OUTPUT_CLK = "NONE";
parameter REG_OUTPUT_CE = "CE0";
parameter REG_OUTPUT_RST = "RST0";
parameter REG_SIGNEDA_0_CLK = "NONE";
parameter REG_SIGNEDA_0_CE = "CE0";
parameter REG_SIGNEDA_0_RST = "RST0";
parameter REG_SIGNEDA_1_CLK = "NONE";
parameter REG_SIGNEDA_1_CE = "CE0";
parameter REG_SIGNEDA_1_RST = "RST0";
parameter REG_SIGNEDB_0_CLK = "NONE";
parameter REG_SIGNEDB_0_CE = "CE0";
parameter REG_SIGNEDB_0_RST = "RST0";
parameter REG_SIGNEDB_1_CLK = "NONE";
parameter REG_SIGNEDB_1_CE = "CE0";
parameter REG_SIGNEDB_1_RST = "RST0";
parameter REG_ADDNSUB_0_CLK = "NONE";
parameter REG_ADDNSUB_0_CE = "CE0";
parameter REG_ADDNSUB_0_RST = "RST0";
parameter REG_ADDNSUB_1_CLK = "NONE";
parameter REG_ADDNSUB_1_CE = "CE0";
parameter REG_ADDNSUB_1_RST = "RST0";
parameter GSR = "ENABLED";
endmodule

module MULT18X18ADDSUBSUMB (
A017,A016,A015,A014,A013,A012,A011,A010,A09,A08,A07,A06,A05,A04,A03,A02,A01,A00,
A117,A116,A115,A114,A113,A112,A111,A110,A19,A18,A17,A16,A15,A14,A13,A12,A11,A10,
A217,A216,A215,A214,A213,A212,A211,A210,A29,A28,A27,A26,A25,A24,A23,A22,A21,A20,
A317,A316,A315,A314,A313,A312,A311,A310,A39,A38,A37,A36,A35,A34,A33,A32,A31,A30,
B017,B016,B015,B014,B013,B012,B011,B010,B09,B08,B07,B06,B05,B04,B03,B02,B01,B00,
B117,B116,B115,B114,B113,B112,B111,B110,B19,B18,B17,B16,B15,B14,B13,B12,B11,B10,
B217,B216,B215,B214,B213,B212,B211,B210,B29,B28,B27,B26,B25,B24,B23,B22,B21,B20,
B317,B316,B315,B314,B313,B312,B311,B310,B39,B38,B37,B36,B35,B34,B33,B32,B31,B30,
SIGNEDA,SIGNEDB,ADDNSUB3,ADDNSUB1,SOURCEA3,SOURCEA2,SOURCEA1,SOURCEA0,
SOURCEB3,SOURCEB2,SOURCEB1,SOURCEB0,
CE3,CE2,CE1,CE0,CLK3,CLK2,CLK1,CLK0,RST3,RST2,RST1,RST0,
SRIA17,SRIA16,SRIA15,SRIA14,SRIA13,SRIA12,SRIA11,SRIA10,SRIA9,SRIA8,SRIA7,SRIA6,SRIA5,SRIA4,SRIA3,SRIA2,SRIA1,SRIA0,
SRIB17,SRIB16,SRIB15,SRIB14,SRIB13,SRIB12,SRIB11,SRIB10,SRIB9,SRIB8,SRIB7,SRIB6,SRIB5,SRIB4,SRIB3,SRIB2,SRIB1,SRIB0,
SROA17,SROA16,SROA15,SROA14,SROA13,SROA12,SROA11,SROA10,SROA9,SROA8,SROA7,SROA6,SROA5,SROA4,SROA3,SROA2,SROA1,SROA0,
SROB17,SROB16,SROB15,SROB14,SROB13,SROB12,SROB11,SROB10,SROB9,SROB8,SROB7,SROB6, SROB5,SROB4,SROB3,SROB2,SROB1,SROB0,
SUM37,SUM36,SUM35,SUM34,SUM33,SUM32,SUM31,SUM30,SUM29,SUM28,SUM27,SUM26,SUM25,SUM24,SUM23,SUM22,SUM21,SUM20,SUM19,SUM18,SUM17,SUM16,SUM15,SUM14,SUM13,SUM12,SUM11,SUM10,SUM9,SUM8,SUM7,SUM6,SUM5,SUM4,SUM3,SUM2,SUM1,SUM0);  //synthesis syn_black_box
input A017,A016,A015,A014,A013,A012,A011,A010,A09;
input A08,A07,A06,A05,A04,A03,A02,A01,A00;
input A117,A116,A115,A114,A113,A112,A111,A110,A19;
input A18,A17,A16,A15,A14,A13,A12,A11,A10;
input A217,A216,A215,A214,A213,A212,A211,A210,A29;
input A28,A27,A26,A25,A24,A23,A22,A21,A20;
input A317,A316,A315,A314,A313,A312,A311,A310,A39;
input A38,A37,A36,A35,A34,A33,A32,A31,A30;
input B017,B016,B015,B014,B013,B012,B011,B010,B09;
input B08,B07,B06,B05,B04,B03,B02,B01,B00;
input B117,B116,B115,B114,B113,B112,B111,B110,B19;
input B18,B17,B16,B15,B14,B13,B12,B11,B10;
input B217,B216,B215,B214,B213,B212,B211,B210,B29;
input B28,B27,B26,B25,B24,B23,B22,B21,B20;
input B317,B316,B315,B314,B313,B312,B311,B310,B39;
input B38,B37,B36,B35,B34,B33,B32,B31,B30;
input SIGNEDA,SIGNEDB,ADDNSUB3,ADDNSUB1;
input SOURCEA3,SOURCEA2,SOURCEA1,SOURCEA0,SOURCEB3,SOURCEB2,SOURCEB1,SOURCEB0;
input CE3,CE2,CE1,CE0,CLK3,CLK2,CLK1,CLK0,RST3,RST2,RST1,RST0;
input SRIA17,SRIA16,SRIA15,SRIA14,SRIA13,SRIA12,SRIA11,SRIA10,SRIA9;
input SRIA8,SRIA7,SRIA6,SRIA5,SRIA4,SRIA3,SRIA2,SRIA1,SRIA0;
input SRIB17,SRIB16,SRIB15,SRIB14,SRIB13,SRIB12,SRIB11,SRIB10,SRIB9;
input SRIB8,SRIB7,SRIB6,SRIB5,SRIB4,SRIB3,SRIB2,SRIB1,SRIB0;
output SROA17,SROA16,SROA15,SROA14,SROA13,SROA12,SROA11,SROA10,SROA9;
output SROA8,SROA7,SROA6,SROA5,SROA4,SROA3,SROA2,SROA1,SROA0;
output SROB17,SROB16,SROB15,SROB14,SROB13,SROB12,SROB11,SROB10,SROB9;
output SROB8,SROB7,SROB6,SROB5,SROB4,SROB3,SROB2,SROB1,SROB0;
output SUM37,SUM36,SUM35,SUM34,SUM33,SUM32,SUM31,SUM30,SUM29,SUM28,SUM27,SUM26,SUM25,SUM24,SUM23,SUM22,SUM21,SUM20,SUM19,SUM18,SUM17,SUM16,SUM15,SUM14,SUM13,SUM12,SUM11,SUM10,SUM9,SUM8,SUM7,SUM6,SUM5,SUM4,SUM3,SUM2,SUM1,SUM0; 

parameter REG_INPUTA0_CLK = "NONE";
parameter REG_INPUTA0_CE = "CE0";
parameter REG_INPUTA0_RST = "RST0";
parameter REG_INPUTA1_CLK = "NONE";
parameter REG_INPUTA1_CE = "CE0";
parameter REG_INPUTA1_RST = "RST0";
parameter REG_INPUTA2_CLK = "NONE";
parameter REG_INPUTA2_CE = "CE0";
parameter REG_INPUTA2_RST = "RST0";
parameter REG_INPUTA3_CLK = "NONE";
parameter REG_INPUTA3_CE = "CE0";
parameter REG_INPUTA3_RST = "RST0";
parameter REG_INPUTB0_CLK = "NONE";
parameter REG_INPUTB0_CE = "CE0";
parameter REG_INPUTB0_RST = "RST0";
parameter REG_INPUTB1_CLK = "NONE";
parameter REG_INPUTB1_CE = "CE0";
parameter REG_INPUTB1_RST = "RST0";
parameter REG_INPUTB2_CLK = "NONE";
parameter REG_INPUTB2_CE = "CE0";
parameter REG_INPUTB2_RST = "RST0";
parameter REG_INPUTB3_CLK = "NONE";
parameter REG_INPUTB3_CE = "CE0";
parameter REG_INPUTB3_RST = "RST0";
parameter REG_PIPELINE0_CLK = "NONE";
parameter REG_PIPELINE0_CE = "CE0";
parameter REG_PIPELINE0_RST = "RST0";
parameter REG_PIPELINE1_CLK = "NONE";
parameter REG_PIPELINE1_CE = "CE0";
parameter REG_PIPELINE1_RST = "RST0";
parameter REG_PIPELINE2_CLK = "NONE";
parameter REG_PIPELINE2_CE = "CE0";
parameter REG_PIPELINE2_RST = "RST0";
parameter REG_PIPELINE3_CLK = "NONE";
parameter REG_PIPELINE3_CE = "CE0";
parameter REG_PIPELINE3_RST = "RST0";
parameter REG_OUTPUT_CLK = "NONE";
parameter REG_OUTPUT_CE = "CE0";
parameter REG_OUTPUT_RST = "RST0";
parameter REG_SIGNEDA_0_CLK = "NONE";
parameter REG_SIGNEDA_0_CE = "CE0";
parameter REG_SIGNEDA_0_RST = "RST0";
parameter REG_SIGNEDA_1_CLK = "NONE";
parameter REG_SIGNEDA_1_CE = "CE0";
parameter REG_SIGNEDA_1_RST = "RST0";
parameter REG_SIGNEDB_0_CLK = "NONE";
parameter REG_SIGNEDB_0_CE = "CE0";
parameter REG_SIGNEDB_0_RST = "RST0";
parameter REG_SIGNEDB_1_CLK = "NONE";
parameter REG_SIGNEDB_1_CE = "CE0";
parameter REG_SIGNEDB_1_RST = "RST0";
parameter REG_ADDNSUB1_0_CLK = "NONE";
parameter REG_ADDNSUB1_0_CE = "CE0";
parameter REG_ADDNSUB1_0_RST = "RST0";
parameter REG_ADDNSUB1_1_CLK = "NONE";
parameter REG_ADDNSUB1_1_CE = "CE0";
parameter REG_ADDNSUB1_1_RST = "RST0";
parameter REG_ADDNSUB3_0_CLK = "NONE";
parameter REG_ADDNSUB3_0_CE = "CE0";
parameter REG_ADDNSUB3_0_RST = "RST0";
parameter REG_ADDNSUB3_1_CLK = "NONE";
parameter REG_ADDNSUB3_1_CE = "CE0";
parameter REG_ADDNSUB3_1_RST = "RST0";
parameter GSR = "ENABLED";
endmodule

module MULT18X18MACB (
A17,A16,A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0,
B17,B16,B15,B14,B13,B12,B11,B10,B9,B8,B7,B6,B5,B4,B3,B2,B1,B0,
ADDNSUB,SIGNEDA,SIGNEDB,ACCUMSLOAD,SOURCEA,SOURCEB,
CE3,CE2,CE1,CE0,CLK3,CLK2,CLK1,CLK0,RST3,RST2,RST1,RST0,
LD51,LD50,LD49,LD48,LD47,LD46,LD45,LD44,LD43,LD42,LD41,LD40,LD39,LD38,LD37,LD36,LD35,LD34,LD33,LD32,LD31,LD30,LD29,LD28,LD27,LD26,LD25,LD24,LD23,LD22,LD21,LD20,LD19,LD18,LD17,LD16,LD15,LD14,LD13,LD12,LD11,LD10,LD9,LD8,LD7,LD6,LD5,LD4,LD3,LD2,LD1,LD0,
SRIA17,SRIA16,SRIA15,SRIA14,SRIA13,SRIA12,SRIA11,SRIA10,SRIA9,SRIA8,SRIA7,SRIA6,SRIA5,SRIA4,SRIA3,SRIA2,SRIA1,SRIA0,
SRIB17,SRIB16,SRIB15,SRIB14,SRIB13,SRIB12,SRIB11,SRIB10,SRIB9,SRIB8,SRIB7,SRIB6,SRIB5,SRIB4,SRIB3,SRIB2,SRIB1,SRIB0,
SROA17,SROA16,SROA15,SROA14,SROA13,SROA12,SROA11,SROA10,SROA9,SROA8,SROA7,SROA6,SROA5,SROA4,SROA3,SROA2,SROA1,SROA0,
SROB17,SROB16,SROB15,SROB14,SROB13,SROB12,SROB11,SROB10,SROB9,SROB8,SROB7,SROB6,SROB5,SROB4,SROB3,SROB2,SROB1,SROB0,
ACCUM51,ACCUM50,ACCUM49,ACCUM48,ACCUM47,ACCUM46,ACCUM45,ACCUM44,ACCUM43,ACCUM42,ACCUM41,ACCUM40,ACCUM39,ACCUM38,ACCUM37,ACCUM36,ACCUM35,ACCUM34,ACCUM33,ACCUM32,ACCUM31,ACCUM30,ACCUM29,ACCUM28,ACCUM27,ACCUM26,ACCUM25,ACCUM24,ACCUM23,ACCUM22,
ACCUM21,ACCUM20,ACCUM19,ACCUM18,ACCUM17,ACCUM16,ACCUM15,ACCUM14,ACCUM13,ACCUM12,ACCUM11,ACCUM10,ACCUM9,ACCUM8,ACCUM7,ACCUM6,ACCUM5,ACCUM4,ACCUM3,ACCUM2,ACCUM1,ACCUM0,OVERFLOW); //synthesis syn_black_box
input A17,A16,A15,A14,A13,A12,A11,A10,A9;
input A8,A7,A6,A5,A4,A3,A2,A1,A0;
input B17,B16,B15,B14,B13,B12,B11,B10,B9;
input B8,B7,B6,B5,B4,B3,B2,B1,B0;
input LD51, LD50, LD49, LD48, LD47, LD46, LD45, LD44, LD43, LD42, LD41, LD40;
input LD39, LD38, LD37, LD36, LD35, LD34, LD33, LD32, LD31, LD30;
input LD29, LD28, LD27, LD26, LD25, LD24, LD23, LD22, LD21, LD20;
input LD19, LD18, LD17, LD16, LD15, LD14, LD13, LD12, LD11, LD10;
input LD9, LD8, LD7, LD6, LD5, LD4, LD3, LD2, LD1, LD0;
input ADDNSUB, SIGNEDA,SIGNEDB,ACCUMSLOAD,SOURCEA, SOURCEB;
input CE3,CE2,CE1,CE0,CLK3,CLK2,CLK1,CLK0,RST3,RST2,RST1,RST0;
input SRIA17,SRIA16,SRIA15,SRIA14,SRIA13,SRIA12,SRIA11,SRIA10,SRIA9;
input SRIA8,SRIA7,SRIA6,SRIA5,SRIA4,SRIA3,SRIA2,SRIA1,SRIA0;
input SRIB17,SRIB16,SRIB15,SRIB14,SRIB13,SRIB12,SRIB11,SRIB10,SRIB9;
input SRIB8,SRIB7,SRIB6,SRIB5,SRIB4,SRIB3,SRIB2,SRIB1,SRIB0;
output SROA17,SROA16,SROA15,SROA14,SROA13,SROA12,SROA11,SROA10,SROA9;
output SROA8,SROA7,SROA6,SROA5,SROA4,SROA3,SROA2,SROA1,SROA0;
output SROB17,SROB16,SROB15,SROB14,SROB13,SROB12,SROB11,SROB10,SROB9;
output SROB8,SROB7,SROB6,SROB5,SROB4,SROB3,SROB2,SROB1,SROB0;
output ACCUM51,ACCUM50,ACCUM49,ACCUM48,ACCUM47,ACCUM46,ACCUM45,ACCUM44,ACCUM43,ACCUM42,ACCUM41,ACCUM40,ACCUM39,ACCUM38,ACCUM37,ACCUM36,ACCUM35,ACCUM34,ACCUM33,ACCUM32,ACCUM31,ACCUM30,ACCUM29,ACCUM28,ACCUM27,ACCUM26,ACCUM25,ACCUM24,ACCUM23,ACCUM22,ACCUM21,ACCUM20,ACCUM19,ACCUM18,ACCUM17,ACCUM16,ACCUM15,ACCUM14,ACCUM13,ACCUM12,ACCUM11,ACCUM10,ACCUM9,ACCUM8,ACCUM7,ACCUM6,ACCUM5,ACCUM4,ACCUM3,ACCUM2,ACCUM1,ACCUM0,OVERFLOW; 

parameter REG_INPUTA_CLK = "NONE";
parameter REG_INPUTA_CE = "CE0";
parameter REG_INPUTA_RST = "RST0";
parameter REG_INPUTB_CLK = "NONE";
parameter REG_INPUTB_CE = "CE0";
parameter REG_INPUTB_RST = "RST0";
parameter REG_PIPELINE_CLK = "NONE";
parameter REG_PIPELINE_CE = "CE0";
parameter REG_PIPELINE_RST = "RST0";
parameter REG_OUTPUT_CLK = "NONE";
parameter REG_OUTPUT_CE = "CE0";
parameter REG_OUTPUT_RST = "RST0";
parameter REG_SIGNEDA_0_CLK = "NONE";
parameter REG_SIGNEDA_0_CE = "CE0";
parameter REG_SIGNEDA_0_RST = "RST0";
parameter REG_SIGNEDA_1_CLK = "NONE";
parameter REG_SIGNEDA_1_CE = "CE0";
parameter REG_SIGNEDA_1_RST = "RST0";
parameter REG_SIGNEDB_0_CLK = "NONE";
parameter REG_SIGNEDB_0_CE = "CE0";
parameter REG_SIGNEDB_0_RST = "RST0";
parameter REG_SIGNEDB_1_CLK = "NONE";
parameter REG_SIGNEDB_1_CE = "CE0";
parameter REG_SIGNEDB_1_RST = "RST0";
parameter REG_ACCUMSLOAD_0_CLK = "NONE";
parameter REG_ACCUMSLOAD_0_CE = "CE0";
parameter REG_ACCUMSLOAD_0_RST = "RST0";
parameter REG_ACCUMSLOAD_1_CLK = "NONE";
parameter REG_ACCUMSLOAD_1_CE = "CE0";
parameter REG_ACCUMSLOAD_1_RST = "RST0";
parameter REG_ADDNSUB_0_CLK = "NONE";
parameter REG_ADDNSUB_0_CE = "CE0";
parameter REG_ADDNSUB_0_RST = "RST0";
parameter REG_ADDNSUB_1_CLK = "NONE";
parameter REG_ADDNSUB_1_CE = "CE0";
parameter REG_ADDNSUB_1_RST = "RST0";
parameter GSR = "ENABLED";
endmodule

module MULT36X36B ( A35,A34,A33,A32,A31,A30,A29,A28,A27,A26,A25,A24,A23,A22,A21,A20,A19,A18,A17,A16,A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0,
B35,B34,B33,B32,B31,B30,B29,B28,B27,B26,B25,B24,B23,B22,B21,B20,B19,B18,B17,B16,B15,B14,B13,B12,B11,B10,B9,B8,B7,B6,B5,B4,B3,B2,B1,B0,
SIGNEDA,SIGNEDB,CE3,CE2,CE1,CE0,CLK3,CLK2,CLK1,CLK0,RST3,RST2,RST1,RST0,
P71,P70,P69,P68,P67,P66,P65,P64,P63,P62,P61,P60,P59,P58,P57,P56,P55,P54,P53,P52,P51,P50,P49,P48,P47,P46,P45,P44,P43,P42,P41,P40,P39,P38,P37,P36,P35,P34,P33,P32,P31,P30,P29,P28,P27,P26,P25,P24,P23,P22,P21,P20,P19,P18,P17,P16,P15,P14,P13,P12,P11,P10,P9,P8,P7,P6,P5,P4,P3,P2,P1,P0); //synthesis syn_black_box
input A35,A34,A33,A32,A31,A30,A29,A28,A27,A26,A25,A24,A23,A22,A21,A20,A19,A18;
input A17,A16,A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0;
input B35,B34,B33,B32,B31,B30,B29,B28,B27,B26,B25,B24,B23,B22,B21,B20,B19,B18;
input B17,B16,B15,B14,B13,B12,B11,B10,B9,B8,B7,B6,B5,B4,B3,B2,B1,B0;
input SIGNEDA,SIGNEDB;
input CE0,CE1,CE2,CE3,CLK0,CLK1,CLK2,CLK3,RST0,RST1,RST2,RST3;
output P71,P70,P69,P68,P67,P66,P65,P64,P63,P62,P61,P60,P59,P58,P57,P56,P55,P54; 
output P53,P52,P51,P50,P49,P48,P47,P46,P45,P44,P43,P42,P41,P40,P39,P38,P37,P36; 
output P35,P34,P33,P32,P31,P30,P29,P28,P27,P26,P25,P24,P23,P22,P21,P20,P19,P18; 
output P17,P16,P15,P14,P13,P12,P11,P10,P9,P8,P7,P6,P5,P4,P3,P2,P1,P0; 

parameter REG_INPUTA_CLK = "NONE";
parameter REG_INPUTA_CE = "CE0";
parameter REG_INPUTA_RST = "RST0";
parameter REG_INPUTB_CLK = "NONE";
parameter REG_INPUTB_CE = "CE0";
parameter REG_INPUTB_RST = "RST0";
parameter REG_PIPELINE_CLK = "NONE";
parameter REG_PIPELINE_CE = "CE0";
parameter REG_PIPELINE_RST = "RST0";
parameter REG_OUTPUT_CLK = "NONE";
parameter REG_OUTPUT_CE = "CE0";
parameter REG_OUTPUT_RST = "RST0";
parameter REG_SIGNEDA_0_CLK = "NONE";
parameter REG_SIGNEDA_0_CE = "CE0";
parameter REG_SIGNEDA_0_RST = "RST0";
parameter REG_SIGNEDA_1_CLK = "NONE";
parameter REG_SIGNEDA_1_CE = "CE0";
parameter REG_SIGNEDA_1_RST = "RST0";
parameter REG_SIGNEDB_0_CLK = "NONE";
parameter REG_SIGNEDB_0_CE = "CE0";
parameter REG_SIGNEDB_0_RST = "RST0";
parameter REG_SIGNEDB_1_CLK = "NONE";
parameter REG_SIGNEDB_1_CE = "CE0";
parameter REG_SIGNEDB_1_RST = "RST0";
parameter GSR = "ENABLED";
endmodule

module PCSD (
SCISELCH0,
SCIENCH0,
FF_RXI_CLK_0,
FF_TXI_CLK_0,
FF_EBRD_CLK_0,
FF_RX_F_CLK_0, 
FF_RX_H_CLK_0, 
FF_TX_D_0_0, 
FF_TX_D_0_1, 
FF_TX_D_0_2, 
FF_TX_D_0_3, 
FF_TX_D_0_4, 
FF_TX_D_0_5,
FF_TX_D_0_6, 
FF_TX_D_0_7, 
FF_TX_D_0_8, 
FF_TX_D_0_9, 
FF_TX_D_0_10, 
FF_TX_D_0_11,
FF_TX_D_0_12, 
FF_TX_D_0_13, 
FF_TX_D_0_14, 
FF_TX_D_0_15, 
FF_TX_D_0_16, 
FF_TX_D_0_17,
FF_TX_D_0_18, 
FF_TX_D_0_19, 
FF_TX_D_0_20, 
FF_TX_D_0_21, 
FF_TX_D_0_22, 
FF_TX_D_0_23,
FF_RX_D_0_0, 
FF_RX_D_0_1, 
FF_RX_D_0_2, 
FF_RX_D_0_3, 
FF_RX_D_0_4, 
FF_RX_D_0_5,
FF_RX_D_0_6, 
FF_RX_D_0_7, 
FF_RX_D_0_8, 
FF_RX_D_0_9, 
FF_RX_D_0_10, 
FF_RX_D_0_11,
FF_RX_D_0_12, 
FF_RX_D_0_13, 
FF_RX_D_0_14, 
FF_RX_D_0_15, 
FF_RX_D_0_16, 
FF_RX_D_0_17,
FF_RX_D_0_18, 
FF_RX_D_0_19, 
FF_RX_D_0_20, 
FF_RX_D_0_21, 
FF_RX_D_0_22, 
FF_RX_D_0_23,
FFC_RRST_0, 
FFC_SIGNAL_DETECT_0, 
FFC_SB_PFIFO_LP_0, 
FFC_SB_INV_RX_0, 
FFC_PFIFO_CLR_0, 
FFC_PCIE_CT_0,
FFC_PCI_DET_EN_0, 
FFC_FB_LOOPBACK_0, 
FFC_ENABLE_CGALIGN_0, 
FFC_EI_EN_0, 
FFC_LANE_TX_RST_0, 
FFC_LANE_RX_RST_0,
FFC_TXPWDNB_0, 
FFC_RXPWDNB_0, 
FFS_RLOS_LO_0, 
FFS_RLOS_HI_0, 
FFS_PCIE_DONE_0, 
FFS_PCIE_CON_0, 
FFS_LS_SYNC_STATUS_0, 
FFS_CC_UNDERRUN_0, 
FFS_CC_OVERRUN_0,
FFS_RLOL_0, 
FFS_RXFBFIFO_ERROR_0, 
FFS_TXFBFIFO_ERROR_0, 
SCISELCH1, 
SCIENCH1, 
FF_RXI_CLK_1, 
FF_TXI_CLK_1,
FF_EBRD_CLK_1, 
FF_RX_F_CLK_1, 
FF_RX_H_CLK_1,
FF_TX_D_1_0, 
FF_TX_D_1_1, 
FF_TX_D_1_2, 
FF_TX_D_1_3, 
FF_TX_D_1_4,
FF_TX_D_1_5, 
FF_TX_D_1_6, 
FF_TX_D_1_7, 
FF_TX_D_1_8, 
FF_TX_D_1_9, 
FF_TX_D_1_10,
FF_TX_D_1_11, 
FF_TX_D_1_12, 
FF_TX_D_1_13, 
FF_TX_D_1_14, 
FF_TX_D_1_15, 
FF_TX_D_1_16,
FF_TX_D_1_17, 
FF_TX_D_1_18, 
FF_TX_D_1_19, 
FF_TX_D_1_20, 
FF_TX_D_1_21, 
FF_TX_D_1_22,
FF_TX_D_1_23, 
FF_RX_D_1_0, 
FF_RX_D_1_1, 
FF_RX_D_1_2, 
FF_RX_D_1_3,
FF_RX_D_1_4,
FF_RX_D_1_5, 
FF_RX_D_1_6, 
FF_RX_D_1_7, 
FF_RX_D_1_8, 
FF_RX_D_1_9, 
FF_RX_D_1_10,
FF_RX_D_1_11, 
FF_RX_D_1_12, 
FF_RX_D_1_13, 
FF_RX_D_1_14, 
FF_RX_D_1_15, 
FF_RX_D_1_16,
FF_RX_D_1_17, 
FF_RX_D_1_18, 
FF_RX_D_1_19, 
FF_RX_D_1_20, 
FF_RX_D_1_21, 
FF_RX_D_1_22,
FF_RX_D_1_23, 
FFC_RRST_1, 
FFC_SIGNAL_DETECT_1, 
FFC_SB_PFIFO_LP_1, 
FFC_SB_INV_RX_1, 
FFC_PFIFO_CLR_1,
FFC_PCIE_CT_1, 
FFC_PCI_DET_EN_1,
FFC_FB_LOOPBACK_1, 
FFC_ENABLE_CGALIGN_1, 
FFC_EI_EN_1, 
FFC_LANE_TX_RST_1,
FFC_LANE_RX_RST_1, 
FFC_TXPWDNB_1, 
FFC_RXPWDNB_1, 
FFS_RLOS_LO_1, 
FFS_RLOS_HI_1, 
FFS_PCIE_DONE_1, 
FFS_PCIE_CON_1, 
FFS_LS_SYNC_STATUS_1, 
FFS_CC_UNDERRUN_1,
FFS_CC_OVERRUN_1, 
FFS_RLOL_1, 
FFS_RXFBFIFO_ERROR_1, 
FFS_TXFBFIFO_ERROR_1, 
SCISELCH2, 
SCIENCH2, 
FF_RXI_CLK_2,
FF_TXI_CLK_2, 
FF_EBRD_CLK_2, 
FF_RX_F_CLK_2,
FF_RX_H_CLK_2, 
FF_TX_D_2_0, 
FF_TX_D_2_1, 
FF_TX_D_2_2, 
FF_TX_D_2_3,
FF_TX_D_2_4, 
FF_TX_D_2_5, 
FF_TX_D_2_6, 
FF_TX_D_2_7, 
FF_TX_D_2_8, 
FF_TX_D_2_9,
FF_TX_D_2_10, 
FF_TX_D_2_11, 
FF_TX_D_2_12, 
FF_TX_D_2_13, 
FF_TX_D_2_14, 
FF_TX_D_2_15,
FF_TX_D_2_16, 
FF_TX_D_2_17, 
FF_TX_D_2_18, 
FF_TX_D_2_19, 
FF_TX_D_2_20, 
FF_TX_D_2_21,
FF_TX_D_2_22, 
FF_TX_D_2_23, 
FF_RX_D_2_0, 
FF_RX_D_2_1, 
FF_RX_D_2_2, 
FF_RX_D_2_3,
FF_RX_D_2_4, 
FF_RX_D_2_5, 
FF_RX_D_2_6, 
FF_RX_D_2_7, 
FF_RX_D_2_8, 
FF_RX_D_2_9,
FF_RX_D_2_10, 
FF_RX_D_2_11, 
FF_RX_D_2_12, 
FF_RX_D_2_13, 
FF_RX_D_2_14, 
FF_RX_D_2_15,
FF_RX_D_2_16, 
FF_RX_D_2_17, 
FF_RX_D_2_18, 
FF_RX_D_2_19, 
FF_RX_D_2_20, 
FF_RX_D_2_21,
FF_RX_D_2_22, 
FF_RX_D_2_23, 
FFC_RRST_2, 
FFC_SIGNAL_DETECT_2, 
FFC_SB_PFIFO_LP_2, 
FFC_SB_INV_RX_2,
FFC_PFIFO_CLR_2, 
FFC_PCIE_CT_2, 
FFC_PCI_DET_EN_2, 
FFC_FB_LOOPBACK_2, 
FFC_ENABLE_CGALIGN_2, 
FFC_EI_EN_2,
FFC_LANE_TX_RST_2, 
FFC_LANE_RX_RST_2, 
FFC_TXPWDNB_2, 
FFC_RXPWDNB_2, 
FFS_RLOS_LO_2, 
FFS_RLOS_HI_2, 
FFS_PCIE_DONE_2, 
FFS_PCIE_CON_2, 
FFS_LS_SYNC_STATUS_2,
FFS_CC_UNDERRUN_2, 
FFS_CC_OVERRUN_2, 
FFS_RLOL_2, 
FFS_RXFBFIFO_ERROR_2, 
FFS_TXFBFIFO_ERROR_2, 
SCISELCH3, 
SCIENCH3,
FF_RXI_CLK_3, 
FF_TXI_CLK_3, 
FF_EBRD_CLK_3, 
FF_RX_F_CLK_3, 
FF_RX_H_CLK_3, 
FF_TX_D_3_0, 
FF_TX_D_3_1, 
FF_TX_D_3_2,
FF_TX_D_3_3, 
FF_TX_D_3_4, 
FF_TX_D_3_5, 
FF_TX_D_3_6, 
FF_TX_D_3_7, 
FF_TX_D_3_8,
FF_TX_D_3_9, 
FF_TX_D_3_10, 
FF_TX_D_3_11, 
FF_TX_D_3_12, 
FF_TX_D_3_13, 
FF_TX_D_3_14,
FF_TX_D_3_15, 
FF_TX_D_3_16, 
FF_TX_D_3_17, 
FF_TX_D_3_18, 
FF_TX_D_3_19, 
FF_TX_D_3_20,
FF_TX_D_3_21, 
FF_TX_D_3_22, 
FF_TX_D_3_23, 
FF_RX_D_3_0, 
FF_RX_D_3_1, 
FF_RX_D_3_2,
FF_RX_D_3_3, 
FF_RX_D_3_4, 
FF_RX_D_3_5, 
FF_RX_D_3_6, 
FF_RX_D_3_7, 
FF_RX_D_3_8,
FF_RX_D_3_9, 
FF_RX_D_3_10, 
FF_RX_D_3_11, 
FF_RX_D_3_12, 
FF_RX_D_3_13, 
FF_RX_D_3_14,
FF_RX_D_3_15, 
FF_RX_D_3_16, 
FF_RX_D_3_17, 
FF_RX_D_3_18, 
FF_RX_D_3_19, 
FF_RX_D_3_20,
FF_RX_D_3_21, 
FF_RX_D_3_22, 
FF_RX_D_3_23, 
FFC_RRST_3, 
FFC_SIGNAL_DETECT_3, 
FFC_SB_PFIFO_LP_3,
FFC_SB_INV_RX_3, 
FFC_PFIFO_CLR_3, 
FFC_PCIE_CT_3, 
FFC_PCI_DET_EN_3, 
FFC_FB_LOOPBACK_3, 
FFC_ENABLE_CGALIGN_3,
FFC_EI_EN_3, 
FFC_LANE_TX_RST_3, 
FFC_LANE_RX_RST_3, 
FFC_TXPWDNB_3, 
FFC_RXPWDNB_3, 
FFS_RLOS_LO_3, 
FFS_RLOS_HI_3, 
FFS_PCIE_DONE_3, 
FFS_PCIE_CON_3,
FFS_LS_SYNC_STATUS_3, 
FFS_CC_UNDERRUN_3, 
FFS_CC_OVERRUN_3, 
FFS_RLOL_3, 
FFS_RXFBFIFO_ERROR_3, 
FFS_TXFBFIFO_ERROR_3,
SCIWDATA0,
SCIWDATA1, 
SCIWDATA2, 
SCIWDATA3, 
SCIWDATA4, 
SCIWDATA5, 
SCIWDATA6,
SCIWDATA7, 
SCIADDR0, 
SCIADDR1, 
SCIADDR2, 
SCIADDR3, 
SCIADDR4,
SCIADDR5, 
SCIENAUX, 
SCISELAUX, 
SCIRD, 
SCIWSTN, 
SCIRDATA0, 
SCIRDATA1, 
SCIRDATA2, 
SCIRDATA3, 
SCIRDATA4,
SCIRDATA5, 
SCIRDATA6, 
SCIRDATA7, 
SCIINT, 
FFC_CK_CORE_RX_0,
FFC_CK_CORE_RX_1,
FFC_CK_CORE_RX_2,
FFC_CK_CORE_RX_3,
FFC_CK_CORE_TX, 
FFC_MACRO_RST, 
FFC_QUAD_RST, 
FFC_TRST, 
FF_TX_F_CLK_0, 
FF_TX_F_CLK_1, 
FF_TX_F_CLK_2, 
FF_TX_F_CLK_3, 
FF_TX_H_CLK_0,
FF_TX_H_CLK_1, 
FF_TX_H_CLK_2, 
FF_TX_H_CLK_3,
CYAWSTN, 
REFCK2CORE, 
FFS_PLOL, 
CIN0,
CIN1, 
CIN2, 
CIN3, 
CIN4, 
CIN5, 
CIN6,
CIN7, 
CIN8, 
CIN9, 
CIN10,
CIN11,
COUT0, 
COUT1, 
COUT2,
COUT3, 
COUT4, 
COUT5, 
COUT6, 
COUT7, 
COUT8,
COUT9, 
COUT10, 
COUT11, 
COUT12, 
COUT13, 
COUT14,
COUT15, 
COUT16, 
COUT17, 
COUT18, 
COUT19, 
HDINP0,
HDINP1, 
HDINP2, 
HDINP3, 
HDINN0, 
HDINN1, 
HDINN2,
HDINN3, 
HDOUTP0,
HDOUTP1, 
HDOUTP2, 
HDOUTP3, 
HDOUTN0, 
HDOUTN1, 
HDOUTN2,
HDOUTN3, 
REFCLKP, 
REFCLKN, 
FFC_SYNC_TOGGLE, 
FFS_SKP_ADDED_0, 
FFS_SKP_ADDED_1,
FFS_SKP_ADDED_2, 
FFS_SKP_ADDED_3, 
FFS_SKP_DELETED_0, 
FFS_SKP_DELETED_1,
FFS_SKP_DELETED_2, 
FFS_SKP_DELETED_3, 
PCIE_TXDETRX_PR2TLB_0, 
PCIE_TXDETRX_PR2TLB_1,
PCIE_TXDETRX_PR2TLB_2, 
PCIE_TXDETRX_PR2TLB_3, 
PCIE_TXCOMPLIANCE_0, 
PCIE_TXCOMPLIANCE_1,
PCIE_TXCOMPLIANCE_2, 
PCIE_TXCOMPLIANCE_3, 
PCIE_RXPOLARITY_0, 
PCIE_RXPOLARITY_1,
PCIE_RXPOLARITY_2, 
PCIE_RXPOLARITY_3, 
PCIE_POWERDOWN_0_0, 
PCIE_POWERDOWN_0_1,
PCIE_POWERDOWN_1_0, 
PCIE_POWERDOWN_1_1, 
PCIE_POWERDOWN_2_0, 
PCIE_POWERDOWN_2_1,
PCIE_POWERDOWN_3_0, 
PCIE_POWERDOWN_3_1, 
PCIE_PHYSTATUS_0, 
PCIE_PHYSTATUS_1,
PCIE_PHYSTATUS_2, 
PCIE_PHYSTATUS_3, 
PCIE_RXVALID_0, 
PCIE_RXVALID_1,
PCIE_RXVALID_2, 
PCIE_RXVALID_3, 
FFC_RATE_MODE_TX_0, 
FFC_RATE_MODE_TX_1,
FFC_RATE_MODE_TX_2, 
FFC_RATE_MODE_TX_3, 
FFC_RATE_MODE_RX_0, 
FFC_RATE_MODE_RX_1,
FFC_RATE_MODE_RX_2, 
FFC_RATE_MODE_RX_3, 
FFC_DIV11_MODE_RX_0, 
FFC_DIV11_MODE_RX_1, 
FFC_DIV11_MODE_RX_2, 
FFC_DIV11_MODE_RX_3, 
FFC_DIV11_MODE_TX_0, 
FFC_DIV11_MODE_TX_1, 
FFC_DIV11_MODE_TX_2, 
FFC_DIV11_MODE_TX_3, 
FFS_CDR_TRAIN_DONE_0, 
FFS_CDR_TRAIN_DONE_1, 
FFS_CDR_TRAIN_DONE_2, 
FFS_CDR_TRAIN_DONE_3, 
REFCLK_FROM_NQ, 
REFCLK_TO_NQ, 
LDR_CORE2TX_0, 
LDR_CORE2TX_1, 
LDR_CORE2TX_2, 
LDR_CORE2TX_3, 
LDR_RX2CORE_0, 
LDR_RX2CORE_1, 
LDR_RX2CORE_2, 
LDR_RX2CORE_3, 
FFC_LDR_CORE2TX_EN_0,
FFC_LDR_CORE2TX_EN_1,
FFC_LDR_CORE2TX_EN_2,
FFC_LDR_CORE2TX_EN_3
)/* synthesis syn_black_box black_box_pad_pin = "HDINP0,HDINN0,HDINP1,HDINN1,HDINP2,HDINN2,HDINP3,HDINN3,HDOUTP0,HDOUTN0,HDOUTP1,HDOUTN1,HDOUTP2,HDOUTN2,HDOUTP3,HDOUTN3,REFCLKP,REFCLKN" */;
input SCISELCH0;
input SCIENCH0;
input FF_RXI_CLK_0;
input FF_TXI_CLK_0;
input FF_EBRD_CLK_0;
output FF_RX_F_CLK_0;
output FF_RX_H_CLK_0;
input FF_TX_D_0_0;
input FF_TX_D_0_1;
input FF_TX_D_0_2;
input FF_TX_D_0_3;
input FF_TX_D_0_4;
input FF_TX_D_0_5;
input FF_TX_D_0_6;
input FF_TX_D_0_7;
input FF_TX_D_0_8;
input FF_TX_D_0_9;
input FF_TX_D_0_10;
input FF_TX_D_0_11;
input FF_TX_D_0_12;
input FF_TX_D_0_13;
input FF_TX_D_0_14;
input FF_TX_D_0_15;
input FF_TX_D_0_16;
input FF_TX_D_0_17;
input FF_TX_D_0_18;
input FF_TX_D_0_19;
input FF_TX_D_0_20;
input FF_TX_D_0_21;
input FF_TX_D_0_22;
input FF_TX_D_0_23;
output FF_RX_D_0_0;
output FF_RX_D_0_1;
output FF_RX_D_0_2;
output FF_RX_D_0_3;
output FF_RX_D_0_4;
output FF_RX_D_0_5;
output FF_RX_D_0_6;
output FF_RX_D_0_7;
output FF_RX_D_0_8;
output FF_RX_D_0_9;
output FF_RX_D_0_10;
output FF_RX_D_0_11;
output FF_RX_D_0_12;
output FF_RX_D_0_13;
output FF_RX_D_0_14;
output FF_RX_D_0_15;
output FF_RX_D_0_16;
output FF_RX_D_0_17;
output FF_RX_D_0_18;
output FF_RX_D_0_19;
output FF_RX_D_0_20;
output FF_RX_D_0_21;
output FF_RX_D_0_22;
output FF_RX_D_0_23;
input FFC_RRST_0;
input FFC_SIGNAL_DETECT_0;
input FFC_SB_PFIFO_LP_0;
input FFC_SB_INV_RX_0;
input FFC_PFIFO_CLR_0;
input FFC_PCIE_CT_0;
input FFC_PCI_DET_EN_0;
input FFC_FB_LOOPBACK_0;
input FFC_ENABLE_CGALIGN_0;
input FFC_EI_EN_0;
input FFC_LANE_TX_RST_0;
input FFC_LANE_RX_RST_0;
input FFC_TXPWDNB_0;
input FFC_RXPWDNB_0;
output FFS_RLOS_LO_0;
output FFS_RLOS_HI_0;
output FFS_PCIE_DONE_0;
output FFS_PCIE_CON_0;
output FFS_LS_SYNC_STATUS_0;
output FFS_CC_UNDERRUN_0;
output FFS_CC_OVERRUN_0;
output FFS_RLOL_0;
output FFS_RXFBFIFO_ERROR_0;
output FFS_TXFBFIFO_ERROR_0;
input SCISELCH1;
input SCIENCH1;
input FF_RXI_CLK_1;
input FF_TXI_CLK_1;
input FF_EBRD_CLK_1;
output FF_RX_F_CLK_1;
output FF_RX_H_CLK_1;
input FF_TX_D_1_0;
input FF_TX_D_1_1;
input FF_TX_D_1_2;
input FF_TX_D_1_3;
input FF_TX_D_1_4;
input FF_TX_D_1_5;
input FF_TX_D_1_6;
input FF_TX_D_1_7;
input FF_TX_D_1_8;
input FF_TX_D_1_9;
input FF_TX_D_1_10;
input FF_TX_D_1_11;
input FF_TX_D_1_12;
input FF_TX_D_1_13;
input FF_TX_D_1_14;
input FF_TX_D_1_15;
input FF_TX_D_1_16;
input FF_TX_D_1_17;
input FF_TX_D_1_18;
input FF_TX_D_1_19;
input FF_TX_D_1_20;
input FF_TX_D_1_21;
input FF_TX_D_1_22;
input FF_TX_D_1_23;
output FF_RX_D_1_0;
output FF_RX_D_1_1;
output FF_RX_D_1_2;
output FF_RX_D_1_3;
output FF_RX_D_1_4;
output FF_RX_D_1_5;
output FF_RX_D_1_6;
output FF_RX_D_1_7;
output FF_RX_D_1_8;
output FF_RX_D_1_9;
output FF_RX_D_1_10;
output FF_RX_D_1_11;
output FF_RX_D_1_12;
output FF_RX_D_1_13;
output FF_RX_D_1_14;
output FF_RX_D_1_15;
output FF_RX_D_1_16;
output FF_RX_D_1_17;
output FF_RX_D_1_18;
output FF_RX_D_1_19;
output FF_RX_D_1_20;
output FF_RX_D_1_21;
output FF_RX_D_1_22;
output FF_RX_D_1_23;
input FFC_RRST_1;
input FFC_SIGNAL_DETECT_1;
input FFC_SB_PFIFO_LP_1;
input FFC_SB_INV_RX_1;
input FFC_PFIFO_CLR_1;
input FFC_PCIE_CT_1;
input FFC_PCI_DET_EN_1;
input FFC_FB_LOOPBACK_1;
input FFC_ENABLE_CGALIGN_1;
input FFC_EI_EN_1;
input FFC_LANE_TX_RST_1;
input FFC_LANE_RX_RST_1;
input FFC_TXPWDNB_1;
input FFC_RXPWDNB_1;
output FFS_RLOS_LO_1;
output FFS_RLOS_HI_1;
output FFS_PCIE_DONE_1;
output FFS_PCIE_CON_1;
output FFS_LS_SYNC_STATUS_1;
output FFS_CC_UNDERRUN_1;
output FFS_CC_OVERRUN_1;
output FFS_RLOL_1;
output FFS_RXFBFIFO_ERROR_1;
output FFS_TXFBFIFO_ERROR_1;
input SCISELCH2;
input SCIENCH2;
input FF_RXI_CLK_2;
input FF_TXI_CLK_2;
input FF_EBRD_CLK_2;
output FF_RX_F_CLK_2;
output FF_RX_H_CLK_2;
input FF_TX_D_2_0;
input FF_TX_D_2_1;
input FF_TX_D_2_2;
input FF_TX_D_2_3;
input FF_TX_D_2_4;
input FF_TX_D_2_5;
input FF_TX_D_2_6;
input FF_TX_D_2_7;
input FF_TX_D_2_8;
input FF_TX_D_2_9;
input FF_TX_D_2_10;
input FF_TX_D_2_11;
input FF_TX_D_2_12;
input FF_TX_D_2_13;
input FF_TX_D_2_14;
input FF_TX_D_2_15;
input FF_TX_D_2_16;
input FF_TX_D_2_17;
input FF_TX_D_2_18;
input FF_TX_D_2_19;
input FF_TX_D_2_20;
input FF_TX_D_2_21;
input FF_TX_D_2_22;
input FF_TX_D_2_23;
output FF_RX_D_2_0;
output FF_RX_D_2_1;
output FF_RX_D_2_2;
output FF_RX_D_2_3;
output FF_RX_D_2_4;
output FF_RX_D_2_5;
output FF_RX_D_2_6;
output FF_RX_D_2_7;
output FF_RX_D_2_8;
output FF_RX_D_2_9;
output FF_RX_D_2_10;
output FF_RX_D_2_11;
output FF_RX_D_2_12;
output FF_RX_D_2_13;
output FF_RX_D_2_14;
output FF_RX_D_2_15;
output FF_RX_D_2_16;
output FF_RX_D_2_17;
output FF_RX_D_2_18;
output FF_RX_D_2_19;
output FF_RX_D_2_20;
output FF_RX_D_2_21;
output FF_RX_D_2_22;
output FF_RX_D_2_23;
input FFC_RRST_2;
input FFC_SIGNAL_DETECT_2;
input FFC_SB_PFIFO_LP_2;
input FFC_SB_INV_RX_2;
input FFC_PFIFO_CLR_2;
input FFC_PCIE_CT_2;
input FFC_PCI_DET_EN_2;
input FFC_FB_LOOPBACK_2;
input FFC_ENABLE_CGALIGN_2;
input FFC_EI_EN_2;
input FFC_LANE_TX_RST_2;
input FFC_LANE_RX_RST_2;
input FFC_TXPWDNB_2;
input FFC_RXPWDNB_2;
output FFS_RLOS_LO_2;
output FFS_RLOS_HI_2;
output FFS_PCIE_DONE_2;
output FFS_PCIE_CON_2;
output FFS_LS_SYNC_STATUS_2;
output FFS_CC_UNDERRUN_2;
output FFS_CC_OVERRUN_2;
output FFS_RLOL_2;
output FFS_RXFBFIFO_ERROR_2;
output FFS_TXFBFIFO_ERROR_2;
input SCISELCH3;
input SCIENCH3;
input FF_RXI_CLK_3;
input FF_TXI_CLK_3;
input FF_EBRD_CLK_3;
output FF_RX_F_CLK_3;
output FF_RX_H_CLK_3;
input FF_TX_D_3_0;
input FF_TX_D_3_1;
input FF_TX_D_3_2;
input FF_TX_D_3_3;
input FF_TX_D_3_4;
input FF_TX_D_3_5;
input FF_TX_D_3_6;
input FF_TX_D_3_7;
input FF_TX_D_3_8;
input FF_TX_D_3_9;
input FF_TX_D_3_10;
input FF_TX_D_3_11;
input FF_TX_D_3_12;
input FF_TX_D_3_13;
input FF_TX_D_3_14;
input FF_TX_D_3_15;
input FF_TX_D_3_16;
input FF_TX_D_3_17;
input FF_TX_D_3_18;
input FF_TX_D_3_19;
input FF_TX_D_3_20;
input FF_TX_D_3_21;
input FF_TX_D_3_22;
input FF_TX_D_3_23;
output FF_RX_D_3_0;
output FF_RX_D_3_1;
output FF_RX_D_3_2;
output FF_RX_D_3_3;
output FF_RX_D_3_4;
output FF_RX_D_3_5;
output FF_RX_D_3_6;
output FF_RX_D_3_7;
output FF_RX_D_3_8;
output FF_RX_D_3_9;
output FF_RX_D_3_10;
output FF_RX_D_3_11;
output FF_RX_D_3_12;
output FF_RX_D_3_13;
output FF_RX_D_3_14;
output FF_RX_D_3_15;
output FF_RX_D_3_16;
output FF_RX_D_3_17;
output FF_RX_D_3_18;
output FF_RX_D_3_19;
output FF_RX_D_3_20;
output FF_RX_D_3_21;
output FF_RX_D_3_22;
output FF_RX_D_3_23;
input FFC_RRST_3;
input FFC_SIGNAL_DETECT_3;
input FFC_SB_PFIFO_LP_3;
input FFC_SB_INV_RX_3;
input FFC_PFIFO_CLR_3;
input FFC_PCIE_CT_3;
input FFC_PCI_DET_EN_3;
input FFC_FB_LOOPBACK_3;
input FFC_ENABLE_CGALIGN_3;
input FFC_EI_EN_3;
input FFC_LANE_TX_RST_3;
input FFC_LANE_RX_RST_3;
input FFC_TXPWDNB_3;
input FFC_RXPWDNB_3;
output FFS_RLOS_LO_3;
output FFS_RLOS_HI_3;
output FFS_PCIE_DONE_3;
output FFS_PCIE_CON_3;
output FFS_LS_SYNC_STATUS_3;
output FFS_CC_UNDERRUN_3;
output FFS_CC_OVERRUN_3;
output FFS_RLOL_3;
output FFS_RXFBFIFO_ERROR_3;
output FFS_TXFBFIFO_ERROR_3;
input SCIWDATA0;
input SCIWDATA1;
input SCIWDATA2;
input SCIWDATA3;
input SCIWDATA4;
input SCIWDATA5;
input SCIWDATA6;
input SCIWDATA7;
input SCIADDR0;
input SCIADDR1;
input SCIADDR2;
input SCIADDR3;
input SCIADDR4;
input SCIADDR5;
input SCIENAUX;
input SCISELAUX;
input SCIRD;
input SCIWSTN;
output SCIRDATA0;
output SCIRDATA1;
output SCIRDATA2;
output SCIRDATA3;
output SCIRDATA4;
output SCIRDATA5;
output SCIRDATA6;
output SCIRDATA7;
output SCIINT;
input FFC_CK_CORE_RX_0;
input FFC_CK_CORE_RX_1;
input FFC_CK_CORE_RX_2;
input FFC_CK_CORE_RX_3;
input FFC_CK_CORE_TX;
input FFC_MACRO_RST;
input FFC_QUAD_RST;
input FFC_TRST;
output FF_TX_F_CLK_0;
output FF_TX_F_CLK_1;
output FF_TX_F_CLK_2;
output FF_TX_F_CLK_3;
output FF_TX_H_CLK_0;
output FF_TX_H_CLK_1;
output FF_TX_H_CLK_2;
output FF_TX_H_CLK_3;
input CYAWSTN;
output REFCK2CORE;
output FFS_PLOL;
input CIN0;
input CIN1;
input CIN2;
input CIN3;
input CIN4;
input CIN5;
input CIN6;
input CIN7;
input CIN8;
input CIN9;
input CIN10;
input CIN11;
output COUT0;
output COUT1;
output COUT2;
output COUT3;
output COUT4;
output COUT5;
output COUT6;
output COUT7;
output COUT8;
output COUT9;
output COUT10;
output COUT11;
output COUT12;
output COUT13;
output COUT14;
output COUT15;
output COUT16;
output COUT17;
output COUT18;
output COUT19;
input HDINP0;
input HDINP1;
input HDINP2;
input HDINP3;
input HDINN0;
input HDINN1;
input HDINN2;
input HDINN3;
output HDOUTP0;
output HDOUTP1;
output HDOUTP2;
output HDOUTP3;
output HDOUTN0;
output HDOUTN1;
output HDOUTN2;
output HDOUTN3;
input REFCLKP;
input REFCLKN;
input FFC_SYNC_TOGGLE;  /* Begin new ports for ECP3 */
output FFS_SKP_ADDED_0;
output FFS_SKP_ADDED_1;
output FFS_SKP_ADDED_2;
output FFS_SKP_ADDED_3;
output FFS_SKP_DELETED_0;
output FFS_SKP_DELETED_1;
output FFS_SKP_DELETED_2;
output FFS_SKP_DELETED_3;
input PCIE_TXDETRX_PR2TLB_0;
input PCIE_TXDETRX_PR2TLB_1;
input PCIE_TXDETRX_PR2TLB_2;
input PCIE_TXDETRX_PR2TLB_3;
input PCIE_TXCOMPLIANCE_0;
input PCIE_TXCOMPLIANCE_1;
input PCIE_TXCOMPLIANCE_2;
input PCIE_TXCOMPLIANCE_3;
input PCIE_RXPOLARITY_0;
input PCIE_RXPOLARITY_1;
input PCIE_RXPOLARITY_2;
input PCIE_RXPOLARITY_3;
input PCIE_POWERDOWN_0_0;
input PCIE_POWERDOWN_0_1;
input PCIE_POWERDOWN_1_0;
input PCIE_POWERDOWN_1_1;
input PCIE_POWERDOWN_2_0;
input PCIE_POWERDOWN_2_1;
input PCIE_POWERDOWN_3_0;
input PCIE_POWERDOWN_3_1;
output PCIE_PHYSTATUS_0;
output PCIE_PHYSTATUS_1;
output PCIE_PHYSTATUS_2;
output PCIE_PHYSTATUS_3;
output PCIE_RXVALID_0;
output PCIE_RXVALID_1;
output PCIE_RXVALID_2;
output PCIE_RXVALID_3;
input FFC_RATE_MODE_TX_0;
input FFC_RATE_MODE_TX_1;
input FFC_RATE_MODE_TX_2;
input FFC_RATE_MODE_TX_3;
input FFC_RATE_MODE_RX_0;
input FFC_RATE_MODE_RX_1;
input FFC_RATE_MODE_RX_2;
input FFC_RATE_MODE_RX_3;
input FFC_DIV11_MODE_RX_0;
input FFC_DIV11_MODE_RX_1;
input FFC_DIV11_MODE_RX_2;
input FFC_DIV11_MODE_RX_3;
input FFC_DIV11_MODE_TX_0;
input FFC_DIV11_MODE_TX_1;
input FFC_DIV11_MODE_TX_2;
input FFC_DIV11_MODE_TX_3;
output FFS_CDR_TRAIN_DONE_0;
output FFS_CDR_TRAIN_DONE_1;
output FFS_CDR_TRAIN_DONE_2;
output FFS_CDR_TRAIN_DONE_3;
input REFCLK_FROM_NQ;
output REFCLK_TO_NQ ;
input LDR_CORE2TX_0;
input LDR_CORE2TX_1;
input LDR_CORE2TX_2;
input LDR_CORE2TX_3;
output LDR_RX2CORE_0;
output LDR_RX2CORE_1;
output LDR_RX2CORE_2;
output LDR_RX2CORE_3;
input FFC_LDR_CORE2TX_EN_0;
input FFC_LDR_CORE2TX_EN_1;
input FFC_LDR_CORE2TX_EN_2;
input FFC_LDR_CORE2TX_EN_3;

parameter   CONFIG_FILE   = "g8b10b_config.txt";
parameter   QUAD_MODE     = "SINGLE";
parameter   PLL_SRC       = "REFCLK_EXT";
parameter   CH0_CDR_SRC   = "REFCLK_EXT";
parameter   CH1_CDR_SRC   = "REFCLK_EXT";
parameter   CH2_CDR_SRC   = "REFCLK_EXT";
parameter   CH3_CDR_SRC   = "REFCLK_EXT";

endmodule

module  DTSA  (DTSI3, DTSI2, DTSI1, DTSI0, DTSO);  //synthesis syn_black_box
  input DTSI3 ;
  input DTSI2 ;
  input DTSI1 ;
  input DTSI0 ;
  output DTSO ;
endmodule 




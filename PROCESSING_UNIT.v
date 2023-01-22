// -------------------------------------------------------------
// 
// File Name: hdlsrc\lab1\PROCESSING_UNIT.v
// Created: 2023-01-22 17:13:35
// 
// Generated by MATLAB 9.12 and HDL Coder 3.20
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Model base rate: 1
// Target subsystem base rate: 1
// 
// 
// Clock Enable  Sample Time
// -- -------------------------------------------------------------
// ce_out        1
// -- -------------------------------------------------------------
// 
// 
// Output Signal                 Clock Enable  Sample Time
// -- -------------------------------------------------------------
// o_Y                           ce_out        1
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: PROCESSING_UNIT
// Source Path: lab1/PROCESSING_UNIT
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module PROCESSING_UNIT
          (clk,
           reset,
           clk_enable,
           i_W0,
           i_W1,
           i_W2,
           i_W3,
           i_X0,
           i_X1,
           i_X2,
           i_X3,
           ce_out,
           o_Y);


  input   clk;
  input   reset;
  input   clk_enable;
  input   signed [7:0] i_W0;  // int8
  input   signed [7:0] i_W1;  // int8
  input   signed [7:0] i_W2;  // int8
  input   signed [7:0] i_W3;  // int8
  input   signed [7:0] i_X0;  // int8
  input   signed [7:0] i_X1;  // int8
  input   signed [7:0] i_X2;  // int8
  input   signed [7:0] i_X3;  // int8
  output  ce_out;
  output  signed [15:0] o_Y;  // int16


  wire enb;
  reg signed [7:0] Unit_Delay9_out1;  // int8
  reg signed [7:0] Unit_Delay2_out1;  // int8
  reg signed [7:0] Unit_Delay4_out1;  // int8
  reg signed [7:0] Unit_Delay6_out1;  // int8
  reg signed [7:0] Unit_Delay1_out1;  // int8
  wire signed [15:0] Product_out1;  // int16
  reg signed [7:0] Unit_Delay3_out1;  // int8
  wire signed [15:0] Product1_out1;  // int16
  wire signed [15:0] Add_stage2_add_temp;  // sfix16
  wire signed [16:0] Add_op_stage1;  // sfix17
  reg signed [7:0] Unit_Delay5_out1;  // int8
  wire signed [15:0] Product2_out1;  // int16
  wire signed [15:0] Add_stage3_add_cast;  // sfix16
  wire signed [15:0] Add_stage3_add_temp;  // sfix16
  wire signed [17:0] Add_op_stage2;  // sfix18
  reg signed [7:0] Unit_Delay7_out1;  // int8
  wire signed [15:0] Product3_out1;  // int16
  wire signed [15:0] Add_stage4_add_cast;  // sfix16
  wire signed [15:0] Add_out1;  // int16
  reg signed [15:0] Unit_Delay8_out1;  // int16


  assign enb = clk_enable;

  always @(posedge clk or posedge reset)
    begin : Unit_Delay9_process
      if (reset == 1'b1) begin
        Unit_Delay9_out1 <= 8'sb00000000;
      end
      else begin
        if (enb) begin
          Unit_Delay9_out1 <= i_W0;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : Unit_Delay2_process
      if (reset == 1'b1) begin
        Unit_Delay2_out1 <= 8'sb00000000;
      end
      else begin
        if (enb) begin
          Unit_Delay2_out1 <= i_W1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : Unit_Delay4_process
      if (reset == 1'b1) begin
        Unit_Delay4_out1 <= 8'sb00000000;
      end
      else begin
        if (enb) begin
          Unit_Delay4_out1 <= i_W2;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : Unit_Delay6_process
      if (reset == 1'b1) begin
        Unit_Delay6_out1 <= 8'sb00000000;
      end
      else begin
        if (enb) begin
          Unit_Delay6_out1 <= i_W3;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : Unit_Delay1_process
      if (reset == 1'b1) begin
        Unit_Delay1_out1 <= 8'sb00000000;
      end
      else begin
        if (enb) begin
          Unit_Delay1_out1 <= i_X0;
        end
      end
    end



  assign Product_out1 = Unit_Delay9_out1 * Unit_Delay1_out1;



  always @(posedge clk or posedge reset)
    begin : Unit_Delay3_process
      if (reset == 1'b1) begin
        Unit_Delay3_out1 <= 8'sb00000000;
      end
      else begin
        if (enb) begin
          Unit_Delay3_out1 <= i_X1;
        end
      end
    end



  assign Product1_out1 = Unit_Delay2_out1 * Unit_Delay3_out1;



  assign Add_stage2_add_temp = Product_out1 + Product1_out1;
  assign Add_op_stage1 = {Add_stage2_add_temp[15], Add_stage2_add_temp};



  always @(posedge clk or posedge reset)
    begin : Unit_Delay5_process
      if (reset == 1'b1) begin
        Unit_Delay5_out1 <= 8'sb00000000;
      end
      else begin
        if (enb) begin
          Unit_Delay5_out1 <= i_X2;
        end
      end
    end



  assign Product2_out1 = Unit_Delay4_out1 * Unit_Delay5_out1;



  assign Add_stage3_add_cast = Add_op_stage1[15:0];
  assign Add_stage3_add_temp = Add_stage3_add_cast + Product2_out1;
  assign Add_op_stage2 = {{2{Add_stage3_add_temp[15]}}, Add_stage3_add_temp};



  always @(posedge clk or posedge reset)
    begin : Unit_Delay7_process
      if (reset == 1'b1) begin
        Unit_Delay7_out1 <= 8'sb00000000;
      end
      else begin
        if (enb) begin
          Unit_Delay7_out1 <= i_X3;
        end
      end
    end



  assign Product3_out1 = Unit_Delay6_out1 * Unit_Delay7_out1;



  assign Add_stage4_add_cast = Add_op_stage2[15:0];
  assign Add_out1 = Add_stage4_add_cast + Product3_out1;



  always @(posedge clk or posedge reset)
    begin : Unit_Delay8_process
      if (reset == 1'b1) begin
        Unit_Delay8_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Unit_Delay8_out1 <= Add_out1;
        end
      end
    end



  assign o_Y = Unit_Delay8_out1;

  assign ce_out = clk_enable;

endmodule  // PROCESSING_UNIT


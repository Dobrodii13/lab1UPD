// -------------------------------------------------------------
// 
// File Name: hdlsrc\lab1\PROCESSING_UNIT_tb.v
// Created: 2023-01-22 17:15:01
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
// Module: PROCESSING_UNIT_tb
// Source Path: 
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module PROCESSING_UNIT_tb;



  reg  clk;
  reg  reset;
  wire clk_enable;
  wire o_Y_done;  // ufix1
  wire rdEnb;
  wire o_Y_done_enb;  // ufix1
  reg [19:0] o_Y_addr;  // ufix20
  wire o_Y_active;  // ufix1
  reg [19:0] Data_Type_Conversion_out1_addr;  // ufix20
  wire [19:0] Data_Type_Conversion7_out1_addr_delay_1;  // ufix20
  reg  tb_enb_delay;
  reg signed [31:0] fp_i_X3;  // sfix32
  reg signed [7:0] rawData_i_X3;  // int8
  reg signed [31:0] status_i_X3;  // sfix32
  reg signed [7:0] holdData_i_X3;  // int8
  reg signed [7:0] i_X3_offset;  // int8
  wire signed [7:0] i_X3;  // int8
  wire [19:0] Data_Type_Conversion6_out1_addr_delay_1;  // ufix20
  reg signed [31:0] fp_i_X2;  // sfix32
  reg signed [7:0] rawData_i_X2;  // int8
  reg signed [31:0] status_i_X2;  // sfix32
  reg signed [7:0] holdData_i_X2;  // int8
  reg signed [7:0] i_X2_offset;  // int8
  wire signed [7:0] i_X2;  // int8
  wire [19:0] Data_Type_Conversion5_out1_addr_delay_1;  // ufix20
  reg signed [31:0] fp_i_X1;  // sfix32
  reg signed [7:0] rawData_i_X1;  // int8
  reg signed [31:0] status_i_X1;  // sfix32
  reg signed [7:0] holdData_i_X1;  // int8
  reg signed [7:0] i_X1_offset;  // int8
  wire signed [7:0] i_X1;  // int8
  wire [19:0] Data_Type_Conversion4_out1_addr_delay_1;  // ufix20
  reg signed [31:0] fp_i_X0;  // sfix32
  reg signed [7:0] rawData_i_X0;  // int8
  reg signed [31:0] status_i_X0;  // sfix32
  reg signed [7:0] holdData_i_X0;  // int8
  reg signed [7:0] i_X0_offset;  // int8
  wire signed [7:0] i_X0;  // int8
  wire [19:0] Data_Type_Conversion3_out1_addr_delay_1;  // ufix20
  reg signed [31:0] fp_i_W3;  // sfix32
  reg signed [7:0] rawData_i_W3;  // int8
  reg signed [31:0] status_i_W3;  // sfix32
  reg signed [7:0] holdData_i_W3;  // int8
  reg signed [7:0] i_W3_offset;  // int8
  wire signed [7:0] i_W3;  // int8
  wire [19:0] Data_Type_Conversion2_out1_addr_delay_1;  // ufix20
  reg signed [31:0] fp_i_W2;  // sfix32
  reg signed [7:0] rawData_i_W2;  // int8
  reg signed [31:0] status_i_W2;  // sfix32
  reg signed [7:0] holdData_i_W2;  // int8
  reg signed [7:0] i_W2_offset;  // int8
  wire signed [7:0] i_W2;  // int8
  wire [19:0] Data_Type_Conversion1_out1_addr_delay_1;  // ufix20
  reg signed [31:0] fp_i_W1;  // sfix32
  reg signed [7:0] rawData_i_W1;  // int8
  reg signed [31:0] status_i_W1;  // sfix32
  reg signed [7:0] holdData_i_W1;  // int8
  reg signed [7:0] i_W1_offset;  // int8
  wire signed [7:0] i_W1;  // int8
  wire Data_Type_Conversion_out1_active;  // ufix1
  wire Data_Type_Conversion_out1_enb;  // ufix1
  wire [19:0] Data_Type_Conversion_out1_addr_delay_1;  // ufix20
  reg signed [31:0] fp_i_W0;  // sfix32
  reg signed [7:0] rawData_i_W0;  // int8
  reg signed [31:0] status_i_W0;  // sfix32
  reg signed [7:0] holdData_i_W0;  // int8
  reg signed [7:0] i_W0_offset;  // int8
  wire signed [7:0] i_W0;  // int8
  reg  check1_done;  // ufix1
  wire snkDonen;
  wire resetn;
  wire tb_enb;
  wire ce_out;
  wire signed [15:0] o_Y;  // int16
  wire o_Y_enb;  // ufix1
  wire o_Y_lastAddr;  // ufix1
  wire [19:0] o_Y_addr_delay_1;  // ufix20
  reg signed [31:0] fp_o_Y_expected;  // sfix32
  reg signed [15:0] o_Y_expected;  // int16
  reg signed [31:0] status_o_Y_expected;  // sfix32
  wire signed [15:0] o_Y_ref;  // int16
  reg  o_Y_testFailure;  // ufix1
  wire testFailure;  // ufix1


  assign o_Y_done_enb = o_Y_done & rdEnb;



  assign o_Y_active = o_Y_addr != 20'b11110100001001000000;



  assign #1 Data_Type_Conversion7_out1_addr_delay_1 = Data_Type_Conversion_out1_addr;

  // Data source for i_X3
  initial
    begin : i_X3_fileread
      fp_i_X3 = $fopen("i_X3.dat", "r");
      status_i_X3 = $rewind(fp_i_X3);
    end

  always @(Data_Type_Conversion7_out1_addr_delay_1, rdEnb, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        rawData_i_X3 <= 8'bx;
      end
      else if (rdEnb == 1) begin
        status_i_X3 = $fscanf(fp_i_X3, "%h", rawData_i_X3);
      end
    end

  // holdData reg for Data_Type_Conversion7_out1
  always @(posedge clk or posedge reset)
    begin : stimuli_Data_Type_Conversion7_out1
      if (reset) begin
        holdData_i_X3 <= 8'bx;
      end
      else begin
        holdData_i_X3 <= rawData_i_X3;
      end
    end

  always @(rawData_i_X3 or rdEnb)
    begin : stimuli_Data_Type_Conversion7_out1_1
      if (rdEnb == 1'b0) begin
        i_X3_offset <= holdData_i_X3;
      end
      else begin
        i_X3_offset <= rawData_i_X3;
      end
    end

  assign #2 i_X3 = i_X3_offset;

  assign #1 Data_Type_Conversion6_out1_addr_delay_1 = Data_Type_Conversion_out1_addr;

  // Data source for i_X2
  initial
    begin : i_X2_fileread
      fp_i_X2 = $fopen("i_X2.dat", "r");
      status_i_X2 = $rewind(fp_i_X2);
    end

  always @(Data_Type_Conversion6_out1_addr_delay_1, rdEnb, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        rawData_i_X2 <= 8'bx;
      end
      else if (rdEnb == 1) begin
        status_i_X2 = $fscanf(fp_i_X2, "%h", rawData_i_X2);
      end
    end

  // holdData reg for Data_Type_Conversion6_out1
  always @(posedge clk or posedge reset)
    begin : stimuli_Data_Type_Conversion6_out1
      if (reset) begin
        holdData_i_X2 <= 8'bx;
      end
      else begin
        holdData_i_X2 <= rawData_i_X2;
      end
    end

  always @(rawData_i_X2 or rdEnb)
    begin : stimuli_Data_Type_Conversion6_out1_1
      if (rdEnb == 1'b0) begin
        i_X2_offset <= holdData_i_X2;
      end
      else begin
        i_X2_offset <= rawData_i_X2;
      end
    end

  assign #2 i_X2 = i_X2_offset;

  assign #1 Data_Type_Conversion5_out1_addr_delay_1 = Data_Type_Conversion_out1_addr;

  // Data source for i_X1
  initial
    begin : i_X1_fileread
      fp_i_X1 = $fopen("i_X1.dat", "r");
      status_i_X1 = $rewind(fp_i_X1);
    end

  always @(Data_Type_Conversion5_out1_addr_delay_1, rdEnb, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        rawData_i_X1 <= 8'bx;
      end
      else if (rdEnb == 1) begin
        status_i_X1 = $fscanf(fp_i_X1, "%h", rawData_i_X1);
      end
    end

  // holdData reg for Data_Type_Conversion5_out1
  always @(posedge clk or posedge reset)
    begin : stimuli_Data_Type_Conversion5_out1
      if (reset) begin
        holdData_i_X1 <= 8'bx;
      end
      else begin
        holdData_i_X1 <= rawData_i_X1;
      end
    end

  always @(rawData_i_X1 or rdEnb)
    begin : stimuli_Data_Type_Conversion5_out1_1
      if (rdEnb == 1'b0) begin
        i_X1_offset <= holdData_i_X1;
      end
      else begin
        i_X1_offset <= rawData_i_X1;
      end
    end

  assign #2 i_X1 = i_X1_offset;

  assign #1 Data_Type_Conversion4_out1_addr_delay_1 = Data_Type_Conversion_out1_addr;

  // Data source for i_X0
  initial
    begin : i_X0_fileread
      fp_i_X0 = $fopen("i_X0.dat", "r");
      status_i_X0 = $rewind(fp_i_X0);
    end

  always @(Data_Type_Conversion4_out1_addr_delay_1, rdEnb, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        rawData_i_X0 <= 8'bx;
      end
      else if (rdEnb == 1) begin
        status_i_X0 = $fscanf(fp_i_X0, "%h", rawData_i_X0);
      end
    end

  // holdData reg for Data_Type_Conversion4_out1
  always @(posedge clk or posedge reset)
    begin : stimuli_Data_Type_Conversion4_out1
      if (reset) begin
        holdData_i_X0 <= 8'bx;
      end
      else begin
        holdData_i_X0 <= rawData_i_X0;
      end
    end

  always @(rawData_i_X0 or rdEnb)
    begin : stimuli_Data_Type_Conversion4_out1_1
      if (rdEnb == 1'b0) begin
        i_X0_offset <= holdData_i_X0;
      end
      else begin
        i_X0_offset <= rawData_i_X0;
      end
    end

  assign #2 i_X0 = i_X0_offset;

  assign #1 Data_Type_Conversion3_out1_addr_delay_1 = Data_Type_Conversion_out1_addr;

  // Data source for i_W3
  initial
    begin : i_W3_fileread
      fp_i_W3 = $fopen("i_W3.dat", "r");
      status_i_W3 = $rewind(fp_i_W3);
    end

  always @(Data_Type_Conversion3_out1_addr_delay_1, rdEnb, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        rawData_i_W3 <= 8'bx;
      end
      else if (rdEnb == 1) begin
        status_i_W3 = $fscanf(fp_i_W3, "%h", rawData_i_W3);
      end
    end

  // holdData reg for Data_Type_Conversion3_out1
  always @(posedge clk or posedge reset)
    begin : stimuli_Data_Type_Conversion3_out1
      if (reset) begin
        holdData_i_W3 <= 8'bx;
      end
      else begin
        holdData_i_W3 <= rawData_i_W3;
      end
    end

  always @(rawData_i_W3 or rdEnb)
    begin : stimuli_Data_Type_Conversion3_out1_1
      if (rdEnb == 1'b0) begin
        i_W3_offset <= holdData_i_W3;
      end
      else begin
        i_W3_offset <= rawData_i_W3;
      end
    end

  assign #2 i_W3 = i_W3_offset;

  assign #1 Data_Type_Conversion2_out1_addr_delay_1 = Data_Type_Conversion_out1_addr;

  // Data source for i_W2
  initial
    begin : i_W2_fileread
      fp_i_W2 = $fopen("i_W2.dat", "r");
      status_i_W2 = $rewind(fp_i_W2);
    end

  always @(Data_Type_Conversion2_out1_addr_delay_1, rdEnb, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        rawData_i_W2 <= 8'bx;
      end
      else if (rdEnb == 1) begin
        status_i_W2 = $fscanf(fp_i_W2, "%h", rawData_i_W2);
      end
    end

  // holdData reg for Data_Type_Conversion2_out1
  always @(posedge clk or posedge reset)
    begin : stimuli_Data_Type_Conversion2_out1
      if (reset) begin
        holdData_i_W2 <= 8'bx;
      end
      else begin
        holdData_i_W2 <= rawData_i_W2;
      end
    end

  always @(rawData_i_W2 or rdEnb)
    begin : stimuli_Data_Type_Conversion2_out1_1
      if (rdEnb == 1'b0) begin
        i_W2_offset <= holdData_i_W2;
      end
      else begin
        i_W2_offset <= rawData_i_W2;
      end
    end

  assign #2 i_W2 = i_W2_offset;

  assign #1 Data_Type_Conversion1_out1_addr_delay_1 = Data_Type_Conversion_out1_addr;

  // Data source for i_W1
  initial
    begin : i_W1_fileread
      fp_i_W1 = $fopen("i_W1.dat", "r");
      status_i_W1 = $rewind(fp_i_W1);
    end

  always @(Data_Type_Conversion1_out1_addr_delay_1, rdEnb, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        rawData_i_W1 <= 8'bx;
      end
      else if (rdEnb == 1) begin
        status_i_W1 = $fscanf(fp_i_W1, "%h", rawData_i_W1);
      end
    end

  // holdData reg for Data_Type_Conversion1_out1
  always @(posedge clk or posedge reset)
    begin : stimuli_Data_Type_Conversion1_out1
      if (reset) begin
        holdData_i_W1 <= 8'bx;
      end
      else begin
        holdData_i_W1 <= rawData_i_W1;
      end
    end

  always @(rawData_i_W1 or rdEnb)
    begin : stimuli_Data_Type_Conversion1_out1_1
      if (rdEnb == 1'b0) begin
        i_W1_offset <= holdData_i_W1;
      end
      else begin
        i_W1_offset <= rawData_i_W1;
      end
    end

  assign #2 i_W1 = i_W1_offset;

  assign Data_Type_Conversion_out1_active = Data_Type_Conversion_out1_addr != 20'b11110100001001000000;



  assign Data_Type_Conversion_out1_enb = Data_Type_Conversion_out1_active & (rdEnb & tb_enb_delay);



  // Count limited, Unsigned Counter
  //  initial value   = 0
  //  step value      = 1
  //  count to value  = 1000000
  always @(posedge clk or posedge reset)
    begin : DataTypeConversion_process
      if (reset == 1'b1) begin
        Data_Type_Conversion_out1_addr <= 20'b00000000000000000000;
      end
      else begin
        if (Data_Type_Conversion_out1_enb) begin
          if (Data_Type_Conversion_out1_addr >= 20'b11110100001001000000) begin
            Data_Type_Conversion_out1_addr <= 20'b00000000000000000000;
          end
          else begin
            Data_Type_Conversion_out1_addr <= Data_Type_Conversion_out1_addr + 20'b00000000000000000001;
          end
        end
      end
    end



  assign #1 Data_Type_Conversion_out1_addr_delay_1 = Data_Type_Conversion_out1_addr;

  // Data source for i_W0
  initial
    begin : i_W0_fileread
      fp_i_W0 = $fopen("i_W0.dat", "r");
      status_i_W0 = $rewind(fp_i_W0);
    end

  always @(Data_Type_Conversion_out1_addr_delay_1, rdEnb, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        rawData_i_W0 <= 8'bx;
      end
      else if (rdEnb == 1) begin
        status_i_W0 = $fscanf(fp_i_W0, "%h", rawData_i_W0);
      end
    end

  // holdData reg for Data_Type_Conversion_out1
  always @(posedge clk or posedge reset)
    begin : stimuli_Data_Type_Conversion_out1
      if (reset) begin
        holdData_i_W0 <= 8'bx;
      end
      else begin
        holdData_i_W0 <= rawData_i_W0;
      end
    end

  always @(rawData_i_W0 or rdEnb)
    begin : stimuli_Data_Type_Conversion_out1_1
      if (rdEnb == 1'b0) begin
        i_W0_offset <= holdData_i_W0;
      end
      else begin
        i_W0_offset <= rawData_i_W0;
      end
    end

  assign #2 i_W0 = i_W0_offset;

  assign snkDonen =  ~ check1_done;



  assign resetn =  ~ reset;



  assign tb_enb = resetn & snkDonen;



  // Delay inside enable generation: register depth 1
  always @(posedge clk or posedge reset)
    begin : u_enable_delay
      if (reset) begin
        tb_enb_delay <= 0;
      end
      else begin
        tb_enb_delay <= tb_enb;
      end
    end

  assign rdEnb = (check1_done == 1'b0 ? tb_enb_delay :
              1'b0);



  assign #2 clk_enable = rdEnb;

  initial
    begin : reset_gen
      reset <= 1'b1;
      # (20);
      @ (posedge clk)
      # (2);
      reset <= 1'b0;
    end

  always 
    begin : clk_gen
      clk <= 1'b1;
      # (5);
      clk <= 1'b0;
      # (5);
      if (check1_done == 1'b1) begin
        clk <= 1'b1;
        # (5);
        clk <= 1'b0;
        # (5);
        $stop;
      end
    end

  PROCESSING_UNIT u_PROCESSING_UNIT (.clk(clk),
                                     .reset(reset),
                                     .clk_enable(clk_enable),
                                     .i_W0(i_W0),  // int8
                                     .i_W1(i_W1),  // int8
                                     .i_W2(i_W2),  // int8
                                     .i_W3(i_W3),  // int8
                                     .i_X0(i_X0),  // int8
                                     .i_X1(i_X1),  // int8
                                     .i_X2(i_X2),  // int8
                                     .i_X3(i_X3),  // int8
                                     .ce_out(ce_out),
                                     .o_Y(o_Y)  // int16
                                     );

  assign o_Y_enb = ce_out & o_Y_active;



  // Count limited, Unsigned Counter
  //  initial value   = 0
  //  step value      = 1
  //  count to value  = 1000000
  always @(posedge clk or posedge reset)
    begin : c_2_process
      if (reset == 1'b1) begin
        o_Y_addr <= 20'b00000000000000000000;
      end
      else begin
        if (o_Y_enb) begin
          if (o_Y_addr >= 20'b11110100001001000000) begin
            o_Y_addr <= 20'b00000000000000000000;
          end
          else begin
            o_Y_addr <= o_Y_addr + 20'b00000000000000000001;
          end
        end
      end
    end



  assign o_Y_lastAddr = o_Y_addr >= 20'b11110100001001000000;



  assign o_Y_done = o_Y_lastAddr & resetn;



  // Delay to allow last sim cycle to complete
  always @(posedge clk or posedge reset)
    begin : checkDone_1
      if (reset) begin
        check1_done <= 0;
      end
      else begin
        if (o_Y_done_enb) begin
          check1_done <= o_Y_done;
        end
      end
    end

  assign #1 o_Y_addr_delay_1 = o_Y_addr;

  // Data source for o_Y_expected
  initial
    begin : o_Y_expected_fileread
      fp_o_Y_expected = $fopen("o_Y_expected.dat", "r");
      status_o_Y_expected = $rewind(fp_o_Y_expected);
    end

  always @(o_Y_addr_delay_1, ce_out, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        o_Y_expected <= 16'bx;
      end
      else if (ce_out == 1) begin
        status_o_Y_expected = $fscanf(fp_o_Y_expected, "%h", o_Y_expected);
      end
    end

  assign o_Y_ref = o_Y_expected;

  always @(posedge clk or posedge reset)
    begin : o_Y_checker
      if (reset == 1'b1) begin
        o_Y_testFailure <= 1'b0;
      end
      else begin
        if (ce_out == 1'b1 && o_Y !== o_Y_ref) begin
          o_Y_testFailure <= 1'b1;
          $display("ERROR in o_Y at time %t : Expected '%h' Actual '%h'", $time, o_Y_ref, o_Y);
        end
      end
    end

  assign testFailure = o_Y_testFailure;

  always @(posedge clk)
    begin : completed_msg
      if (check1_done == 1'b1) begin
        if (testFailure == 1'b0) begin
          $display("**************TEST COMPLETED (PASSED)**************");
        end
        else begin
          $display("**************TEST COMPLETED (FAILED)**************");
        end
      end
    end

endmodule  // PROCESSING_UNIT_tb


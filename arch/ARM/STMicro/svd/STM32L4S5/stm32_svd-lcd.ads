--  This spec has been automatically generated from STM32L4S5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.LCD is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype SSCR_VSH_Field is HAL.UInt11;
   subtype SSCR_HSW_Field is HAL.UInt12;

   --  LTDC Synchronization Size Configuration Register
   type SSCR_Register is record
      --  Vertical Synchronization Height (in units of horizontal scan line)
      VSH            : SSCR_VSH_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Horizontal Synchronization Width (in units of pixel clock period)
      HSW            : SSCR_HSW_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSCR_Register use record
      VSH            at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      HSW            at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype BPCR_AVBP_Field is HAL.UInt11;
   subtype BPCR_AHBP_Field is HAL.UInt12;

   --  LTDC Back Porch Configuration Register
   type BPCR_Register is record
      --  Accumulated Vertical back porch (in units of horizontal scan line)
      AVBP           : BPCR_AVBP_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Accumulated Horizontal back porch (in units of pixel clock period)
      AHBP           : BPCR_AHBP_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPCR_Register use record
      AVBP           at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      AHBP           at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype AWCR_AAH_Field is HAL.UInt11;
   subtype AWCR_AAW_Field is HAL.UInt12;

   --  LTDC Active Width Configuration Register
   type AWCR_Register is record
      --  Accumulated Active Height (in units of horizontal scan line)
      AAH            : AWCR_AAH_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Accumulated Active Width (in units of pixel clock period)
      AAW            : AWCR_AAW_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AWCR_Register use record
      AAH            at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      AAW            at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TWCR_TOTALH_Field is HAL.UInt11;
   subtype TWCR_TOTALW_Field is HAL.UInt12;

   --  LTDC Total Width Configuration Register
   type TWCR_Register is record
      --  Total Height (in units of horizontal scan line)
      TOTALH         : TWCR_TOTALH_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Total Width (in units of pixel clock period)
      TOTALW         : TWCR_TOTALW_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWCR_Register use record
      TOTALH         at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      TOTALW         at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype GCR_DBW_Field is HAL.UInt3;
   subtype GCR_DGW_Field is HAL.UInt3;
   subtype GCR_DRW_Field is HAL.UInt3;

   --  LTDC Global Control Register
   type GCR_Register is record
      --  LCD-TFT controller enable bit
      LTDCEN         : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Read-only. Dither Blue Width
      DBW            : GCR_DBW_Field := 16#2#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Read-only. Dither Green Width
      DGW            : GCR_DGW_Field := 16#2#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Read-only. Dither Red Width
      DRW            : GCR_DRW_Field := 16#2#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Dither Enable
      DEN            : Boolean := False;
      --  unspecified
      Reserved_17_27 : HAL.UInt11 := 16#0#;
      --  Pixel Clock Polarity
      PCPOL          : Boolean := False;
      --  Not Data Enable Polarity
      DEPOL          : Boolean := False;
      --  Vertical Synchronization Polarity
      VSPOL          : Boolean := False;
      --  Horizontal Synchronization Polarity
      HSPOL          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GCR_Register use record
      LTDCEN         at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      DBW            at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DGW            at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      DRW            at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      DEN            at 0 range 16 .. 16;
      Reserved_17_27 at 0 range 17 .. 27;
      PCPOL          at 0 range 28 .. 28;
      DEPOL          at 0 range 29 .. 29;
      VSPOL          at 0 range 30 .. 30;
      HSPOL          at 0 range 31 .. 31;
   end record;

   --  LTDC Shadow Reload Configuration Register
   type SRCR_Register is record
      --  Immediate Reload
      IMR           : Boolean := False;
      --  Vertical Blanking Reload
      VBR           : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRCR_Register use record
      IMR           at 0 range 0 .. 0;
      VBR           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype BCCR_BCBLUE_Field is HAL.UInt8;
   subtype BCCR_BCGREEN_Field is HAL.UInt8;
   subtype BCCR_BCRED_Field is HAL.UInt8;

   --  LTDC Background Color Configuration Register
   type BCCR_Register is record
      --  Background Color Blue value
      BCBLUE         : BCCR_BCBLUE_Field := 16#0#;
      --  Background Color Green value
      BCGREEN        : BCCR_BCGREEN_Field := 16#0#;
      --  Background Color Red value
      BCRED          : BCCR_BCRED_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCCR_Register use record
      BCBLUE         at 0 range 0 .. 7;
      BCGREEN        at 0 range 8 .. 15;
      BCRED          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  LTDC Interrupt Enable Register
   type IER_Register is record
      --  Line Interrupt Enable
      LIE           : Boolean := False;
      --  FIFO Underrun Interrupt Enable
      FUIE          : Boolean := False;
      --  Transfer Error Interrupt Enable
      TERRIE        : Boolean := False;
      --  Register Reload interrupt enable
      RRIE          : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      LIE           at 0 range 0 .. 0;
      FUIE          at 0 range 1 .. 1;
      TERRIE        at 0 range 2 .. 2;
      RRIE          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  LTDC Interrupt Status Register
   type ISR_Register is record
      --  Read-only. Line Interrupt flag
      LIF           : Boolean;
      --  Read-only. FIFO Underrun Interrupt flag
      FUIF          : Boolean;
      --  Read-only. Transfer Error interrupt flag
      TERRIF        : Boolean;
      --  Read-only. Register Reload Interrupt Flag
      RRIF          : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      LIF           at 0 range 0 .. 0;
      FUIF          at 0 range 1 .. 1;
      TERRIF        at 0 range 2 .. 2;
      RRIF          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  LTDC Interrupt Clear Register
   type ICR_Register is record
      --  Write-only. Clears the Line Interrupt Flag
      CLIF          : Boolean := False;
      --  Write-only. Clears the FIFO Underrun Interrupt flag
      CFUIF         : Boolean := False;
      --  Write-only. Clears the Transfer Error Interrupt Flag
      CTERRIF       : Boolean := False;
      --  Write-only. Clears Register Reload Interrupt Flag
      CRRIF         : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      CLIF          at 0 range 0 .. 0;
      CFUIF         at 0 range 1 .. 1;
      CTERRIF       at 0 range 2 .. 2;
      CRRIF         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype LIPCR_LIPOS_Field is HAL.UInt11;

   --  LTDC Line Interrupt Position Configuration Register
   type LIPCR_Register is record
      --  Line Interrupt Position
      LIPOS          : LIPCR_LIPOS_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LIPCR_Register use record
      LIPOS          at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype CPSR_CYPOS_Field is HAL.UInt16;
   subtype CPSR_CXPOS_Field is HAL.UInt16;

   --  LTDC Current Position Status Register
   type CPSR_Register is record
      --  Read-only. Current Y Position
      CYPOS : CPSR_CYPOS_Field;
      --  Read-only. Current X Position
      CXPOS : CPSR_CXPOS_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPSR_Register use record
      CYPOS at 0 range 0 .. 15;
      CXPOS at 0 range 16 .. 31;
   end record;

   --  LTDC Current Display Status Register
   type CDSR_Register is record
      --  Read-only. Vertical Data Enable display Status
      VDES          : Boolean;
      --  Read-only. Horizontal Data Enable display Status
      HDES          : Boolean;
      --  Read-only. Vertical Synchronization display Status
      VSYNCS        : Boolean;
      --  Read-only. Horizontal Synchronization display Status
      HSYNCS        : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CDSR_Register use record
      VDES          at 0 range 0 .. 0;
      HDES          at 0 range 1 .. 1;
      VSYNCS        at 0 range 2 .. 2;
      HSYNCS        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  LTDC Layer Control Register
   type L1CR_Register is record
      --  Layer Enable
      LEN           : Boolean := False;
      --  Color Keying Enable
      COLKEN        : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Color Look-Up Table Enable
      CLUTEN        : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1CR_Register use record
      LEN           at 0 range 0 .. 0;
      COLKEN        at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      CLUTEN        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype L1WHPCR_WHSTPOS_Field is HAL.UInt12;
   subtype L1WHPCR_WHSPPOS_Field is HAL.UInt12;

   --  LTDC Layer Window Horizontal Position Configuration Register
   type L1WHPCR_Register is record
      --  Window Horizontal Start Position
      WHSTPOS        : L1WHPCR_WHSTPOS_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Window Horizontal Stop Position
      WHSPPOS        : L1WHPCR_WHSPPOS_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1WHPCR_Register use record
      WHSTPOS        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      WHSPPOS        at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype L1WVPCR_WVSTPOS_Field is HAL.UInt11;
   subtype L1WVPCR_WVSPPOS_Field is HAL.UInt11;

   --  LTDC Layer Window Vertical Position Configuration Register
   type L1WVPCR_Register is record
      --  Window Vertical Start Position
      WVSTPOS        : L1WVPCR_WVSTPOS_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Window Vertical Stop Position
      WVSPPOS        : L1WVPCR_WVSPPOS_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1WVPCR_Register use record
      WVSTPOS        at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      WVSPPOS        at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype L1CKCR_CKBLUE_Field is HAL.UInt8;
   subtype L1CKCR_CKGREEN_Field is HAL.UInt8;
   subtype L1CKCR_CKRED_Field is HAL.UInt8;

   --  LTDC Layer Color Keying Configuration Register
   type L1CKCR_Register is record
      --  Color Key Blue value
      CKBLUE         : L1CKCR_CKBLUE_Field := 16#0#;
      --  Color Key Green value
      CKGREEN        : L1CKCR_CKGREEN_Field := 16#0#;
      --  Color Key Red value
      CKRED          : L1CKCR_CKRED_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1CKCR_Register use record
      CKBLUE         at 0 range 0 .. 7;
      CKGREEN        at 0 range 8 .. 15;
      CKRED          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype L1PFCR_PF_Field is HAL.UInt3;

   --  LTDC Layer Pixel Format Configuration Register
   type L1PFCR_Register is record
      --  Pixel Format
      PF            : L1PFCR_PF_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1PFCR_Register use record
      PF            at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype L1CACR_CONSTA_Field is HAL.UInt8;

   --  LTDC Layer Constant Alpha Configuration Register
   type L1CACR_Register is record
      --  Constant Alpha
      CONSTA        : L1CACR_CONSTA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1CACR_Register use record
      CONSTA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype L1DCCR_DCBLUE_Field is HAL.UInt8;
   subtype L1DCCR_DCGREEN_Field is HAL.UInt8;
   subtype L1DCCR_DCRED_Field is HAL.UInt8;
   subtype L1DCCR_DCALPHA_Field is HAL.UInt8;

   --  LTDC Layer Default Color Configuration Register
   type L1DCCR_Register is record
      --  Default Color Blue
      DCBLUE  : L1DCCR_DCBLUE_Field := 16#0#;
      --  Default Color Green
      DCGREEN : L1DCCR_DCGREEN_Field := 16#0#;
      --  Default Color Red
      DCRED   : L1DCCR_DCRED_Field := 16#0#;
      --  Default Color Alpha
      DCALPHA : L1DCCR_DCALPHA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1DCCR_Register use record
      DCBLUE  at 0 range 0 .. 7;
      DCGREEN at 0 range 8 .. 15;
      DCRED   at 0 range 16 .. 23;
      DCALPHA at 0 range 24 .. 31;
   end record;

   subtype L1BFCR_BF2_Field is HAL.UInt3;
   subtype L1BFCR_BF1_Field is HAL.UInt3;

   --  LTDC Layer Blending Factors Configuration Register
   type L1BFCR_Register is record
      --  Blending Factor 2
      BF2            : L1BFCR_BF2_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Blending Factor 1
      BF1            : L1BFCR_BF1_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1BFCR_Register use record
      BF2            at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      BF1            at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype L1CFBLR_CFBLL_Field is HAL.UInt13;
   subtype L1CFBLR_CFBP_Field is HAL.UInt13;

   --  LTDC Layer Color Frame Buffer Length Register
   type L1CFBLR_Register is record
      --  Color Frame Buffer Line Length
      CFBLL          : L1CFBLR_CFBLL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Color Frame Buffer Pitch in bytes
      CFBP           : L1CFBLR_CFBP_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1CFBLR_Register use record
      CFBLL          at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      CFBP           at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype L1CFBLNR_CFBLNBR_Field is HAL.UInt11;

   --  LTDC Layer ColorFrame Buffer Line Number Register
   type L1CFBLNR_Register is record
      --  Frame Buffer Line Number
      CFBLNBR        : L1CFBLNR_CFBLNBR_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1CFBLNR_Register use record
      CFBLNBR        at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype L1CLUTWR_BLUE_Field is HAL.UInt8;
   subtype L1CLUTWR_GREEN_Field is HAL.UInt8;
   subtype L1CLUTWR_RED_Field is HAL.UInt8;
   subtype L1CLUTWR_CLUTADD_Field is HAL.UInt8;

   --  LTDC Layerx CLUT Write Register
   type L1CLUTWR_Register is record
      --  Write-only. Blue value
      BLUE    : L1CLUTWR_BLUE_Field := 16#0#;
      --  Write-only. Green value
      GREEN   : L1CLUTWR_GREEN_Field := 16#0#;
      --  Write-only. Red value
      RED     : L1CLUTWR_RED_Field := 16#0#;
      --  Write-only. CLUT Address
      CLUTADD : L1CLUTWR_CLUTADD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1CLUTWR_Register use record
      BLUE    at 0 range 0 .. 7;
      GREEN   at 0 range 8 .. 15;
      RED     at 0 range 16 .. 23;
      CLUTADD at 0 range 24 .. 31;
   end record;

   --  LTDC Layer Control Register
   type L2CR_Register is record
      --  Layer Enable
      LEN           : Boolean := False;
      --  Color Keying Enable
      COLKEN        : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Color Look-Up Table Enable
      CLUTEN        : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2CR_Register use record
      LEN           at 0 range 0 .. 0;
      COLKEN        at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      CLUTEN        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype L2WHPCR_WHSTPOS_Field is HAL.UInt12;
   subtype L2WHPCR_WHSPPOS_Field is HAL.UInt12;

   --  LTDC Layerx Window Horizontal Position Configuration Register
   type L2WHPCR_Register is record
      --  Window Horizontal Start Position
      WHSTPOS        : L2WHPCR_WHSTPOS_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Window Horizontal Stop Position
      WHSPPOS        : L2WHPCR_WHSPPOS_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2WHPCR_Register use record
      WHSTPOS        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      WHSPPOS        at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype L2WVPCR_WVSTPOS_Field is HAL.UInt11;
   subtype L2WVPCR_WVSPPOS_Field is HAL.UInt11;

   --  LTDC Layer Window Vertical Position Configuration Register
   type L2WVPCR_Register is record
      --  Window Vertical Start Position
      WVSTPOS        : L2WVPCR_WVSTPOS_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Window Vertical Stop Position
      WVSPPOS        : L2WVPCR_WVSPPOS_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2WVPCR_Register use record
      WVSTPOS        at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      WVSPPOS        at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype L2CKCR_CKBLUE_Field is HAL.UInt8;
   subtype L2CKCR_CKGREEN_Field is HAL.UInt8;
   subtype L2CKCR_CKRED_Field is HAL.UInt8;

   --  LTDC Layer Color Keying Configuration Register
   type L2CKCR_Register is record
      --  Color Key Blue value
      CKBLUE         : L2CKCR_CKBLUE_Field := 16#0#;
      --  Color Key Green value
      CKGREEN        : L2CKCR_CKGREEN_Field := 16#0#;
      --  Color Key Red value
      CKRED          : L2CKCR_CKRED_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2CKCR_Register use record
      CKBLUE         at 0 range 0 .. 7;
      CKGREEN        at 0 range 8 .. 15;
      CKRED          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype L2PFCR_PF_Field is HAL.UInt3;

   --  LTDC Layer Pixel Format Configuration Register
   type L2PFCR_Register is record
      --  Pixel Format
      PF            : L2PFCR_PF_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2PFCR_Register use record
      PF            at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype L2CACR_CONSTA_Field is HAL.UInt8;

   --  LTDC Layer Constant Alpha Configuration Register
   type L2CACR_Register is record
      --  Constant Alpha
      CONSTA        : L2CACR_CONSTA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2CACR_Register use record
      CONSTA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype L2DCCR_DCBLUE_Field is HAL.UInt8;
   subtype L2DCCR_DCGREEN_Field is HAL.UInt8;
   subtype L2DCCR_DCRED_Field is HAL.UInt8;
   subtype L2DCCR_DCALPHA_Field is HAL.UInt8;

   --  LTDC Layer Default Color Configuration Register
   type L2DCCR_Register is record
      --  Default Color Blue
      DCBLUE  : L2DCCR_DCBLUE_Field := 16#0#;
      --  Default Color Green
      DCGREEN : L2DCCR_DCGREEN_Field := 16#0#;
      --  Default Color Red
      DCRED   : L2DCCR_DCRED_Field := 16#0#;
      --  Default Color Alpha
      DCALPHA : L2DCCR_DCALPHA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2DCCR_Register use record
      DCBLUE  at 0 range 0 .. 7;
      DCGREEN at 0 range 8 .. 15;
      DCRED   at 0 range 16 .. 23;
      DCALPHA at 0 range 24 .. 31;
   end record;

   subtype L2BFCR_BF2_Field is HAL.UInt3;
   subtype L2BFCR_BF1_Field is HAL.UInt3;

   --  LTDC Layer Blending Factors Configuration Register
   type L2BFCR_Register is record
      --  Blending Factor 2
      BF2            : L2BFCR_BF2_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Blending Factor 1
      BF1            : L2BFCR_BF1_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2BFCR_Register use record
      BF2            at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      BF1            at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype L2CFBLR_CFBLL_Field is HAL.UInt13;
   subtype L2CFBLR_CFBP_Field is HAL.UInt13;

   --  LTDC Layer Color Frame Buffer Length Register
   type L2CFBLR_Register is record
      --  Color Frame Buffer Line Length
      CFBLL          : L2CFBLR_CFBLL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Color Frame Buffer Pitch in bytes
      CFBP           : L2CFBLR_CFBP_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2CFBLR_Register use record
      CFBLL          at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      CFBP           at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype L2CFBLNR_CFBLNBR_Field is HAL.UInt11;

   --  LTDC Layer ColorFrame Buffer Line Number Register
   type L2CFBLNR_Register is record
      --  Frame Buffer Line Number
      CFBLNBR        : L2CFBLNR_CFBLNBR_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2CFBLNR_Register use record
      CFBLNBR        at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype L2CLUTWR_BLUE_Field is HAL.UInt8;
   subtype L2CLUTWR_GREEN_Field is HAL.UInt8;
   subtype L2CLUTWR_RED_Field is HAL.UInt8;
   subtype L2CLUTWR_CLUTADD_Field is HAL.UInt8;

   --  LTDC Layerx CLUT Write Register
   type L2CLUTWR_Register is record
      --  Write-only. Blue value
      BLUE    : L2CLUTWR_BLUE_Field := 16#0#;
      --  Write-only. Green value
      GREEN   : L2CLUTWR_GREEN_Field := 16#0#;
      --  Write-only. Red value
      RED     : L2CLUTWR_RED_Field := 16#0#;
      --  Write-only. CLUT Address
      CLUTADD : L2CLUTWR_CLUTADD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2CLUTWR_Register use record
      BLUE    at 0 range 0 .. 7;
      GREEN   at 0 range 8 .. 15;
      RED     at 0 range 16 .. 23;
      CLUTADD at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Liquid crystal display controller
   type LTCD_Peripheral is record
      --  LTDC Synchronization Size Configuration Register
      SSCR     : aliased SSCR_Register;
      --  LTDC Back Porch Configuration Register
      BPCR     : aliased BPCR_Register;
      --  LTDC Active Width Configuration Register
      AWCR     : aliased AWCR_Register;
      --  LTDC Total Width Configuration Register
      TWCR     : aliased TWCR_Register;
      --  LTDC Global Control Register
      GCR      : aliased GCR_Register;
      --  LTDC Shadow Reload Configuration Register
      SRCR     : aliased SRCR_Register;
      --  LTDC Background Color Configuration Register
      BCCR     : aliased BCCR_Register;
      --  LTDC Interrupt Enable Register
      IER      : aliased IER_Register;
      --  LTDC Interrupt Status Register
      ISR      : aliased ISR_Register;
      --  LTDC Interrupt Clear Register
      ICR      : aliased ICR_Register;
      --  LTDC Line Interrupt Position Configuration Register
      LIPCR    : aliased LIPCR_Register;
      --  LTDC Current Position Status Register
      CPSR     : aliased CPSR_Register;
      --  LTDC Current Display Status Register
      CDSR     : aliased CDSR_Register;
      --  LTDC Layer Control Register
      L1CR     : aliased L1CR_Register;
      --  LTDC Layer Window Horizontal Position Configuration Register
      L1WHPCR  : aliased L1WHPCR_Register;
      --  LTDC Layer Window Vertical Position Configuration Register
      L1WVPCR  : aliased L1WVPCR_Register;
      --  LTDC Layer Color Keying Configuration Register
      L1CKCR   : aliased L1CKCR_Register;
      --  LTDC Layer Pixel Format Configuration Register
      L1PFCR   : aliased L1PFCR_Register;
      --  LTDC Layer Constant Alpha Configuration Register
      L1CACR   : aliased L1CACR_Register;
      --  LTDC Layer Default Color Configuration Register
      L1DCCR   : aliased L1DCCR_Register;
      --  LTDC Layer Blending Factors Configuration Register
      L1BFCR   : aliased L1BFCR_Register;
      --  LTDC Layer Color Frame Buffer Address Register
      L1CFBAR  : aliased HAL.UInt32;
      --  LTDC Layer Color Frame Buffer Length Register
      L1CFBLR  : aliased L1CFBLR_Register;
      --  LTDC Layer ColorFrame Buffer Line Number Register
      L1CFBLNR : aliased L1CFBLNR_Register;
      --  LTDC Layerx CLUT Write Register
      L1CLUTWR : aliased L1CLUTWR_Register;
      --  LTDC Layer Control Register
      L2CR     : aliased L2CR_Register;
      --  LTDC Layerx Window Horizontal Position Configuration Register
      L2WHPCR  : aliased L2WHPCR_Register;
      --  LTDC Layer Window Vertical Position Configuration Register
      L2WVPCR  : aliased L2WVPCR_Register;
      --  LTDC Layer Color Keying Configuration Register
      L2CKCR   : aliased L2CKCR_Register;
      --  LTDC Layer Pixel Format Configuration Register
      L2PFCR   : aliased L2PFCR_Register;
      --  LTDC Layer Constant Alpha Configuration Register
      L2CACR   : aliased L2CACR_Register;
      --  LTDC Layer Default Color Configuration Register
      L2DCCR   : aliased L2DCCR_Register;
      --  LTDC Layer Blending Factors Configuration Register
      L2BFCR   : aliased L2BFCR_Register;
      --  LTDC Layer Color Frame Buffer Address Register
      L2CFBAR  : aliased HAL.UInt32;
      --  LTDC Layer Color Frame Buffer Length Register
      L2CFBLR  : aliased L2CFBLR_Register;
      --  LTDC Layer ColorFrame Buffer Line Number Register
      L2CFBLNR : aliased L2CFBLNR_Register;
      --  LTDC Layerx CLUT Write Register
      L2CLUTWR : aliased L2CLUTWR_Register;
   end record
     with Volatile;

   for LTCD_Peripheral use record
      SSCR     at 16#8# range 0 .. 31;
      BPCR     at 16#C# range 0 .. 31;
      AWCR     at 16#10# range 0 .. 31;
      TWCR     at 16#14# range 0 .. 31;
      GCR      at 16#18# range 0 .. 31;
      SRCR     at 16#24# range 0 .. 31;
      BCCR     at 16#2C# range 0 .. 31;
      IER      at 16#34# range 0 .. 31;
      ISR      at 16#38# range 0 .. 31;
      ICR      at 16#3C# range 0 .. 31;
      LIPCR    at 16#40# range 0 .. 31;
      CPSR     at 16#44# range 0 .. 31;
      CDSR     at 16#48# range 0 .. 31;
      L1CR     at 16#84# range 0 .. 31;
      L1WHPCR  at 16#88# range 0 .. 31;
      L1WVPCR  at 16#8C# range 0 .. 31;
      L1CKCR   at 16#90# range 0 .. 31;
      L1PFCR   at 16#94# range 0 .. 31;
      L1CACR   at 16#98# range 0 .. 31;
      L1DCCR   at 16#9C# range 0 .. 31;
      L1BFCR   at 16#A0# range 0 .. 31;
      L1CFBAR  at 16#AC# range 0 .. 31;
      L1CFBLR  at 16#B0# range 0 .. 31;
      L1CFBLNR at 16#B4# range 0 .. 31;
      L1CLUTWR at 16#C4# range 0 .. 31;
      L2CR     at 16#104# range 0 .. 31;
      L2WHPCR  at 16#108# range 0 .. 31;
      L2WVPCR  at 16#10C# range 0 .. 31;
      L2CKCR   at 16#110# range 0 .. 31;
      L2PFCR   at 16#114# range 0 .. 31;
      L2CACR   at 16#118# range 0 .. 31;
      L2DCCR   at 16#11C# range 0 .. 31;
      L2BFCR   at 16#124# range 0 .. 31;
      L2CFBAR  at 16#12C# range 0 .. 31;
      L2CFBLR  at 16#130# range 0 .. 31;
      L2CFBLNR at 16#134# range 0 .. 31;
      L2CLUTWR at 16#144# range 0 .. 31;
   end record;

   --  Liquid crystal display controller
   LTCD_Periph : aliased LTCD_Peripheral
     with Import, Address => System'To_Address (16#40016800#);

end STM32_SVD.LCD;

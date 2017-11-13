--  This spec has been automatically generated from ATSAMG54J19.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.I2SC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type I2SC0_CR_Register is record
      --  Write-only. Receiver Enable
      RXEN          : Boolean := False;
      --  Write-only. Receiver Disable
      RXDIS         : Boolean := False;
      --  Write-only. Clocks Enable
      CKEN          : Boolean := False;
      --  Write-only. Clocks Disable
      CKDIS         : Boolean := False;
      --  Write-only. Transmitter Enable
      TXEN          : Boolean := False;
      --  Write-only. Transmitter Disable
      TXDIS         : Boolean := False;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Write-only. Software Reset
      SWRST         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_CR_Register use record
      RXEN          at 0 range 0 .. 0;
      RXDIS         at 0 range 1 .. 1;
      CKEN          at 0 range 2 .. 2;
      CKDIS         at 0 range 3 .. 3;
      TXEN          at 0 range 4 .. 4;
      TXDIS         at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      SWRST         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Inter-IC Sound Controller Mode
   type MR_MODE_Field is
     (
      --  I2SCK and i2SWS pin inputs used as bit clock and word select/frame
      --  synchronization.
      Slave,
      --  Bit clock and word select/frame synchronization generated by I2SC
      --  from MCK and output to I2SCK and I2SWS pins. MCK is output as master
      --  clock on I2SMCK if I2SC_MR.IMCKMODE is set.
      Master)
     with Size => 1;
   for MR_MODE_Field use
     (Slave => 0,
      Master => 1);

   --  Data Word Length
   type MR_DATALENGTH_Field is
     (
      --  Data length is set to 32 bits
      MR_DATALENGTH_Field_32_Bits,
      --  Data length is set to 24 bits
      MR_DATALENGTH_Field_24_Bits,
      --  Data length is set to 20 bits
      MR_DATALENGTH_Field_20_Bits,
      --  Data length is set to 18 bits
      MR_DATALENGTH_Field_18_Bits,
      --  Data length is set to 16 bits
      MR_DATALENGTH_Field_16_Bits,
      --  Data length is set to 16-bit compact stereo. Left sample in bits 15:0
      --  and right sample in bits 31:16 of same word.
      MR_DATALENGTH_Field_16_Bits_Compact,
      --  Data length is set to 8 bits
      MR_DATALENGTH_Field_8_Bits,
      --  Data length is set to 8-bit compact stereo. Left sample in bits 7:0
      --  and right sample in bits 15:8 of the same word.
      MR_DATALENGTH_Field_8_Bits_Compact)
     with Size => 3;
   for MR_DATALENGTH_Field use
     (MR_DATALENGTH_Field_32_Bits => 0,
      MR_DATALENGTH_Field_24_Bits => 1,
      MR_DATALENGTH_Field_20_Bits => 2,
      MR_DATALENGTH_Field_18_Bits => 3,
      MR_DATALENGTH_Field_16_Bits => 4,
      MR_DATALENGTH_Field_16_Bits_Compact => 5,
      MR_DATALENGTH_Field_8_Bits => 6,
      MR_DATALENGTH_Field_8_Bits_Compact => 7);

   subtype I2SC0_MR_IMCKDIV_Field is HAL.UInt6;

   --  Master Clock to fs Ratio
   type MR_IMCKFS_Field is
     (
      --  Sample frequency ratio set to 16
      M2Sf16,
      --  Sample frequency ratio set to 32
      M2Sf32,
      --  Sample frequency ratio set to 48
      M2Sf48,
      --  Sample frequency ratio set to 64
      M2Sf64,
      --  Sample frequency ratio set to 96
      M2Sf96,
      --  Sample frequency ratio set to 128
      M2Sf128,
      --  Sample frequency ratio set to 192
      M2Sf192,
      --  Sample frequency ratio set to 256
      M2Sf256,
      --  Sample frequency ratio set to 384
      M2Sf384,
      --  Sample frequency ratio set to 512
      M2Sf512,
      --  Sample frequency ratio set to 768
      M2Sf768,
      --  Sample frequency ratio set to 1024
      M2Sf1024)
     with Size => 6;
   for MR_IMCKFS_Field use
     (M2Sf16 => 0,
      M2Sf32 => 1,
      M2Sf48 => 2,
      M2Sf64 => 3,
      M2Sf96 => 5,
      M2Sf128 => 7,
      M2Sf192 => 11,
      M2Sf256 => 15,
      M2Sf384 => 23,
      M2Sf512 => 31,
      M2Sf768 => 47,
      M2Sf1024 => 63);

   --  Mode Register
   type I2SC0_MR_Register is record
      --  Inter-IC Sound Controller Mode
      MODE           : MR_MODE_Field := SAM_SVD.I2SC.Slave;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Data Word Length
      DATALENGTH     : MR_DATALENGTH_Field :=
                        SAM_SVD.I2SC.MR_DATALENGTH_Field_32_Bits;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Receive Mono
      RXMONO         : Boolean := False;
      --  Single or Multiple PDC Channels for Receiver
      RXDMA          : Boolean := False;
      --  Loop-back Test Mode
      RXLOOP         : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Transmit Mono
      TXMONO         : Boolean := False;
      --  Single or Multiple PDC Channels for Transmitter
      TXDMA          : Boolean := False;
      --  Transmit Data when Underrun
      TXSAME         : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Peripheral Clock to I2SC Master Clock Ratio
      IMCKDIV        : I2SC0_MR_IMCKDIV_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Master Clock to fs Ratio
      IMCKFS         : MR_IMCKFS_Field := SAM_SVD.I2SC.M2Sf16;
      --  Master Clock Mode
      IMCKMODE       : Boolean := False;
      --  I2SWS TDM Slot Width
      IWS            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_MR_Register use record
      MODE           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      DATALENGTH     at 0 range 2 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      RXMONO         at 0 range 8 .. 8;
      RXDMA          at 0 range 9 .. 9;
      RXLOOP         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TXMONO         at 0 range 12 .. 12;
      TXDMA          at 0 range 13 .. 13;
      TXSAME         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      IMCKDIV        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      IMCKFS         at 0 range 24 .. 29;
      IMCKMODE       at 0 range 30 .. 30;
      IWS            at 0 range 31 .. 31;
   end record;

   subtype I2SC0_SR_RXORCH_Field is HAL.UInt2;
   subtype I2SC0_SR_TXURCH_Field is HAL.UInt2;

   --  Status Register
   type I2SC0_SR_Register is record
      --  Read-only. Receiver Enabled
      RXEN           : Boolean;
      --  Read-only. Receive Ready
      RXRDY          : Boolean;
      --  Read-only. Receive Overrun
      RXOR           : Boolean;
      --  Read-only. End of Receiver Transfer
      ENDRX          : Boolean;
      --  Read-only. Transmitter Enabled
      TXEN           : Boolean;
      --  Read-only. Transmit Ready
      TXRDY          : Boolean;
      --  Read-only. Transmit Underrun
      TXUR           : Boolean;
      --  Read-only. End of Transmitter Transfer
      ENDTX          : Boolean;
      --  Read-only. Receive Overrun Channel
      RXORCH         : I2SC0_SR_RXORCH_Field;
      --  unspecified
      Reserved_10_18 : HAL.UInt9;
      --  Read-only. Receive Buffer Full
      RXBUFF         : Boolean;
      --  Read-only. Transmit Underrun Channel
      TXURCH         : I2SC0_SR_TXURCH_Field;
      --  unspecified
      Reserved_22_30 : HAL.UInt9;
      --  Read-only. Transmit Buffer Empty
      TXBUFE         : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_SR_Register use record
      RXEN           at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      RXOR           at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      TXEN           at 0 range 4 .. 4;
      TXRDY          at 0 range 5 .. 5;
      TXUR           at 0 range 6 .. 6;
      ENDTX          at 0 range 7 .. 7;
      RXORCH         at 0 range 8 .. 9;
      Reserved_10_18 at 0 range 10 .. 18;
      RXBUFF         at 0 range 19 .. 19;
      TXURCH         at 0 range 20 .. 21;
      Reserved_22_30 at 0 range 22 .. 30;
      TXBUFE         at 0 range 31 .. 31;
   end record;

   subtype I2SC0_SCR_RXORCH_Field is HAL.UInt2;
   subtype I2SC0_SCR_TXURCH_Field is HAL.UInt2;

   --  Status Clear Register
   type I2SC0_SCR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Write-only. Receive Overrun Status Clear
      RXOR           : Boolean := False;
      --  unspecified
      Reserved_3_5   : HAL.UInt3 := 16#0#;
      --  Write-only. Transmit Underrun Status Clear
      TXUR           : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. Receive Overrun Per Channel Status Clear
      RXORCH         : I2SC0_SCR_RXORCH_Field := 16#0#;
      --  unspecified
      Reserved_10_19 : HAL.UInt10 := 16#0#;
      --  Write-only. Transmit Underrun Per Channel Status Clear
      TXURCH         : I2SC0_SCR_TXURCH_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_SCR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RXOR           at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      TXUR           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RXORCH         at 0 range 8 .. 9;
      Reserved_10_19 at 0 range 10 .. 19;
      TXURCH         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype I2SC0_SSR_RXORCH_Field is HAL.UInt2;
   subtype I2SC0_SSR_TXURCH_Field is HAL.UInt2;

   --  Status Set Register
   type I2SC0_SSR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Write-only. Receive Overrun Status Set
      RXOR           : Boolean := False;
      --  unspecified
      Reserved_3_5   : HAL.UInt3 := 16#0#;
      --  Write-only. Transmit Underrun Status Set
      TXUR           : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. Receive Overrun Per Channel Status Set
      RXORCH         : I2SC0_SSR_RXORCH_Field := 16#0#;
      --  unspecified
      Reserved_10_19 : HAL.UInt10 := 16#0#;
      --  Write-only. Transmit Underrun Per Channel Status Set
      TXURCH         : I2SC0_SSR_TXURCH_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_SSR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RXOR           at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      TXUR           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RXORCH         at 0 range 8 .. 9;
      Reserved_10_19 at 0 range 10 .. 19;
      TXURCH         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Interrupt Enable Register
   type I2SC0_IER_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Write-only. Receiver Ready Interrupt Enable
      RXRDY          : Boolean := False;
      --  Write-only. Receiver Overrun Interrupt Enable
      RXOR           : Boolean := False;
      --  Write-only. End of Reception Interrupt Enable
      ENDRX          : Boolean := False;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Write-only. Transmit Ready Interrupt Enable
      TXRDY          : Boolean := False;
      --  Write-only. Transmit Underflow Interrupt Enable
      TXUR           : Boolean := False;
      --  Write-only. End of Transmission Interrupt Enable
      ENDTX          : Boolean := False;
      --  unspecified
      Reserved_8_18  : HAL.UInt11 := 16#0#;
      --  Write-only. Receive Buffer Full Interrupt Enable
      RXFULL         : Boolean := False;
      --  unspecified
      Reserved_20_30 : HAL.UInt11 := 16#0#;
      --  Write-only. Transmit Buffer Empty Interrupt Enable
      TXEMPTY        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_IER_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      RXOR           at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      TXRDY          at 0 range 5 .. 5;
      TXUR           at 0 range 6 .. 6;
      ENDTX          at 0 range 7 .. 7;
      Reserved_8_18  at 0 range 8 .. 18;
      RXFULL         at 0 range 19 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      TXEMPTY        at 0 range 31 .. 31;
   end record;

   --  Interrupt Disable Register
   type I2SC0_IDR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Write-only. Receiver Ready Interrupt Disable
      RXRDY          : Boolean := False;
      --  Write-only. Receiver Overrun Interrupt Disable
      RXOR           : Boolean := False;
      --  Write-only. End of Reception Interrupt Disable
      ENDRX          : Boolean := False;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Write-only. Transmit Ready Interrupt Disable
      TXRDY          : Boolean := False;
      --  Write-only. Transmit Underflow Interrupt Disable
      TXUR           : Boolean := False;
      --  Write-only. End of Transmission Interrupt Disable
      ENDTX          : Boolean := False;
      --  unspecified
      Reserved_8_18  : HAL.UInt11 := 16#0#;
      --  Write-only. Receive Buffer Full Interrupt Disable
      RXFULL         : Boolean := False;
      --  unspecified
      Reserved_20_30 : HAL.UInt11 := 16#0#;
      --  Write-only. Transmit Buffer Empty Interrupt Disable
      TXEMPTY        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_IDR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      RXOR           at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      TXRDY          at 0 range 5 .. 5;
      TXUR           at 0 range 6 .. 6;
      ENDTX          at 0 range 7 .. 7;
      Reserved_8_18  at 0 range 8 .. 18;
      RXFULL         at 0 range 19 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      TXEMPTY        at 0 range 31 .. 31;
   end record;

   --  Interrupt Mask Register
   type I2SC0_IMR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit;
      --  Read-only. Receiver Ready Interrupt Disable
      RXRDY          : Boolean;
      --  Read-only. Receiver Overrun Interrupt Disable
      RXOR           : Boolean;
      --  Read-only. End of Reception Interrupt Disable
      ENDRX          : Boolean;
      --  unspecified
      Reserved_4_4   : HAL.Bit;
      --  Read-only. Transmit Ready Interrupt Disable
      TXRDY          : Boolean;
      --  Read-only. Transmit Underflow Interrupt Disable
      TXUR           : Boolean;
      --  Read-only. End of Transmission Interrupt Disable
      ENDTX          : Boolean;
      --  unspecified
      Reserved_8_18  : HAL.UInt11;
      --  Read-only. Receive Buffer Full Interrupt Disable
      RXFULL         : Boolean;
      --  unspecified
      Reserved_20_30 : HAL.UInt11;
      --  Read-only. Transmit Buffer Empty Interrupt Disable
      TXEMPTY        : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_IMR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      RXOR           at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      TXRDY          at 0 range 5 .. 5;
      TXUR           at 0 range 6 .. 6;
      ENDTX          at 0 range 7 .. 7;
      Reserved_8_18  at 0 range 8 .. 18;
      RXFULL         at 0 range 19 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      TXEMPTY        at 0 range 31 .. 31;
   end record;

   subtype I2SC0_RCR_RXCTR_Field is HAL.UInt16;

   --  Receive Counter Register
   type I2SC0_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : I2SC0_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype I2SC0_TCR_TXCTR_Field is HAL.UInt16;

   --  Transmit Counter Register
   type I2SC0_TCR_Register is record
      --  Transmit Counter Register
      TXCTR          : I2SC0_TCR_TXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_TCR_Register use record
      TXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype I2SC0_RNCR_RXNCTR_Field is HAL.UInt16;

   --  Receive Next Counter Register
   type I2SC0_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : I2SC0_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype I2SC0_TNCR_TXNCTR_Field is HAL.UInt16;

   --  Transmit Next Counter Register
   type I2SC0_TNCR_Register is record
      --  Transmit Counter Next
      TXNCTR         : I2SC0_TNCR_TXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_TNCR_Register use record
      TXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Transfer Control Register
   type I2SC0_PTCR_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : Boolean := False;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : Boolean := False;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Write-only. Receiver Circular Buffer Enable
      RXCBEN         : Boolean := False;
      --  Write-only. Receiver Circular Buffer Disable
      RXCBDIS        : Boolean := False;
      --  Write-only. Transmitter Circular Buffer Enable
      TXCBEN         : Boolean := False;
      --  Write-only. Transmitter Circular Buffer Disable
      TXCBDIS        : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. Transfer Bus Error Clear
      ERRCLR         : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_PTCR_Register use record
      RXTEN          at 0 range 0 .. 0;
      RXTDIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXTEN          at 0 range 8 .. 8;
      TXTDIS         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      RXCBEN         at 0 range 16 .. 16;
      RXCBDIS        at 0 range 17 .. 17;
      TXCBEN         at 0 range 18 .. 18;
      TXCBDIS        at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ERRCLR         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Transfer Status Register
   type I2SC0_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN          : Boolean;
      --  unspecified
      Reserved_9_15  : HAL.UInt7;
      --  Read-only. Receiver Circular Buffer Enable
      RXCBEN         : Boolean;
      --  unspecified
      Reserved_17_17 : HAL.Bit;
      --  Read-only. Transmitter Circular Buffer Enable
      TXCBEN         : Boolean;
      --  unspecified
      Reserved_19_23 : HAL.UInt5;
      --  Read-only. Transfer Bus Error
      ERR            : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_PTSR_Register use record
      RXTEN          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TXTEN          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      RXCBEN         at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TXCBEN         at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      ERR            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Inter-IC Sound Controller 0
   type I2SC_Peripheral is record
      --  Control Register
      CR   : aliased I2SC0_CR_Register;
      --  Mode Register
      MR   : aliased I2SC0_MR_Register;
      --  Status Register
      SR   : aliased I2SC0_SR_Register;
      --  Status Clear Register
      SCR  : aliased I2SC0_SCR_Register;
      --  Status Set Register
      SSR  : aliased I2SC0_SSR_Register;
      --  Interrupt Enable Register
      IER  : aliased I2SC0_IER_Register;
      --  Interrupt Disable Register
      IDR  : aliased I2SC0_IDR_Register;
      --  Interrupt Mask Register
      IMR  : aliased I2SC0_IMR_Register;
      --  Receiver Holding Register
      RHR  : aliased HAL.UInt32;
      --  Transmitter Holding Register
      THR  : aliased HAL.UInt32;
      --  Receive Pointer Register
      RPR  : aliased HAL.UInt32;
      --  Receive Counter Register
      RCR  : aliased I2SC0_RCR_Register;
      --  Transmit Pointer Register
      TPR  : aliased HAL.UInt32;
      --  Transmit Counter Register
      TCR  : aliased I2SC0_TCR_Register;
      --  Receive Next Pointer Register
      RNPR : aliased HAL.UInt32;
      --  Receive Next Counter Register
      RNCR : aliased I2SC0_RNCR_Register;
      --  Transmit Next Pointer Register
      TNPR : aliased HAL.UInt32;
      --  Transmit Next Counter Register
      TNCR : aliased I2SC0_TNCR_Register;
      --  Transfer Control Register
      PTCR : aliased I2SC0_PTCR_Register;
      --  Transfer Status Register
      PTSR : aliased I2SC0_PTSR_Register;
   end record
     with Volatile;

   for I2SC_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      MR   at 16#4# range 0 .. 31;
      SR   at 16#8# range 0 .. 31;
      SCR  at 16#C# range 0 .. 31;
      SSR  at 16#10# range 0 .. 31;
      IER  at 16#14# range 0 .. 31;
      IDR  at 16#18# range 0 .. 31;
      IMR  at 16#1C# range 0 .. 31;
      RHR  at 16#20# range 0 .. 31;
      THR  at 16#24# range 0 .. 31;
      RPR  at 16#100# range 0 .. 31;
      RCR  at 16#104# range 0 .. 31;
      TPR  at 16#108# range 0 .. 31;
      TCR  at 16#10C# range 0 .. 31;
      RNPR at 16#110# range 0 .. 31;
      RNCR at 16#114# range 0 .. 31;
      TNPR at 16#118# range 0 .. 31;
      TNCR at 16#11C# range 0 .. 31;
      PTCR at 16#120# range 0 .. 31;
      PTSR at 16#124# range 0 .. 31;
   end record;

   --  Inter-IC Sound Controller 0
   I2SC0_Periph : aliased I2SC_Peripheral
     with Import, Address => System'To_Address (16#40000000#);

   --  Inter-IC Sound Controller 1
   I2SC1_Periph : aliased I2SC_Peripheral
     with Import, Address => System'To_Address (16#40004000#);

end SAM_SVD.I2SC;

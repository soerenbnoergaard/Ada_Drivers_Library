--  This spec has been automatically generated from ATSAM4N16B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Digital-to-Analog Converter Controller
package SAM_SVD.DACC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type DACC_CR_Register is record
      --  Write-only. Software Reset
      SWRST         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_CR_Register use record
      SWRST         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Trigger Enable
   type MR_TRGEN_Field is
     (
      --  External trigger mode disabled. DACC in free running mode.
      Free_Run,
      --  External trigger mode enabled.
      Ext_Trig)
     with Size => 1;
   for MR_TRGEN_Field use
     (Free_Run => 0,
      Ext_Trig => 1);

   --  Trigger Selection
   type MR_TRGSEL_Field is
     (
      --  External trigger
      Trgsel0,
      --  TIO Output of the Timer Counter Channel 0
      Trgsel1,
      --  TIO Output of the Timer Counter Channel 1
      Trgsel2,
      --  TIO Output of the Timer Counter Channel 2
      Trgsel3)
     with Size => 3;
   for MR_TRGSEL_Field use
     (Trgsel0 => 0,
      Trgsel1 => 1,
      Trgsel2 => 2,
      Trgsel3 => 3);

   --  DAC enable
   type MR_DACEN_Field is
     (
      --  DAC disabled.
      Disabled,
      --  DAC enabled.
      Enabled)
     with Size => 1;
   for MR_DACEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Word Transfer
   type MR_WORD_Field is
     (
      --  Half-Word transfer.
      Half_Word,
      --  Word Transfer.
      Word)
     with Size => 1;
   for MR_WORD_Field use
     (Half_Word => 0,
      Word => 1);

   subtype DACC_MR_STARTUP_Field is HAL.UInt8;
   subtype DACC_MR_CLKDIV_Field is HAL.UInt16;

   --  Mode Register
   type DACC_MR_Register is record
      --  Trigger Enable
      TRGEN        : MR_TRGEN_Field := SAM_SVD.DACC.Free_Run;
      --  Trigger Selection
      TRGSEL       : MR_TRGSEL_Field := SAM_SVD.DACC.Trgsel0;
      --  DAC enable
      DACEN        : MR_DACEN_Field := SAM_SVD.DACC.Disabled;
      --  Word Transfer
      WORD         : MR_WORD_Field := SAM_SVD.DACC.Half_Word;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
      --  Start-up Time Selection
      STARTUP      : DACC_MR_STARTUP_Field := 16#0#;
      --  DAC Clock Divider for Internal Trigger
      CLKDIV       : DACC_MR_CLKDIV_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_MR_Register use record
      TRGEN        at 0 range 0 .. 0;
      TRGSEL       at 0 range 1 .. 3;
      DACEN        at 0 range 4 .. 4;
      WORD         at 0 range 5 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      STARTUP      at 0 range 8 .. 15;
      CLKDIV       at 0 range 16 .. 31;
   end record;

   --  Interrupt Enable Register
   type DACC_IER_Register is record
      --  Write-only. Transmission Ready Interrupt Enable
      TXRDY         : Boolean := False;
      --  Write-only. End of PDC Interrupt Enable
      ENDTX         : Boolean := False;
      --  Write-only. Buffer Empty Interrupt Enable
      TXBUFE        : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_IER_Register use record
      TXRDY         at 0 range 0 .. 0;
      ENDTX         at 0 range 1 .. 1;
      TXBUFE        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Disable Register
   type DACC_IDR_Register is record
      --  Write-only. Transmission Ready Interrupt Disable
      TXRDY         : Boolean := False;
      --  Write-only. End of PDC Interrupt Disable
      ENDTX         : Boolean := False;
      --  Write-only. Buffer Empty Interrupt Disable
      TXBUFE        : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_IDR_Register use record
      TXRDY         at 0 range 0 .. 0;
      ENDTX         at 0 range 1 .. 1;
      TXBUFE        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Mask Register
   type DACC_IMR_Register is record
      --  Read-only. Transmission Ready Interrupt Mask
      TXRDY         : Boolean;
      --  Read-only. End of PDC Interrupt Mask
      ENDTX         : Boolean;
      --  Read-only. Buffer Empty Interrupt Mask
      TXBUFE        : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_IMR_Register use record
      TXRDY         at 0 range 0 .. 0;
      ENDTX         at 0 range 1 .. 1;
      TXBUFE        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Status Register
   type DACC_ISR_Register is record
      --  Read-only. Transmission Ready Interrupt Flag
      TXRDY         : Boolean;
      --  Read-only. End of PDC Interrupt Flag
      ENDTX         : Boolean;
      --  Read-only. Buffer Empty Interrupt Flag
      TXBUFE        : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_ISR_Register use record
      TXRDY         at 0 range 0 .. 0;
      ENDTX         at 0 range 1 .. 1;
      TXBUFE        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Write Protect KEY
   type WPMR_WPKEY_Field is
     (
      --  Reset value for the field
      Wpmr_Wpkey_Field_Reset,
      --  Writing any other value in this field aborts the write operation of
      --  the WPEN bit.Always reads as 0.
      Passwd)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (Wpmr_Wpkey_Field_Reset => 0,
      Passwd => 4473155);

   --  Write Protect Mode Register
   type DACC_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protect KEY
      WPKEY        : WPMR_WPKEY_Field := Wpmr_Wpkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype DACC_WPSR_WPROTADDR_Field is HAL.UInt8;

   --  Write Protect Status Register
   type DACC_WPSR_Register is record
      --  Read-only. Write protection error
      WPROTERR       : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write protection error address
      WPROTADDR      : DACC_WPSR_WPROTADDR_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_WPSR_Register use record
      WPROTERR       at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPROTADDR      at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DACC_TCR_TXCTR_Field is HAL.UInt16;

   --  Transmit Counter Register
   type DACC_TCR_Register is record
      --  Transmit Counter Register
      TXCTR          : DACC_TCR_TXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_TCR_Register use record
      TXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DACC_TNCR_TXNCTR_Field is HAL.UInt16;

   --  Transmit Next Counter Register
   type DACC_TNCR_Register is record
      --  Transmit Counter Next
      TXNCTR         : DACC_TNCR_TXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_TNCR_Register use record
      TXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Transfer Control Register
   type DACC_PTCR_Register is record
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
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_PTCR_Register use record
      RXTEN          at 0 range 0 .. 0;
      RXTDIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXTEN          at 0 range 8 .. 8;
      TXTDIS         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Transfer Status Register
   type DACC_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN         : Boolean;
      --  unspecified
      Reserved_1_7  : HAL.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN         : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_PTSR_Register use record
      RXTEN         at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      TXTEN         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Digital-to-Analog Converter Controller
   type DACC_Peripheral is record
      --  Control Register
      CR   : aliased DACC_CR_Register;
      --  Mode Register
      MR   : aliased DACC_MR_Register;
      --  Conversion Data Register
      CDR  : aliased HAL.UInt32;
      --  Interrupt Enable Register
      IER  : aliased DACC_IER_Register;
      --  Interrupt Disable Register
      IDR  : aliased DACC_IDR_Register;
      --  Interrupt Mask Register
      IMR  : aliased DACC_IMR_Register;
      --  Interrupt Status Register
      ISR  : aliased DACC_ISR_Register;
      --  Write Protect Mode Register
      WPMR : aliased DACC_WPMR_Register;
      --  Write Protect Status Register
      WPSR : aliased DACC_WPSR_Register;
      --  Transmit Pointer Register
      TPR  : aliased HAL.UInt32;
      --  Transmit Counter Register
      TCR  : aliased DACC_TCR_Register;
      --  Transmit Next Pointer Register
      TNPR : aliased HAL.UInt32;
      --  Transmit Next Counter Register
      TNCR : aliased DACC_TNCR_Register;
      --  Transfer Control Register
      PTCR : aliased DACC_PTCR_Register;
      --  Transfer Status Register
      PTSR : aliased DACC_PTSR_Register;
   end record
     with Volatile;

   for DACC_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      MR   at 16#4# range 0 .. 31;
      CDR  at 16#8# range 0 .. 31;
      IER  at 16#C# range 0 .. 31;
      IDR  at 16#10# range 0 .. 31;
      IMR  at 16#14# range 0 .. 31;
      ISR  at 16#18# range 0 .. 31;
      WPMR at 16#E4# range 0 .. 31;
      WPSR at 16#E8# range 0 .. 31;
      TPR  at 16#108# range 0 .. 31;
      TCR  at 16#10C# range 0 .. 31;
      TNPR at 16#118# range 0 .. 31;
      TNCR at 16#11C# range 0 .. 31;
      PTCR at 16#120# range 0 .. 31;
      PTSR at 16#124# range 0 .. 31;
   end record;

   --  Digital-to-Analog Converter Controller
   DACC_Periph : aliased DACC_Peripheral
     with Import, Address => DACC_Base;

end SAM_SVD.DACC;

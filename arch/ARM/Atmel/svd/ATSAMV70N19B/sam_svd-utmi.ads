--  This spec has been automatically generated from ATSAMV70N19B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  USB Transmitter Interface Macrocell
package SAM_SVD.UTMI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  OHCI Interrupt Configuration Register
   type UTMI_OHCIICR_Register is record
      --  USB PORTx Reset
      RES0           : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  OHCI Asynchronous Resume Interrupt Enable
      ARIE           : Boolean := False;
      --  Reserved
      APPSTART       : Boolean := False;
      --  unspecified
      Reserved_6_22  : HAL.UInt17 := 16#0#;
      --  USB Device Pull-up Disable
      UDPPUDIS       : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UTMI_OHCIICR_Register use record
      RES0           at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      ARIE           at 0 range 4 .. 4;
      APPSTART       at 0 range 5 .. 5;
      Reserved_6_22  at 0 range 6 .. 22;
      UDPPUDIS       at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  UTMI Reference Clock Frequency
   type CKTRIM_FREQ_Field is
     (
      --  12 MHz reference clock
      Xtal12,
      --  16 MHz reference clock
      Xtal16)
     with Size => 2;
   for CKTRIM_FREQ_Field use
     (Xtal12 => 0,
      Xtal16 => 1);

   --  UTMI Clock Trimming Register
   type UTMI_CKTRIM_Register is record
      --  UTMI Reference Clock Frequency
      FREQ          : CKTRIM_FREQ_Field := SAM_SVD.UTMI.Xtal12;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#4000#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UTMI_CKTRIM_Register use record
      FREQ          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  USB Transmitter Interface Macrocell
   type UTMI_Peripheral is record
      --  OHCI Interrupt Configuration Register
      OHCIICR : aliased UTMI_OHCIICR_Register;
      --  UTMI Clock Trimming Register
      CKTRIM  : aliased UTMI_CKTRIM_Register;
   end record
     with Volatile;

   for UTMI_Peripheral use record
      OHCIICR at 16#10# range 0 .. 31;
      CKTRIM  at 16#30# range 0 .. 31;
   end record;

   --  USB Transmitter Interface Macrocell
   UTMI_Periph : aliased UTMI_Peripheral
     with Import, Address => UTMI_Base;

end SAM_SVD.UTMI;

--  This spec has been automatically generated from STM32H7x3.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.DLYB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  DLYB control register
   type CR_Register is record
      --  Delay block enable bit
      DEN           : Boolean := False;
      --  Sampler length enable bit
      SEN           : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      DEN           at 0 range 0 .. 0;
      SEN           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype CFGR_SEL_Field is HAL.UInt4;
   subtype CFGR_UNIT_Field is HAL.UInt7;
   subtype CFGR_LNG_Field is HAL.UInt12;

   --  DLYB configuration register
   type CFGR_Register is record
      --  Select the phase for the Output clock
      SEL            : CFGR_SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Delay Defines the delay of a Unit delay cell
      UNIT           : CFGR_UNIT_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Delay line length value
      LNG            : CFGR_LNG_Field := 16#0#;
      --  unspecified
      Reserved_28_30 : HAL.UInt3 := 16#0#;
      --  Length valid flag
      LNGF           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR_Register use record
      SEL            at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      UNIT           at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LNG            at 0 range 16 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      LNGF           at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DELAY_Block_SDMMC1
   type DLYB_Peripheral is record
      --  DLYB control register
      CR   : aliased CR_Register;
      --  DLYB configuration register
      CFGR : aliased CFGR_Register;
   end record
     with Volatile;

   for DLYB_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      CFGR at 16#4# range 0 .. 31;
   end record;

   --  DELAY_Block_SDMMC1
   DELAY_Block_QUADSPI_Periph : aliased DLYB_Peripheral
     with Import, Address => System'To_Address (16#52006000#);

   --  DELAY_Block_SDMMC1
   DELAY_Block_SDMMC1_Periph : aliased DLYB_Peripheral
     with Import, Address => System'To_Address (16#52008000#);

   --  DELAY_Block_SDMMC1
   DELAY_Block_SDMMC2_Periph : aliased DLYB_Peripheral
     with Import, Address => System'To_Address (16#48022800#);

end STM32_SVD.DLYB;

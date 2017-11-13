--  This spec has been automatically generated from STM32H7x3.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.RNG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  RNG control register
   type RNG_CR_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Random number generator enable
      RNGEN         : Boolean := False;
      --  Interrupt enable
      IE            : Boolean := False;
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  Clock error detection Note: The clock error detection can be used
      --  only when ck_rc48 or ck_pll1_q (ck_pll1_q = 48MHz) source is selected
      --  otherwise, CED bit must be equal to 1. The clock error detection
      --  cannot be enabled nor disabled on the fly when RNG peripheral is
      --  enabled, to enable or disable CED the RNG must be disabled.
      CED           : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RNG_CR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      RNGEN         at 0 range 2 .. 2;
      IE            at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      CED           at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RNG status register
   type RNG_SR_Register is record
      --  Read-only. Data ready Note: If IE=1 in RNG_CR, an interrupt is
      --  generated when DRDY=1. It can rise when the peripheral is disabled.
      --  When the output buffer becomes empty (after reading RNG_DR), this bit
      --  returns to 0 until a new random value is generated.
      DRDY          : Boolean := False;
      --  Read-only. Clock error current status Note: This bit is meaningless
      --  if CED (Clock error detection) bit in RNG_CR is equal to 1.
      CECS          : Boolean := False;
      --  Read-only. Seed error current status ** More than 64 consecutive bits
      --  at the same value (0 or 1) ** More than 32 consecutive alternances of
      --  0 and 1 (0101010101...01)
      SECS          : Boolean := False;
      --  unspecified
      Reserved_3_4  : HAL.UInt2 := 16#0#;
      --  Clock error interrupt status This bit is set at the same time as
      --  CECS. It is cleared by writing it to 0. An interrupt is pending if IE
      --  = 1 in the RNG_CR register. Note: This bit is meaningless if CED
      --  (Clock error detection) bit in RNG_CR is equal to 1.
      CEIS          : Boolean := False;
      --  Seed error interrupt status This bit is set at the same time as SECS.
      --  It is cleared by writing it to 0. ** More than 64 consecutive bits at
      --  the same value (0 or 1) ** More than 32 consecutive alternances of 0
      --  and 1 (0101010101...01) An interrupt is pending if IE = 1 in the
      --  RNG_CR register.
      SEIS          : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RNG_SR_Register use record
      DRDY          at 0 range 0 .. 0;
      CECS          at 0 range 1 .. 1;
      SECS          at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      CEIS          at 0 range 5 .. 5;
      SEIS          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  RNG
   type RNG_Peripheral is record
      --  RNG control register
      RNG_CR : aliased RNG_CR_Register;
      --  RNG status register
      RNG_SR : aliased RNG_SR_Register;
      --  The RNG_DR register is a read-only register that delivers a 32-bit
      --  random value when read. The content of this register is valid when
      --  DRDY= 1, even if RNGEN=0.
      RNG_DR : aliased HAL.UInt32;
   end record
     with Volatile;

   for RNG_Peripheral use record
      RNG_CR at 16#0# range 0 .. 31;
      RNG_SR at 16#4# range 0 .. 31;
      RNG_DR at 16#8# range 0 .. 31;
   end record;

   --  RNG
   RNG_Periph : aliased RNG_Peripheral
     with Import, Address => System'To_Address (16#48021800#);

end STM32_SVD.RNG;

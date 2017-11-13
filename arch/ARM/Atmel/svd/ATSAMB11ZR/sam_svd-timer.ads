--  Atmel software license text goes here    TODO  

--  This spec has been automatically generated from ATSAMB11ZR.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.TIMER is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Timer Control
   type CTRL_Register is record
      --  Enable Timer Operation
      ENABLE                : Boolean := False;
      --  Select external input as enable
      EXTERNAL_INPUT_ENABLE : Boolean := False;
      --  Select external input as clock
      EXTERNAL_INPUT_CLOCK  : Boolean := False;
      --  Enable Timer Interrupt
      INTERRUPT_ENABLE      : Boolean := False;
      --  unspecified
      Reserved_4_7          : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      ENABLE                at 0 range 0 .. 0;
      EXTERNAL_INPUT_ENABLE at 0 range 1 .. 1;
      EXTERNAL_INPUT_CLOCK  at 0 range 2 .. 2;
      INTERRUPT_ENABLE      at 0 range 3 .. 3;
      Reserved_4_7          at 0 range 4 .. 7;
   end record;

   subtype PID4_JEP106_C_CODE_Field is HAL.UInt4;
   subtype PID4_BLOCK_COUNT_Field is HAL.UInt4;

   --  Peripheral ID Register 4
   type PID4_Register is record
      --  Read-only. JEP 106 C Code
      JEP106_C_CODE : PID4_JEP106_C_CODE_Field;
      --  Read-only. Block Count
      BLOCK_COUNT   : PID4_BLOCK_COUNT_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PID4_Register use record
      JEP106_C_CODE at 0 range 0 .. 3;
      BLOCK_COUNT   at 0 range 4 .. 7;
   end record;

   subtype PID1_PART_NUMBER_Field is HAL.UInt4;
   subtype PID1_JEP106_ID_3_0_Field is HAL.UInt4;

   --  Peripheral ID Register 1
   type PID1_Register is record
      --  Read-only. Part Number Bits 11:8
      PART_NUMBER   : PID1_PART_NUMBER_Field;
      --  Read-only. JEP106 ID Bits 3:0
      JEP106_ID_3_0 : PID1_JEP106_ID_3_0_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PID1_Register use record
      PART_NUMBER   at 0 range 0 .. 3;
      JEP106_ID_3_0 at 0 range 4 .. 7;
   end record;

   subtype PID2_JEP106_ID_6_4_Field is HAL.UInt3;
   subtype PID2_REVISION_Field is HAL.UInt4;

   --  Peripheral ID Register 2
   type PID2_Register is record
      --  Read-only. JEP106 ID Bits 6:4
      JEP106_ID_6_4 : PID2_JEP106_ID_6_4_Field;
      --  Read-only. JEDEC Used
      JEDEC_USED    : Boolean;
      --  Read-only. Revision
      REVISION      : PID2_REVISION_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PID2_Register use record
      JEP106_ID_6_4 at 0 range 0 .. 2;
      JEDEC_USED    at 0 range 3 .. 3;
      REVISION      at 0 range 4 .. 7;
   end record;

   subtype PID3_CUSTOMER_MOD_NUMBER_Field is HAL.UInt4;
   subtype PID3_ECO_REV_NUMBER_Field is HAL.UInt4;

   --  Peripheral ID Register 3
   type PID3_Register is record
      --  Read-only. Customer Modification Number
      CUSTOMER_MOD_NUMBER : PID3_CUSTOMER_MOD_NUMBER_Field;
      --  Read-only. ECO Revision Number
      ECO_REV_NUMBER      : PID3_ECO_REV_NUMBER_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PID3_Register use record
      CUSTOMER_MOD_NUMBER at 0 range 0 .. 3;
      ECO_REV_NUMBER      at 0 range 4 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ARM General Purpose Timer
   type TIMER0_Peripheral is record
      --  Timer Control
      CTRL           : aliased CTRL_Register;
      --  Current Value
      VALUE          : aliased HAL.UInt32;
      --  Reload Value
      RELOAD         : aliased HAL.UInt32;
      --  Timer Interrupt, write 1 to clear
      INTSTATUSCLEAR : aliased HAL.UInt8;
      --  Peripheral ID Register 4
      PID4           : aliased PID4_Register;
      --  Peripheral ID Register 5
      PID5           : aliased HAL.UInt8;
      --  Peripheral ID Register 6
      PID6           : aliased HAL.UInt8;
      --  Peripheral ID Register 7
      PID7           : aliased HAL.UInt8;
      --  Peripheral ID Register 0
      PID0           : aliased HAL.UInt8;
      --  Peripheral ID Register 1
      PID1           : aliased PID1_Register;
      --  Peripheral ID Register 2
      PID2           : aliased PID2_Register;
      --  Peripheral ID Register 3
      PID3           : aliased PID3_Register;
      --  Component ID Register 0
      CID0           : aliased HAL.UInt8;
      --  Component ID Register 1
      CID1           : aliased HAL.UInt8;
      --  Component ID Register 2
      CID2           : aliased HAL.UInt8;
      --  Component ID Register 3
      CID3           : aliased HAL.UInt8;
   end record
     with Volatile;

   for TIMER0_Peripheral use record
      CTRL           at 16#0# range 0 .. 7;
      VALUE          at 16#4# range 0 .. 31;
      RELOAD         at 16#8# range 0 .. 31;
      INTSTATUSCLEAR at 16#C# range 0 .. 7;
      PID4           at 16#FD0# range 0 .. 7;
      PID5           at 16#FD4# range 0 .. 7;
      PID6           at 16#FD8# range 0 .. 7;
      PID7           at 16#FDC# range 0 .. 7;
      PID0           at 16#FE0# range 0 .. 7;
      PID1           at 16#FE4# range 0 .. 7;
      PID2           at 16#FE8# range 0 .. 7;
      PID3           at 16#FEC# range 0 .. 7;
      CID0           at 16#FF0# range 0 .. 7;
      CID1           at 16#FF4# range 0 .. 7;
      CID2           at 16#FF8# range 0 .. 7;
      CID3           at 16#FFC# range 0 .. 7;
   end record;

   --  ARM General Purpose Timer
   TIMER0_Periph : aliased TIMER0_Peripheral
     with Import, Address => System'To_Address (16#40000000#);

end SAM_SVD.TIMER;
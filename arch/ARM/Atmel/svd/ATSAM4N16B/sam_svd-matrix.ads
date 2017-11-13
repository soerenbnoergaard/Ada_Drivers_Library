--  This spec has been automatically generated from ATSAM4N16B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  AHB Bus Matrix
package SAM_SVD.MATRIX is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MATRIX_MCFG_ULBT_Field is HAL.UInt3;

   --  Master Configuration Register
   type MATRIX_MCFG_Register is record
      --  Undefined Length Burst Type
      ULBT          : MATRIX_MCFG_ULBT_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_MCFG_Register use record
      ULBT          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Master Configuration Register
   type MATRIX_MCFG_Registers is array (0 .. 2) of MATRIX_MCFG_Register
     with Volatile;

   subtype MATRIX_SCFG_SLOT_CYCLE_Field is HAL.UInt8;
   subtype MATRIX_SCFG_DEFMSTR_TYPE_Field is HAL.UInt2;
   subtype MATRIX_SCFG_FIXED_DEFMSTR_Field is HAL.UInt3;
   subtype MATRIX_SCFG_ARBT_Field is HAL.UInt2;

   --  Slave Configuration Register
   type MATRIX_SCFG_Register is record
      --  Maximum Number of Allowed Cycles for a Burst
      SLOT_CYCLE     : MATRIX_SCFG_SLOT_CYCLE_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Default Master Type
      DEFMSTR_TYPE   : MATRIX_SCFG_DEFMSTR_TYPE_Field := 16#0#;
      --  Fixed Default Master
      FIXED_DEFMSTR  : MATRIX_SCFG_FIXED_DEFMSTR_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Arbitration Type
      ARBT           : MATRIX_SCFG_ARBT_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_SCFG_Register use record
      SLOT_CYCLE     at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DEFMSTR_TYPE   at 0 range 16 .. 17;
      FIXED_DEFMSTR  at 0 range 18 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      ARBT           at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Slave Configuration Register
   type MATRIX_SCFG_Registers is array (0 .. 3) of MATRIX_SCFG_Register
     with Volatile;

   subtype MATRIX_PRAS_M0PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_M1PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_M2PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_M3PR_Field is HAL.UInt2;

   --  Priority Register A for Slave 0
   type MATRIX_PRAS_Register is record
      --  Master 0 Priority
      M0PR           : MATRIX_PRAS_M0PR_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Master 1 Priority
      M1PR           : MATRIX_PRAS_M1PR_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Master 2 Priority
      M2PR           : MATRIX_PRAS_M2PR_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Master 3 Priority
      M3PR           : MATRIX_PRAS_M3PR_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_PRAS_Register use record
      M0PR           at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      M1PR           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      M2PR           at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      M3PR           at 0 range 12 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  CCFG_SYSIO_SYSIO array
   type CCFG_SYSIO_SYSIO_Field_Array is array (4 .. 7) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for CCFG_SYSIO_SYSIO
   type CCFG_SYSIO_SYSIO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SYSIO as a value
            Val : HAL.UInt4;
         when True =>
            --  SYSIO as an array
            Arr : CCFG_SYSIO_SYSIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for CCFG_SYSIO_SYSIO_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  System I/O Configuration register
   type CCFG_SYSIO_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  PB4 or TDI Assignment
      SYSIO          : CCFG_SYSIO_SYSIO_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  PB12 or ERASE Assignment
      SYSIO12        : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCFG_SYSIO_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      SYSIO          at 0 range 4 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SYSIO12        at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  AHB Bus Matrix
   type MATRIX_Peripheral is record
      --  Master Configuration Register
      MATRIX_MCFG  : aliased MATRIX_MCFG_Registers;
      --  Slave Configuration Register
      MATRIX_SCFG  : aliased MATRIX_SCFG_Registers;
      --  Priority Register A for Slave 0
      MATRIX_PRAS0 : aliased MATRIX_PRAS_Register;
      --  Priority Register A for Slave 1
      MATRIX_PRAS1 : aliased MATRIX_PRAS_Register;
      --  Priority Register A for Slave 2
      MATRIX_PRAS2 : aliased MATRIX_PRAS_Register;
      --  Priority Register A for Slave 3
      MATRIX_PRAS3 : aliased MATRIX_PRAS_Register;
      --  System I/O Configuration register
      CCFG_SYSIO   : aliased CCFG_SYSIO_Register;
   end record
     with Volatile;

   for MATRIX_Peripheral use record
      MATRIX_MCFG  at 16#0# range 0 .. 95;
      MATRIX_SCFG  at 16#40# range 0 .. 127;
      MATRIX_PRAS0 at 16#80# range 0 .. 31;
      MATRIX_PRAS1 at 16#88# range 0 .. 31;
      MATRIX_PRAS2 at 16#90# range 0 .. 31;
      MATRIX_PRAS3 at 16#98# range 0 .. 31;
      CCFG_SYSIO   at 16#114# range 0 .. 31;
   end record;

   --  AHB Bus Matrix
   MATRIX_Periph : aliased MATRIX_Peripheral
     with Import, Address => MATRIX_Base;

end SAM_SVD.MATRIX;
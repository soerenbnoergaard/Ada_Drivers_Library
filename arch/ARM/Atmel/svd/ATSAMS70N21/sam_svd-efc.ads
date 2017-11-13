--  This spec has been automatically generated from ATSAMS70N21.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Embedded Flash Controller
package SAM_SVD.EFC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype EFC_FMR_FWS_Field is HAL.UInt4;

   --  EEFC Flash Mode Register
   type EFC_FMR_Register is record
      --  Flash Ready Interrupt Enable
      FRDY           : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Flash Wait State
      FWS            : EFC_FMR_FWS_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Sequential Code Optimization Disable
      SCOD           : Boolean := False;
      --  unspecified
      Reserved_17_25 : HAL.UInt9 := 16#0#;
      --  Code Loop Optimization Enable
      CLOE           : Boolean := True;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFC_FMR_Register use record
      FRDY           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      FWS            at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SCOD           at 0 range 16 .. 16;
      Reserved_17_25 at 0 range 17 .. 25;
      CLOE           at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Flash Command
   type FCR_FCMD_Field is
     (
      --  Get Flash descriptor
      Getd,
      --  Write page
      Wp,
      --  Write page and lock
      Wpl,
      --  Erase page and write page
      Ewp,
      --  Erase page and write page then lock
      Ewpl,
      --  Erase all
      Ea,
      --  Erase pages
      Epa,
      --  Set lock bit
      Slb,
      --  Clear lock bit
      Clb,
      --  Get lock bit
      Glb,
      --  Set GPNVM bit
      Sgpb,
      --  Clear GPNVM bit
      Cgpb,
      --  Get GPNVM bit
      Ggpb,
      --  Start read unique identifier
      Stui,
      --  Stop read unique identifier
      Spui,
      --  Get CALIB bit
      Gcalb,
      --  Erase sector
      Es,
      --  Write user signature
      Wus,
      --  Erase user signature
      Eus,
      --  Start read user signature
      Stus,
      --  Stop read user signature
      Spus)
     with Size => 8;
   for FCR_FCMD_Field use
     (Getd => 0,
      Wp => 1,
      Wpl => 2,
      Ewp => 3,
      Ewpl => 4,
      Ea => 5,
      Epa => 7,
      Slb => 8,
      Clb => 9,
      Glb => 10,
      Sgpb => 11,
      Cgpb => 12,
      Ggpb => 13,
      Stui => 14,
      Spui => 15,
      Gcalb => 16,
      Es => 17,
      Wus => 18,
      Eus => 19,
      Stus => 20,
      Spus => 21);

   subtype EFC_FCR_FARG_Field is HAL.UInt16;

   --  Flash Writing Protection Key
   type FCR_FKEY_Field is
     (
      --  Reset value for the field
      Fcr_Fkey_Field_Reset,
      --  The 0x5A value enables the command defined by the bits of the
      --  register. If the field is written with a different value, the write
      --  is not performed and no action is started.
      Passwd)
     with Size => 8;
   for FCR_FKEY_Field use
     (Fcr_Fkey_Field_Reset => 0,
      Passwd => 90);

   --  EEFC Flash Command Register
   type EFC_FCR_Register is record
      --  Write-only. Flash Command
      FCMD : FCR_FCMD_Field := SAM_SVD.EFC.Getd;
      --  Write-only. Flash Command Argument
      FARG : EFC_FCR_FARG_Field := 16#0#;
      --  Write-only. Flash Writing Protection Key
      FKEY : FCR_FKEY_Field := Fcr_Fkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFC_FCR_Register use record
      FCMD at 0 range 0 .. 7;
      FARG at 0 range 8 .. 23;
      FKEY at 0 range 24 .. 31;
   end record;

   --  EEFC Flash Status Register
   type EFC_FSR_Register is record
      --  Read-only. Flash Ready Status (cleared when Flash is busy)
      FRDY           : Boolean;
      --  Read-only. Flash Command Error Status (cleared on read or by writing
      --  EEFC_FCR)
      FCMDE          : Boolean;
      --  Read-only. Flash Lock Error Status (cleared on read)
      FLOCKE         : Boolean;
      --  Read-only. Flash Error Status (cleared when a programming operation
      --  starts)
      FLERR          : Boolean;
      --  unspecified
      Reserved_4_15  : HAL.UInt12;
      --  Read-only. Unique ECC Error on LSB Part of the Memory Flash Data Bus
      --  (cleared on read)
      UECCELSB       : Boolean;
      --  Read-only. Multiple ECC Error on LSB Part of the Memory Flash Data
      --  Bus (cleared on read)
      MECCELSB       : Boolean;
      --  Read-only. Unique ECC Error on MSB Part of the Memory Flash Data Bus
      --  (cleared on read)
      UECCEMSB       : Boolean;
      --  Read-only. Multiple ECC Error on MSB Part of the Memory Flash Data
      --  Bus (cleared on read)
      MECCEMSB       : Boolean;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFC_FSR_Register use record
      FRDY           at 0 range 0 .. 0;
      FCMDE          at 0 range 1 .. 1;
      FLOCKE         at 0 range 2 .. 2;
      FLERR          at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      UECCELSB       at 0 range 16 .. 16;
      MECCELSB       at 0 range 17 .. 17;
      UECCEMSB       at 0 range 18 .. 18;
      MECCEMSB       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Write Protection Key
   type WPMR_WPKEY_Field is
     (
      --  Reset value for the field
      Wpmr_Wpkey_Field_Reset,
      --  Writing any other value in this field aborts the write
      --  operation.Always reads as 0.
      Passwd)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (Wpmr_Wpkey_Field_Reset => 0,
      Passwd => 4539971);

   --  Write Protection Mode Register
   type EFC_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEY_Field := Wpmr_Wpkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Embedded Flash Controller
   type EFC_Peripheral is record
      --  EEFC Flash Mode Register
      FMR  : aliased EFC_FMR_Register;
      --  EEFC Flash Command Register
      FCR  : aliased EFC_FCR_Register;
      --  EEFC Flash Status Register
      FSR  : aliased EFC_FSR_Register;
      --  EEFC Flash Result Register
      FRR  : aliased HAL.UInt32;
      --  Write Protection Mode Register
      WPMR : aliased EFC_WPMR_Register;
   end record
     with Volatile;

   for EFC_Peripheral use record
      FMR  at 16#0# range 0 .. 31;
      FCR  at 16#4# range 0 .. 31;
      FSR  at 16#8# range 0 .. 31;
      FRR  at 16#C# range 0 .. 31;
      WPMR at 16#E4# range 0 .. 31;
   end record;

   --  Embedded Flash Controller
   EFC_Periph : aliased EFC_Peripheral
     with Import, Address => EFC_Base;

end SAM_SVD.EFC;
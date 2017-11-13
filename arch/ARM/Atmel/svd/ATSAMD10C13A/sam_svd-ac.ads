--  ============================================================================
--  Atmel Microcontroller Software Support
--  ============================================================================
--  Copyright (c) 2016 Atmel Corporation,
--  a wholly owned subsidiary of Microchip Technology Inc.
--
--  Licensed under the Apache License, Version 2.0 (the "License");
--  you may not use this file except in compliance with the License.
--  You may obtain a copy of the Licence at
--
--  http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS,
--  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.
--  ============================================================================  

--  This spec has been automatically generated from ATSAMD10C13A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.AC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control A
   type AC_CTRLA_Register is record
      --  Write-only. Software Reset
      SWRST        : Boolean := False;
      --  Enable
      ENABLE       : Boolean := False;
      --  Run in Standby
      RUNSTDBY     : Boolean := False;
      --  unspecified
      Reserved_3_6 : HAL.UInt4 := 16#0#;
      --  Low-Power Mux
      LPMUX        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for AC_CTRLA_Register use record
      SWRST        at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      RUNSTDBY     at 0 range 2 .. 2;
      Reserved_3_6 at 0 range 3 .. 6;
      LPMUX        at 0 range 7 .. 7;
   end record;

   --  AC_CTRLB_START array
   type AC_CTRLB_START_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AC_CTRLB_START
   type AC_CTRLB_START_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  START as a value
            Val : HAL.UInt2;
         when True =>
            --  START as an array
            Arr : AC_CTRLB_START_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AC_CTRLB_START_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Control B
   type AC_CTRLB_Register is record
      --  Write-only. Comparator 0 Start Comparison
      START        : AC_CTRLB_START_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for AC_CTRLB_Register use record
      START        at 0 range 0 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  AC_EVCTRL_COMPEO array
   type AC_EVCTRL_COMPEO_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AC_EVCTRL_COMPEO
   type AC_EVCTRL_COMPEO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  COMPEO as a value
            Val : HAL.UInt2;
         when True =>
            --  COMPEO as an array
            Arr : AC_EVCTRL_COMPEO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AC_EVCTRL_COMPEO_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  AC_EVCTRL_COMPEI array
   type AC_EVCTRL_COMPEI_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AC_EVCTRL_COMPEI
   type AC_EVCTRL_COMPEI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  COMPEI as a value
            Val : HAL.UInt2;
         when True =>
            --  COMPEI as an array
            Arr : AC_EVCTRL_COMPEI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AC_EVCTRL_COMPEI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Event Control
   type AC_EVCTRL_Register is record
      --  Comparator 0 Event Output Enable
      COMPEO         : AC_EVCTRL_COMPEO_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Window 0 Event Output Enable
      WINEO0         : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Comparator 0 Event Input
      COMPEI         : AC_EVCTRL_COMPEI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for AC_EVCTRL_Register use record
      COMPEO         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      WINEO0         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      COMPEI         at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  AC_INTENCLR_COMP array
   type AC_INTENCLR_COMP_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AC_INTENCLR_COMP
   type AC_INTENCLR_COMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  COMP as a value
            Val : HAL.UInt2;
         when True =>
            --  COMP as an array
            Arr : AC_INTENCLR_COMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AC_INTENCLR_COMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Enable Clear
   type AC_INTENCLR_Register is record
      --  Comparator 0 Interrupt Enable
      COMP         : AC_INTENCLR_COMP_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_3 : HAL.UInt2 := 16#0#;
      --  Window 0 Interrupt Enable
      WIN0         : Boolean := False;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for AC_INTENCLR_Register use record
      COMP         at 0 range 0 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      WIN0         at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   --  AC_INTENSET_COMP array
   type AC_INTENSET_COMP_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AC_INTENSET_COMP
   type AC_INTENSET_COMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  COMP as a value
            Val : HAL.UInt2;
         when True =>
            --  COMP as an array
            Arr : AC_INTENSET_COMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AC_INTENSET_COMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Enable Set
   type AC_INTENSET_Register is record
      --  Comparator 0 Interrupt Enable
      COMP         : AC_INTENSET_COMP_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_3 : HAL.UInt2 := 16#0#;
      --  Window 0 Interrupt Enable
      WIN0         : Boolean := False;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for AC_INTENSET_Register use record
      COMP         at 0 range 0 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      WIN0         at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   --  AC_INTFLAG_COMP array
   type AC_INTFLAG_COMP_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AC_INTFLAG_COMP
   type AC_INTFLAG_COMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  COMP as a value
            Val : HAL.UInt2;
         when True =>
            --  COMP as an array
            Arr : AC_INTFLAG_COMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AC_INTFLAG_COMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Flag Status and Clear
   type AC_INTFLAG_Register is record
      --  Comparator 0
      COMP         : AC_INTFLAG_COMP_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_3 : HAL.UInt2 := 16#0#;
      --  Window 0
      WIN0         : Boolean := False;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for AC_INTFLAG_Register use record
      COMP         at 0 range 0 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      WIN0         at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   --  AC_STATUSA_STATE array
   type AC_STATUSA_STATE_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AC_STATUSA_STATE
   type AC_STATUSA_STATE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  STATE as a value
            Val : HAL.UInt2;
         when True =>
            --  STATE as an array
            Arr : AC_STATUSA_STATE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AC_STATUSA_STATE_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Window 0 Current State
   type STATUSA_WSTATE0Select is
     (
      --  Signal is above window
      Above,
      --  Signal is inside window
      Inside,
      --  Signal is below window
      Below)
     with Size => 2;
   for STATUSA_WSTATE0Select use
     (Above => 0,
      Inside => 1,
      Below => 2);

   --  Status A
   type AC_STATUSA_Register is record
      --  Read-only. Comparator 0 Current State
      STATE        : AC_STATUSA_STATE_Field;
      --  unspecified
      Reserved_2_3 : HAL.UInt2;
      --  Read-only. Window 0 Current State
      WSTATE0      : STATUSA_WSTATE0Select;
      --  unspecified
      Reserved_6_7 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for AC_STATUSA_Register use record
      STATE        at 0 range 0 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      WSTATE0      at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  AC_STATUSB_READY array
   type AC_STATUSB_READY_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AC_STATUSB_READY
   type AC_STATUSB_READY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  READY as a value
            Val : HAL.UInt2;
         when True =>
            --  READY as an array
            Arr : AC_STATUSB_READY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AC_STATUSB_READY_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Status B
   type AC_STATUSB_Register is record
      --  Read-only. Comparator 0 Ready
      READY        : AC_STATUSB_READY_Field;
      --  unspecified
      Reserved_2_6 : HAL.UInt5;
      --  Read-only. Synchronization Busy
      SYNCBUSY     : Boolean;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for AC_STATUSB_Register use record
      READY        at 0 range 0 .. 1;
      Reserved_2_6 at 0 range 2 .. 6;
      SYNCBUSY     at 0 range 7 .. 7;
   end record;

   --  AC_STATUSC_STATE array
   type AC_STATUSC_STATE_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AC_STATUSC_STATE
   type AC_STATUSC_STATE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  STATE as a value
            Val : HAL.UInt2;
         when True =>
            --  STATE as an array
            Arr : AC_STATUSC_STATE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AC_STATUSC_STATE_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Window 0 Current State
   type STATUSC_WSTATE0Select is
     (
      --  Signal is above window
      Above,
      --  Signal is inside window
      Inside,
      --  Signal is below window
      Below)
     with Size => 2;
   for STATUSC_WSTATE0Select use
     (Above => 0,
      Inside => 1,
      Below => 2);

   --  Status C
   type AC_STATUSC_Register is record
      --  Read-only. Comparator 0 Current State
      STATE        : AC_STATUSC_STATE_Field;
      --  unspecified
      Reserved_2_3 : HAL.UInt2;
      --  Read-only. Window 0 Current State
      WSTATE0      : STATUSC_WSTATE0Select;
      --  unspecified
      Reserved_6_7 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for AC_STATUSC_Register use record
      STATE        at 0 range 0 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      WSTATE0      at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Window 0 Interrupt Selection
   type WINCTRL_WINTSEL0Select is
     (
      --  Interrupt on signal above window
      Above,
      --  Interrupt on signal inside window
      Inside,
      --  Interrupt on signal below window
      Below,
      --  Interrupt on signal outside window
      Outside)
     with Size => 2;
   for WINCTRL_WINTSEL0Select use
     (Above => 0,
      Inside => 1,
      Below => 2,
      Outside => 3);

   --  Window Control
   type AC_WINCTRL_Register is record
      --  Window 0 Mode Enable
      WEN0         : Boolean := False;
      --  Window 0 Interrupt Selection
      WINTSEL0     : WINCTRL_WINTSEL0Select := SAM_SVD.AC.Above;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for AC_WINCTRL_Register use record
      WEN0         at 0 range 0 .. 0;
      WINTSEL0     at 0 range 1 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Speed Selection
   type COMPCTRL_SPEEDSelect is
     (
      --  Low speed
      Low,
      --  High speed
      High)
     with Size => 2;
   for COMPCTRL_SPEEDSelect use
     (Low => 0,
      High => 1);

   --  Interrupt Selection
   type COMPCTRL_INTSELSelect is
     (
      --  Interrupt on comparator output toggle
      Toggle,
      --  Interrupt on comparator output rising
      Rising,
      --  Interrupt on comparator output falling
      Falling,
      --  Interrupt on end of comparison (single-shot mode only)
      Eoc)
     with Size => 2;
   for COMPCTRL_INTSELSelect use
     (Toggle => 0,
      Rising => 1,
      Falling => 2,
      Eoc => 3);

   --  Negative Input Mux Selection
   type COMPCTRL_MUXNEGSelect is
     (
      --  I/O pin 0
      Pin0,
      --  I/O pin 1
      Pin1,
      --  I/O pin 2
      Pin2,
      --  I/O pin 3
      Pin3,
      --  Ground
      Gnd,
      --  VDD scaler
      Vscale,
      --  Internal bandgap voltage
      Bandgap,
      --  DAC output
      Dac)
     with Size => 3;
   for COMPCTRL_MUXNEGSelect use
     (Pin0 => 0,
      Pin1 => 1,
      Pin2 => 2,
      Pin3 => 3,
      Gnd => 4,
      Vscale => 5,
      Bandgap => 6,
      Dac => 7);

   --  Positive Input Mux Selection
   type COMPCTRL_MUXPOSSelect is
     (
      --  I/O pin 0
      Pin0,
      --  I/O pin 1
      Pin1,
      --  I/O pin 2
      Pin2,
      --  I/O pin 3
      Pin3)
     with Size => 2;
   for COMPCTRL_MUXPOSSelect use
     (Pin0 => 0,
      Pin1 => 1,
      Pin2 => 2,
      Pin3 => 3);

   --  Output
   type COMPCTRL_OUTSelect is
     (
      --  The output of COMPn is not routed to the COMPn I/O port
      Off,
      --  The asynchronous output of COMPn is routed to the COMPn I/O port
      Async,
      --  The synchronous output (including filtering) of COMPn is routed to
      --  the COMPn I/O port
      Sync)
     with Size => 2;
   for COMPCTRL_OUTSelect use
     (Off => 0,
      Async => 1,
      Sync => 2);

   --  Filter Length
   type COMPCTRL_FLENSelect is
     (
      --  No filtering
      Off,
      --  3-bit majority function (2 of 3)
      Maj3,
      --  5-bit majority function (3 of 5)
      Maj5)
     with Size => 3;
   for COMPCTRL_FLENSelect use
     (Off => 0,
      Maj3 => 1,
      Maj5 => 2);

   --  Comparator Control n
   type AC_COMPCTRL_Register is record
      --  Enable
      ENABLE         : Boolean := False;
      --  Single-Shot Mode
      SINGLE         : Boolean := False;
      --  Speed Selection
      SPEED          : COMPCTRL_SPEEDSelect := SAM_SVD.AC.Low;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Interrupt Selection
      INTSEL         : COMPCTRL_INTSELSelect := SAM_SVD.AC.Toggle;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Negative Input Mux Selection
      MUXNEG         : COMPCTRL_MUXNEGSelect := SAM_SVD.AC.Pin0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Positive Input Mux Selection
      MUXPOS         : COMPCTRL_MUXPOSSelect := SAM_SVD.AC.Pin0;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Swap Inputs and Invert
      SWAP           : Boolean := False;
      --  Output
      OUT_k          : COMPCTRL_OUTSelect := SAM_SVD.AC.Off;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Hysteresis Enable
      HYST           : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Filter Length
      FLEN           : COMPCTRL_FLENSelect := SAM_SVD.AC.Off;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AC_COMPCTRL_Register use record
      ENABLE         at 0 range 0 .. 0;
      SINGLE         at 0 range 1 .. 1;
      SPEED          at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      INTSEL         at 0 range 5 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MUXNEG         at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      MUXPOS         at 0 range 12 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      SWAP           at 0 range 15 .. 15;
      OUT_k          at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      HYST           at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      FLEN           at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Comparator Control n
   type AC_COMPCTRL_Registers is array (0 .. 1) of AC_COMPCTRL_Register
     with Volatile;

   subtype AC_SCALER_VALUE_Field is HAL.UInt6;

   --  Scaler n
   type AC_SCALER_Register is record
      --  Scaler Value
      VALUE        : AC_SCALER_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for AC_SCALER_Register use record
      VALUE        at 0 range 0 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Scaler n
   type AC_SCALER_Registers is array (0 .. 1) of AC_SCALER_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog Comparators
   type AC_Peripheral is record
      --  Control A
      CTRLA    : aliased AC_CTRLA_Register;
      --  Control B
      CTRLB    : aliased AC_CTRLB_Register;
      --  Event Control
      EVCTRL   : aliased AC_EVCTRL_Register;
      --  Interrupt Enable Clear
      INTENCLR : aliased AC_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET : aliased AC_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG  : aliased AC_INTFLAG_Register;
      --  Status A
      STATUSA  : aliased AC_STATUSA_Register;
      --  Status B
      STATUSB  : aliased AC_STATUSB_Register;
      --  Status C
      STATUSC  : aliased AC_STATUSC_Register;
      --  Window Control
      WINCTRL  : aliased AC_WINCTRL_Register;
      --  Comparator Control n
      COMPCTRL : aliased AC_COMPCTRL_Registers;
      --  Scaler n
      SCALER   : aliased AC_SCALER_Registers;
   end record
     with Volatile;

   for AC_Peripheral use record
      CTRLA    at 16#0# range 0 .. 7;
      CTRLB    at 16#1# range 0 .. 7;
      EVCTRL   at 16#2# range 0 .. 15;
      INTENCLR at 16#4# range 0 .. 7;
      INTENSET at 16#5# range 0 .. 7;
      INTFLAG  at 16#6# range 0 .. 7;
      STATUSA  at 16#8# range 0 .. 7;
      STATUSB  at 16#9# range 0 .. 7;
      STATUSC  at 16#A# range 0 .. 7;
      WINCTRL  at 16#C# range 0 .. 7;
      COMPCTRL at 16#10# range 0 .. 63;
      SCALER   at 16#20# range 0 .. 15;
   end record;

   --  Analog Comparators
   AC_Periph : aliased AC_Peripheral
     with Import, Address => System'To_Address (16#42002400#);

end SAM_SVD.AC;

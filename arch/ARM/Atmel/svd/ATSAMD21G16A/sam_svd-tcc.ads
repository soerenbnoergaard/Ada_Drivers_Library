--  Copyright (c) 2017 Microchip Technology Inc.
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Licensed under the Apache License, Version 2.0 (the "License"); you may
--  not use this file except in compliance with the License.
--  You may obtain a copy of the Licence at
--
--  http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an AS IS BASIS, WITHOUT
--  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.  

--  This spec has been automatically generated from ATSAMD21G16A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.TCC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Enhanced Resolution
   type CTRLA_RESOLUTIONSelect is
     (
      --  Dithering is disabled
      None,
      --  Dithering is done every 16 PWM frames
      Dith4,
      --  Dithering is done every 32 PWM frames
      Dith5,
      --  Dithering is done every 64 PWM frames
      Dith6)
     with Size => 2;
   for CTRLA_RESOLUTIONSelect use
     (None => 0,
      Dith4 => 1,
      Dith5 => 2,
      Dith6 => 3);

   --  Prescaler
   type CTRLA_PRESCALERSelect is
     (
      --  No division
      Div1,
      --  Divide by 2
      Div2,
      --  Divide by 4
      Div4,
      --  Divide by 8
      Div8,
      --  Divide by 16
      Div16,
      --  Divide by 64
      Div64,
      --  Divide by 256
      Div256,
      --  Divide by 1024
      Div1024)
     with Size => 3;
   for CTRLA_PRESCALERSelect use
     (Div1 => 0,
      Div2 => 1,
      Div4 => 2,
      Div8 => 3,
      Div16 => 4,
      Div64 => 5,
      Div256 => 6,
      Div1024 => 7);

   --  Prescaler and Counter Synchronization Selection
   type CTRLA_PRESCSYNCSelect is
     (
      --  Reload or reset counter on next GCLK
      Gclk,
      --  Reload or reset counter on next prescaler clock
      Presc,
      --  Reload or reset counter on next GCLK and reset prescaler counter
      Resync)
     with Size => 2;
   for CTRLA_PRESCSYNCSelect use
     (Gclk => 0,
      Presc => 1,
      Resync => 2);

   --  TCC_CTRLA_CPTEN array
   type TCC_CTRLA_CPTEN_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for TCC_CTRLA_CPTEN
   type TCC_CTRLA_CPTEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CPTEN as a value
            Val : HAL.UInt4;
         when True =>
            --  CPTEN as an array
            Arr : TCC_CTRLA_CPTEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TCC_CTRLA_CPTEN_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Control A
   type TCC_CTRLA_Register is record
      --  Software Reset
      SWRST          : Boolean := False;
      --  Enable
      ENABLE         : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  Enhanced Resolution
      RESOLUTION     : CTRLA_RESOLUTIONSelect := SAM_SVD.TCC.None;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Prescaler
      PRESCALER      : CTRLA_PRESCALERSelect := SAM_SVD.TCC.Div1;
      --  Run in Standby
      RUNSTDBY       : Boolean := False;
      --  Prescaler and Counter Synchronization Selection
      PRESCSYNC      : CTRLA_PRESCSYNCSelect := SAM_SVD.TCC.Gclk;
      --  Auto Lock
      ALOCK          : Boolean := False;
      --  unspecified
      Reserved_15_23 : HAL.UInt9 := 16#0#;
      --  Capture Channel 0 Enable
      CPTEN          : TCC_CTRLA_CPTEN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_CTRLA_Register use record
      SWRST          at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      RESOLUTION     at 0 range 5 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PRESCALER      at 0 range 8 .. 10;
      RUNSTDBY       at 0 range 11 .. 11;
      PRESCSYNC      at 0 range 12 .. 13;
      ALOCK          at 0 range 14 .. 14;
      Reserved_15_23 at 0 range 15 .. 23;
      CPTEN          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Ramp Index Command
   type CTRLBCLR_IDXCMDSelect is
     (
      --  Command disabled: Index toggles between cycles A and B
      Disable,
      --  Set index: cycle B will be forced in the next cycle
      Set,
      --  Clear index: cycle A will be forced in the next cycle
      Clear,
      --  Hold index: the next cycle will be the same as the current cycle
      Hold)
     with Size => 2;
   for CTRLBCLR_IDXCMDSelect use
     (Disable => 0,
      Set => 1,
      Clear => 2,
      Hold => 3);

   --  TCC Command
   type CTRLBCLR_CMDSelect is
     (
      --  No action
      None,
      --  Clear start, restart or retrigger
      Retrigger,
      --  Force stop
      Stop,
      --  Force update of double buffered registers
      Update,
      --  Force COUNT read synchronization
      Readsync)
     with Size => 3;
   for CTRLBCLR_CMDSelect use
     (None => 0,
      Retrigger => 1,
      Stop => 2,
      Update => 3,
      Readsync => 4);

   --  Control B Clear
   type TCC_CTRLBCLR_Register is record
      --  Counter Direction
      DIR     : Boolean := False;
      --  Lock Update
      LUPD    : Boolean := False;
      --  One-Shot
      ONESHOT : Boolean := False;
      --  Ramp Index Command
      IDXCMD  : CTRLBCLR_IDXCMDSelect := SAM_SVD.TCC.Disable;
      --  TCC Command
      CMD     : CTRLBCLR_CMDSelect := SAM_SVD.TCC.None;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TCC_CTRLBCLR_Register use record
      DIR     at 0 range 0 .. 0;
      LUPD    at 0 range 1 .. 1;
      ONESHOT at 0 range 2 .. 2;
      IDXCMD  at 0 range 3 .. 4;
      CMD     at 0 range 5 .. 7;
   end record;

   --  Ramp Index Command
   type CTRLBSET_IDXCMDSelect is
     (
      --  Command disabled: Index toggles between cycles A and B
      Disable,
      --  Set index: cycle B will be forced in the next cycle
      Set,
      --  Clear index: cycle A will be forced in the next cycle
      Clear,
      --  Hold index: the next cycle will be the same as the current cycle
      Hold)
     with Size => 2;
   for CTRLBSET_IDXCMDSelect use
     (Disable => 0,
      Set => 1,
      Clear => 2,
      Hold => 3);

   --  TCC Command
   type CTRLBSET_CMDSelect is
     (
      --  No action
      None,
      --  Clear start, restart or retrigger
      Retrigger,
      --  Force stop
      Stop,
      --  Force update of double buffered registers
      Update,
      --  Force COUNT read synchronization
      Readsync)
     with Size => 3;
   for CTRLBSET_CMDSelect use
     (None => 0,
      Retrigger => 1,
      Stop => 2,
      Update => 3,
      Readsync => 4);

   --  Control B Set
   type TCC_CTRLBSET_Register is record
      --  Counter Direction
      DIR     : Boolean := False;
      --  Lock Update
      LUPD    : Boolean := False;
      --  One-Shot
      ONESHOT : Boolean := False;
      --  Ramp Index Command
      IDXCMD  : CTRLBSET_IDXCMDSelect := SAM_SVD.TCC.Disable;
      --  TCC Command
      CMD     : CTRLBSET_CMDSelect := SAM_SVD.TCC.None;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TCC_CTRLBSET_Register use record
      DIR     at 0 range 0 .. 0;
      LUPD    at 0 range 1 .. 1;
      ONESHOT at 0 range 2 .. 2;
      IDXCMD  at 0 range 3 .. 4;
      CMD     at 0 range 5 .. 7;
   end record;

   --  TCC_SYNCBUSY_CC array
   type TCC_SYNCBUSY_CC_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for TCC_SYNCBUSY_CC
   type TCC_SYNCBUSY_CC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CC as a value
            Val : HAL.UInt4;
         when True =>
            --  CC as an array
            Arr : TCC_SYNCBUSY_CC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TCC_SYNCBUSY_CC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  TCC_SYNCBUSY_CCB array
   type TCC_SYNCBUSY_CCB_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for TCC_SYNCBUSY_CCB
   type TCC_SYNCBUSY_CCB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCB as a value
            Val : HAL.UInt4;
         when True =>
            --  CCB as an array
            Arr : TCC_SYNCBUSY_CCB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TCC_SYNCBUSY_CCB_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Synchronization Busy
   type TCC_SYNCBUSY_Register is record
      --  Read-only. Swrst Busy
      SWRST          : Boolean;
      --  Read-only. Enable Busy
      ENABLE         : Boolean;
      --  Read-only. Ctrlb Busy
      CTRLB          : Boolean;
      --  Read-only. Status Busy
      STATUS         : Boolean;
      --  Read-only. Count Busy
      COUNT          : Boolean;
      --  Read-only. Pattern Busy
      PATT           : Boolean;
      --  Read-only. Wave Busy
      WAVE           : Boolean;
      --  Read-only. Period busy
      PER            : Boolean;
      --  Read-only. Compare Channel 0 Busy
      CC             : TCC_SYNCBUSY_CC_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Pattern Buffer Busy
      PATTB          : Boolean;
      --  Read-only. Wave Buffer Busy
      WAVEB          : Boolean;
      --  Read-only. Period Buffer Busy
      PERB           : Boolean;
      --  Read-only. Compare Channel Buffer 0 Busy
      CCB            : TCC_SYNCBUSY_CCB_Field;
      --  unspecified
      Reserved_23_31 : HAL.UInt9;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_SYNCBUSY_Register use record
      SWRST          at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      CTRLB          at 0 range 2 .. 2;
      STATUS         at 0 range 3 .. 3;
      COUNT          at 0 range 4 .. 4;
      PATT           at 0 range 5 .. 5;
      WAVE           at 0 range 6 .. 6;
      PER            at 0 range 7 .. 7;
      CC             at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      PATTB          at 0 range 16 .. 16;
      WAVEB          at 0 range 17 .. 17;
      PERB           at 0 range 18 .. 18;
      CCB            at 0 range 19 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  Fault A Source
   type FCTRLA_SRCSelect is
     (
      --  Fault input disabled
      Disable,
      --  MCEx (x=0,1) event input
      Enable,
      --  Inverted MCEx (x=0,1) event input
      Invert,
      --  Alternate fault (A or B) state at the end of the previous period
      Altfault)
     with Size => 2;
   for FCTRLA_SRCSelect use
     (Disable => 0,
      Enable => 1,
      Invert => 2,
      Altfault => 3);

   --  Fault A Blanking Mode
   type FCTRLA_BLANKSelect is
     (
      --  No blanking applied
      None,
      --  Blanking applied from rising edge of the output waveform
      Rise,
      --  Blanking applied from falling edge of the output waveform
      Fall,
      --  Blanking applied from each toggle of the output waveform
      Both)
     with Size => 2;
   for FCTRLA_BLANKSelect use
     (None => 0,
      Rise => 1,
      Fall => 2,
      Both => 3);

   --  Fault A Halt Mode
   type FCTRLA_HALTSelect is
     (
      --  Halt action disabled
      Disable,
      --  Hardware halt action
      Hw,
      --  Software halt action
      Sw,
      --  Non-recoverable fault
      Nr)
     with Size => 2;
   for FCTRLA_HALTSelect use
     (Disable => 0,
      Hw => 1,
      Sw => 2,
      Nr => 3);

   --  Fault A Capture Channel
   type FCTRLA_CHSELSelect is
     (
      --  Capture value stored in channel 0
      Cc0,
      --  Capture value stored in channel 1
      Cc1,
      --  Capture value stored in channel 2
      Cc2,
      --  Capture value stored in channel 3
      Cc3)
     with Size => 2;
   for FCTRLA_CHSELSelect use
     (Cc0 => 0,
      Cc1 => 1,
      Cc2 => 2,
      Cc3 => 3);

   --  Fault A Capture Action
   type FCTRLA_CAPTURESelect is
     (
      --  No capture
      Disable,
      --  Capture on fault
      Capt,
      --  Minimum capture
      Captmin,
      --  Maximum capture
      Captmax,
      --  Minimum local detection
      Locmin,
      --  Maximum local detection
      Locmax,
      --  Minimum and maximum local detection
      Deriv0)
     with Size => 3;
   for FCTRLA_CAPTURESelect use
     (Disable => 0,
      Capt => 1,
      Captmin => 2,
      Captmax => 3,
      Locmin => 4,
      Locmax => 5,
      Deriv0 => 6);

   subtype TCC_FCTRLA_BLANKVAL_Field is HAL.UInt8;
   subtype TCC_FCTRLA_FILTERVAL_Field is HAL.UInt4;

   --  Recoverable Fault A Configuration
   type TCC_FCTRLA_Register is record
      --  Fault A Source
      SRC            : FCTRLA_SRCSelect := SAM_SVD.TCC.Disable;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Fault A Keeper
      KEEP           : Boolean := False;
      --  Fault A Qualification
      QUAL           : Boolean := False;
      --  Fault A Blanking Mode
      BLANK          : FCTRLA_BLANKSelect := SAM_SVD.TCC.None;
      --  Fault A Restart
      RESTART        : Boolean := False;
      --  Fault A Halt Mode
      HALT           : FCTRLA_HALTSelect := SAM_SVD.TCC.Disable;
      --  Fault A Capture Channel
      CHSEL          : FCTRLA_CHSELSelect := SAM_SVD.TCC.Cc0;
      --  Fault A Capture Action
      CAPTURE        : FCTRLA_CAPTURESelect := SAM_SVD.TCC.Disable;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Fault A Blanking Time
      BLANKVAL       : TCC_FCTRLA_BLANKVAL_Field := 16#0#;
      --  Fault A Filter Value
      FILTERVAL      : TCC_FCTRLA_FILTERVAL_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_FCTRLA_Register use record
      SRC            at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      KEEP           at 0 range 3 .. 3;
      QUAL           at 0 range 4 .. 4;
      BLANK          at 0 range 5 .. 6;
      RESTART        at 0 range 7 .. 7;
      HALT           at 0 range 8 .. 9;
      CHSEL          at 0 range 10 .. 11;
      CAPTURE        at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      BLANKVAL       at 0 range 16 .. 23;
      FILTERVAL      at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Fault B Source
   type FCTRLB_SRCSelect is
     (
      --  Fault input disabled
      Disable,
      --  MCEx (x=0,1) event input
      Enable,
      --  Inverted MCEx (x=0,1) event input
      Invert,
      --  Alternate fault (A or B) state at the end of the previous period
      Altfault)
     with Size => 2;
   for FCTRLB_SRCSelect use
     (Disable => 0,
      Enable => 1,
      Invert => 2,
      Altfault => 3);

   --  Fault B Blanking Mode
   type FCTRLB_BLANKSelect is
     (
      --  No blanking applied
      None,
      --  Blanking applied from rising edge of the output waveform
      Rise,
      --  Blanking applied from falling edge of the output waveform
      Fall,
      --  Blanking applied from each toggle of the output waveform
      Both)
     with Size => 2;
   for FCTRLB_BLANKSelect use
     (None => 0,
      Rise => 1,
      Fall => 2,
      Both => 3);

   --  Fault B Halt Mode
   type FCTRLB_HALTSelect is
     (
      --  Halt action disabled
      Disable,
      --  Hardware halt action
      Hw,
      --  Software halt action
      Sw,
      --  Non-recoverable fault
      Nr)
     with Size => 2;
   for FCTRLB_HALTSelect use
     (Disable => 0,
      Hw => 1,
      Sw => 2,
      Nr => 3);

   --  Fault B Capture Channel
   type FCTRLB_CHSELSelect is
     (
      --  Capture value stored in channel 0
      Cc0,
      --  Capture value stored in channel 1
      Cc1,
      --  Capture value stored in channel 2
      Cc2,
      --  Capture value stored in channel 3
      Cc3)
     with Size => 2;
   for FCTRLB_CHSELSelect use
     (Cc0 => 0,
      Cc1 => 1,
      Cc2 => 2,
      Cc3 => 3);

   --  Fault B Capture Action
   type FCTRLB_CAPTURESelect is
     (
      --  No capture
      Disable,
      --  Capture on fault
      Capt,
      --  Minimum capture
      Captmin,
      --  Maximum capture
      Captmax,
      --  Minimum local detection
      Locmin,
      --  Maximum local detection
      Locmax,
      --  Minimum and maximum local detection
      Deriv0)
     with Size => 3;
   for FCTRLB_CAPTURESelect use
     (Disable => 0,
      Capt => 1,
      Captmin => 2,
      Captmax => 3,
      Locmin => 4,
      Locmax => 5,
      Deriv0 => 6);

   subtype TCC_FCTRLB_BLANKVAL_Field is HAL.UInt8;
   subtype TCC_FCTRLB_FILTERVAL_Field is HAL.UInt4;

   --  Recoverable Fault B Configuration
   type TCC_FCTRLB_Register is record
      --  Fault B Source
      SRC            : FCTRLB_SRCSelect := SAM_SVD.TCC.Disable;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Fault B Keeper
      KEEP           : Boolean := False;
      --  Fault B Qualification
      QUAL           : Boolean := False;
      --  Fault B Blanking Mode
      BLANK          : FCTRLB_BLANKSelect := SAM_SVD.TCC.None;
      --  Fault B Restart
      RESTART        : Boolean := False;
      --  Fault B Halt Mode
      HALT           : FCTRLB_HALTSelect := SAM_SVD.TCC.Disable;
      --  Fault B Capture Channel
      CHSEL          : FCTRLB_CHSELSelect := SAM_SVD.TCC.Cc0;
      --  Fault B Capture Action
      CAPTURE        : FCTRLB_CAPTURESelect := SAM_SVD.TCC.Disable;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Fault B Blanking Time
      BLANKVAL       : TCC_FCTRLB_BLANKVAL_Field := 16#0#;
      --  Fault B Filter Value
      FILTERVAL      : TCC_FCTRLB_FILTERVAL_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_FCTRLB_Register use record
      SRC            at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      KEEP           at 0 range 3 .. 3;
      QUAL           at 0 range 4 .. 4;
      BLANK          at 0 range 5 .. 6;
      RESTART        at 0 range 7 .. 7;
      HALT           at 0 range 8 .. 9;
      CHSEL          at 0 range 10 .. 11;
      CAPTURE        at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      BLANKVAL       at 0 range 16 .. 23;
      FILTERVAL      at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TCC_WEXCTRL_OTMX_Field is HAL.UInt2;

   --  TCC_WEXCTRL_DTIEN array
   type TCC_WEXCTRL_DTIEN_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for TCC_WEXCTRL_DTIEN
   type TCC_WEXCTRL_DTIEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DTIEN as a value
            Val : HAL.UInt4;
         when True =>
            --  DTIEN as an array
            Arr : TCC_WEXCTRL_DTIEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TCC_WEXCTRL_DTIEN_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype TCC_WEXCTRL_DTLS_Field is HAL.UInt8;
   subtype TCC_WEXCTRL_DTHS_Field is HAL.UInt8;

   --  Waveform Extension Configuration
   type TCC_WEXCTRL_Register is record
      --  Output Matrix
      OTMX           : TCC_WEXCTRL_OTMX_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Dead-time Insertion Generator 0 Enable
      DTIEN          : TCC_WEXCTRL_DTIEN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Dead-time Low Side Outputs Value
      DTLS           : TCC_WEXCTRL_DTLS_Field := 16#0#;
      --  Dead-time High Side Outputs Value
      DTHS           : TCC_WEXCTRL_DTHS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_WEXCTRL_Register use record
      OTMX           at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      DTIEN          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DTLS           at 0 range 16 .. 23;
      DTHS           at 0 range 24 .. 31;
   end record;

   --  TCC_DRVCTRL_NRE array
   type TCC_DRVCTRL_NRE_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for TCC_DRVCTRL_NRE
   type TCC_DRVCTRL_NRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NRE as a value
            Val : HAL.UInt8;
         when True =>
            --  NRE as an array
            Arr : TCC_DRVCTRL_NRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for TCC_DRVCTRL_NRE_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  TCC_DRVCTRL_NRV array
   type TCC_DRVCTRL_NRV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for TCC_DRVCTRL_NRV
   type TCC_DRVCTRL_NRV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NRV as a value
            Val : HAL.UInt8;
         when True =>
            --  NRV as an array
            Arr : TCC_DRVCTRL_NRV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for TCC_DRVCTRL_NRV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  TCC_DRVCTRL_INVEN array
   type TCC_DRVCTRL_INVEN_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for TCC_DRVCTRL_INVEN
   type TCC_DRVCTRL_INVEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INVEN as a value
            Val : HAL.UInt8;
         when True =>
            --  INVEN as an array
            Arr : TCC_DRVCTRL_INVEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for TCC_DRVCTRL_INVEN_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  TCC_DRVCTRL_FILTERVAL array element
   subtype TCC_DRVCTRL_FILTERVAL_Element is HAL.UInt4;

   --  TCC_DRVCTRL_FILTERVAL array
   type TCC_DRVCTRL_FILTERVAL_Field_Array is array (0 .. 1)
     of TCC_DRVCTRL_FILTERVAL_Element
     with Component_Size => 4, Size => 8;

   --  Type definition for TCC_DRVCTRL_FILTERVAL
   type TCC_DRVCTRL_FILTERVAL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FILTERVAL as a value
            Val : HAL.UInt8;
         when True =>
            --  FILTERVAL as an array
            Arr : TCC_DRVCTRL_FILTERVAL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for TCC_DRVCTRL_FILTERVAL_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Driver Control
   type TCC_DRVCTRL_Register is record
      --  Non-Recoverable State 0 Output Enable
      NRE       : TCC_DRVCTRL_NRE_Field := (As_Array => False, Val => 16#0#);
      --  Non-Recoverable State 0 Output Value
      NRV       : TCC_DRVCTRL_NRV_Field := (As_Array => False, Val => 16#0#);
      --  Output Waveform 0 Inversion
      INVEN     : TCC_DRVCTRL_INVEN_Field :=
                   (As_Array => False, Val => 16#0#);
      --  Non-Recoverable Fault Input 0 Filter Value
      FILTERVAL : TCC_DRVCTRL_FILTERVAL_Field :=
                   (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_DRVCTRL_Register use record
      NRE       at 0 range 0 .. 7;
      NRV       at 0 range 8 .. 15;
      INVEN     at 0 range 16 .. 23;
      FILTERVAL at 0 range 24 .. 31;
   end record;

   --  Debug Control
   type TCC_DBGCTRL_Register is record
      --  Debug Running Mode
      DBGRUN       : Boolean := False;
      --  unspecified
      Reserved_1_1 : HAL.Bit := 16#0#;
      --  Fault Detection on Debug Break Detection
      FDDBD        : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TCC_DBGCTRL_Register use record
      DBGRUN       at 0 range 0 .. 0;
      Reserved_1_1 at 0 range 1 .. 1;
      FDDBD        at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Timer/counter Input Event0 Action
   type EVCTRL_EVACT0Select is
     (
      --  Event action disabled
      Off,
      --  Start, restart or re-trigger counter on event
      Retrigger,
      --  Count on event
      Countev,
      --  Start counter on event
      Start,
      --  Increment counter on event
      Inc,
      --  Count on active state of asynchronous event
      Count,
      --  Non-recoverable fault
      Fault)
     with Size => 3;
   for EVCTRL_EVACT0Select use
     (Off => 0,
      Retrigger => 1,
      Countev => 2,
      Start => 3,
      Inc => 4,
      Count => 5,
      Fault => 7);

   --  Timer/counter Input Event1 Action
   type EVCTRL_EVACT1Select is
     (
      --  Event action disabled
      Off,
      --  Re-trigger counter on event
      Retrigger,
      --  Direction control
      Dir,
      --  Stop counter on event
      Stop,
      --  Decrement counter on event
      Dec,
      --  Period capture value in CC0 register, pulse width capture value in
      --  CC1 register
      Ppw,
      --  Period capture value in CC1 register, pulse width capture value in
      --  CC0 register
      Pwp,
      --  Non-recoverable fault
      Fault)
     with Size => 3;
   for EVCTRL_EVACT1Select use
     (Off => 0,
      Retrigger => 1,
      Dir => 2,
      Stop => 3,
      Dec => 4,
      Ppw => 5,
      Pwp => 6,
      Fault => 7);

   --  Timer/counter Output Event Mode
   type EVCTRL_CNTSELSelect is
     (
      --  An interrupt/event is generated when a new counter cycle starts
      Start,
      --  An interrupt/event is generated when a counter cycle ends
      End_k,
      --  An interrupt/event is generated when a counter cycle ends, except for
      --  the first and last cycles
      Between,
      --  An interrupt/event is generated when a new counter cycle starts or a
      --  counter cycle ends
      Boundary)
     with Size => 2;
   for EVCTRL_CNTSELSelect use
     (Start => 0,
      End_k => 1,
      Between => 2,
      Boundary => 3);

   --  TCC_EVCTRL_TCINV array
   type TCC_EVCTRL_TCINV_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TCC_EVCTRL_TCINV
   type TCC_EVCTRL_TCINV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TCINV as a value
            Val : HAL.UInt2;
         when True =>
            --  TCINV as an array
            Arr : TCC_EVCTRL_TCINV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TCC_EVCTRL_TCINV_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  TCC_EVCTRL_TCEI array
   type TCC_EVCTRL_TCEI_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TCC_EVCTRL_TCEI
   type TCC_EVCTRL_TCEI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TCEI as a value
            Val : HAL.UInt2;
         when True =>
            --  TCEI as an array
            Arr : TCC_EVCTRL_TCEI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TCC_EVCTRL_TCEI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  TCC_EVCTRL_MCEI array
   type TCC_EVCTRL_MCEI_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for TCC_EVCTRL_MCEI
   type TCC_EVCTRL_MCEI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MCEI as a value
            Val : HAL.UInt4;
         when True =>
            --  MCEI as an array
            Arr : TCC_EVCTRL_MCEI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TCC_EVCTRL_MCEI_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  TCC_EVCTRL_MCEO array
   type TCC_EVCTRL_MCEO_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for TCC_EVCTRL_MCEO
   type TCC_EVCTRL_MCEO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MCEO as a value
            Val : HAL.UInt4;
         when True =>
            --  MCEO as an array
            Arr : TCC_EVCTRL_MCEO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TCC_EVCTRL_MCEO_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Event Control
   type TCC_EVCTRL_Register is record
      --  Timer/counter Input Event0 Action
      EVACT0         : EVCTRL_EVACT0Select := SAM_SVD.TCC.Off;
      --  Timer/counter Input Event1 Action
      EVACT1         : EVCTRL_EVACT1Select := SAM_SVD.TCC.Off;
      --  Timer/counter Output Event Mode
      CNTSEL         : EVCTRL_CNTSELSelect := SAM_SVD.TCC.Start;
      --  Overflow/Underflow Output Event Enable
      OVFEO          : Boolean := False;
      --  Retrigger Output Event Enable
      TRGEO          : Boolean := False;
      --  Timer/counter Output Event Enable
      CNTEO          : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Inverted Event 0 Input Enable
      TCINV          : TCC_EVCTRL_TCINV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer/counter Event 0 Input Enable
      TCEI           : TCC_EVCTRL_TCEI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Match or Capture Channel 0 Event Input Enable
      MCEI           : TCC_EVCTRL_MCEI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Match or Capture Channel 0 Event Output Enable
      MCEO           : TCC_EVCTRL_MCEO_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_EVCTRL_Register use record
      EVACT0         at 0 range 0 .. 2;
      EVACT1         at 0 range 3 .. 5;
      CNTSEL         at 0 range 6 .. 7;
      OVFEO          at 0 range 8 .. 8;
      TRGEO          at 0 range 9 .. 9;
      CNTEO          at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TCINV          at 0 range 12 .. 13;
      TCEI           at 0 range 14 .. 15;
      MCEI           at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      MCEO           at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  TCC_INTENCLR_FAULT array
   type TCC_INTENCLR_FAULT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TCC_INTENCLR_FAULT
   type TCC_INTENCLR_FAULT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAULT as a value
            Val : HAL.UInt2;
         when True =>
            --  FAULT as an array
            Arr : TCC_INTENCLR_FAULT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TCC_INTENCLR_FAULT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  TCC_INTENCLR_MC array
   type TCC_INTENCLR_MC_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for TCC_INTENCLR_MC
   type TCC_INTENCLR_MC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MC as a value
            Val : HAL.UInt4;
         when True =>
            --  MC as an array
            Arr : TCC_INTENCLR_MC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TCC_INTENCLR_MC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt Enable Clear
   type TCC_INTENCLR_Register is record
      --  Overflow Interrupt Enable
      OVF            : Boolean := False;
      --  Retrigger Interrupt Enable
      TRG            : Boolean := False;
      --  Counter Interrupt Enable
      CNT            : Boolean := False;
      --  Error Interrupt Enable
      ERR            : Boolean := False;
      --  unspecified
      Reserved_4_10  : HAL.UInt7 := 16#0#;
      --  Non-Recoverable Debug Fault Interrupt Enable
      DFS            : Boolean := False;
      --  Recoverable Fault A Interrupt Enable
      FAULTA         : Boolean := False;
      --  Recoverable Fault B Interrupt Enable
      FAULTB         : Boolean := False;
      --  Non-Recoverable Fault 0 Interrupt Enable
      FAULT          : TCC_INTENCLR_FAULT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Match or Capture Channel 0 Interrupt Enable
      MC             : TCC_INTENCLR_MC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_INTENCLR_Register use record
      OVF            at 0 range 0 .. 0;
      TRG            at 0 range 1 .. 1;
      CNT            at 0 range 2 .. 2;
      ERR            at 0 range 3 .. 3;
      Reserved_4_10  at 0 range 4 .. 10;
      DFS            at 0 range 11 .. 11;
      FAULTA         at 0 range 12 .. 12;
      FAULTB         at 0 range 13 .. 13;
      FAULT          at 0 range 14 .. 15;
      MC             at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  TCC_INTENSET_FAULT array
   type TCC_INTENSET_FAULT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TCC_INTENSET_FAULT
   type TCC_INTENSET_FAULT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAULT as a value
            Val : HAL.UInt2;
         when True =>
            --  FAULT as an array
            Arr : TCC_INTENSET_FAULT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TCC_INTENSET_FAULT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  TCC_INTENSET_MC array
   type TCC_INTENSET_MC_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for TCC_INTENSET_MC
   type TCC_INTENSET_MC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MC as a value
            Val : HAL.UInt4;
         when True =>
            --  MC as an array
            Arr : TCC_INTENSET_MC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TCC_INTENSET_MC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt Enable Set
   type TCC_INTENSET_Register is record
      --  Overflow Interrupt Enable
      OVF            : Boolean := False;
      --  Retrigger Interrupt Enable
      TRG            : Boolean := False;
      --  Counter Interrupt Enable
      CNT            : Boolean := False;
      --  Error Interrupt Enable
      ERR            : Boolean := False;
      --  unspecified
      Reserved_4_10  : HAL.UInt7 := 16#0#;
      --  Non-Recoverable Debug Fault Interrupt Enable
      DFS            : Boolean := False;
      --  Recoverable Fault A Interrupt Enable
      FAULTA         : Boolean := False;
      --  Recoverable Fault B Interrupt Enable
      FAULTB         : Boolean := False;
      --  Non-Recoverable Fault 0 Interrupt Enable
      FAULT          : TCC_INTENSET_FAULT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Match or Capture Channel 0 Interrupt Enable
      MC             : TCC_INTENSET_MC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_INTENSET_Register use record
      OVF            at 0 range 0 .. 0;
      TRG            at 0 range 1 .. 1;
      CNT            at 0 range 2 .. 2;
      ERR            at 0 range 3 .. 3;
      Reserved_4_10  at 0 range 4 .. 10;
      DFS            at 0 range 11 .. 11;
      FAULTA         at 0 range 12 .. 12;
      FAULTB         at 0 range 13 .. 13;
      FAULT          at 0 range 14 .. 15;
      MC             at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  TCC_INTFLAG_FAULT array
   type TCC_INTFLAG_FAULT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TCC_INTFLAG_FAULT
   type TCC_INTFLAG_FAULT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAULT as a value
            Val : HAL.UInt2;
         when True =>
            --  FAULT as an array
            Arr : TCC_INTFLAG_FAULT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TCC_INTFLAG_FAULT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  TCC_INTFLAG_MC array
   type TCC_INTFLAG_MC_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for TCC_INTFLAG_MC
   type TCC_INTFLAG_MC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MC as a value
            Val : HAL.UInt4;
         when True =>
            --  MC as an array
            Arr : TCC_INTFLAG_MC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TCC_INTFLAG_MC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt Flag Status and Clear
   type TCC_INTFLAG_Register is record
      --  Overflow
      OVF            : Boolean := False;
      --  Retrigger
      TRG            : Boolean := False;
      --  Counter
      CNT            : Boolean := False;
      --  Error
      ERR            : Boolean := False;
      --  unspecified
      Reserved_4_10  : HAL.UInt7 := 16#0#;
      --  Non-Recoverable Debug Fault
      DFS            : Boolean := False;
      --  Recoverable Fault A
      FAULTA         : Boolean := False;
      --  Recoverable Fault B
      FAULTB         : Boolean := False;
      --  Non-Recoverable Fault 0
      FAULT          : TCC_INTFLAG_FAULT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Match or Capture 0
      MC             : TCC_INTFLAG_MC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_INTFLAG_Register use record
      OVF            at 0 range 0 .. 0;
      TRG            at 0 range 1 .. 1;
      CNT            at 0 range 2 .. 2;
      ERR            at 0 range 3 .. 3;
      Reserved_4_10  at 0 range 4 .. 10;
      DFS            at 0 range 11 .. 11;
      FAULTA         at 0 range 12 .. 12;
      FAULTB         at 0 range 13 .. 13;
      FAULT          at 0 range 14 .. 15;
      MC             at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  TCC_STATUS_FAULT array
   type TCC_STATUS_FAULT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TCC_STATUS_FAULT
   type TCC_STATUS_FAULT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAULT as a value
            Val : HAL.UInt2;
         when True =>
            --  FAULT as an array
            Arr : TCC_STATUS_FAULT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TCC_STATUS_FAULT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  TCC_STATUS_CCBV array
   type TCC_STATUS_CCBV_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for TCC_STATUS_CCBV
   type TCC_STATUS_CCBV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCBV as a value
            Val : HAL.UInt4;
         when True =>
            --  CCBV as an array
            Arr : TCC_STATUS_CCBV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TCC_STATUS_CCBV_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  TCC_STATUS_CMP array
   type TCC_STATUS_CMP_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for TCC_STATUS_CMP
   type TCC_STATUS_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : HAL.UInt4;
         when True =>
            --  CMP as an array
            Arr : TCC_STATUS_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TCC_STATUS_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Status
   type TCC_STATUS_Register is record
      --  Read-only. Stop
      STOP           : Boolean := True;
      --  Read-only. Ramp
      IDX            : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Non-Recoverable Debug Fault State
      DFS            : Boolean := False;
      --  Read-only. Slave
      SLAVE          : Boolean := False;
      --  Pattern Buffer Valid
      PATTBV         : Boolean := False;
      --  Wave Buffer Valid
      WAVEBV         : Boolean := False;
      --  Period Buffer Valid
      PERBV          : Boolean := False;
      --  Read-only. Recoverable Fault A Input
      FAULTAIN       : Boolean := False;
      --  Read-only. Recoverable Fault B Input
      FAULTBIN       : Boolean := False;
      --  Read-only. Non-Recoverable Fault0 Input
      FAULT0IN       : Boolean := False;
      --  Read-only. Non-Recoverable Fault1 Input
      FAULT1IN       : Boolean := False;
      --  Recoverable Fault A State
      FAULTA         : Boolean := False;
      --  Recoverable Fault B State
      FAULTB         : Boolean := False;
      --  Non-Recoverable Fault 0 State
      FAULT          : TCC_STATUS_FAULT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Compare Channel 0 Buffer Valid
      CCBV           : TCC_STATUS_CCBV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Read-only. Compare Channel 0 Value
      CMP            : TCC_STATUS_CMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_STATUS_Register use record
      STOP           at 0 range 0 .. 0;
      IDX            at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      DFS            at 0 range 3 .. 3;
      SLAVE          at 0 range 4 .. 4;
      PATTBV         at 0 range 5 .. 5;
      WAVEBV         at 0 range 6 .. 6;
      PERBV          at 0 range 7 .. 7;
      FAULTAIN       at 0 range 8 .. 8;
      FAULTBIN       at 0 range 9 .. 9;
      FAULT0IN       at 0 range 10 .. 10;
      FAULT1IN       at 0 range 11 .. 11;
      FAULTA         at 0 range 12 .. 12;
      FAULTB         at 0 range 13 .. 13;
      FAULT          at 0 range 14 .. 15;
      CCBV           at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      CMP            at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TCC_COUNT_COUNT_Field is HAL.UInt24;

   --  Count
   type TCC_COUNT_Register is record
      --  Counter Value
      COUNT          : TCC_COUNT_COUNT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_COUNT_Register use record
      COUNT          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TCC_COUNT_DITH4_COUNT_Field is HAL.UInt20;

   --  Count
   type TCC_COUNT_DITH4_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Counter Value
      COUNT          : TCC_COUNT_DITH4_COUNT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_COUNT_DITH4_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      COUNT          at 0 range 4 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TCC_COUNT_DITH5_COUNT_Field is HAL.UInt19;

   --  Count
   type TCC_COUNT_DITH5_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5 := 16#0#;
      --  Counter Value
      COUNT          : TCC_COUNT_DITH5_COUNT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_COUNT_DITH5_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      COUNT          at 0 range 5 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TCC_COUNT_DITH6_COUNT_Field is HAL.UInt18;

   --  Count
   type TCC_COUNT_DITH6_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Counter Value
      COUNT          : TCC_COUNT_DITH6_COUNT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_COUNT_DITH6_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      COUNT          at 0 range 6 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  TCC_PATT_PGE array
   type TCC_PATT_PGE_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for TCC_PATT_PGE
   type TCC_PATT_PGE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PGE as a value
            Val : HAL.UInt8;
         when True =>
            --  PGE as an array
            Arr : TCC_PATT_PGE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for TCC_PATT_PGE_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  TCC_PATT_PGV array
   type TCC_PATT_PGV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for TCC_PATT_PGV
   type TCC_PATT_PGV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PGV as a value
            Val : HAL.UInt8;
         when True =>
            --  PGV as an array
            Arr : TCC_PATT_PGV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for TCC_PATT_PGV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Pattern
   type TCC_PATT_Register is record
      --  Pattern Generator 0 Output Enable
      PGE : TCC_PATT_PGE_Field := (As_Array => False, Val => 16#0#);
      --  Pattern Generator 0 Output Value
      PGV : TCC_PATT_PGV_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCC_PATT_Register use record
      PGE at 0 range 0 .. 7;
      PGV at 0 range 8 .. 15;
   end record;

   --  Waveform Generation
   type WAVE_WAVEGENSelect is
     (
      --  Normal frequency
      Nfrq,
      --  Match frequency
      Mfrq,
      --  Normal PWM
      Npwm,
      --  Dual-slope critical
      Dscritical,
      --  Dual-slope with interrupt/event condition when COUNT reaches ZERO
      Dsbottom,
      --  Dual-slope with interrupt/event condition when COUNT reaches ZERO or
      --  TOP
      Dsboth,
      --  Dual-slope with interrupt/event condition when COUNT reaches TOP
      Dstop)
     with Size => 3;
   for WAVE_WAVEGENSelect use
     (Nfrq => 0,
      Mfrq => 1,
      Npwm => 2,
      Dscritical => 4,
      Dsbottom => 5,
      Dsboth => 6,
      Dstop => 7);

   --  Ramp Mode
   type WAVE_RAMPSelect is
     (
      --  RAMP1 operation
      Ramp1,
      --  Alternative RAMP2 operation
      Ramp2A,
      --  RAMP2 operation
      Ramp2)
     with Size => 2;
   for WAVE_RAMPSelect use
     (Ramp1 => 0,
      Ramp2A => 1,
      Ramp2 => 2);

   --  TCC_WAVE_CICCEN array
   type TCC_WAVE_CICCEN_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for TCC_WAVE_CICCEN
   type TCC_WAVE_CICCEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CICCEN as a value
            Val : HAL.UInt4;
         when True =>
            --  CICCEN as an array
            Arr : TCC_WAVE_CICCEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TCC_WAVE_CICCEN_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  TCC_WAVE_POL array
   type TCC_WAVE_POL_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for TCC_WAVE_POL
   type TCC_WAVE_POL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  POL as a value
            Val : HAL.UInt4;
         when True =>
            --  POL as an array
            Arr : TCC_WAVE_POL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TCC_WAVE_POL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  TCC_WAVE_SWAP array
   type TCC_WAVE_SWAP_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for TCC_WAVE_SWAP
   type TCC_WAVE_SWAP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWAP as a value
            Val : HAL.UInt4;
         when True =>
            --  SWAP as an array
            Arr : TCC_WAVE_SWAP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TCC_WAVE_SWAP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Waveform Control
   type TCC_WAVE_Register is record
      --  Waveform Generation
      WAVEGEN        : WAVE_WAVEGENSelect := SAM_SVD.TCC.Nfrq;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Ramp Mode
      RAMP           : WAVE_RAMPSelect := SAM_SVD.TCC.Ramp1;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Circular period Enable
      CIPEREN        : Boolean := False;
      --  Circular Channel 0 Enable
      CICCEN         : TCC_WAVE_CICCEN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Channel 0 Polarity
      POL            : TCC_WAVE_POL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Swap DTI Output Pair 0
      SWAP           : TCC_WAVE_SWAP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_WAVE_Register use record
      WAVEGEN        at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RAMP           at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      CIPEREN        at 0 range 7 .. 7;
      CICCEN         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      POL            at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      SWAP           at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TCC_PER_PER_Field is HAL.UInt24;

   --  Period
   type TCC_PER_Register is record
      --  Period Value
      PER            : TCC_PER_PER_Field := 16#FFFFFF#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#FF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_PER_Register use record
      PER            at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TCC_PER_DITH4_DITHERCY_Field is HAL.UInt4;
   subtype TCC_PER_DITH4_PER_Field is HAL.UInt20;

   --  Period
   type TCC_PER_DITH4_Register is record
      --  Dithering Cycle Number
      DITHERCY       : TCC_PER_DITH4_DITHERCY_Field := 16#F#;
      --  Period Value
      PER            : TCC_PER_DITH4_PER_Field := 16#FFFFF#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#FF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_PER_DITH4_Register use record
      DITHERCY       at 0 range 0 .. 3;
      PER            at 0 range 4 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TCC_PER_DITH5_DITHERCY_Field is HAL.UInt5;
   subtype TCC_PER_DITH5_PER_Field is HAL.UInt19;

   --  Period
   type TCC_PER_DITH5_Register is record
      --  Dithering Cycle Number
      DITHERCY       : TCC_PER_DITH5_DITHERCY_Field := 16#1F#;
      --  Period Value
      PER            : TCC_PER_DITH5_PER_Field := 16#7FFFF#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#FF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_PER_DITH5_Register use record
      DITHERCY       at 0 range 0 .. 4;
      PER            at 0 range 5 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TCC_PER_DITH6_DITHERCY_Field is HAL.UInt6;
   subtype TCC_PER_DITH6_PER_Field is HAL.UInt18;

   --  Period
   type TCC_PER_DITH6_Register is record
      --  Dithering Cycle Number
      DITHERCY       : TCC_PER_DITH6_DITHERCY_Field := 16#3F#;
      --  Period Value
      PER            : TCC_PER_DITH6_PER_Field := 16#3FFFF#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#FF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_PER_DITH6_Register use record
      DITHERCY       at 0 range 0 .. 5;
      PER            at 0 range 6 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TCC_CC_CC_Field is HAL.UInt24;

   --  Compare and Capture
   type TCC_CC_Register is record
      --  Channel Compare/Capture Value
      CC             : TCC_CC_CC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_CC_Register use record
      CC             at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Compare and Capture
   type TCC_CC_Registers is array (0 .. 3) of TCC_CC_Register
     with Volatile;

   subtype TCC_CC_DITH4_DITHERCY_Field is HAL.UInt4;
   subtype TCC_CC_DITH4_CC_Field is HAL.UInt20;

   --  Compare and Capture
   type TCC_CC_DITH4_Register is record
      --  Dithering Cycle Number
      DITHERCY       : TCC_CC_DITH4_DITHERCY_Field := 16#0#;
      --  Channel Compare/Capture Value
      CC             : TCC_CC_DITH4_CC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_CC_DITH4_Register use record
      DITHERCY       at 0 range 0 .. 3;
      CC             at 0 range 4 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Compare and Capture
   type TCC_CC_DITH4_Registers is array (0 .. 3) of TCC_CC_DITH4_Register
     with Volatile;

   subtype TCC_CC_DITH5_DITHERCY_Field is HAL.UInt5;
   subtype TCC_CC_DITH5_CC_Field is HAL.UInt19;

   --  Compare and Capture
   type TCC_CC_DITH5_Register is record
      --  Dithering Cycle Number
      DITHERCY       : TCC_CC_DITH5_DITHERCY_Field := 16#0#;
      --  Channel Compare/Capture Value
      CC             : TCC_CC_DITH5_CC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_CC_DITH5_Register use record
      DITHERCY       at 0 range 0 .. 4;
      CC             at 0 range 5 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Compare and Capture
   type TCC_CC_DITH5_Registers is array (0 .. 3) of TCC_CC_DITH5_Register
     with Volatile;

   subtype TCC_CC_DITH6_DITHERCY_Field is HAL.UInt6;
   subtype TCC_CC_DITH6_CC_Field is HAL.UInt18;

   --  Compare and Capture
   type TCC_CC_DITH6_Register is record
      --  Dithering Cycle Number
      DITHERCY       : TCC_CC_DITH6_DITHERCY_Field := 16#0#;
      --  Channel Compare/Capture Value
      CC             : TCC_CC_DITH6_CC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_CC_DITH6_Register use record
      DITHERCY       at 0 range 0 .. 5;
      CC             at 0 range 6 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Compare and Capture
   type TCC_CC_DITH6_Registers is array (0 .. 3) of TCC_CC_DITH6_Register
     with Volatile;

   --  TCC_PATTB_PGEB array
   type TCC_PATTB_PGEB_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for TCC_PATTB_PGEB
   type TCC_PATTB_PGEB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PGEB as a value
            Val : HAL.UInt8;
         when True =>
            --  PGEB as an array
            Arr : TCC_PATTB_PGEB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for TCC_PATTB_PGEB_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  TCC_PATTB_PGVB array
   type TCC_PATTB_PGVB_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for TCC_PATTB_PGVB
   type TCC_PATTB_PGVB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PGVB as a value
            Val : HAL.UInt8;
         when True =>
            --  PGVB as an array
            Arr : TCC_PATTB_PGVB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for TCC_PATTB_PGVB_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Pattern Buffer
   type TCC_PATTB_Register is record
      --  Pattern Generator 0 Output Enable Buffer
      PGEB : TCC_PATTB_PGEB_Field := (As_Array => False, Val => 16#0#);
      --  Pattern Generator 0 Output Enable
      PGVB : TCC_PATTB_PGVB_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCC_PATTB_Register use record
      PGEB at 0 range 0 .. 7;
      PGVB at 0 range 8 .. 15;
   end record;

   --  Waveform Generation Buffer
   type WAVEB_WAVEGENBSelect is
     (
      --  Normal frequency
      Nfrq,
      --  Match frequency
      Mfrq,
      --  Normal PWM
      Npwm,
      --  Dual-slope critical
      Dscritical,
      --  Dual-slope with interrupt/event condition when COUNT reaches ZERO
      Dsbottom,
      --  Dual-slope with interrupt/event condition when COUNT reaches ZERO or
      --  TOP
      Dsboth,
      --  Dual-slope with interrupt/event condition when COUNT reaches TOP
      Dstop)
     with Size => 3;
   for WAVEB_WAVEGENBSelect use
     (Nfrq => 0,
      Mfrq => 1,
      Npwm => 2,
      Dscritical => 4,
      Dsbottom => 5,
      Dsboth => 6,
      Dstop => 7);

   --  Ramp Mode Buffer
   type WAVEB_RAMPBSelect is
     (
      --  RAMP1 operation
      Ramp1,
      --  Alternative RAMP2 operation
      Ramp2A,
      --  RAMP2 operation
      Ramp2)
     with Size => 2;
   for WAVEB_RAMPBSelect use
     (Ramp1 => 0,
      Ramp2A => 1,
      Ramp2 => 2);

   --  TCC_WAVEB_CICCENB array
   type TCC_WAVEB_CICCENB_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for TCC_WAVEB_CICCENB
   type TCC_WAVEB_CICCENB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CICCENB as a value
            Val : HAL.UInt4;
         when True =>
            --  CICCENB as an array
            Arr : TCC_WAVEB_CICCENB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TCC_WAVEB_CICCENB_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  TCC_WAVEB_POLB array
   type TCC_WAVEB_POLB_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for TCC_WAVEB_POLB
   type TCC_WAVEB_POLB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  POLB as a value
            Val : HAL.UInt4;
         when True =>
            --  POLB as an array
            Arr : TCC_WAVEB_POLB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TCC_WAVEB_POLB_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  TCC_WAVEB_SWAPB array
   type TCC_WAVEB_SWAPB_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for TCC_WAVEB_SWAPB
   type TCC_WAVEB_SWAPB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWAPB as a value
            Val : HAL.UInt4;
         when True =>
            --  SWAPB as an array
            Arr : TCC_WAVEB_SWAPB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TCC_WAVEB_SWAPB_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Waveform Control Buffer
   type TCC_WAVEB_Register is record
      --  Waveform Generation Buffer
      WAVEGENB       : WAVEB_WAVEGENBSelect := SAM_SVD.TCC.Nfrq;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Ramp Mode Buffer
      RAMPB          : WAVEB_RAMPBSelect := SAM_SVD.TCC.Ramp1;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Circular Period Enable Buffer
      CIPERENB       : Boolean := False;
      --  Circular Channel 0 Enable Buffer
      CICCENB        : TCC_WAVEB_CICCENB_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Channel 0 Polarity Buffer
      POLB           : TCC_WAVEB_POLB_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Swap DTI Output Pair 0 Buffer
      SWAPB          : TCC_WAVEB_SWAPB_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_WAVEB_Register use record
      WAVEGENB       at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RAMPB          at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      CIPERENB       at 0 range 7 .. 7;
      CICCENB        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      POLB           at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      SWAPB          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TCC_PERB_PERB_Field is HAL.UInt24;

   --  Period Buffer
   type TCC_PERB_Register is record
      --  Period Buffer Value
      PERB           : TCC_PERB_PERB_Field := 16#FFFFFF#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#FF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_PERB_Register use record
      PERB           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TCC_PERB_DITH4_DITHERCYB_Field is HAL.UInt4;
   subtype TCC_PERB_DITH4_PERB_Field is HAL.UInt20;

   --  Period Buffer
   type TCC_PERB_DITH4_Register is record
      --  Dithering Buffer Cycle Number
      DITHERCYB      : TCC_PERB_DITH4_DITHERCYB_Field := 16#F#;
      --  Period Buffer Value
      PERB           : TCC_PERB_DITH4_PERB_Field := 16#FFFFF#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#FF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_PERB_DITH4_Register use record
      DITHERCYB      at 0 range 0 .. 3;
      PERB           at 0 range 4 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TCC_PERB_DITH5_DITHERCYB_Field is HAL.UInt5;
   subtype TCC_PERB_DITH5_PERB_Field is HAL.UInt19;

   --  Period Buffer
   type TCC_PERB_DITH5_Register is record
      --  Dithering Buffer Cycle Number
      DITHERCYB      : TCC_PERB_DITH5_DITHERCYB_Field := 16#1F#;
      --  Period Buffer Value
      PERB           : TCC_PERB_DITH5_PERB_Field := 16#7FFFF#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#FF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_PERB_DITH5_Register use record
      DITHERCYB      at 0 range 0 .. 4;
      PERB           at 0 range 5 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TCC_PERB_DITH6_DITHERCYB_Field is HAL.UInt6;
   subtype TCC_PERB_DITH6_PERB_Field is HAL.UInt18;

   --  Period Buffer
   type TCC_PERB_DITH6_Register is record
      --  Dithering Buffer Cycle Number
      DITHERCYB      : TCC_PERB_DITH6_DITHERCYB_Field := 16#3F#;
      --  Period Buffer Value
      PERB           : TCC_PERB_DITH6_PERB_Field := 16#3FFFF#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#FF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_PERB_DITH6_Register use record
      DITHERCYB      at 0 range 0 .. 5;
      PERB           at 0 range 6 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TCC_CCB_CCB_Field is HAL.UInt24;

   --  Compare and Capture Buffer
   type TCC_CCB_Register is record
      --  Channel Compare/Capture Buffer Value
      CCB            : TCC_CCB_CCB_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_CCB_Register use record
      CCB            at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Compare and Capture Buffer
   type TCC_CCB_Registers is array (0 .. 3) of TCC_CCB_Register
     with Volatile;

   subtype TCC_CCB_DITH4_DITHERCYB_Field is HAL.UInt4;
   subtype TCC_CCB_DITH4_CCB_Field is HAL.UInt20;

   --  Compare and Capture Buffer
   type TCC_CCB_DITH4_Register is record
      --  Dithering Buffer Cycle Number
      DITHERCYB      : TCC_CCB_DITH4_DITHERCYB_Field := 16#0#;
      --  Channel Compare/Capture Buffer Value
      CCB            : TCC_CCB_DITH4_CCB_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_CCB_DITH4_Register use record
      DITHERCYB      at 0 range 0 .. 3;
      CCB            at 0 range 4 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Compare and Capture Buffer
   type TCC_CCB_DITH4_Registers is array (0 .. 3) of TCC_CCB_DITH4_Register
     with Volatile;

   subtype TCC_CCB_DITH5_DITHERCYB_Field is HAL.UInt5;
   subtype TCC_CCB_DITH5_CCB_Field is HAL.UInt19;

   --  Compare and Capture Buffer
   type TCC_CCB_DITH5_Register is record
      --  Dithering Buffer Cycle Number
      DITHERCYB      : TCC_CCB_DITH5_DITHERCYB_Field := 16#0#;
      --  Channel Compare/Capture Buffer Value
      CCB            : TCC_CCB_DITH5_CCB_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_CCB_DITH5_Register use record
      DITHERCYB      at 0 range 0 .. 4;
      CCB            at 0 range 5 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Compare and Capture Buffer
   type TCC_CCB_DITH5_Registers is array (0 .. 3) of TCC_CCB_DITH5_Register
     with Volatile;

   subtype TCC_CCB_DITH6_DITHERCYB_Field is HAL.UInt6;
   subtype TCC_CCB_DITH6_CCB_Field is HAL.UInt18;

   --  Compare and Capture Buffer
   type TCC_CCB_DITH6_Register is record
      --  Dithering Buffer Cycle Number
      DITHERCYB      : TCC_CCB_DITH6_DITHERCYB_Field := 16#0#;
      --  Channel Compare/Capture Buffer Value
      CCB            : TCC_CCB_DITH6_CCB_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCC_CCB_DITH6_Register use record
      DITHERCYB      at 0 range 0 .. 5;
      CCB            at 0 range 6 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Compare and Capture Buffer
   type TCC_CCB_DITH6_Registers is array (0 .. 3) of TCC_CCB_DITH6_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   type TCC0_Disc is
     (
      Default,
      Dith4,
      Dith5,
      Dith6);

   --  Timer Counter Control 0
   type TCC_Peripheral
     (Discriminent : TCC0_Disc := Default)
   is record
      --  Control A
      CTRLA       : aliased TCC_CTRLA_Register;
      --  Control B Clear
      CTRLBCLR    : aliased TCC_CTRLBCLR_Register;
      --  Control B Set
      CTRLBSET    : aliased TCC_CTRLBSET_Register;
      --  Synchronization Busy
      SYNCBUSY    : aliased TCC_SYNCBUSY_Register;
      --  Recoverable Fault A Configuration
      FCTRLA      : aliased TCC_FCTRLA_Register;
      --  Recoverable Fault B Configuration
      FCTRLB      : aliased TCC_FCTRLB_Register;
      --  Waveform Extension Configuration
      WEXCTRL     : aliased TCC_WEXCTRL_Register;
      --  Driver Control
      DRVCTRL     : aliased TCC_DRVCTRL_Register;
      --  Debug Control
      DBGCTRL     : aliased TCC_DBGCTRL_Register;
      --  Event Control
      EVCTRL      : aliased TCC_EVCTRL_Register;
      --  Interrupt Enable Clear
      INTENCLR    : aliased TCC_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET    : aliased TCC_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG     : aliased TCC_INTFLAG_Register;
      --  Status
      STATUS      : aliased TCC_STATUS_Register;
      --  Pattern
      PATT        : aliased TCC_PATT_Register;
      --  Waveform Control
      WAVE        : aliased TCC_WAVE_Register;
      --  Pattern Buffer
      PATTB       : aliased TCC_PATTB_Register;
      --  Waveform Control Buffer
      WAVEB       : aliased TCC_WAVEB_Register;
      case Discriminent is
         when Default =>
            --  Count
            COUNT : aliased TCC_COUNT_Register;
            --  Period
            PER : aliased TCC_PER_Register;
            --  Compare and Capture
            CC : aliased TCC_CC_Registers;
            --  Period Buffer
            PERB : aliased TCC_PERB_Register;
            --  Compare and Capture Buffer
            CCB : aliased TCC_CCB_Registers;
         when Dith4 =>
            --  Count
            COUNT_DITH4 : aliased TCC_COUNT_DITH4_Register;
            --  Period
            PER_DITH4 : aliased TCC_PER_DITH4_Register;
            --  Compare and Capture
            CC_DITH4 : aliased TCC_CC_DITH4_Registers;
            --  Period Buffer
            PERB_DITH4 : aliased TCC_PERB_DITH4_Register;
            --  Compare and Capture Buffer
            CCB_DITH4 : aliased TCC_CCB_DITH4_Registers;
         when Dith5 =>
            --  Count
            COUNT_DITH5 : aliased TCC_COUNT_DITH5_Register;
            --  Period
            PER_DITH5 : aliased TCC_PER_DITH5_Register;
            --  Compare and Capture
            CC_DITH5 : aliased TCC_CC_DITH5_Registers;
            --  Period Buffer
            PERB_DITH5 : aliased TCC_PERB_DITH5_Register;
            --  Compare and Capture Buffer
            CCB_DITH5 : aliased TCC_CCB_DITH5_Registers;
         when Dith6 =>
            --  Count
            COUNT_DITH6 : aliased TCC_COUNT_DITH6_Register;
            --  Period
            PER_DITH6 : aliased TCC_PER_DITH6_Register;
            --  Compare and Capture
            CC_DITH6 : aliased TCC_CC_DITH6_Registers;
            --  Period Buffer
            PERB_DITH6 : aliased TCC_PERB_DITH6_Register;
            --  Compare and Capture Buffer
            CCB_DITH6 : aliased TCC_CCB_DITH6_Registers;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TCC_Peripheral use record
      CTRLA       at 16#0# range 0 .. 31;
      CTRLBCLR    at 16#4# range 0 .. 7;
      CTRLBSET    at 16#5# range 0 .. 7;
      SYNCBUSY    at 16#8# range 0 .. 31;
      FCTRLA      at 16#C# range 0 .. 31;
      FCTRLB      at 16#10# range 0 .. 31;
      WEXCTRL     at 16#14# range 0 .. 31;
      DRVCTRL     at 16#18# range 0 .. 31;
      DBGCTRL     at 16#1E# range 0 .. 7;
      EVCTRL      at 16#20# range 0 .. 31;
      INTENCLR    at 16#24# range 0 .. 31;
      INTENSET    at 16#28# range 0 .. 31;
      INTFLAG     at 16#2C# range 0 .. 31;
      STATUS      at 16#30# range 0 .. 31;
      PATT        at 16#38# range 0 .. 15;
      WAVE        at 16#3C# range 0 .. 31;
      PATTB       at 16#64# range 0 .. 15;
      WAVEB       at 16#68# range 0 .. 31;
      COUNT       at 16#34# range 0 .. 31;
      PER         at 16#40# range 0 .. 31;
      CC          at 16#44# range 0 .. 127;
      PERB        at 16#6C# range 0 .. 31;
      CCB         at 16#70# range 0 .. 127;
      COUNT_DITH4 at 16#34# range 0 .. 31;
      PER_DITH4   at 16#40# range 0 .. 31;
      CC_DITH4    at 16#44# range 0 .. 127;
      PERB_DITH4  at 16#6C# range 0 .. 31;
      CCB_DITH4   at 16#70# range 0 .. 127;
      COUNT_DITH5 at 16#34# range 0 .. 31;
      PER_DITH5   at 16#40# range 0 .. 31;
      CC_DITH5    at 16#44# range 0 .. 127;
      PERB_DITH5  at 16#6C# range 0 .. 31;
      CCB_DITH5   at 16#70# range 0 .. 127;
      COUNT_DITH6 at 16#34# range 0 .. 31;
      PER_DITH6   at 16#40# range 0 .. 31;
      CC_DITH6    at 16#44# range 0 .. 127;
      PERB_DITH6  at 16#6C# range 0 .. 31;
      CCB_DITH6   at 16#70# range 0 .. 127;
   end record;

   --  Timer Counter Control 0
   TCC0_Periph : aliased TCC_Peripheral
     with Import, Address => System'To_Address (16#42002000#);

   --  Timer Counter Control 1
   TCC1_Periph : aliased TCC_Peripheral
     with Import, Address => System'To_Address (16#42002400#);

   --  Timer Counter Control 2
   TCC2_Periph : aliased TCC_Peripheral
     with Import, Address => System'To_Address (16#42002800#);

end SAM_SVD.TCC;

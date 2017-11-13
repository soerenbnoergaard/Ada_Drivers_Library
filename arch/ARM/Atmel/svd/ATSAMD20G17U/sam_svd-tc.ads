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

--  This spec has been automatically generated from ATSAMD20G17U.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.TC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ----------------------------------
   -- TcCount8 cluster's Registers --
   ----------------------------------

   --  TC Mode
   type CTRLA_MODESelect is
     (
      --  Counter in 16-bit mode
      Count16,
      --  Counter in 8-bit mode
      Count8,
      --  Counter in 32-bit mode
      Count32)
     with Size => 2;
   for CTRLA_MODESelect use
     (Count16 => 0,
      Count8 => 1,
      Count32 => 2);

   --  Waveform Generation Operation
   type CTRLA_WAVEGENSelect is
     (
      Nfrq,
      Mfrq,
      Npwm,
      Mpwm)
     with Size => 2;
   for CTRLA_WAVEGENSelect use
     (Nfrq => 0,
      Mfrq => 1,
      Npwm => 2,
      Mpwm => 3);

   --  Prescaler
   type CTRLA_PRESCALERSelect is
     (
      --  GCLK_TC
      Div1,
      --  GCLK_TC/2
      Div2,
      --  GCLK_TC/4
      Div4,
      --  GCLK_TC/8
      Div8,
      --  GCLK_TC/16
      Div16,
      --  GCLK_TC/64
      Div64,
      --  GCLK_TC/256
      Div256,
      --  GCLK_TC/1024
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

   --  Prescaler and Counter Synchronization
   type CTRLA_PRESCSYNCSelect is
     (
      --  Reload or reset Counter on next GCLK
      Gclk,
      --  Reload or reset Counter on next prescaler clock
      Presc,
      --  Reload or reset Counter on next GCLK. Reset prescaler counter
      Resync)
     with Size => 2;
   for CTRLA_PRESCSYNCSelect use
     (Gclk => 0,
      Presc => 1,
      Resync => 2);

   --  Control A
   type TC_CTRLA_TC_COUNT8_Register is record
      --  Write-only. Software Reset
      SWRST          : Boolean := False;
      --  Enable
      ENABLE         : Boolean := False;
      --  TC Mode
      MODE           : CTRLA_MODESelect := SAM_SVD.TC.Count16;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Waveform Generation Operation
      WAVEGEN        : CTRLA_WAVEGENSelect := SAM_SVD.TC.Nfrq;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Prescaler
      PRESCALER      : CTRLA_PRESCALERSelect := SAM_SVD.TC.Div1;
      --  Run in Standby
      RUNSTDBY       : Boolean := False;
      --  Prescaler and Counter Synchronization
      PRESCSYNC      : CTRLA_PRESCSYNCSelect := SAM_SVD.TC.Gclk;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TC_CTRLA_TC_COUNT8_Register use record
      SWRST          at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      MODE           at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      WAVEGEN        at 0 range 5 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PRESCALER      at 0 range 8 .. 10;
      RUNSTDBY       at 0 range 11 .. 11;
      PRESCSYNC      at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype TC_READREQ_TC_COUNT8_ADDR_Field is HAL.UInt5;

   --  Read Request
   type TC_READREQ_TC_COUNT8_Register is record
      --  Address
      ADDR          : TC_READREQ_TC_COUNT8_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_5_13 : HAL.UInt9 := 16#0#;
      --  Read Continuously
      RCONT         : Boolean := False;
      --  Read Request
      RREQ          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TC_READREQ_TC_COUNT8_Register use record
      ADDR          at 0 range 0 .. 4;
      Reserved_5_13 at 0 range 5 .. 13;
      RCONT         at 0 range 14 .. 14;
      RREQ          at 0 range 15 .. 15;
   end record;

   --  Command
   type CTRLBCLR_CMDSelect is
     (
      --  No action
      None,
      --  Force start, restart or retrigger
      Retrigger,
      --  Force stop
      Stop)
     with Size => 2;
   for CTRLBCLR_CMDSelect use
     (None => 0,
      Retrigger => 1,
      Stop => 2);

   --  Control B Clear
   type TC_CTRLBCLR_TC_COUNT8_Register is record
      --  Counter Direction
      DIR          : Boolean := False;
      --  unspecified
      Reserved_1_1 : HAL.Bit := 16#1#;
      --  One-Shot
      ONESHOT      : Boolean := False;
      --  unspecified
      Reserved_3_5 : HAL.UInt3 := 16#0#;
      --  Command
      CMD          : CTRLBCLR_CMDSelect := SAM_SVD.TC.None;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_CTRLBCLR_TC_COUNT8_Register use record
      DIR          at 0 range 0 .. 0;
      Reserved_1_1 at 0 range 1 .. 1;
      ONESHOT      at 0 range 2 .. 2;
      Reserved_3_5 at 0 range 3 .. 5;
      CMD          at 0 range 6 .. 7;
   end record;

   --  Command
   type CTRLBSET_CMDSelect is
     (
      --  No action
      None,
      --  Force start, restart or retrigger
      Retrigger,
      --  Force stop
      Stop)
     with Size => 2;
   for CTRLBSET_CMDSelect use
     (None => 0,
      Retrigger => 1,
      Stop => 2);

   --  Control B Set
   type TC_CTRLBSET_TC_COUNT8_Register is record
      --  Counter Direction
      DIR          : Boolean := False;
      --  unspecified
      Reserved_1_1 : HAL.Bit := 16#0#;
      --  One-shot
      ONESHOT      : Boolean := False;
      --  unspecified
      Reserved_3_5 : HAL.UInt3 := 16#0#;
      --  Command
      CMD          : CTRLBSET_CMDSelect := SAM_SVD.TC.None;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_CTRLBSET_TC_COUNT8_Register use record
      DIR          at 0 range 0 .. 0;
      Reserved_1_1 at 0 range 1 .. 1;
      ONESHOT      at 0 range 2 .. 2;
      Reserved_3_5 at 0 range 3 .. 5;
      CMD          at 0 range 6 .. 7;
   end record;

   --  TC_CTRLC_TC_COUNT8_INVEN array
   type TC_CTRLC_TC_COUNT8_INVEN_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC_CTRLC_TC_COUNT8_INVEN
   type TC_CTRLC_TC_COUNT8_INVEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INVEN as a value
            Val : HAL.UInt2;
         when True =>
            --  INVEN as an array
            Arr : TC_CTRLC_TC_COUNT8_INVEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC_CTRLC_TC_COUNT8_INVEN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  TC_CTRLC_TC_COUNT8_CPTEN array
   type TC_CTRLC_TC_COUNT8_CPTEN_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC_CTRLC_TC_COUNT8_CPTEN
   type TC_CTRLC_TC_COUNT8_CPTEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CPTEN as a value
            Val : HAL.UInt2;
         when True =>
            --  CPTEN as an array
            Arr : TC_CTRLC_TC_COUNT8_CPTEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC_CTRLC_TC_COUNT8_CPTEN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Control C
   type TC_CTRLC_TC_COUNT8_Register is record
      --  Output Waveform 0 Invert Enable
      INVEN        : TC_CTRLC_TC_COUNT8_INVEN_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_3 : HAL.UInt2 := 16#0#;
      --  Capture Channel 0 Enable
      CPTEN        : TC_CTRLC_TC_COUNT8_CPTEN_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_CTRLC_TC_COUNT8_Register use record
      INVEN        at 0 range 0 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      CPTEN        at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Debug Control
   type TC_DBGCTRL_TC_COUNT8_Register is record
      --  Debug Run Mode
      DBGRUN       : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_DBGCTRL_TC_COUNT8_Register use record
      DBGRUN       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Event Action
   type EVCTRL_EVACTSelect is
     (
      --  Event action disabled
      Off,
      --  Start, restart or retrigger TC on event
      Retrigger,
      --  Count on event
      Count,
      --  Start TC on event
      Start,
      --  Period captured into CC0 Pulse Width in CC1
      Ppw,
      --  Period captured into CC1 Pulse Width on CC0
      Pwp)
     with Size => 3;
   for EVCTRL_EVACTSelect use
     (Off => 0,
      Retrigger => 1,
      Count => 2,
      Start => 3,
      Ppw => 5,
      Pwp => 6);

   --  TC_EVCTRL_TC_COUNT8_MCEO array
   type TC_EVCTRL_TC_COUNT8_MCEO_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC_EVCTRL_TC_COUNT8_MCEO
   type TC_EVCTRL_TC_COUNT8_MCEO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MCEO as a value
            Val : HAL.UInt2;
         when True =>
            --  MCEO as an array
            Arr : TC_EVCTRL_TC_COUNT8_MCEO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC_EVCTRL_TC_COUNT8_MCEO_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Event Control
   type TC_EVCTRL_TC_COUNT8_Register is record
      --  Event Action
      EVACT          : EVCTRL_EVACTSelect := SAM_SVD.TC.Off;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  TC Inverted Event Input
      TCINV          : Boolean := False;
      --  TC Event Input
      TCEI           : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Overflow/Underflow Event Output Enable
      OVFEO          : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Match or Capture Channel 0 Event Output Enable
      MCEO           : TC_EVCTRL_TC_COUNT8_MCEO_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TC_EVCTRL_TC_COUNT8_Register use record
      EVACT          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TCINV          at 0 range 4 .. 4;
      TCEI           at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      OVFEO          at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      MCEO           at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  TC_INTENCLR_TC_COUNT8_MC array
   type TC_INTENCLR_TC_COUNT8_MC_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC_INTENCLR_TC_COUNT8_MC
   type TC_INTENCLR_TC_COUNT8_MC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MC as a value
            Val : HAL.UInt2;
         when True =>
            --  MC as an array
            Arr : TC_INTENCLR_TC_COUNT8_MC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC_INTENCLR_TC_COUNT8_MC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Enable Clear
   type TC_INTENCLR_TC_COUNT8_Register is record
      --  Overflow Interrupt Enable
      OVF          : Boolean := False;
      --  Error Interrupt Enable
      ERR          : Boolean := False;
      --  unspecified
      Reserved_2_2 : HAL.Bit := 16#0#;
      --  Synchronization Ready Interrupt Enable
      SYNCRDY      : Boolean := False;
      --  Match or Capture Channel 0 Interrupt Enable
      MC           : TC_INTENCLR_TC_COUNT8_MC_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_INTENCLR_TC_COUNT8_Register use record
      OVF          at 0 range 0 .. 0;
      ERR          at 0 range 1 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      SYNCRDY      at 0 range 3 .. 3;
      MC           at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  TC_INTENSET_TC_COUNT8_MC array
   type TC_INTENSET_TC_COUNT8_MC_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC_INTENSET_TC_COUNT8_MC
   type TC_INTENSET_TC_COUNT8_MC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MC as a value
            Val : HAL.UInt2;
         when True =>
            --  MC as an array
            Arr : TC_INTENSET_TC_COUNT8_MC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC_INTENSET_TC_COUNT8_MC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Enable Set
   type TC_INTENSET_TC_COUNT8_Register is record
      --  Overflow Interrupt Enable
      OVF          : Boolean := False;
      --  Error Interrupt Enable
      ERR          : Boolean := False;
      --  unspecified
      Reserved_2_2 : HAL.Bit := 16#0#;
      --  Synchronization Ready Interrupt Enable
      SYNCRDY      : Boolean := False;
      --  Match or Capture Channel 0 Interrupt Enable
      MC           : TC_INTENSET_TC_COUNT8_MC_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_INTENSET_TC_COUNT8_Register use record
      OVF          at 0 range 0 .. 0;
      ERR          at 0 range 1 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      SYNCRDY      at 0 range 3 .. 3;
      MC           at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  TC_INTFLAG_TC_COUNT8_MC array
   type TC_INTFLAG_TC_COUNT8_MC_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC_INTFLAG_TC_COUNT8_MC
   type TC_INTFLAG_TC_COUNT8_MC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MC as a value
            Val : HAL.UInt2;
         when True =>
            --  MC as an array
            Arr : TC_INTFLAG_TC_COUNT8_MC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC_INTFLAG_TC_COUNT8_MC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Flag Status and Clear
   type TC_INTFLAG_TC_COUNT8_Register is record
      --  Overflow
      OVF          : Boolean := False;
      --  Error
      ERR          : Boolean := False;
      --  unspecified
      Reserved_2_2 : HAL.Bit := 16#0#;
      --  Synchronization Ready
      SYNCRDY      : Boolean := False;
      --  Match or Capture Channel 0
      MC           : TC_INTFLAG_TC_COUNT8_MC_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_INTFLAG_TC_COUNT8_Register use record
      OVF          at 0 range 0 .. 0;
      ERR          at 0 range 1 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      SYNCRDY      at 0 range 3 .. 3;
      MC           at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Status
   type TC_STATUS_TC_COUNT8_Register is record
      --  unspecified
      Reserved_0_2 : HAL.UInt3;
      --  Read-only. Stop
      STOP         : Boolean;
      --  Read-only. Slave
      SLAVE        : Boolean;
      --  unspecified
      Reserved_5_6 : HAL.UInt2;
      --  Read-only. Synchronization Busy
      SYNCBUSY     : Boolean;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_STATUS_TC_COUNT8_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      STOP         at 0 range 3 .. 3;
      SLAVE        at 0 range 4 .. 4;
      Reserved_5_6 at 0 range 5 .. 6;
      SYNCBUSY     at 0 range 7 .. 7;
   end record;

   --  COUNT8 Compare/Capture

   --  COUNT8 Compare/Capture
   type TC_CC_TC_COUNT8_Registers is array (0 .. 1) of HAL.UInt8
     with Volatile;

   --  8-bit Counter Mode
   type TcCount8_Cluster is record
      --  Control A
      CTRLA    : aliased TC_CTRLA_TC_COUNT8_Register;
      --  Read Request
      READREQ  : aliased TC_READREQ_TC_COUNT8_Register;
      --  Control B Clear
      CTRLBCLR : aliased TC_CTRLBCLR_TC_COUNT8_Register;
      --  Control B Set
      CTRLBSET : aliased TC_CTRLBSET_TC_COUNT8_Register;
      --  Control C
      CTRLC    : aliased TC_CTRLC_TC_COUNT8_Register;
      --  Debug Control
      DBGCTRL  : aliased TC_DBGCTRL_TC_COUNT8_Register;
      --  Event Control
      EVCTRL   : aliased TC_EVCTRL_TC_COUNT8_Register;
      --  Interrupt Enable Clear
      INTENCLR : aliased TC_INTENCLR_TC_COUNT8_Register;
      --  Interrupt Enable Set
      INTENSET : aliased TC_INTENSET_TC_COUNT8_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG  : aliased TC_INTFLAG_TC_COUNT8_Register;
      --  Status
      STATUS   : aliased TC_STATUS_TC_COUNT8_Register;
      --  COUNT8 Counter Value
      COUNT    : aliased HAL.UInt8;
      --  COUNT8 Period Value
      PER      : aliased HAL.UInt8;
      --  COUNT8 Compare/Capture
      CC       : aliased TC_CC_TC_COUNT8_Registers;
   end record
     with Volatile, Size => 224;

   for TcCount8_Cluster use record
      CTRLA    at 16#0# range 0 .. 15;
      READREQ  at 16#2# range 0 .. 15;
      CTRLBCLR at 16#4# range 0 .. 7;
      CTRLBSET at 16#5# range 0 .. 7;
      CTRLC    at 16#6# range 0 .. 7;
      DBGCTRL  at 16#8# range 0 .. 7;
      EVCTRL   at 16#A# range 0 .. 15;
      INTENCLR at 16#C# range 0 .. 7;
      INTENSET at 16#D# range 0 .. 7;
      INTFLAG  at 16#E# range 0 .. 7;
      STATUS   at 16#F# range 0 .. 7;
      COUNT    at 16#10# range 0 .. 7;
      PER      at 16#14# range 0 .. 7;
      CC       at 16#18# range 0 .. 15;
   end record;

   -----------------------------------
   -- TcCount16 cluster's Registers --
   -----------------------------------

   --  Control A
   type TC_CTRLA_TC_COUNT16_Register is record
      --  Write-only. Software Reset
      SWRST          : Boolean := False;
      --  Enable
      ENABLE         : Boolean := False;
      --  TC Mode
      MODE           : CTRLA_MODESelect := SAM_SVD.TC.Count16;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Waveform Generation Operation
      WAVEGEN        : CTRLA_WAVEGENSelect := SAM_SVD.TC.Nfrq;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Prescaler
      PRESCALER      : CTRLA_PRESCALERSelect := SAM_SVD.TC.Div1;
      --  Run in Standby
      RUNSTDBY       : Boolean := False;
      --  Prescaler and Counter Synchronization
      PRESCSYNC      : CTRLA_PRESCSYNCSelect := SAM_SVD.TC.Gclk;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TC_CTRLA_TC_COUNT16_Register use record
      SWRST          at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      MODE           at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      WAVEGEN        at 0 range 5 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PRESCALER      at 0 range 8 .. 10;
      RUNSTDBY       at 0 range 11 .. 11;
      PRESCSYNC      at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype TC_READREQ_TC_COUNT16_ADDR_Field is HAL.UInt5;

   --  Read Request
   type TC_READREQ_TC_COUNT16_Register is record
      --  Address
      ADDR          : TC_READREQ_TC_COUNT16_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_5_13 : HAL.UInt9 := 16#0#;
      --  Read Continuously
      RCONT         : Boolean := False;
      --  Read Request
      RREQ          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TC_READREQ_TC_COUNT16_Register use record
      ADDR          at 0 range 0 .. 4;
      Reserved_5_13 at 0 range 5 .. 13;
      RCONT         at 0 range 14 .. 14;
      RREQ          at 0 range 15 .. 15;
   end record;

   --  Control B Clear
   type TC_CTRLBCLR_TC_COUNT16_Register is record
      --  Counter Direction
      DIR          : Boolean := False;
      --  unspecified
      Reserved_1_1 : HAL.Bit := 16#1#;
      --  One-Shot
      ONESHOT      : Boolean := False;
      --  unspecified
      Reserved_3_5 : HAL.UInt3 := 16#0#;
      --  Command
      CMD          : CTRLBCLR_CMDSelect := SAM_SVD.TC.None;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_CTRLBCLR_TC_COUNT16_Register use record
      DIR          at 0 range 0 .. 0;
      Reserved_1_1 at 0 range 1 .. 1;
      ONESHOT      at 0 range 2 .. 2;
      Reserved_3_5 at 0 range 3 .. 5;
      CMD          at 0 range 6 .. 7;
   end record;

   --  Control B Set
   type TC_CTRLBSET_TC_COUNT16_Register is record
      --  Counter Direction
      DIR          : Boolean := False;
      --  unspecified
      Reserved_1_1 : HAL.Bit := 16#0#;
      --  One-shot
      ONESHOT      : Boolean := False;
      --  unspecified
      Reserved_3_5 : HAL.UInt3 := 16#0#;
      --  Command
      CMD          : CTRLBSET_CMDSelect := SAM_SVD.TC.None;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_CTRLBSET_TC_COUNT16_Register use record
      DIR          at 0 range 0 .. 0;
      Reserved_1_1 at 0 range 1 .. 1;
      ONESHOT      at 0 range 2 .. 2;
      Reserved_3_5 at 0 range 3 .. 5;
      CMD          at 0 range 6 .. 7;
   end record;

   --  TC_CTRLC_TC_COUNT16_INVEN array
   type TC_CTRLC_TC_COUNT16_INVEN_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC_CTRLC_TC_COUNT16_INVEN
   type TC_CTRLC_TC_COUNT16_INVEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INVEN as a value
            Val : HAL.UInt2;
         when True =>
            --  INVEN as an array
            Arr : TC_CTRLC_TC_COUNT16_INVEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC_CTRLC_TC_COUNT16_INVEN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  TC_CTRLC_TC_COUNT16_CPTEN array
   type TC_CTRLC_TC_COUNT16_CPTEN_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC_CTRLC_TC_COUNT16_CPTEN
   type TC_CTRLC_TC_COUNT16_CPTEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CPTEN as a value
            Val : HAL.UInt2;
         when True =>
            --  CPTEN as an array
            Arr : TC_CTRLC_TC_COUNT16_CPTEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC_CTRLC_TC_COUNT16_CPTEN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Control C
   type TC_CTRLC_TC_COUNT16_Register is record
      --  Output Waveform 0 Invert Enable
      INVEN        : TC_CTRLC_TC_COUNT16_INVEN_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_3 : HAL.UInt2 := 16#0#;
      --  Capture Channel 0 Enable
      CPTEN        : TC_CTRLC_TC_COUNT16_CPTEN_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_CTRLC_TC_COUNT16_Register use record
      INVEN        at 0 range 0 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      CPTEN        at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Debug Control
   type TC_DBGCTRL_TC_COUNT16_Register is record
      --  Debug Run Mode
      DBGRUN       : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_DBGCTRL_TC_COUNT16_Register use record
      DBGRUN       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  TC_EVCTRL_TC_COUNT16_MCEO array
   type TC_EVCTRL_TC_COUNT16_MCEO_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC_EVCTRL_TC_COUNT16_MCEO
   type TC_EVCTRL_TC_COUNT16_MCEO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MCEO as a value
            Val : HAL.UInt2;
         when True =>
            --  MCEO as an array
            Arr : TC_EVCTRL_TC_COUNT16_MCEO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC_EVCTRL_TC_COUNT16_MCEO_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Event Control
   type TC_EVCTRL_TC_COUNT16_Register is record
      --  Event Action
      EVACT          : EVCTRL_EVACTSelect := SAM_SVD.TC.Off;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  TC Inverted Event Input
      TCINV          : Boolean := False;
      --  TC Event Input
      TCEI           : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Overflow/Underflow Event Output Enable
      OVFEO          : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Match or Capture Channel 0 Event Output Enable
      MCEO           : TC_EVCTRL_TC_COUNT16_MCEO_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TC_EVCTRL_TC_COUNT16_Register use record
      EVACT          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TCINV          at 0 range 4 .. 4;
      TCEI           at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      OVFEO          at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      MCEO           at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  TC_INTENCLR_TC_COUNT16_MC array
   type TC_INTENCLR_TC_COUNT16_MC_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC_INTENCLR_TC_COUNT16_MC
   type TC_INTENCLR_TC_COUNT16_MC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MC as a value
            Val : HAL.UInt2;
         when True =>
            --  MC as an array
            Arr : TC_INTENCLR_TC_COUNT16_MC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC_INTENCLR_TC_COUNT16_MC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Enable Clear
   type TC_INTENCLR_TC_COUNT16_Register is record
      --  Overflow Interrupt Enable
      OVF          : Boolean := False;
      --  Error Interrupt Enable
      ERR          : Boolean := False;
      --  unspecified
      Reserved_2_2 : HAL.Bit := 16#0#;
      --  Synchronization Ready Interrupt Enable
      SYNCRDY      : Boolean := False;
      --  Match or Capture Channel 0 Interrupt Enable
      MC           : TC_INTENCLR_TC_COUNT16_MC_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_INTENCLR_TC_COUNT16_Register use record
      OVF          at 0 range 0 .. 0;
      ERR          at 0 range 1 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      SYNCRDY      at 0 range 3 .. 3;
      MC           at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  TC_INTENSET_TC_COUNT16_MC array
   type TC_INTENSET_TC_COUNT16_MC_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC_INTENSET_TC_COUNT16_MC
   type TC_INTENSET_TC_COUNT16_MC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MC as a value
            Val : HAL.UInt2;
         when True =>
            --  MC as an array
            Arr : TC_INTENSET_TC_COUNT16_MC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC_INTENSET_TC_COUNT16_MC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Enable Set
   type TC_INTENSET_TC_COUNT16_Register is record
      --  Overflow Interrupt Enable
      OVF          : Boolean := False;
      --  Error Interrupt Enable
      ERR          : Boolean := False;
      --  unspecified
      Reserved_2_2 : HAL.Bit := 16#0#;
      --  Synchronization Ready Interrupt Enable
      SYNCRDY      : Boolean := False;
      --  Match or Capture Channel 0 Interrupt Enable
      MC           : TC_INTENSET_TC_COUNT16_MC_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_INTENSET_TC_COUNT16_Register use record
      OVF          at 0 range 0 .. 0;
      ERR          at 0 range 1 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      SYNCRDY      at 0 range 3 .. 3;
      MC           at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  TC_INTFLAG_TC_COUNT16_MC array
   type TC_INTFLAG_TC_COUNT16_MC_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC_INTFLAG_TC_COUNT16_MC
   type TC_INTFLAG_TC_COUNT16_MC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MC as a value
            Val : HAL.UInt2;
         when True =>
            --  MC as an array
            Arr : TC_INTFLAG_TC_COUNT16_MC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC_INTFLAG_TC_COUNT16_MC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Flag Status and Clear
   type TC_INTFLAG_TC_COUNT16_Register is record
      --  Overflow
      OVF          : Boolean := False;
      --  Error
      ERR          : Boolean := False;
      --  unspecified
      Reserved_2_2 : HAL.Bit := 16#0#;
      --  Synchronization Ready
      SYNCRDY      : Boolean := False;
      --  Match or Capture Channel 0
      MC           : TC_INTFLAG_TC_COUNT16_MC_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_INTFLAG_TC_COUNT16_Register use record
      OVF          at 0 range 0 .. 0;
      ERR          at 0 range 1 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      SYNCRDY      at 0 range 3 .. 3;
      MC           at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Status
   type TC_STATUS_TC_COUNT16_Register is record
      --  unspecified
      Reserved_0_2 : HAL.UInt3;
      --  Read-only. Stop
      STOP         : Boolean;
      --  Read-only. Slave
      SLAVE        : Boolean;
      --  unspecified
      Reserved_5_6 : HAL.UInt2;
      --  Read-only. Synchronization Busy
      SYNCBUSY     : Boolean;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_STATUS_TC_COUNT16_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      STOP         at 0 range 3 .. 3;
      SLAVE        at 0 range 4 .. 4;
      Reserved_5_6 at 0 range 5 .. 6;
      SYNCBUSY     at 0 range 7 .. 7;
   end record;

   --  COUNT16 Compare/Capture

   --  COUNT16 Compare/Capture
   type TC_CC_TC_COUNT16_Registers is array (0 .. 1) of HAL.UInt16
     with Volatile;

   --  16-bit Counter Mode
   type TcCount16_Cluster is record
      --  Control A
      CTRLA    : aliased TC_CTRLA_TC_COUNT16_Register;
      --  Read Request
      READREQ  : aliased TC_READREQ_TC_COUNT16_Register;
      --  Control B Clear
      CTRLBCLR : aliased TC_CTRLBCLR_TC_COUNT16_Register;
      --  Control B Set
      CTRLBSET : aliased TC_CTRLBSET_TC_COUNT16_Register;
      --  Control C
      CTRLC    : aliased TC_CTRLC_TC_COUNT16_Register;
      --  Debug Control
      DBGCTRL  : aliased TC_DBGCTRL_TC_COUNT16_Register;
      --  Event Control
      EVCTRL   : aliased TC_EVCTRL_TC_COUNT16_Register;
      --  Interrupt Enable Clear
      INTENCLR : aliased TC_INTENCLR_TC_COUNT16_Register;
      --  Interrupt Enable Set
      INTENSET : aliased TC_INTENSET_TC_COUNT16_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG  : aliased TC_INTFLAG_TC_COUNT16_Register;
      --  Status
      STATUS   : aliased TC_STATUS_TC_COUNT16_Register;
      --  COUNT16 Counter Value
      COUNT    : aliased HAL.UInt16;
      --  COUNT16 Compare/Capture
      CC       : aliased TC_CC_TC_COUNT16_Registers;
   end record
     with Volatile, Size => 224;

   for TcCount16_Cluster use record
      CTRLA    at 16#0# range 0 .. 15;
      READREQ  at 16#2# range 0 .. 15;
      CTRLBCLR at 16#4# range 0 .. 7;
      CTRLBSET at 16#5# range 0 .. 7;
      CTRLC    at 16#6# range 0 .. 7;
      DBGCTRL  at 16#8# range 0 .. 7;
      EVCTRL   at 16#A# range 0 .. 15;
      INTENCLR at 16#C# range 0 .. 7;
      INTENSET at 16#D# range 0 .. 7;
      INTFLAG  at 16#E# range 0 .. 7;
      STATUS   at 16#F# range 0 .. 7;
      COUNT    at 16#10# range 0 .. 15;
      CC       at 16#18# range 0 .. 31;
   end record;

   -----------------------------------
   -- TcCount32 cluster's Registers --
   -----------------------------------

   --  Control A
   type TC_CTRLA_TC_COUNT32_Register is record
      --  Write-only. Software Reset
      SWRST          : Boolean := False;
      --  Enable
      ENABLE         : Boolean := False;
      --  TC Mode
      MODE           : CTRLA_MODESelect := SAM_SVD.TC.Count16;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Waveform Generation Operation
      WAVEGEN        : CTRLA_WAVEGENSelect := SAM_SVD.TC.Nfrq;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Prescaler
      PRESCALER      : CTRLA_PRESCALERSelect := SAM_SVD.TC.Div1;
      --  Run in Standby
      RUNSTDBY       : Boolean := False;
      --  Prescaler and Counter Synchronization
      PRESCSYNC      : CTRLA_PRESCSYNCSelect := SAM_SVD.TC.Gclk;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TC_CTRLA_TC_COUNT32_Register use record
      SWRST          at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      MODE           at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      WAVEGEN        at 0 range 5 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PRESCALER      at 0 range 8 .. 10;
      RUNSTDBY       at 0 range 11 .. 11;
      PRESCSYNC      at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype TC_READREQ_TC_COUNT32_ADDR_Field is HAL.UInt5;

   --  Read Request
   type TC_READREQ_TC_COUNT32_Register is record
      --  Address
      ADDR          : TC_READREQ_TC_COUNT32_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_5_13 : HAL.UInt9 := 16#0#;
      --  Read Continuously
      RCONT         : Boolean := False;
      --  Read Request
      RREQ          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TC_READREQ_TC_COUNT32_Register use record
      ADDR          at 0 range 0 .. 4;
      Reserved_5_13 at 0 range 5 .. 13;
      RCONT         at 0 range 14 .. 14;
      RREQ          at 0 range 15 .. 15;
   end record;

   --  Control B Clear
   type TC_CTRLBCLR_TC_COUNT32_Register is record
      --  Counter Direction
      DIR          : Boolean := False;
      --  unspecified
      Reserved_1_1 : HAL.Bit := 16#1#;
      --  One-Shot
      ONESHOT      : Boolean := False;
      --  unspecified
      Reserved_3_5 : HAL.UInt3 := 16#0#;
      --  Command
      CMD          : CTRLBCLR_CMDSelect := SAM_SVD.TC.None;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_CTRLBCLR_TC_COUNT32_Register use record
      DIR          at 0 range 0 .. 0;
      Reserved_1_1 at 0 range 1 .. 1;
      ONESHOT      at 0 range 2 .. 2;
      Reserved_3_5 at 0 range 3 .. 5;
      CMD          at 0 range 6 .. 7;
   end record;

   --  Control B Set
   type TC_CTRLBSET_TC_COUNT32_Register is record
      --  Counter Direction
      DIR          : Boolean := False;
      --  unspecified
      Reserved_1_1 : HAL.Bit := 16#0#;
      --  One-shot
      ONESHOT      : Boolean := False;
      --  unspecified
      Reserved_3_5 : HAL.UInt3 := 16#0#;
      --  Command
      CMD          : CTRLBSET_CMDSelect := SAM_SVD.TC.None;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_CTRLBSET_TC_COUNT32_Register use record
      DIR          at 0 range 0 .. 0;
      Reserved_1_1 at 0 range 1 .. 1;
      ONESHOT      at 0 range 2 .. 2;
      Reserved_3_5 at 0 range 3 .. 5;
      CMD          at 0 range 6 .. 7;
   end record;

   --  TC_CTRLC_TC_COUNT32_INVEN array
   type TC_CTRLC_TC_COUNT32_INVEN_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC_CTRLC_TC_COUNT32_INVEN
   type TC_CTRLC_TC_COUNT32_INVEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INVEN as a value
            Val : HAL.UInt2;
         when True =>
            --  INVEN as an array
            Arr : TC_CTRLC_TC_COUNT32_INVEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC_CTRLC_TC_COUNT32_INVEN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  TC_CTRLC_TC_COUNT32_CPTEN array
   type TC_CTRLC_TC_COUNT32_CPTEN_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC_CTRLC_TC_COUNT32_CPTEN
   type TC_CTRLC_TC_COUNT32_CPTEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CPTEN as a value
            Val : HAL.UInt2;
         when True =>
            --  CPTEN as an array
            Arr : TC_CTRLC_TC_COUNT32_CPTEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC_CTRLC_TC_COUNT32_CPTEN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Control C
   type TC_CTRLC_TC_COUNT32_Register is record
      --  Output Waveform 0 Invert Enable
      INVEN        : TC_CTRLC_TC_COUNT32_INVEN_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_3 : HAL.UInt2 := 16#0#;
      --  Capture Channel 0 Enable
      CPTEN        : TC_CTRLC_TC_COUNT32_CPTEN_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_CTRLC_TC_COUNT32_Register use record
      INVEN        at 0 range 0 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      CPTEN        at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Debug Control
   type TC_DBGCTRL_TC_COUNT32_Register is record
      --  Debug Run Mode
      DBGRUN       : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_DBGCTRL_TC_COUNT32_Register use record
      DBGRUN       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  TC_EVCTRL_TC_COUNT32_MCEO array
   type TC_EVCTRL_TC_COUNT32_MCEO_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC_EVCTRL_TC_COUNT32_MCEO
   type TC_EVCTRL_TC_COUNT32_MCEO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MCEO as a value
            Val : HAL.UInt2;
         when True =>
            --  MCEO as an array
            Arr : TC_EVCTRL_TC_COUNT32_MCEO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC_EVCTRL_TC_COUNT32_MCEO_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Event Control
   type TC_EVCTRL_TC_COUNT32_Register is record
      --  Event Action
      EVACT          : EVCTRL_EVACTSelect := SAM_SVD.TC.Off;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  TC Inverted Event Input
      TCINV          : Boolean := False;
      --  TC Event Input
      TCEI           : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Overflow/Underflow Event Output Enable
      OVFEO          : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Match or Capture Channel 0 Event Output Enable
      MCEO           : TC_EVCTRL_TC_COUNT32_MCEO_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TC_EVCTRL_TC_COUNT32_Register use record
      EVACT          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TCINV          at 0 range 4 .. 4;
      TCEI           at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      OVFEO          at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      MCEO           at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  TC_INTENCLR_TC_COUNT32_MC array
   type TC_INTENCLR_TC_COUNT32_MC_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC_INTENCLR_TC_COUNT32_MC
   type TC_INTENCLR_TC_COUNT32_MC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MC as a value
            Val : HAL.UInt2;
         when True =>
            --  MC as an array
            Arr : TC_INTENCLR_TC_COUNT32_MC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC_INTENCLR_TC_COUNT32_MC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Enable Clear
   type TC_INTENCLR_TC_COUNT32_Register is record
      --  Overflow Interrupt Enable
      OVF          : Boolean := False;
      --  Error Interrupt Enable
      ERR          : Boolean := False;
      --  unspecified
      Reserved_2_2 : HAL.Bit := 16#0#;
      --  Synchronization Ready Interrupt Enable
      SYNCRDY      : Boolean := False;
      --  Match or Capture Channel 0 Interrupt Enable
      MC           : TC_INTENCLR_TC_COUNT32_MC_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_INTENCLR_TC_COUNT32_Register use record
      OVF          at 0 range 0 .. 0;
      ERR          at 0 range 1 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      SYNCRDY      at 0 range 3 .. 3;
      MC           at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  TC_INTENSET_TC_COUNT32_MC array
   type TC_INTENSET_TC_COUNT32_MC_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC_INTENSET_TC_COUNT32_MC
   type TC_INTENSET_TC_COUNT32_MC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MC as a value
            Val : HAL.UInt2;
         when True =>
            --  MC as an array
            Arr : TC_INTENSET_TC_COUNT32_MC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC_INTENSET_TC_COUNT32_MC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Enable Set
   type TC_INTENSET_TC_COUNT32_Register is record
      --  Overflow Interrupt Enable
      OVF          : Boolean := False;
      --  Error Interrupt Enable
      ERR          : Boolean := False;
      --  unspecified
      Reserved_2_2 : HAL.Bit := 16#0#;
      --  Synchronization Ready Interrupt Enable
      SYNCRDY      : Boolean := False;
      --  Match or Capture Channel 0 Interrupt Enable
      MC           : TC_INTENSET_TC_COUNT32_MC_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_INTENSET_TC_COUNT32_Register use record
      OVF          at 0 range 0 .. 0;
      ERR          at 0 range 1 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      SYNCRDY      at 0 range 3 .. 3;
      MC           at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  TC_INTFLAG_TC_COUNT32_MC array
   type TC_INTFLAG_TC_COUNT32_MC_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC_INTFLAG_TC_COUNT32_MC
   type TC_INTFLAG_TC_COUNT32_MC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MC as a value
            Val : HAL.UInt2;
         when True =>
            --  MC as an array
            Arr : TC_INTFLAG_TC_COUNT32_MC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC_INTFLAG_TC_COUNT32_MC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Flag Status and Clear
   type TC_INTFLAG_TC_COUNT32_Register is record
      --  Overflow
      OVF          : Boolean := False;
      --  Error
      ERR          : Boolean := False;
      --  unspecified
      Reserved_2_2 : HAL.Bit := 16#0#;
      --  Synchronization Ready
      SYNCRDY      : Boolean := False;
      --  Match or Capture Channel 0
      MC           : TC_INTFLAG_TC_COUNT32_MC_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_INTFLAG_TC_COUNT32_Register use record
      OVF          at 0 range 0 .. 0;
      ERR          at 0 range 1 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      SYNCRDY      at 0 range 3 .. 3;
      MC           at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Status
   type TC_STATUS_TC_COUNT32_Register is record
      --  unspecified
      Reserved_0_2 : HAL.UInt3;
      --  Read-only. Stop
      STOP         : Boolean;
      --  Read-only. Slave
      SLAVE        : Boolean;
      --  unspecified
      Reserved_5_6 : HAL.UInt2;
      --  Read-only. Synchronization Busy
      SYNCBUSY     : Boolean;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TC_STATUS_TC_COUNT32_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      STOP         at 0 range 3 .. 3;
      SLAVE        at 0 range 4 .. 4;
      Reserved_5_6 at 0 range 5 .. 6;
      SYNCBUSY     at 0 range 7 .. 7;
   end record;

   --  COUNT32 Compare/Capture

   --  COUNT32 Compare/Capture
   type TC_CC_TC_COUNT32_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  32-bit Counter Mode
   type TcCount32_Cluster is record
      --  Control A
      CTRLA    : aliased TC_CTRLA_TC_COUNT32_Register;
      --  Read Request
      READREQ  : aliased TC_READREQ_TC_COUNT32_Register;
      --  Control B Clear
      CTRLBCLR : aliased TC_CTRLBCLR_TC_COUNT32_Register;
      --  Control B Set
      CTRLBSET : aliased TC_CTRLBSET_TC_COUNT32_Register;
      --  Control C
      CTRLC    : aliased TC_CTRLC_TC_COUNT32_Register;
      --  Debug Control
      DBGCTRL  : aliased TC_DBGCTRL_TC_COUNT32_Register;
      --  Event Control
      EVCTRL   : aliased TC_EVCTRL_TC_COUNT32_Register;
      --  Interrupt Enable Clear
      INTENCLR : aliased TC_INTENCLR_TC_COUNT32_Register;
      --  Interrupt Enable Set
      INTENSET : aliased TC_INTENSET_TC_COUNT32_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG  : aliased TC_INTFLAG_TC_COUNT32_Register;
      --  Status
      STATUS   : aliased TC_STATUS_TC_COUNT32_Register;
      --  COUNT32 Counter Value
      COUNT    : aliased HAL.UInt32;
      --  COUNT32 Compare/Capture
      CC       : aliased TC_CC_TC_COUNT32_Registers;
   end record
     with Volatile, Size => 256;

   for TcCount32_Cluster use record
      CTRLA    at 16#0# range 0 .. 15;
      READREQ  at 16#2# range 0 .. 15;
      CTRLBCLR at 16#4# range 0 .. 7;
      CTRLBSET at 16#5# range 0 .. 7;
      CTRLC    at 16#6# range 0 .. 7;
      DBGCTRL  at 16#8# range 0 .. 7;
      EVCTRL   at 16#A# range 0 .. 15;
      INTENCLR at 16#C# range 0 .. 7;
      INTENSET at 16#D# range 0 .. 7;
      INTFLAG  at 16#E# range 0 .. 7;
      STATUS   at 16#F# range 0 .. 7;
      COUNT    at 16#10# range 0 .. 31;
      CC       at 16#18# range 0 .. 63;
   end record;

   ----------------------------------
   -- TcCount8 cluster's Registers --
   ----------------------------------

   --  COUNT8 Compare/Capture

   -----------------------------------
   -- TcCount16 cluster's Registers --
   -----------------------------------

   --  COUNT16 Compare/Capture

   -----------------------------------
   -- TcCount32 cluster's Registers --
   -----------------------------------

   --  COUNT32 Compare/Capture

   ----------------------------------
   -- TcCount8 cluster's Registers --
   ----------------------------------

   --  COUNT8 Compare/Capture

   -----------------------------------
   -- TcCount16 cluster's Registers --
   -----------------------------------

   --  COUNT16 Compare/Capture

   -----------------------------------
   -- TcCount32 cluster's Registers --
   -----------------------------------

   --  COUNT32 Compare/Capture

   ----------------------------------
   -- TcCount8 cluster's Registers --
   ----------------------------------

   --  COUNT8 Compare/Capture

   -----------------------------------
   -- TcCount16 cluster's Registers --
   -----------------------------------

   --  COUNT16 Compare/Capture

   -----------------------------------
   -- TcCount32 cluster's Registers --
   -----------------------------------

   --  COUNT32 Compare/Capture

   ----------------------------------
   -- TcCount8 cluster's Registers --
   ----------------------------------

   --  COUNT8 Compare/Capture

   -----------------------------------
   -- TcCount16 cluster's Registers --
   -----------------------------------

   --  COUNT16 Compare/Capture

   -----------------------------------
   -- TcCount32 cluster's Registers --
   -----------------------------------

   --  COUNT32 Compare/Capture

   ----------------------------------
   -- TcCount8 cluster's Registers --
   ----------------------------------

   --  COUNT8 Compare/Capture

   -----------------------------------
   -- TcCount16 cluster's Registers --
   -----------------------------------

   --  COUNT16 Compare/Capture

   -----------------------------------
   -- TcCount32 cluster's Registers --
   -----------------------------------

   --  COUNT32 Compare/Capture

   -----------------
   -- Peripherals --
   -----------------

   type TC0_Disc is
     (
      TC0_Disc_8,
      TC0_Disc_16,
      TC0_Disc_32);

   --  Basic Timer Counter 0
   type TC_Peripheral
     (Discriminent : TC0_Disc := TC0_Disc_8)
   is record
      case Discriminent is
         when TC0_Disc_8 =>
            --  8-bit Counter Mode
            TC_COUNT8 : aliased TcCount8_Cluster;
         when TC0_Disc_16 =>
            --  16-bit Counter Mode
            TC_COUNT16 : aliased TcCount16_Cluster;
         when TC0_Disc_32 =>
            --  32-bit Counter Mode
            TC_COUNT32 : aliased TcCount32_Cluster;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TC_Peripheral use record
      TC_COUNT8  at 0 range 0 .. 223;
      TC_COUNT16 at 0 range 0 .. 223;
      TC_COUNT32 at 0 range 0 .. 255;
   end record;

   --  Basic Timer Counter 0
   TC0_Periph : aliased TC_Peripheral
     with Import, Address => System'To_Address (16#42002000#);

   --  Basic Timer Counter 1
   TC1_Periph : aliased TC_Peripheral
     with Import, Address => System'To_Address (16#42002400#);

   --  Basic Timer Counter 2
   TC2_Periph : aliased TC_Peripheral
     with Import, Address => System'To_Address (16#42002800#);

   --  Basic Timer Counter 3
   TC3_Periph : aliased TC_Peripheral
     with Import, Address => System'To_Address (16#42002C00#);

   --  Basic Timer Counter 4
   TC4_Periph : aliased TC_Peripheral
     with Import, Address => System'To_Address (16#42003000#);

   --  Basic Timer Counter 5
   TC5_Periph : aliased TC_Peripheral
     with Import, Address => System'To_Address (16#42003400#);

end SAM_SVD.TC;

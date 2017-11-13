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

--  This spec has been automatically generated from ATSAMD21E15A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.SYSCTRL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Interrupt Enable Clear
   type SYSCTRL_INTENCLR_Register is record
      --  XOSC Ready Interrupt Enable
      XOSCRDY        : Boolean := False;
      --  XOSC32K Ready Interrupt Enable
      XOSC32KRDY     : Boolean := False;
      --  OSC32K Ready Interrupt Enable
      OSC32KRDY      : Boolean := False;
      --  OSC8M Ready Interrupt Enable
      OSC8MRDY       : Boolean := False;
      --  DFLL Ready Interrupt Enable
      DFLLRDY        : Boolean := False;
      --  DFLL Out Of Bounds Interrupt Enable
      DFLLOOB        : Boolean := False;
      --  DFLL Lock Fine Interrupt Enable
      DFLLLCKF       : Boolean := False;
      --  DFLL Lock Coarse Interrupt Enable
      DFLLLCKC       : Boolean := False;
      --  DFLL Reference Clock Stopped Interrupt Enable
      DFLLRCS        : Boolean := False;
      --  BOD33 Ready Interrupt Enable
      BOD33RDY       : Boolean := False;
      --  BOD33 Detection Interrupt Enable
      BOD33DET       : Boolean := False;
      --  BOD33 Synchronization Ready Interrupt Enable
      B33SRDY        : Boolean := False;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  DPLL Lock Rise Interrupt Enable
      DPLLLCKR       : Boolean := False;
      --  DPLL Lock Fall Interrupt Enable
      DPLLLCKF       : Boolean := False;
      --  DPLL Lock Timeout Interrupt Enable
      DPLLLTO        : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_INTENCLR_Register use record
      XOSCRDY        at 0 range 0 .. 0;
      XOSC32KRDY     at 0 range 1 .. 1;
      OSC32KRDY      at 0 range 2 .. 2;
      OSC8MRDY       at 0 range 3 .. 3;
      DFLLRDY        at 0 range 4 .. 4;
      DFLLOOB        at 0 range 5 .. 5;
      DFLLLCKF       at 0 range 6 .. 6;
      DFLLLCKC       at 0 range 7 .. 7;
      DFLLRCS        at 0 range 8 .. 8;
      BOD33RDY       at 0 range 9 .. 9;
      BOD33DET       at 0 range 10 .. 10;
      B33SRDY        at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      DPLLLCKR       at 0 range 15 .. 15;
      DPLLLCKF       at 0 range 16 .. 16;
      DPLLLTO        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Interrupt Enable Set
   type SYSCTRL_INTENSET_Register is record
      --  XOSC Ready Interrupt Enable
      XOSCRDY        : Boolean := False;
      --  XOSC32K Ready Interrupt Enable
      XOSC32KRDY     : Boolean := False;
      --  OSC32K Ready Interrupt Enable
      OSC32KRDY      : Boolean := False;
      --  OSC8M Ready Interrupt Enable
      OSC8MRDY       : Boolean := False;
      --  DFLL Ready Interrupt Enable
      DFLLRDY        : Boolean := False;
      --  DFLL Out Of Bounds Interrupt Enable
      DFLLOOB        : Boolean := False;
      --  DFLL Lock Fine Interrupt Enable
      DFLLLCKF       : Boolean := False;
      --  DFLL Lock Coarse Interrupt Enable
      DFLLLCKC       : Boolean := False;
      --  DFLL Reference Clock Stopped Interrupt Enable
      DFLLRCS        : Boolean := False;
      --  BOD33 Ready Interrupt Enable
      BOD33RDY       : Boolean := False;
      --  BOD33 Detection Interrupt Enable
      BOD33DET       : Boolean := False;
      --  BOD33 Synchronization Ready Interrupt Enable
      B33SRDY        : Boolean := False;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  DPLL Lock Rise Interrupt Enable
      DPLLLCKR       : Boolean := False;
      --  DPLL Lock Fall Interrupt Enable
      DPLLLCKF       : Boolean := False;
      --  DPLL Lock Timeout Interrupt Enable
      DPLLLTO        : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_INTENSET_Register use record
      XOSCRDY        at 0 range 0 .. 0;
      XOSC32KRDY     at 0 range 1 .. 1;
      OSC32KRDY      at 0 range 2 .. 2;
      OSC8MRDY       at 0 range 3 .. 3;
      DFLLRDY        at 0 range 4 .. 4;
      DFLLOOB        at 0 range 5 .. 5;
      DFLLLCKF       at 0 range 6 .. 6;
      DFLLLCKC       at 0 range 7 .. 7;
      DFLLRCS        at 0 range 8 .. 8;
      BOD33RDY       at 0 range 9 .. 9;
      BOD33DET       at 0 range 10 .. 10;
      B33SRDY        at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      DPLLLCKR       at 0 range 15 .. 15;
      DPLLLCKF       at 0 range 16 .. 16;
      DPLLLTO        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Interrupt Flag Status and Clear
   type SYSCTRL_INTFLAG_Register is record
      --  XOSC Ready
      XOSCRDY        : Boolean := False;
      --  XOSC32K Ready
      XOSC32KRDY     : Boolean := False;
      --  OSC32K Ready
      OSC32KRDY      : Boolean := False;
      --  OSC8M Ready
      OSC8MRDY       : Boolean := False;
      --  DFLL Ready
      DFLLRDY        : Boolean := False;
      --  DFLL Out Of Bounds
      DFLLOOB        : Boolean := False;
      --  DFLL Lock Fine
      DFLLLCKF       : Boolean := False;
      --  DFLL Lock Coarse
      DFLLLCKC       : Boolean := False;
      --  DFLL Reference Clock Stopped
      DFLLRCS        : Boolean := False;
      --  BOD33 Ready
      BOD33RDY       : Boolean := False;
      --  BOD33 Detection
      BOD33DET       : Boolean := False;
      --  BOD33 Synchronization Ready
      B33SRDY        : Boolean := False;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  DPLL Lock Rise
      DPLLLCKR       : Boolean := False;
      --  DPLL Lock Fall
      DPLLLCKF       : Boolean := False;
      --  DPLL Lock Timeout
      DPLLLTO        : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_INTFLAG_Register use record
      XOSCRDY        at 0 range 0 .. 0;
      XOSC32KRDY     at 0 range 1 .. 1;
      OSC32KRDY      at 0 range 2 .. 2;
      OSC8MRDY       at 0 range 3 .. 3;
      DFLLRDY        at 0 range 4 .. 4;
      DFLLOOB        at 0 range 5 .. 5;
      DFLLLCKF       at 0 range 6 .. 6;
      DFLLLCKC       at 0 range 7 .. 7;
      DFLLRCS        at 0 range 8 .. 8;
      BOD33RDY       at 0 range 9 .. 9;
      BOD33DET       at 0 range 10 .. 10;
      B33SRDY        at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      DPLLLCKR       at 0 range 15 .. 15;
      DPLLLCKF       at 0 range 16 .. 16;
      DPLLLTO        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Power and Clocks Status
   type SYSCTRL_PCLKSR_Register is record
      --  Read-only. XOSC Ready
      XOSCRDY        : Boolean;
      --  Read-only. XOSC32K Ready
      XOSC32KRDY     : Boolean;
      --  Read-only. OSC32K Ready
      OSC32KRDY      : Boolean;
      --  Read-only. OSC8M Ready
      OSC8MRDY       : Boolean;
      --  Read-only. DFLL Ready
      DFLLRDY        : Boolean;
      --  Read-only. DFLL Out Of Bounds
      DFLLOOB        : Boolean;
      --  Read-only. DFLL Lock Fine
      DFLLLCKF       : Boolean;
      --  Read-only. DFLL Lock Coarse
      DFLLLCKC       : Boolean;
      --  Read-only. DFLL Reference Clock Stopped
      DFLLRCS        : Boolean;
      --  Read-only. BOD33 Ready
      BOD33RDY       : Boolean;
      --  Read-only. BOD33 Detection
      BOD33DET       : Boolean;
      --  Read-only. BOD33 Synchronization Ready
      B33SRDY        : Boolean;
      --  unspecified
      Reserved_12_14 : HAL.UInt3;
      --  Read-only. DPLL Lock Rise
      DPLLLCKR       : Boolean;
      --  Read-only. DPLL Lock Fall
      DPLLLCKF       : Boolean;
      --  Read-only. DPLL Lock Timeout
      DPLLLTO        : Boolean;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_PCLKSR_Register use record
      XOSCRDY        at 0 range 0 .. 0;
      XOSC32KRDY     at 0 range 1 .. 1;
      OSC32KRDY      at 0 range 2 .. 2;
      OSC8MRDY       at 0 range 3 .. 3;
      DFLLRDY        at 0 range 4 .. 4;
      DFLLOOB        at 0 range 5 .. 5;
      DFLLLCKF       at 0 range 6 .. 6;
      DFLLLCKC       at 0 range 7 .. 7;
      DFLLRCS        at 0 range 8 .. 8;
      BOD33RDY       at 0 range 9 .. 9;
      BOD33DET       at 0 range 10 .. 10;
      B33SRDY        at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      DPLLLCKR       at 0 range 15 .. 15;
      DPLLLCKF       at 0 range 16 .. 16;
      DPLLLTO        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Oscillator Gain
   type XOSC_GAINSelect is
     (
      --  2MHz
      XOSC_GAINSelect_0,
      --  4MHz
      XOSC_GAINSelect_1,
      --  8MHz
      XOSC_GAINSelect_2,
      --  16MHz
      XOSC_GAINSelect_3,
      --  30MHz
      XOSC_GAINSelect_4)
     with Size => 3;
   for XOSC_GAINSelect use
     (XOSC_GAINSelect_0 => 0,
      XOSC_GAINSelect_1 => 1,
      XOSC_GAINSelect_2 => 2,
      XOSC_GAINSelect_3 => 3,
      XOSC_GAINSelect_4 => 4);

   subtype SYSCTRL_XOSC_STARTUP_Field is HAL.UInt4;

   --  External Multipurpose Crystal Oscillator (XOSC) Control
   type SYSCTRL_XOSC_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#0#;
      --  Oscillator Enable
      ENABLE       : Boolean := False;
      --  Crystal Oscillator Enable
      XTALEN       : Boolean := False;
      --  unspecified
      Reserved_3_5 : HAL.UInt3 := 16#0#;
      --  Run in Standby
      RUNSTDBY     : Boolean := False;
      --  On Demand Control
      ONDEMAND     : Boolean := True;
      --  Oscillator Gain
      GAIN         : XOSC_GAINSelect := SAM_SVD.SYSCTRL.XOSC_GAINSelect_0;
      --  Automatic Amplitude Gain Control
      AMPGC        : Boolean := False;
      --  Start-Up Time
      STARTUP      : SYSCTRL_XOSC_STARTUP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_XOSC_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      XTALEN       at 0 range 2 .. 2;
      Reserved_3_5 at 0 range 3 .. 5;
      RUNSTDBY     at 0 range 6 .. 6;
      ONDEMAND     at 0 range 7 .. 7;
      GAIN         at 0 range 8 .. 10;
      AMPGC        at 0 range 11 .. 11;
      STARTUP      at 0 range 12 .. 15;
   end record;

   subtype SYSCTRL_XOSC32K_STARTUP_Field is HAL.UInt3;

   --  32kHz External Crystal Oscillator (XOSC32K) Control
   type SYSCTRL_XOSC32K_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Oscillator Enable
      ENABLE         : Boolean := False;
      --  Crystal Oscillator Enable
      XTALEN         : Boolean := False;
      --  32kHz Output Enable
      EN32K          : Boolean := False;
      --  1kHz Output Enable
      EN1K           : Boolean := False;
      --  Automatic Amplitude Control Enable
      AAMPEN         : Boolean := False;
      --  Run in Standby
      RUNSTDBY       : Boolean := False;
      --  On Demand Control
      ONDEMAND       : Boolean := True;
      --  Oscillator Start-Up Time
      STARTUP        : SYSCTRL_XOSC32K_STARTUP_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write Lock
      WRTLOCK        : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_XOSC32K_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      XTALEN         at 0 range 2 .. 2;
      EN32K          at 0 range 3 .. 3;
      EN1K           at 0 range 4 .. 4;
      AAMPEN         at 0 range 5 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      ONDEMAND       at 0 range 7 .. 7;
      STARTUP        at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      WRTLOCK        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype SYSCTRL_OSC32K_STARTUP_Field is HAL.UInt3;
   subtype SYSCTRL_OSC32K_CALIB_Field is HAL.UInt7;

   --  32kHz Internal Oscillator (OSC32K) Control
   type SYSCTRL_OSC32K_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Oscillator Enable
      ENABLE         : Boolean := False;
      --  32kHz Output Enable
      EN32K          : Boolean := False;
      --  1kHz Output Enable
      EN1K           : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Run in Standby
      RUNSTDBY       : Boolean := False;
      --  On Demand Control
      ONDEMAND       : Boolean := True;
      --  Oscillator Start-Up Time
      STARTUP        : SYSCTRL_OSC32K_STARTUP_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write Lock
      WRTLOCK        : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Oscillator Calibration
      CALIB          : SYSCTRL_OSC32K_CALIB_Field := 16#3F#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_OSC32K_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      EN32K          at 0 range 2 .. 2;
      EN1K           at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      ONDEMAND       at 0 range 7 .. 7;
      STARTUP        at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      WRTLOCK        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      CALIB          at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype SYSCTRL_OSCULP32K_CALIB_Field is HAL.UInt5;

   --  32kHz Ultra Low Power Internal Oscillator (OSCULP32K) Control
   type SYSCTRL_OSCULP32K_Register is record
      --  Oscillator Calibration
      CALIB        : SYSCTRL_OSCULP32K_CALIB_Field := 16#1F#;
      --  unspecified
      Reserved_5_6 : HAL.UInt2 := 16#0#;
      --  Write Lock
      WRTLOCK      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SYSCTRL_OSCULP32K_Register use record
      CALIB        at 0 range 0 .. 4;
      Reserved_5_6 at 0 range 5 .. 6;
      WRTLOCK      at 0 range 7 .. 7;
   end record;

   --  Oscillator Prescaler
   type OSC8M_PRESCSelect is
     (
      --  1
      OSC8M_PRESCSelect_0,
      --  2
      OSC8M_PRESCSelect_1,
      --  4
      OSC8M_PRESCSelect_2,
      --  8
      OSC8M_PRESCSelect_3)
     with Size => 2;
   for OSC8M_PRESCSelect use
     (OSC8M_PRESCSelect_0 => 0,
      OSC8M_PRESCSelect_1 => 1,
      OSC8M_PRESCSelect_2 => 2,
      OSC8M_PRESCSelect_3 => 3);

   subtype SYSCTRL_OSC8M_CALIB_Field is HAL.UInt12;

   --  Oscillator Frequency Range
   type OSC8M_FRANGESelect is
     (
      --  4 to 6MHz
      OSC8M_FRANGESelect_0,
      --  6 to 8MHz
      OSC8M_FRANGESelect_1,
      --  8 to 11MHz
      OSC8M_FRANGESelect_2,
      --  11 to 15MHz
      OSC8M_FRANGESelect_3)
     with Size => 2;
   for OSC8M_FRANGESelect use
     (OSC8M_FRANGESelect_0 => 0,
      OSC8M_FRANGESelect_1 => 1,
      OSC8M_FRANGESelect_2 => 2,
      OSC8M_FRANGESelect_3 => 3);

   --  8MHz Internal Oscillator (OSC8M) Control
   type SYSCTRL_OSC8M_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Oscillator Enable
      ENABLE         : Boolean := True;
      --  unspecified
      Reserved_2_5   : HAL.UInt4 := 16#0#;
      --  Run in Standby
      RUNSTDBY       : Boolean := False;
      --  On Demand Control
      ONDEMAND       : Boolean := True;
      --  Oscillator Prescaler
      PRESC          : OSC8M_PRESCSelect :=
                        SAM_SVD.SYSCTRL.OSC8M_PRESCSelect_3;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Oscillator Calibration
      CALIB          : SYSCTRL_OSC8M_CALIB_Field := 16#707#;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  Oscillator Frequency Range
      FRANGE         : OSC8M_FRANGESelect :=
                        SAM_SVD.SYSCTRL.OSC8M_FRANGESelect_2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_OSC8M_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      ONDEMAND       at 0 range 7 .. 7;
      PRESC          at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      CALIB          at 0 range 16 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      FRANGE         at 0 range 30 .. 31;
   end record;

   --  DFLL48M Control
   type SYSCTRL_DFLLCTRL_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  DFLL Enable
      ENABLE         : Boolean := False;
      --  Operating Mode Selection
      MODE           : Boolean := False;
      --  Stable DFLL Frequency
      STABLE         : Boolean := False;
      --  Lose Lock After Wake
      LLAW           : Boolean := False;
      --  USB Clock Recovery Mode
      USBCRM         : Boolean := False;
      --  Run in Standby
      RUNSTDBY       : Boolean := False;
      --  On Demand Control
      ONDEMAND       : Boolean := True;
      --  Chill Cycle Disable
      CCDIS          : Boolean := False;
      --  Quick Lock Disable
      QLDIS          : Boolean := False;
      --  Bypass Coarse Lock
      BPLCKC         : Boolean := False;
      --  Wait Lock
      WAITLOCK       : Boolean := False;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_DFLLCTRL_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      MODE           at 0 range 2 .. 2;
      STABLE         at 0 range 3 .. 3;
      LLAW           at 0 range 4 .. 4;
      USBCRM         at 0 range 5 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      ONDEMAND       at 0 range 7 .. 7;
      CCDIS          at 0 range 8 .. 8;
      QLDIS          at 0 range 9 .. 9;
      BPLCKC         at 0 range 10 .. 10;
      WAITLOCK       at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype SYSCTRL_DFLLVAL_FINE_Field is HAL.UInt10;
   subtype SYSCTRL_DFLLVAL_COARSE_Field is HAL.UInt6;
   subtype SYSCTRL_DFLLVAL_DIFF_Field is HAL.UInt16;

   --  DFLL48M Value
   type SYSCTRL_DFLLVAL_Register is record
      --  Fine Value
      FINE   : SYSCTRL_DFLLVAL_FINE_Field := 16#0#;
      --  Coarse Value
      COARSE : SYSCTRL_DFLLVAL_COARSE_Field := 16#0#;
      --  Read-only. Multiplication Ratio Difference
      DIFF   : SYSCTRL_DFLLVAL_DIFF_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_DFLLVAL_Register use record
      FINE   at 0 range 0 .. 9;
      COARSE at 0 range 10 .. 15;
      DIFF   at 0 range 16 .. 31;
   end record;

   subtype SYSCTRL_DFLLMUL_MUL_Field is HAL.UInt16;
   subtype SYSCTRL_DFLLMUL_FSTEP_Field is HAL.UInt10;
   subtype SYSCTRL_DFLLMUL_CSTEP_Field is HAL.UInt6;

   --  DFLL48M Multiplier
   type SYSCTRL_DFLLMUL_Register is record
      --  DFLL Multiply Factor
      MUL   : SYSCTRL_DFLLMUL_MUL_Field := 16#0#;
      --  Fine Maximum Step
      FSTEP : SYSCTRL_DFLLMUL_FSTEP_Field := 16#0#;
      --  Coarse Maximum Step
      CSTEP : SYSCTRL_DFLLMUL_CSTEP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_DFLLMUL_Register use record
      MUL   at 0 range 0 .. 15;
      FSTEP at 0 range 16 .. 25;
      CSTEP at 0 range 26 .. 31;
   end record;

   --  DFLL48M Synchronization
   type SYSCTRL_DFLLSYNC_Register is record
      --  unspecified
      Reserved_0_6 : HAL.UInt7 := 16#0#;
      --  Write-only. Read Request
      READREQ      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SYSCTRL_DFLLSYNC_Register use record
      Reserved_0_6 at 0 range 0 .. 6;
      READREQ      at 0 range 7 .. 7;
   end record;

   --  BOD33 Action
   type BOD33_ACTIONSelect is
     (
      --  No action
      None,
      --  The BOD33 generates a reset
      Reset,
      --  The BOD33 generates an interrupt
      Interrupt)
     with Size => 2;
   for BOD33_ACTIONSelect use
     (None => 0,
      Reset => 1,
      Interrupt => 2);

   --  Prescaler Select
   type BOD33_PSELSelect is
     (
      --  Divide clock by 2
      Div2,
      --  Divide clock by 4
      Div4,
      --  Divide clock by 8
      Div8,
      --  Divide clock by 16
      Div16,
      --  Divide clock by 32
      Div32,
      --  Divide clock by 64
      Div64,
      --  Divide clock by 128
      Div128,
      --  Divide clock by 256
      Div256,
      --  Divide clock by 512
      Div512,
      --  Divide clock by 1024
      Div1K,
      --  Divide clock by 2048
      Div2K,
      --  Divide clock by 4096
      Div4K,
      --  Divide clock by 8192
      Div8K,
      --  Divide clock by 16384
      Div16K,
      --  Divide clock by 32768
      Div32K,
      --  Divide clock by 65536
      Div64K)
     with Size => 4;
   for BOD33_PSELSelect use
     (Div2 => 0,
      Div4 => 1,
      Div8 => 2,
      Div16 => 3,
      Div32 => 4,
      Div64 => 5,
      Div128 => 6,
      Div256 => 7,
      Div512 => 8,
      Div1K => 9,
      Div2K => 10,
      Div4K => 11,
      Div8K => 12,
      Div16K => 13,
      Div32K => 14,
      Div64K => 15);

   subtype SYSCTRL_BOD33_LEVEL_Field is HAL.UInt6;

   --  3.3V Brown-Out Detector (BOD33) Control
   type SYSCTRL_BOD33_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Enable
      ENABLE         : Boolean := False;
      --  Hysteresis
      HYST           : Boolean := False;
      --  BOD33 Action
      ACTION         : BOD33_ACTIONSelect := SAM_SVD.SYSCTRL.None;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Run in Standby
      RUNSTDBY       : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Operation Mode
      MODE           : Boolean := False;
      --  Clock Enable
      CEN            : Boolean := False;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Prescaler Select
      PSEL           : BOD33_PSELSelect := SAM_SVD.SYSCTRL.Div2;
      --  BOD33 Threshold Level
      LEVEL          : SYSCTRL_BOD33_LEVEL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_BOD33_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      HYST           at 0 range 2 .. 2;
      ACTION         at 0 range 3 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MODE           at 0 range 8 .. 8;
      CEN            at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      PSEL           at 0 range 12 .. 15;
      LEVEL          at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Voltage Regulator System (VREG) Control
   type SYSCTRL_VREG_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Run in Standby
      RUNSTDBY       : Boolean := False;
      --  unspecified
      Reserved_7_12  : HAL.UInt6 := 16#0#;
      --  Force LDO Voltage Regulator
      FORCELDO       : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_VREG_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      Reserved_7_12  at 0 range 7 .. 12;
      FORCELDO       at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype SYSCTRL_VREF_CALIB_Field is HAL.UInt11;

   --  Voltage References System (VREF) Control
   type SYSCTRL_VREF_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Temperature Sensor Enable
      TSEN           : Boolean := False;
      --  Bandgap Output Enable
      BGOUTEN        : Boolean := False;
      --  unspecified
      Reserved_3_15  : HAL.UInt13 := 16#0#;
      --  Bandgap Voltage Generator Calibration
      CALIB          : SYSCTRL_VREF_CALIB_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_VREF_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      TSEN           at 0 range 1 .. 1;
      BGOUTEN        at 0 range 2 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      CALIB          at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  DPLL Control A
   type SYSCTRL_DPLLCTRLA_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#0#;
      --  DPLL Enable
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_2_5 : HAL.UInt4 := 16#0#;
      --  Run in Standby
      RUNSTDBY     : Boolean := False;
      --  On Demand Clock Activation
      ONDEMAND     : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SYSCTRL_DPLLCTRLA_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      Reserved_2_5 at 0 range 2 .. 5;
      RUNSTDBY     at 0 range 6 .. 6;
      ONDEMAND     at 0 range 7 .. 7;
   end record;

   subtype SYSCTRL_DPLLRATIO_LDR_Field is HAL.UInt12;
   subtype SYSCTRL_DPLLRATIO_LDRFRAC_Field is HAL.UInt4;

   --  DPLL Ratio Control
   type SYSCTRL_DPLLRATIO_Register is record
      --  Loop Divider Ratio
      LDR            : SYSCTRL_DPLLRATIO_LDR_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Loop Divider Ratio Fractional Part
      LDRFRAC        : SYSCTRL_DPLLRATIO_LDRFRAC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_DPLLRATIO_Register use record
      LDR            at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      LDRFRAC        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Proportional Integral Filter Selection
   type DPLLCTRLB_FILTERSelect is
     (
      --  Default filter mode
      Default,
      --  Low bandwidth filter
      Lbfilt,
      --  High bandwidth filter
      Hbfilt,
      --  High damping filter
      Hdfilt)
     with Size => 2;
   for DPLLCTRLB_FILTERSelect use
     (Default => 0,
      Lbfilt => 1,
      Hbfilt => 2,
      Hdfilt => 3);

   --  Reference Clock Selection
   type DPLLCTRLB_REFCLKSelect is
     (
      --  CLK_DPLL_REF0 clock reference
      Ref0,
      --  CLK_DPLL_REF1 clock reference
      Ref1,
      --  GCLK_DPLL clock reference
      Gclk)
     with Size => 2;
   for DPLLCTRLB_REFCLKSelect use
     (Ref0 => 0,
      Ref1 => 1,
      Gclk => 2);

   --  Lock Time
   type DPLLCTRLB_LTIMESelect is
     (
      --  No time-out
      Default,
      --  Time-out if no lock within 8 ms
      DPLLCTRLB_LTIMESelect_8Ms,
      --  Time-out if no lock within 9 ms
      DPLLCTRLB_LTIMESelect_9Ms,
      --  Time-out if no lock within 10 ms
      DPLLCTRLB_LTIMESelect_10Ms,
      --  Time-out if no lock within 11 ms
      DPLLCTRLB_LTIMESelect_11Ms)
     with Size => 3;
   for DPLLCTRLB_LTIMESelect use
     (Default => 0,
      DPLLCTRLB_LTIMESelect_8Ms => 4,
      DPLLCTRLB_LTIMESelect_9Ms => 5,
      DPLLCTRLB_LTIMESelect_10Ms => 6,
      DPLLCTRLB_LTIMESelect_11Ms => 7);

   subtype SYSCTRL_DPLLCTRLB_DIV_Field is HAL.UInt11;

   --  DPLL Control B
   type SYSCTRL_DPLLCTRLB_Register is record
      --  Proportional Integral Filter Selection
      FILTER         : DPLLCTRLB_FILTERSelect := SAM_SVD.SYSCTRL.Default;
      --  Low-Power Enable
      LPEN           : Boolean := False;
      --  Wake Up Fast
      WUF            : Boolean := False;
      --  Reference Clock Selection
      REFCLK         : DPLLCTRLB_REFCLKSelect := SAM_SVD.SYSCTRL.Ref0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Lock Time
      LTIME          : DPLLCTRLB_LTIMESelect := SAM_SVD.SYSCTRL.Default;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Lock Bypass
      LBYPASS        : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Clock Divider
      DIV            : SYSCTRL_DPLLCTRLB_DIV_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTRL_DPLLCTRLB_Register use record
      FILTER         at 0 range 0 .. 1;
      LPEN           at 0 range 2 .. 2;
      WUF            at 0 range 3 .. 3;
      REFCLK         at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      LTIME          at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LBYPASS        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DIV            at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  DPLL Status
   type SYSCTRL_DPLLSTATUS_Register is record
      --  Read-only. DPLL Lock Status
      LOCK         : Boolean;
      --  Read-only. Output Clock Ready
      CLKRDY       : Boolean;
      --  Read-only. DPLL Enable
      ENABLE       : Boolean;
      --  Read-only. Divider Enable
      DIV          : Boolean;
      --  unspecified
      Reserved_4_7 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SYSCTRL_DPLLSTATUS_Register use record
      LOCK         at 0 range 0 .. 0;
      CLKRDY       at 0 range 1 .. 1;
      ENABLE       at 0 range 2 .. 2;
      DIV          at 0 range 3 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Control
   type SYSCTRL_Peripheral is record
      --  Interrupt Enable Clear
      INTENCLR   : aliased SYSCTRL_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET   : aliased SYSCTRL_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG    : aliased SYSCTRL_INTFLAG_Register;
      --  Power and Clocks Status
      PCLKSR     : aliased SYSCTRL_PCLKSR_Register;
      --  External Multipurpose Crystal Oscillator (XOSC) Control
      XOSC       : aliased SYSCTRL_XOSC_Register;
      --  32kHz External Crystal Oscillator (XOSC32K) Control
      XOSC32K    : aliased SYSCTRL_XOSC32K_Register;
      --  32kHz Internal Oscillator (OSC32K) Control
      OSC32K     : aliased SYSCTRL_OSC32K_Register;
      --  32kHz Ultra Low Power Internal Oscillator (OSCULP32K) Control
      OSCULP32K  : aliased SYSCTRL_OSCULP32K_Register;
      --  8MHz Internal Oscillator (OSC8M) Control
      OSC8M      : aliased SYSCTRL_OSC8M_Register;
      --  DFLL48M Control
      DFLLCTRL   : aliased SYSCTRL_DFLLCTRL_Register;
      --  DFLL48M Value
      DFLLVAL    : aliased SYSCTRL_DFLLVAL_Register;
      --  DFLL48M Multiplier
      DFLLMUL    : aliased SYSCTRL_DFLLMUL_Register;
      --  DFLL48M Synchronization
      DFLLSYNC   : aliased SYSCTRL_DFLLSYNC_Register;
      --  3.3V Brown-Out Detector (BOD33) Control
      BOD33      : aliased SYSCTRL_BOD33_Register;
      --  Voltage Regulator System (VREG) Control
      VREG       : aliased SYSCTRL_VREG_Register;
      --  Voltage References System (VREF) Control
      VREF       : aliased SYSCTRL_VREF_Register;
      --  DPLL Control A
      DPLLCTRLA  : aliased SYSCTRL_DPLLCTRLA_Register;
      --  DPLL Ratio Control
      DPLLRATIO  : aliased SYSCTRL_DPLLRATIO_Register;
      --  DPLL Control B
      DPLLCTRLB  : aliased SYSCTRL_DPLLCTRLB_Register;
      --  DPLL Status
      DPLLSTATUS : aliased SYSCTRL_DPLLSTATUS_Register;
   end record
     with Volatile;

   for SYSCTRL_Peripheral use record
      INTENCLR   at 16#0# range 0 .. 31;
      INTENSET   at 16#4# range 0 .. 31;
      INTFLAG    at 16#8# range 0 .. 31;
      PCLKSR     at 16#C# range 0 .. 31;
      XOSC       at 16#10# range 0 .. 15;
      XOSC32K    at 16#14# range 0 .. 15;
      OSC32K     at 16#18# range 0 .. 31;
      OSCULP32K  at 16#1C# range 0 .. 7;
      OSC8M      at 16#20# range 0 .. 31;
      DFLLCTRL   at 16#24# range 0 .. 15;
      DFLLVAL    at 16#28# range 0 .. 31;
      DFLLMUL    at 16#2C# range 0 .. 31;
      DFLLSYNC   at 16#30# range 0 .. 7;
      BOD33      at 16#34# range 0 .. 31;
      VREG       at 16#3C# range 0 .. 15;
      VREF       at 16#40# range 0 .. 31;
      DPLLCTRLA  at 16#44# range 0 .. 7;
      DPLLRATIO  at 16#48# range 0 .. 31;
      DPLLCTRLB  at 16#4C# range 0 .. 31;
      DPLLSTATUS at 16#50# range 0 .. 7;
   end record;

   --  System Control
   SYSCTRL_Periph : aliased SYSCTRL_Peripheral
     with Import, Address => System'To_Address (16#40000800#);

end SAM_SVD.SYSCTRL;

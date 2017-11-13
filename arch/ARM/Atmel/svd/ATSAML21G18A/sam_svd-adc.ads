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

--  This spec has been automatically generated from ATSAML21G18A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.ADC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control A
   type ADC_CTRLA_Register is record
      --  Software Reset
      SWRST        : Boolean := False;
      --  Enable
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_2_5 : HAL.UInt4 := 16#0#;
      --  Run during Standby
      RUNSTDBY     : Boolean := False;
      --  On Demand Control
      ONDEMAND     : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_CTRLA_Register use record
      SWRST        at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      Reserved_2_5 at 0 range 2 .. 5;
      RUNSTDBY     at 0 range 6 .. 6;
      ONDEMAND     at 0 range 7 .. 7;
   end record;

   --  Prescaler Configuration
   type CTRLB_PRESCALERSelect is
     (
      --  Peripheral clock divided by 2
      Div2,
      --  Peripheral clock divided by 4
      Div4,
      --  Peripheral clock divided by 8
      Div8,
      --  Peripheral clock divided by 16
      Div16,
      --  Peripheral clock divided by 32
      Div32,
      --  Peripheral clock divided by 64
      Div64,
      --  Peripheral clock divided by 128
      Div128,
      --  Peripheral clock divided by 256
      Div256)
     with Size => 3;
   for CTRLB_PRESCALERSelect use
     (Div2 => 0,
      Div4 => 1,
      Div8 => 2,
      Div16 => 3,
      Div32 => 4,
      Div64 => 5,
      Div128 => 6,
      Div256 => 7);

   --  Control B
   type ADC_CTRLB_Register is record
      --  Prescaler Configuration
      PRESCALER    : CTRLB_PRESCALERSelect := SAM_SVD.ADC.Div2;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_CTRLB_Register use record
      PRESCALER    at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Reference Selection
   type REFCTRL_REFSELSelect is
     (
      --  Internal Bandgap Reference
      Intref,
      --  1/1.6 VDDANA
      Intvcc0,
      --  1/2 VDDANA
      Intvcc1,
      --  External Reference
      Arefa,
      --  External Reference
      Arefb,
      --  VCCANA
      Intvcc2)
     with Size => 4;
   for REFCTRL_REFSELSelect use
     (Intref => 0,
      Intvcc0 => 1,
      Intvcc1 => 2,
      Arefa => 3,
      Arefb => 4,
      Intvcc2 => 5);

   --  Reference Control
   type ADC_REFCTRL_Register is record
      --  Reference Selection
      REFSEL       : REFCTRL_REFSELSelect := SAM_SVD.ADC.Intref;
      --  unspecified
      Reserved_4_6 : HAL.UInt3 := 16#0#;
      --  Reference Buffer Offset Compensation Enable
      REFCOMP      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_REFCTRL_Register use record
      REFSEL       at 0 range 0 .. 3;
      Reserved_4_6 at 0 range 4 .. 6;
      REFCOMP      at 0 range 7 .. 7;
   end record;

   --  Event Control
   type ADC_EVCTRL_Register is record
      --  Flush Event Input Enable
      FLUSHEI      : Boolean := False;
      --  Start Conversion Event Input Enable
      STARTEI      : Boolean := False;
      --  Flush Event Invert Enable
      FLUSHINV     : Boolean := False;
      --  Satrt Event Invert Enable
      STARTINV     : Boolean := False;
      --  Result Ready Event Out
      RESRDYEO     : Boolean := False;
      --  Window Monitor Event Out
      WINMONEO     : Boolean := False;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_EVCTRL_Register use record
      FLUSHEI      at 0 range 0 .. 0;
      STARTEI      at 0 range 1 .. 1;
      FLUSHINV     at 0 range 2 .. 2;
      STARTINV     at 0 range 3 .. 3;
      RESRDYEO     at 0 range 4 .. 4;
      WINMONEO     at 0 range 5 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Interrupt Enable Clear
   type ADC_INTENCLR_Register is record
      --  Result Ready Interrupt Disable
      RESRDY       : Boolean := False;
      --  Overrun Interrupt Disable
      OVERRUN      : Boolean := False;
      --  Window Monitor Interrupt Disable
      WINMON       : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_INTENCLR_Register use record
      RESRDY       at 0 range 0 .. 0;
      OVERRUN      at 0 range 1 .. 1;
      WINMON       at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Interrupt Enable Set
   type ADC_INTENSET_Register is record
      --  Result Ready Interrupt Enable
      RESRDY       : Boolean := False;
      --  Overrun Interrupt Enable
      OVERRUN      : Boolean := False;
      --  Window Monitor Interrupt Enable
      WINMON       : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_INTENSET_Register use record
      RESRDY       at 0 range 0 .. 0;
      OVERRUN      at 0 range 1 .. 1;
      WINMON       at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Interrupt Flag Status and Clear
   type ADC_INTFLAG_Register is record
      --  Result Ready Interrupt Flag
      RESRDY       : Boolean := False;
      --  Overrun Interrupt Flag
      OVERRUN      : Boolean := False;
      --  Window Monitor Interrupt Flag
      WINMON       : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_INTFLAG_Register use record
      RESRDY       at 0 range 0 .. 0;
      OVERRUN      at 0 range 1 .. 1;
      WINMON       at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   subtype ADC_SEQSTATUS_SEQSTATE_Field is HAL.UInt5;

   --  Sequence Status
   type ADC_SEQSTATUS_Register is record
      --  Read-only. Sequence State
      SEQSTATE     : ADC_SEQSTATUS_SEQSTATE_Field;
      --  unspecified
      Reserved_5_6 : HAL.UInt2;
      --  Read-only. Sequence Busy
      SEQBUSY      : Boolean;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_SEQSTATUS_Register use record
      SEQSTATE     at 0 range 0 .. 4;
      Reserved_5_6 at 0 range 5 .. 6;
      SEQBUSY      at 0 range 7 .. 7;
   end record;

   --  Positive Mux Input Selection
   type INPUTCTRL_MUXPOSSelect is
     (
      --  ADC AIN0 Pin
      Ain0,
      --  ADC AIN1 Pin
      Ain1,
      --  ADC AIN2 Pin
      Ain2,
      --  ADC AIN3 Pin
      Ain3,
      --  ADC AIN4 Pin
      Ain4,
      --  ADC AIN5 Pin
      Ain5,
      --  ADC AIN6 Pin
      Ain6,
      --  ADC AIN7 Pin
      Ain7,
      --  ADC AIN8 Pin
      Ain8,
      --  ADC AIN9 Pin
      Ain9,
      --  ADC AIN10 Pin
      Ain10,
      --  ADC AIN11 Pin
      Ain11,
      --  ADC AIN12 Pin
      Ain12,
      --  ADC AIN13 Pin
      Ain13,
      --  ADC AIN14 Pin
      Ain14,
      --  ADC AIN15 Pin
      Ain15,
      --  ADC AIN16 Pin
      Ain16,
      --  ADC AIN17 Pin
      Ain17,
      --  ADC AIN18 Pin
      Ain18,
      --  ADC AIN19 Pin
      Ain19,
      --  Temperature Sensor
      Temp,
      --  Bandgap Voltage
      Bandgap,
      --  1/4 Scaled Core Supply
      Scaledcorevcc,
      --  1/4 Scaled I/O Supply
      Scalediovcc)
     with Size => 5;
   for INPUTCTRL_MUXPOSSelect use
     (Ain0 => 0,
      Ain1 => 1,
      Ain2 => 2,
      Ain3 => 3,
      Ain4 => 4,
      Ain5 => 5,
      Ain6 => 6,
      Ain7 => 7,
      Ain8 => 8,
      Ain9 => 9,
      Ain10 => 10,
      Ain11 => 11,
      Ain12 => 12,
      Ain13 => 13,
      Ain14 => 14,
      Ain15 => 15,
      Ain16 => 16,
      Ain17 => 17,
      Ain18 => 18,
      Ain19 => 19,
      Temp => 24,
      Bandgap => 25,
      Scaledcorevcc => 26,
      Scalediovcc => 27);

   --  Negative Mux Input Selection
   type INPUTCTRL_MUXNEGSelect is
     (
      --  ADC AIN0 Pin
      Ain0,
      --  ADC AIN1 Pin
      Ain1,
      --  ADC AIN2 Pin
      Ain2,
      --  ADC AIN3 Pin
      Ain3,
      --  ADC AIN4 Pin
      Ain4,
      --  ADC AIN5 Pin
      Ain5,
      --  Internal ground
      Gnd)
     with Size => 5;
   for INPUTCTRL_MUXNEGSelect use
     (Ain0 => 0,
      Ain1 => 1,
      Ain2 => 2,
      Ain3 => 3,
      Ain4 => 4,
      Ain5 => 5,
      Gnd => 24);

   --  Input Control
   type ADC_INPUTCTRL_Register is record
      --  Positive Mux Input Selection
      MUXPOS         : INPUTCTRL_MUXPOSSelect := SAM_SVD.ADC.Ain0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Negative Mux Input Selection
      MUXNEG         : INPUTCTRL_MUXNEGSelect := SAM_SVD.ADC.Ain0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_INPUTCTRL_Register use record
      MUXPOS         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      MUXNEG         at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   --  Conversion Result Resolution
   type CTRLC_RESSELSelect is
     (
      --  12-bit result
      CTRLC_RESSELSelect_12Bit,
      --  For averaging mode output
      CTRLC_RESSELSelect_16Bit,
      --  10-bit result
      CTRLC_RESSELSelect_10Bit,
      --  8-bit result
      CTRLC_RESSELSelect_8Bit)
     with Size => 2;
   for CTRLC_RESSELSelect use
     (CTRLC_RESSELSelect_12Bit => 0,
      CTRLC_RESSELSelect_16Bit => 1,
      CTRLC_RESSELSelect_10Bit => 2,
      CTRLC_RESSELSelect_8Bit => 3);

   --  Window Monitor Mode
   type CTRLC_WINMODESelect is
     (
      --  No window mode (default)
      Disable,
      --  RESULT > WINLT
      Mode1,
      --  RESULT < WINUT
      Mode2,
      --  WINLT < RESULT < WINUT
      Mode3,
      --  !(WINLT < RESULT < WINUT)
      Mode4)
     with Size => 3;
   for CTRLC_WINMODESelect use
     (Disable => 0,
      Mode1 => 1,
      Mode2 => 2,
      Mode3 => 3,
      Mode4 => 4);

   --  Control C
   type ADC_CTRLC_Register is record
      --  Differential Mode
      DIFFMODE       : Boolean := False;
      --  Left-Adjusted Result
      LEFTADJ        : Boolean := False;
      --  Free Running Mode
      FREERUN        : Boolean := False;
      --  Digital Correction Logic Enable
      CORREN         : Boolean := False;
      --  Conversion Result Resolution
      RESSEL         : CTRLC_RESSELSelect :=
                        SAM_SVD.ADC.CTRLC_RESSELSelect_12Bit;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Window Monitor Mode
      WINMODE        : CTRLC_WINMODESelect := SAM_SVD.ADC.Disable;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_CTRLC_Register use record
      DIFFMODE       at 0 range 0 .. 0;
      LEFTADJ        at 0 range 1 .. 1;
      FREERUN        at 0 range 2 .. 2;
      CORREN         at 0 range 3 .. 3;
      RESSEL         at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      WINMODE        at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   --  Number of Samples to be Collected
   type AVGCTRL_SAMPLENUMSelect is
     (
      --  1 sample
      AVGCTRL_SAMPLENUMSelect_1,
      --  2 samples
      AVGCTRL_SAMPLENUMSelect_2,
      --  4 samples
      AVGCTRL_SAMPLENUMSelect_4,
      --  8 samples
      AVGCTRL_SAMPLENUMSelect_8,
      --  16 samples
      AVGCTRL_SAMPLENUMSelect_16,
      --  32 samples
      AVGCTRL_SAMPLENUMSelect_32,
      --  64 samples
      AVGCTRL_SAMPLENUMSelect_64,
      --  128 samples
      AVGCTRL_SAMPLENUMSelect_128,
      --  256 samples
      AVGCTRL_SAMPLENUMSelect_256,
      --  512 samples
      AVGCTRL_SAMPLENUMSelect_512,
      --  1024 samples
      AVGCTRL_SAMPLENUMSelect_1024)
     with Size => 4;
   for AVGCTRL_SAMPLENUMSelect use
     (AVGCTRL_SAMPLENUMSelect_1 => 0,
      AVGCTRL_SAMPLENUMSelect_2 => 1,
      AVGCTRL_SAMPLENUMSelect_4 => 2,
      AVGCTRL_SAMPLENUMSelect_8 => 3,
      AVGCTRL_SAMPLENUMSelect_16 => 4,
      AVGCTRL_SAMPLENUMSelect_32 => 5,
      AVGCTRL_SAMPLENUMSelect_64 => 6,
      AVGCTRL_SAMPLENUMSelect_128 => 7,
      AVGCTRL_SAMPLENUMSelect_256 => 8,
      AVGCTRL_SAMPLENUMSelect_512 => 9,
      AVGCTRL_SAMPLENUMSelect_1024 => 10);

   subtype ADC_AVGCTRL_ADJRES_Field is HAL.UInt3;

   --  Average Control
   type ADC_AVGCTRL_Register is record
      --  Number of Samples to be Collected
      SAMPLENUM    : AVGCTRL_SAMPLENUMSelect :=
                      SAM_SVD.ADC.AVGCTRL_SAMPLENUMSelect_1;
      --  Adjusting Result / Division Coefficient
      ADJRES       : ADC_AVGCTRL_ADJRES_Field := 16#0#;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_AVGCTRL_Register use record
      SAMPLENUM    at 0 range 0 .. 3;
      ADJRES       at 0 range 4 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   subtype ADC_SAMPCTRL_SAMPLEN_Field is HAL.UInt6;

   --  Sample Time Control
   type ADC_SAMPCTRL_Register is record
      --  Sampling Time Length
      SAMPLEN      : ADC_SAMPCTRL_SAMPLEN_Field := 16#0#;
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  Comparator Offset Compensation Enable
      OFFCOMP      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_SAMPCTRL_Register use record
      SAMPLEN      at 0 range 0 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      OFFCOMP      at 0 range 7 .. 7;
   end record;

   subtype ADC_GAINCORR_GAINCORR_Field is HAL.UInt12;

   --  Gain Correction
   type ADC_GAINCORR_Register is record
      --  Gain Correction Value
      GAINCORR       : ADC_GAINCORR_GAINCORR_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_GAINCORR_Register use record
      GAINCORR       at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype ADC_OFFSETCORR_OFFSETCORR_Field is HAL.UInt12;

   --  Offset Correction
   type ADC_OFFSETCORR_Register is record
      --  Offset Correction Value
      OFFSETCORR     : ADC_OFFSETCORR_OFFSETCORR_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_OFFSETCORR_Register use record
      OFFSETCORR     at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   --  Software Trigger
   type ADC_SWTRIG_Register is record
      --  ADC Flush
      FLUSH        : Boolean := False;
      --  Start ADC Conversion
      START        : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_SWTRIG_Register use record
      FLUSH        at 0 range 0 .. 0;
      START        at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Debug Control
   type ADC_DBGCTRL_Register is record
      --  Debug Run
      DBGRUN       : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ADC_DBGCTRL_Register use record
      DBGRUN       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Synchronization Busy
   type ADC_SYNCBUSY_Register is record
      --  Read-only. SWRST Synchronization Busy
      SWRST          : Boolean;
      --  Read-only. ENABLE Synchronization Busy
      ENABLE         : Boolean;
      --  Read-only. AVGCTRL Synchronization Busy
      AVGCTRL        : Boolean;
      --  Read-only. SAMPCTRL Synchronization Busy
      SAMPCTRL       : Boolean;
      --  Read-only. CTRLC Synchronization Busy
      CTRLC          : Boolean;
      --  Read-only. INPUTCTRL Synchronization Busy
      INPUTCTRL      : Boolean;
      --  Read-only. OFFSETCTRL Synchronization Busy
      OFFSETCORR     : Boolean;
      --  Read-only. GAINCORR Synchronization Busy
      GAINCORR       : Boolean;
      --  Read-only. WINLT Synchronization Busy
      WINLT          : Boolean;
      --  Read-only. WINUT Synchronization Busy
      WINUT          : Boolean;
      --  Read-only. SWTRG Synchronization Busy
      SWTRIG         : Boolean;
      --  unspecified
      Reserved_11_15 : HAL.UInt5;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_SYNCBUSY_Register use record
      SWRST          at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      AVGCTRL        at 0 range 2 .. 2;
      SAMPCTRL       at 0 range 3 .. 3;
      CTRLC          at 0 range 4 .. 4;
      INPUTCTRL      at 0 range 5 .. 5;
      OFFSETCORR     at 0 range 6 .. 6;
      GAINCORR       at 0 range 7 .. 7;
      WINLT          at 0 range 8 .. 8;
      WINUT          at 0 range 9 .. 9;
      SWTRIG         at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ADC_CALIB_BIASCOMP_Field is HAL.UInt3;
   subtype ADC_CALIB_BIASREFBUF_Field is HAL.UInt3;

   --  Calibration
   type ADC_CALIB_Register is record
      --  Bias Comparator Scaling
      BIASCOMP       : ADC_CALIB_BIASCOMP_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Bias Reference Buffer Scaling
      BIASREFBUF     : ADC_CALIB_BIASREFBUF_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_CALIB_Register use record
      BIASCOMP       at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      BIASREFBUF     at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog Digital Converter
   type ADC_Peripheral is record
      --  Control A
      CTRLA      : aliased ADC_CTRLA_Register;
      --  Control B
      CTRLB      : aliased ADC_CTRLB_Register;
      --  Reference Control
      REFCTRL    : aliased ADC_REFCTRL_Register;
      --  Event Control
      EVCTRL     : aliased ADC_EVCTRL_Register;
      --  Interrupt Enable Clear
      INTENCLR   : aliased ADC_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET   : aliased ADC_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG    : aliased ADC_INTFLAG_Register;
      --  Sequence Status
      SEQSTATUS  : aliased ADC_SEQSTATUS_Register;
      --  Input Control
      INPUTCTRL  : aliased ADC_INPUTCTRL_Register;
      --  Control C
      CTRLC      : aliased ADC_CTRLC_Register;
      --  Average Control
      AVGCTRL    : aliased ADC_AVGCTRL_Register;
      --  Sample Time Control
      SAMPCTRL   : aliased ADC_SAMPCTRL_Register;
      --  Window Monitor Lower Threshold
      WINLT      : aliased HAL.UInt16;
      --  Window Monitor Upper Threshold
      WINUT      : aliased HAL.UInt16;
      --  Gain Correction
      GAINCORR   : aliased ADC_GAINCORR_Register;
      --  Offset Correction
      OFFSETCORR : aliased ADC_OFFSETCORR_Register;
      --  Software Trigger
      SWTRIG     : aliased ADC_SWTRIG_Register;
      --  Debug Control
      DBGCTRL    : aliased ADC_DBGCTRL_Register;
      --  Synchronization Busy
      SYNCBUSY   : aliased ADC_SYNCBUSY_Register;
      --  Result
      RESULT     : aliased HAL.UInt16;
      --  Sequence Control
      SEQCTRL    : aliased HAL.UInt32;
      --  Calibration
      CALIB      : aliased ADC_CALIB_Register;
   end record
     with Volatile;

   for ADC_Peripheral use record
      CTRLA      at 16#0# range 0 .. 7;
      CTRLB      at 16#1# range 0 .. 7;
      REFCTRL    at 16#2# range 0 .. 7;
      EVCTRL     at 16#3# range 0 .. 7;
      INTENCLR   at 16#4# range 0 .. 7;
      INTENSET   at 16#5# range 0 .. 7;
      INTFLAG    at 16#6# range 0 .. 7;
      SEQSTATUS  at 16#7# range 0 .. 7;
      INPUTCTRL  at 16#8# range 0 .. 15;
      CTRLC      at 16#A# range 0 .. 15;
      AVGCTRL    at 16#C# range 0 .. 7;
      SAMPCTRL   at 16#D# range 0 .. 7;
      WINLT      at 16#E# range 0 .. 15;
      WINUT      at 16#10# range 0 .. 15;
      GAINCORR   at 16#12# range 0 .. 15;
      OFFSETCORR at 16#14# range 0 .. 15;
      SWTRIG     at 16#18# range 0 .. 7;
      DBGCTRL    at 16#1C# range 0 .. 7;
      SYNCBUSY   at 16#20# range 0 .. 15;
      RESULT     at 16#24# range 0 .. 15;
      SEQCTRL    at 16#28# range 0 .. 31;
      CALIB      at 16#2C# range 0 .. 15;
   end record;

   --  Analog Digital Converter
   ADC_Periph : aliased ADC_Peripheral
     with Import, Address => System'To_Address (16#43000C00#);

end SAM_SVD.ADC;

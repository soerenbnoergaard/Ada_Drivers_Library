--  This spec has been automatically generated from STM32F373.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.SDADC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR1_REFV_Field is HAL.UInt2;

   --  control register 1
   type CR1_Register is record
      --  End of calibration interrupt enable
      EOCALIE        : Boolean := False;
      --  Injected end of conversion interrupt enable
      JEOCIE         : Boolean := False;
      --  Injected data overrun interrupt enable
      JOVRIE         : Boolean := False;
      --  Regular end of conversion interrupt enable
      REOCIE         : Boolean := False;
      --  Regular data overrun interrupt enable
      ROVRIE         : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Reference voltage selection
      REFV           : CR1_REFV_Field := 16#0#;
      --  Slow clock mode enable
      SLOWCK         : Boolean := False;
      --  Enter Standby mode when idle
      SBI            : Boolean := False;
      --  Enter power down mode when idle
      PDI            : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Launch a injected conversion synchronously with SDADC1
      JSYNC          : Boolean := False;
      --  Launch regular conversion synchronously with SDADC1
      RSYNC          : Boolean := False;
      --  DMA channel enabled to read data for the injected channel group
      JDMAEN         : Boolean := False;
      --  DMA channel enabled to read data for the regular channel
      RDMAEN         : Boolean := False;
      --  unspecified
      Reserved_18_30 : HAL.UInt13 := 16#0#;
      --  Initialization mode request
      INIT           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      EOCALIE        at 0 range 0 .. 0;
      JEOCIE         at 0 range 1 .. 1;
      JOVRIE         at 0 range 2 .. 2;
      REOCIE         at 0 range 3 .. 3;
      ROVRIE         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      REFV           at 0 range 8 .. 9;
      SLOWCK         at 0 range 10 .. 10;
      SBI            at 0 range 11 .. 11;
      PDI            at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      JSYNC          at 0 range 14 .. 14;
      RSYNC          at 0 range 15 .. 15;
      JDMAEN         at 0 range 16 .. 16;
      RDMAEN         at 0 range 17 .. 17;
      Reserved_18_30 at 0 range 18 .. 30;
      INIT           at 0 range 31 .. 31;
   end record;

   subtype CR2_CALIBCNT_Field is HAL.UInt2;
   subtype CR2_JEXTSEL_Field is HAL.UInt3;
   subtype CR2_JEXTEN_Field is HAL.UInt2;
   subtype CR2_RCH_Field is HAL.UInt4;

   --  control register 2
   type CR2_Register is record
      --  SDADC enable
      ADON           : Boolean := False;
      --  Number of calibration sequences to be performed (number of valid
      --  configurations)
      CALIBCNT       : CR2_CALIBCNT_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Start calibration
      STARTCALIB     : Boolean := False;
      --  Continuous mode selection for injected conversions
      JCONT          : Boolean := False;
      --  Delay start of injected conversions.
      JDS            : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trigger signal selection for launching injected conversions
      JEXTSEL        : CR2_JEXTSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  Trigger enable and trigger edge selection for injected conversions
      JEXTEN         : CR2_JEXTEN_Field := 16#0#;
      --  Start a conversion of the injected group of channels
      JSWSTART       : Boolean := False;
      --  Regular channel selection
      RCH            : CR2_RCH_Field := 16#0#;
      --  unspecified
      Reserved_20_21 : HAL.UInt2 := 16#0#;
      --  Continuous mode selection for regular conversions
      RCONT          : Boolean := False;
      --  Software start of a conversion on the regular channel
      RSWSTART       : Boolean := False;
      --  Fast conversion mode selection
      FAST           : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      ADON           at 0 range 0 .. 0;
      CALIBCNT       at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      STARTCALIB     at 0 range 4 .. 4;
      JCONT          at 0 range 5 .. 5;
      JDS            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      JEXTSEL        at 0 range 8 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      JEXTEN         at 0 range 13 .. 14;
      JSWSTART       at 0 range 15 .. 15;
      RCH            at 0 range 16 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      RCONT          at 0 range 22 .. 22;
      RSWSTART       at 0 range 23 .. 23;
      FAST           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  interrupt and status register
   type ISR_Register is record
      --  Read-only. End of calibration flag
      EOCALF         : Boolean;
      --  Read-only. End of injected conversion flag
      JEOCF          : Boolean;
      --  Read-only. Injected conversion overrun flag
      JOVRF          : Boolean;
      --  Read-only. End of regular conversion flag
      REOCF          : Boolean;
      --  Read-only. Regular conversion overrun flag
      ROVRF          : Boolean;
      --  unspecified
      Reserved_5_11  : HAL.UInt7;
      --  Read-only. Calibration in progress status
      CALIBIP        : Boolean;
      --  Read-only. Injected conversion in progress status
      JCIP           : Boolean;
      --  Read-only. Regular conversion in progress status
      RCIP           : Boolean;
      --  Read-only. Stabilization in progress status
      STABIP         : Boolean;
      --  unspecified
      Reserved_16_30 : HAL.UInt15;
      --  Read-only. Initialization mode is ready
      INITRDY        : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      EOCALF         at 0 range 0 .. 0;
      JEOCF          at 0 range 1 .. 1;
      JOVRF          at 0 range 2 .. 2;
      REOCF          at 0 range 3 .. 3;
      ROVRF          at 0 range 4 .. 4;
      Reserved_5_11  at 0 range 5 .. 11;
      CALIBIP        at 0 range 12 .. 12;
      JCIP           at 0 range 13 .. 13;
      RCIP           at 0 range 14 .. 14;
      STABIP         at 0 range 15 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      INITRDY        at 0 range 31 .. 31;
   end record;

   --  interrupt and status clear register
   type CLRISR_Register is record
      --  Clear the end of calibration flag
      CLREOCALF     : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Clear the injected conversion overrun flag
      CLRJOVRF      : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Clear the regular conversion overrun flag
      CLRROVRF      : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLRISR_Register use record
      CLREOCALF     at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      CLRJOVRF      at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CLRROVRF      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype JCHGR_JCHG_Field is HAL.UInt9;

   --  injected channel group selection register
   type JCHGR_Register is record
      --  Injected channel group selection
      JCHG          : JCHGR_JCHG_Field := 16#1#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JCHGR_Register use record
      JCHG          at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype CONF0R_OFFSET0_Field is HAL.UInt12;
   subtype CONF0R_GAIN0_Field is HAL.UInt3;
   subtype CONF0R_SE0_Field is HAL.UInt2;
   subtype CONF0R_COMMON0_Field is HAL.UInt2;

   --  configuration 0 register
   type CONF0R_Register is record
      --  Twelve-bit calibration offset for configuration 0
      OFFSET0        : CONF0R_OFFSET0_Field := 16#0#;
      --  unspecified
      Reserved_12_19 : HAL.UInt8 := 16#0#;
      --  Gain setting for configuration 0
      GAIN0          : CONF0R_GAIN0_Field := 16#0#;
      --  unspecified
      Reserved_23_25 : HAL.UInt3 := 16#0#;
      --  Single-ended mode for configuration 0
      SE0            : CONF0R_SE0_Field := 16#0#;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  Common mode for configuration 0
      COMMON0        : CONF0R_COMMON0_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF0R_Register use record
      OFFSET0        at 0 range 0 .. 11;
      Reserved_12_19 at 0 range 12 .. 19;
      GAIN0          at 0 range 20 .. 22;
      Reserved_23_25 at 0 range 23 .. 25;
      SE0            at 0 range 26 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      COMMON0        at 0 range 30 .. 31;
   end record;

   subtype CONF1R_OFFSET1_Field is HAL.UInt12;
   subtype CONF1R_GAIN1_Field is HAL.UInt3;
   subtype CONF1R_SE1_Field is HAL.UInt2;
   subtype CONF1R_COMMON1_Field is HAL.UInt2;

   --  configuration 1 register
   type CONF1R_Register is record
      --  Twelve-bit calibration offset for configuration 1
      OFFSET1        : CONF1R_OFFSET1_Field := 16#0#;
      --  unspecified
      Reserved_12_19 : HAL.UInt8 := 16#0#;
      --  Gain setting for configuration 1
      GAIN1          : CONF1R_GAIN1_Field := 16#0#;
      --  unspecified
      Reserved_23_25 : HAL.UInt3 := 16#0#;
      --  Single-ended mode for configuration 1
      SE1            : CONF1R_SE1_Field := 16#0#;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  Common mode for configuration 1
      COMMON1        : CONF1R_COMMON1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF1R_Register use record
      OFFSET1        at 0 range 0 .. 11;
      Reserved_12_19 at 0 range 12 .. 19;
      GAIN1          at 0 range 20 .. 22;
      Reserved_23_25 at 0 range 23 .. 25;
      SE1            at 0 range 26 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      COMMON1        at 0 range 30 .. 31;
   end record;

   subtype CONF2R_OFFSET2_Field is HAL.UInt12;
   subtype CONF2R_GAIN2_Field is HAL.UInt3;
   subtype CONF2R_SE2_Field is HAL.UInt2;
   subtype CONF2R_COMMON2_Field is HAL.UInt2;

   --  configuration 2 register
   type CONF2R_Register is record
      --  Twelve-bit calibration offset for configuration 2
      OFFSET2        : CONF2R_OFFSET2_Field := 16#0#;
      --  unspecified
      Reserved_12_19 : HAL.UInt8 := 16#0#;
      --  Gain setting for configuration 2
      GAIN2          : CONF2R_GAIN2_Field := 16#0#;
      --  unspecified
      Reserved_23_25 : HAL.UInt3 := 16#0#;
      --  Single-ended mode for configuration 2
      SE2            : CONF2R_SE2_Field := 16#0#;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  Common mode for configuration 2
      COMMON2        : CONF2R_COMMON2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF2R_Register use record
      OFFSET2        at 0 range 0 .. 11;
      Reserved_12_19 at 0 range 12 .. 19;
      GAIN2          at 0 range 20 .. 22;
      Reserved_23_25 at 0 range 23 .. 25;
      SE2            at 0 range 26 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      COMMON2        at 0 range 30 .. 31;
   end record;

   subtype CONFCHR1_CONFCH0_Field is HAL.UInt2;
   subtype CONFCHR1_CONFCH1_Field is HAL.UInt2;
   subtype CONFCHR1_CONFCH2_Field is HAL.UInt2;
   subtype CONFCHR1_CONFCH3_Field is HAL.UInt2;
   subtype CONFCHR1_CONFCH4_Field is HAL.UInt2;
   subtype CONFCHR1_CONFCH5_Field is HAL.UInt2;
   subtype CONFCHR1_CONFCH6_Field is HAL.UInt2;
   subtype CONFCHR1_CONFCH7_Field is HAL.UInt2;

   --  channel configuration register 1
   type CONFCHR1_Register is record
      --  CONFCH0
      CONFCH0        : CONFCHR1_CONFCH0_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  CONFCH1
      CONFCH1        : CONFCHR1_CONFCH1_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  CONFCH2
      CONFCH2        : CONFCHR1_CONFCH2_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  CONFCH3
      CONFCH3        : CONFCHR1_CONFCH3_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  CONFCH4
      CONFCH4        : CONFCHR1_CONFCH4_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  CONFCH5
      CONFCH5        : CONFCHR1_CONFCH5_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  CONFCH6
      CONFCH6        : CONFCHR1_CONFCH6_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  CONFCH7
      CONFCH7        : CONFCHR1_CONFCH7_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFCHR1_Register use record
      CONFCH0        at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CONFCH1        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CONFCH2        at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CONFCH3        at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CONFCH4        at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      CONFCH5        at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      CONFCH6        at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      CONFCH7        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CONFCHR2_CONFCH8_Field is HAL.UInt2;

   --  channel configuration register 2
   type CONFCHR2_Register is record
      --  Channel 8 configuration
      CONFCH8       : CONFCHR2_CONFCH8_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFCHR2_Register use record
      CONFCH8       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype JDATAR_JDATA_Field is HAL.UInt16;
   subtype JDATAR_JDATACH_Field is HAL.UInt4;

   --  data register for injected group
   type JDATAR_Register is record
      --  Read-only. Injected group conversion data
      JDATA          : JDATAR_JDATA_Field;
      --  unspecified
      Reserved_16_23 : HAL.UInt8;
      --  Read-only. Injected channel most recently converted
      JDATACH        : JDATAR_JDATACH_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JDATAR_Register use record
      JDATA          at 0 range 0 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      JDATACH        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype RDATAR_RDATA_Field is HAL.UInt16;

   --  data register for the regular channel
   type RDATAR_Register is record
      --  Read-only. Regular channel conversion data
      RDATA          : RDATAR_RDATA_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RDATAR_Register use record
      RDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  JDATA12R_JDATA array element
   subtype JDATA12R_JDATA_Element is HAL.UInt16;

   --  JDATA12R_JDATA array
   type JDATA12R_JDATA_Field_Array is array (1 .. 2)
     of JDATA12R_JDATA_Element
     with Component_Size => 16, Size => 32;

   --  SDADC1 and SDADC2 injected data register
   type JDATA12R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  JDATA as a value
            Val : HAL.UInt32;
         when True =>
            --  JDATA as an array
            Arr : JDATA12R_JDATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for JDATA12R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RDATA12R_RDATA array element
   subtype RDATA12R_RDATA_Element is HAL.UInt16;

   --  RDATA12R_RDATA array
   type RDATA12R_RDATA_Field_Array is array (1 .. 2)
     of RDATA12R_RDATA_Element
     with Component_Size => 16, Size => 32;

   --  SDADC1 and SDADC2 regular data register
   type RDATA12R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDATA as a value
            Val : HAL.UInt32;
         when True =>
            --  RDATA as an array
            Arr : RDATA12R_RDATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for RDATA12R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  JDATA13R_JDATA array element
   subtype JDATA13R_JDATA_Element is HAL.UInt16;

   --  JDATA13R_JDATA array
   type JDATA13R_JDATA_Field_Array is array (1 .. 2)
     of JDATA13R_JDATA_Element
     with Component_Size => 16, Size => 32;

   --  SDADC1 and SDADC3 injected data register
   type JDATA13R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  JDATA as a value
            Val : HAL.UInt32;
         when True =>
            --  JDATA as an array
            Arr : JDATA13R_JDATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for JDATA13R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RDATA13R_RDATA array element
   subtype RDATA13R_RDATA_Element is HAL.UInt16;

   --  RDATA13R_RDATA array
   type RDATA13R_RDATA_Field_Array is array (1 .. 2)
     of RDATA13R_RDATA_Element
     with Component_Size => 16, Size => 32;

   --  SDADC1 and SDADC3 regular data register
   type RDATA13R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDATA as a value
            Val : HAL.UInt32;
         when True =>
            --  RDATA as an array
            Arr : RDATA13R_RDATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for RDATA13R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Sigma-delta analog-to-digital converter
   type SDADC_Peripheral is record
      --  control register 1
      CR1      : aliased CR1_Register;
      --  control register 2
      CR2      : aliased CR2_Register;
      --  interrupt and status register
      ISR      : aliased ISR_Register;
      --  interrupt and status clear register
      CLRISR   : aliased CLRISR_Register;
      --  injected channel group selection register
      JCHGR    : aliased JCHGR_Register;
      --  configuration 0 register
      CONF0R   : aliased CONF0R_Register;
      --  configuration 1 register
      CONF1R   : aliased CONF1R_Register;
      --  configuration 2 register
      CONF2R   : aliased CONF2R_Register;
      --  channel configuration register 1
      CONFCHR1 : aliased CONFCHR1_Register;
      --  channel configuration register 2
      CONFCHR2 : aliased CONFCHR2_Register;
      --  data register for injected group
      JDATAR   : aliased JDATAR_Register;
      --  data register for the regular channel
      RDATAR   : aliased RDATAR_Register;
      --  SDADC1 and SDADC2 injected data register
      JDATA12R : aliased JDATA12R_Register;
      --  SDADC1 and SDADC2 regular data register
      RDATA12R : aliased RDATA12R_Register;
      --  SDADC1 and SDADC3 injected data register
      JDATA13R : aliased JDATA13R_Register;
      --  SDADC1 and SDADC3 regular data register
      RDATA13R : aliased RDATA13R_Register;
   end record
     with Volatile;

   for SDADC_Peripheral use record
      CR1      at 16#0# range 0 .. 31;
      CR2      at 16#4# range 0 .. 31;
      ISR      at 16#8# range 0 .. 31;
      CLRISR   at 16#C# range 0 .. 31;
      JCHGR    at 16#14# range 0 .. 31;
      CONF0R   at 16#20# range 0 .. 31;
      CONF1R   at 16#24# range 0 .. 31;
      CONF2R   at 16#28# range 0 .. 31;
      CONFCHR1 at 16#40# range 0 .. 31;
      CONFCHR2 at 16#44# range 0 .. 31;
      JDATAR   at 16#60# range 0 .. 31;
      RDATAR   at 16#64# range 0 .. 31;
      JDATA12R at 16#70# range 0 .. 31;
      RDATA12R at 16#74# range 0 .. 31;
      JDATA13R at 16#78# range 0 .. 31;
      RDATA13R at 16#7C# range 0 .. 31;
   end record;

   --  Sigma-delta analog-to-digital converter
   SDADC1_Periph : aliased SDADC_Peripheral
     with Import, Address => System'To_Address (16#40016000#);

   --  Sigma-delta analog-to-digital converter
   SDADC2_Periph : aliased SDADC_Peripheral
     with Import, Address => System'To_Address (16#40016400#);

   --  Sigma-delta analog-to-digital converter
   SDADC3_Periph : aliased SDADC_Peripheral
     with Import, Address => System'To_Address (16#40016800#);

end STM32_SVD.SDADC;

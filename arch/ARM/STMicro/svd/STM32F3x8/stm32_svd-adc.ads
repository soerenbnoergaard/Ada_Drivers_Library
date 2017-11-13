--  This spec has been automatically generated from STM32F3x8.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.ADC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  status register
   type SR_Register is record
      --  Analog watchdog flag
      AWD           : Boolean := False;
      --  Regular channel end of conversion
      EOC           : Boolean := False;
      --  Injected channel end of conversion
      JEOC          : Boolean := False;
      --  Injected channel start flag
      JSTRT         : Boolean := False;
      --  Regular channel start flag
      STRT          : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      AWD           at 0 range 0 .. 0;
      EOC           at 0 range 1 .. 1;
      JEOC          at 0 range 2 .. 2;
      JSTRT         at 0 range 3 .. 3;
      STRT          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype CR1_AWDCH_Field is HAL.UInt5;
   subtype CR1_DISCNUM_Field is HAL.UInt3;

   --  control register 1
   type CR1_Register is record
      --  Analog watchdog channel select bits
      AWDCH          : CR1_AWDCH_Field := 16#0#;
      --  Interrupt enable for EOC
      EOCIE          : Boolean := False;
      --  Analog watchdog interrupt enable
      AWDIE          : Boolean := False;
      --  Interrupt enable for injected channels
      JEOCIE         : Boolean := False;
      --  Scan mode
      SCAN           : Boolean := False;
      --  Enable the watchdog on a single channel in scan mode
      AWDSGL         : Boolean := False;
      --  Automatic injected group conversion
      JAUTO          : Boolean := False;
      --  Discontinuous mode on regular channels
      DISCEN         : Boolean := False;
      --  Discontinuous mode on injected channels
      JDISCEN        : Boolean := False;
      --  Discontinuous mode channel count
      DISCNUM        : CR1_DISCNUM_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Analog watchdog enable on injected channels
      JAWDEN         : Boolean := False;
      --  Analog watchdog enable on regular channels
      AWDEN          : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      AWDCH          at 0 range 0 .. 4;
      EOCIE          at 0 range 5 .. 5;
      AWDIE          at 0 range 6 .. 6;
      JEOCIE         at 0 range 7 .. 7;
      SCAN           at 0 range 8 .. 8;
      AWDSGL         at 0 range 9 .. 9;
      JAUTO          at 0 range 10 .. 10;
      DISCEN         at 0 range 11 .. 11;
      JDISCEN        at 0 range 12 .. 12;
      DISCNUM        at 0 range 13 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      JAWDEN         at 0 range 22 .. 22;
      AWDEN          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CR2_JEXTSEL_Field is HAL.UInt3;
   subtype CR2_EXTSEL_Field is HAL.UInt3;

   --  control register 2
   type CR2_Register is record
      --  A/D converter ON / OFF
      ADON           : Boolean := False;
      --  Continuous conversion
      CONT           : Boolean := False;
      --  A/D calibration
      CAL            : Boolean := False;
      --  Reset calibration
      RSTCAL         : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Direct memory access mode
      DMA            : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Data alignment
      ALIGN          : Boolean := False;
      --  External event select for injected group
      JEXTSEL        : CR2_JEXTSEL_Field := 16#0#;
      --  External trigger conversion mode for injected channels
      JEXTTRIG       : Boolean := False;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  External event select for regular group
      EXTSEL         : CR2_EXTSEL_Field := 16#0#;
      --  External trigger conversion mode for regular channels
      EXTTRIG        : Boolean := False;
      --  Start conversion of injected channels
      JSWSTART       : Boolean := False;
      --  Start conversion of regular channels
      SWSTART        : Boolean := False;
      --  Temperature sensor and VREFINT enable
      TSVREFE        : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      ADON           at 0 range 0 .. 0;
      CONT           at 0 range 1 .. 1;
      CAL            at 0 range 2 .. 2;
      RSTCAL         at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      DMA            at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      ALIGN          at 0 range 11 .. 11;
      JEXTSEL        at 0 range 12 .. 14;
      JEXTTRIG       at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      EXTSEL         at 0 range 17 .. 19;
      EXTTRIG        at 0 range 20 .. 20;
      JSWSTART       at 0 range 21 .. 21;
      SWSTART        at 0 range 22 .. 22;
      TSVREFE        at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  SMPR1_SMP array element
   subtype SMPR1_SMP_Element is HAL.UInt3;

   --  SMPR1_SMP array
   type SMPR1_SMP_Field_Array is array (10 .. 17) of SMPR1_SMP_Element
     with Component_Size => 3, Size => 24;

   --  Type definition for SMPR1_SMP
   type SMPR1_SMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SMP as a value
            Val : HAL.UInt24;
         when True =>
            --  SMP as an array
            Arr : SMPR1_SMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for SMPR1_SMP_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  sample time register 1
   type SMPR1_Register is record
      --  Channel 10 sampling time selection
      SMP            : SMPR1_SMP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMPR1_Register use record
      SMP            at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  SMPR2_SMP array element
   subtype SMPR2_SMP_Element is HAL.UInt3;

   --  SMPR2_SMP array
   type SMPR2_SMP_Field_Array is array (0 .. 9) of SMPR2_SMP_Element
     with Component_Size => 3, Size => 30;

   --  Type definition for SMPR2_SMP
   type SMPR2_SMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SMP as a value
            Val : HAL.UInt30;
         when True =>
            --  SMP as an array
            Arr : SMPR2_SMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 30;

   for SMPR2_SMP_Field use record
      Val at 0 range 0 .. 29;
      Arr at 0 range 0 .. 29;
   end record;

   --  sample time register 2
   type SMPR2_Register is record
      --  Channel 0 sampling time selection
      SMP            : SMPR2_SMP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMPR2_Register use record
      SMP            at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype JOFR1_JOFFSET1_Field is HAL.UInt12;

   --  injected channel data offset register x
   type JOFR1_Register is record
      --  Data offset for injected channel x
      JOFFSET1       : JOFR1_JOFFSET1_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JOFR1_Register use record
      JOFFSET1       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype JOFR2_JOFFSET2_Field is HAL.UInt12;

   --  injected channel data offset register x
   type JOFR2_Register is record
      --  Data offset for injected channel x
      JOFFSET2       : JOFR2_JOFFSET2_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JOFR2_Register use record
      JOFFSET2       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype JOFR3_JOFFSET3_Field is HAL.UInt12;

   --  injected channel data offset register x
   type JOFR3_Register is record
      --  Data offset for injected channel x
      JOFFSET3       : JOFR3_JOFFSET3_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JOFR3_Register use record
      JOFFSET3       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype JOFR4_JOFFSET4_Field is HAL.UInt12;

   --  injected channel data offset register x
   type JOFR4_Register is record
      --  Data offset for injected channel x
      JOFFSET4       : JOFR4_JOFFSET4_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JOFR4_Register use record
      JOFFSET4       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype HTR_HT_Field is HAL.UInt12;

   --  watchdog higher threshold register
   type HTR_Register is record
      --  Analog watchdog higher threshold
      HT             : HTR_HT_Field := 16#FFF#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HTR_Register use record
      HT             at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype LTR_LT_Field is HAL.UInt12;

   --  watchdog lower threshold register
   type LTR_Register is record
      --  Analog watchdog lower threshold
      LT             : LTR_LT_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTR_Register use record
      LT             at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  SQR1_SQ array element
   subtype SQR1_SQ_Element is HAL.UInt5;

   --  SQR1_SQ array
   type SQR1_SQ_Field_Array is array (13 .. 16) of SQR1_SQ_Element
     with Component_Size => 5, Size => 20;

   --  Type definition for SQR1_SQ
   type SQR1_SQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SQ as a value
            Val : HAL.UInt20;
         when True =>
            --  SQ as an array
            Arr : SQR1_SQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for SQR1_SQ_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   subtype SQR1_L_Field is HAL.UInt4;

   --  regular sequence register 1
   type SQR1_Register is record
      --  13th conversion in regular sequence
      SQ             : SQR1_SQ_Field := (As_Array => False, Val => 16#0#);
      --  Regular channel sequence length
      L              : SQR1_L_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SQR1_Register use record
      SQ             at 0 range 0 .. 19;
      L              at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  SQR2_SQ array element
   subtype SQR2_SQ_Element is HAL.UInt5;

   --  SQR2_SQ array
   type SQR2_SQ_Field_Array is array (7 .. 12) of SQR2_SQ_Element
     with Component_Size => 5, Size => 30;

   --  Type definition for SQR2_SQ
   type SQR2_SQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SQ as a value
            Val : HAL.UInt30;
         when True =>
            --  SQ as an array
            Arr : SQR2_SQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 30;

   for SQR2_SQ_Field use record
      Val at 0 range 0 .. 29;
      Arr at 0 range 0 .. 29;
   end record;

   --  regular sequence register 2
   type SQR2_Register is record
      --  7th conversion in regular sequence
      SQ             : SQR2_SQ_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SQR2_Register use record
      SQ             at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  SQR3_SQ array element
   subtype SQR3_SQ_Element is HAL.UInt5;

   --  SQR3_SQ array
   type SQR3_SQ_Field_Array is array (1 .. 6) of SQR3_SQ_Element
     with Component_Size => 5, Size => 30;

   --  Type definition for SQR3_SQ
   type SQR3_SQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SQ as a value
            Val : HAL.UInt30;
         when True =>
            --  SQ as an array
            Arr : SQR3_SQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 30;

   for SQR3_SQ_Field use record
      Val at 0 range 0 .. 29;
      Arr at 0 range 0 .. 29;
   end record;

   --  regular sequence register 3
   type SQR3_Register is record
      --  1st conversion in regular sequence
      SQ             : SQR3_SQ_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SQR3_Register use record
      SQ             at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  JSQR_JSQ array element
   subtype JSQR_JSQ_Element is HAL.UInt5;

   --  JSQR_JSQ array
   type JSQR_JSQ_Field_Array is array (1 .. 4) of JSQR_JSQ_Element
     with Component_Size => 5, Size => 20;

   --  Type definition for JSQR_JSQ
   type JSQR_JSQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  JSQ as a value
            Val : HAL.UInt20;
         when True =>
            --  JSQ as an array
            Arr : JSQR_JSQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for JSQR_JSQ_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   subtype JSQR_JL_Field is HAL.UInt2;

   --  injected sequence register
   type JSQR_Register is record
      --  1st conversion in injected sequence
      JSQ            : JSQR_JSQ_Field := (As_Array => False, Val => 16#0#);
      --  Injected sequence length
      JL             : JSQR_JL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JSQR_Register use record
      JSQ            at 0 range 0 .. 19;
      JL             at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype JDR_JDATA_Field is HAL.UInt16;

   --  injected data register x
   type JDR_Register is record
      --  Read-only. Injected data
      JDATA          : JDR_JDATA_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JDR_Register use record
      JDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DR_DATA_Field is HAL.UInt16;

   --  regular data register
   type DR_Register is record
      --  Read-only. Regular data
      DATA           : DR_DATA_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register use record
      DATA           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  ISR_AWD array
   type ISR_AWD_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for ISR_AWD
   type ISR_AWD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AWD as a value
            Val : HAL.UInt3;
         when True =>
            --  AWD as an array
            Arr : ISR_AWD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ISR_AWD_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  interrupt and status register
   type ISR_Register is record
      --  ADRDY
      ADRDY          : Boolean := False;
      --  EOSMP
      EOSMP          : Boolean := False;
      --  EOC
      EOC            : Boolean := False;
      --  EOS
      EOS            : Boolean := False;
      --  OVR
      OVR            : Boolean := False;
      --  JEOC
      JEOC           : Boolean := False;
      --  JEOS
      JEOS           : Boolean := False;
      --  AWD1
      AWD            : ISR_AWD_Field := (As_Array => False, Val => 16#0#);
      --  JQOVF
      JQOVF          : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      ADRDY          at 0 range 0 .. 0;
      EOSMP          at 0 range 1 .. 1;
      EOC            at 0 range 2 .. 2;
      EOS            at 0 range 3 .. 3;
      OVR            at 0 range 4 .. 4;
      JEOC           at 0 range 5 .. 5;
      JEOS           at 0 range 6 .. 6;
      AWD            at 0 range 7 .. 9;
      JQOVF          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  interrupt enable register
   type IER_Register is record
      --  ADRDYIE
      ADRDYIE        : Boolean := False;
      --  EOSMPIE
      EOSMPIE        : Boolean := False;
      --  EOCIE
      EOCIE          : Boolean := False;
      --  EOSIE
      EOSIE          : Boolean := False;
      --  OVRIE
      OVRIE          : Boolean := False;
      --  JEOCIE
      JEOCIE         : Boolean := False;
      --  JEOSIE
      JEOSIE         : Boolean := False;
      --  AWD1IE
      AWD1IE         : Boolean := False;
      --  AWD2IE
      AWD2IE         : Boolean := False;
      --  AWD3IE
      AWD3IE         : Boolean := False;
      --  JQOVFIE
      JQOVFIE        : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      ADRDYIE        at 0 range 0 .. 0;
      EOSMPIE        at 0 range 1 .. 1;
      EOCIE          at 0 range 2 .. 2;
      EOSIE          at 0 range 3 .. 3;
      OVRIE          at 0 range 4 .. 4;
      JEOCIE         at 0 range 5 .. 5;
      JEOSIE         at 0 range 6 .. 6;
      AWD1IE         at 0 range 7 .. 7;
      AWD2IE         at 0 range 8 .. 8;
      AWD3IE         at 0 range 9 .. 9;
      JQOVFIE        at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  control register
   type CR_Register is record
      --  ADEN
      ADEN          : Boolean := False;
      --  ADDIS
      ADDIS         : Boolean := False;
      --  ADSTART
      ADSTART       : Boolean := False;
      --  JADSTART
      JADSTART      : Boolean := False;
      --  ADSTP
      ADSTP         : Boolean := False;
      --  JADSTP
      JADSTP        : Boolean := False;
      --  unspecified
      Reserved_6_27 : HAL.UInt22 := 16#0#;
      --  ADVREGEN
      ADVREGEN      : Boolean := False;
      --  DEEPPWD
      DEEPPWD       : Boolean := False;
      --  ADCALDIF
      ADCALDIF      : Boolean := False;
      --  ADCAL
      ADCAL         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      ADEN          at 0 range 0 .. 0;
      ADDIS         at 0 range 1 .. 1;
      ADSTART       at 0 range 2 .. 2;
      JADSTART      at 0 range 3 .. 3;
      ADSTP         at 0 range 4 .. 4;
      JADSTP        at 0 range 5 .. 5;
      Reserved_6_27 at 0 range 6 .. 27;
      ADVREGEN      at 0 range 28 .. 28;
      DEEPPWD       at 0 range 29 .. 29;
      ADCALDIF      at 0 range 30 .. 30;
      ADCAL         at 0 range 31 .. 31;
   end record;

   subtype CFGR_RES_Field is HAL.UInt2;
   subtype CFGR_EXTSEL_Field is HAL.UInt4;
   subtype CFGR_EXTEN_Field is HAL.UInt2;
   subtype CFGR_DISCNUM_Field is HAL.UInt3;
   subtype CFGR_AWDCH1CH_Field is HAL.UInt5;

   --  configuration register
   type CFGR_Register is record
      --  DMAEN
      DMAEN          : Boolean := False;
      --  DMACFG
      DMACFG         : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  RES
      RES            : CFGR_RES_Field := 16#0#;
      --  ALIGN
      ALIGN          : Boolean := False;
      --  EXTSEL
      EXTSEL         : CFGR_EXTSEL_Field := 16#0#;
      --  EXTEN
      EXTEN          : CFGR_EXTEN_Field := 16#0#;
      --  OVRMOD
      OVRMOD         : Boolean := False;
      --  CONT
      CONT           : Boolean := False;
      --  AUTDLY
      AUTDLY         : Boolean := False;
      --  AUTOFF
      AUTOFF         : Boolean := False;
      --  DISCEN
      DISCEN         : Boolean := False;
      --  DISCNUM
      DISCNUM        : CFGR_DISCNUM_Field := 16#0#;
      --  JDISCEN
      JDISCEN        : Boolean := False;
      --  JQM
      JQM            : Boolean := False;
      --  AWD1SGL
      AWD1SGL        : Boolean := False;
      --  AWD1EN
      AWD1EN         : Boolean := False;
      --  JAWD1EN
      JAWD1EN        : Boolean := False;
      --  JAUTO
      JAUTO          : Boolean := False;
      --  AWDCH1CH
      AWDCH1CH       : CFGR_AWDCH1CH_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR_Register use record
      DMAEN          at 0 range 0 .. 0;
      DMACFG         at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      RES            at 0 range 3 .. 4;
      ALIGN          at 0 range 5 .. 5;
      EXTSEL         at 0 range 6 .. 9;
      EXTEN          at 0 range 10 .. 11;
      OVRMOD         at 0 range 12 .. 12;
      CONT           at 0 range 13 .. 13;
      AUTDLY         at 0 range 14 .. 14;
      AUTOFF         at 0 range 15 .. 15;
      DISCEN         at 0 range 16 .. 16;
      DISCNUM        at 0 range 17 .. 19;
      JDISCEN        at 0 range 20 .. 20;
      JQM            at 0 range 21 .. 21;
      AWD1SGL        at 0 range 22 .. 22;
      AWD1EN         at 0 range 23 .. 23;
      JAWD1EN        at 0 range 24 .. 24;
      JAUTO          at 0 range 25 .. 25;
      AWDCH1CH       at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  SMPR1_SMP array
   type SMPR1_SMP_Field_Array_1 is array (1 .. 9) of SMPR1_SMP_Element
     with Component_Size => 3, Size => 27;

   --  Type definition for SMPR1_SMP
   type SMPR1_SMP_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SMP as a value
            Val : HAL.UInt27;
         when True =>
            --  SMP as an array
            Arr : SMPR1_SMP_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 27;

   for SMPR1_SMP_Field_1 use record
      Val at 0 range 0 .. 26;
      Arr at 0 range 0 .. 26;
   end record;

   --  sample time register 1
   type SMPR1_Register_1 is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  SMP1
      SMP            : SMPR1_SMP_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMPR1_Register_1 use record
      Reserved_0_2   at 0 range 0 .. 2;
      SMP            at 0 range 3 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  SMPR2_SMP array
   type SMPR2_SMP_Field_Array_1 is array (10 .. 18) of SMPR2_SMP_Element
     with Component_Size => 3, Size => 27;

   --  Type definition for SMPR2_SMP
   type SMPR2_SMP_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SMP as a value
            Val : HAL.UInt27;
         when True =>
            --  SMP as an array
            Arr : SMPR2_SMP_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 27;

   for SMPR2_SMP_Field_1 use record
      Val at 0 range 0 .. 26;
      Arr at 0 range 0 .. 26;
   end record;

   --  sample time register 2
   type SMPR2_Register_1 is record
      --  SMP10
      SMP            : SMPR2_SMP_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMPR2_Register_1 use record
      SMP            at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype TR1_LT1_Field is HAL.UInt12;
   subtype TR1_HT1_Field is HAL.UInt12;

   --  watchdog threshold register 1
   type TR1_Register is record
      --  LT1
      LT1            : TR1_LT1_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  HT1
      HT1            : TR1_HT1_Field := 16#FFF#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TR1_Register use record
      LT1            at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HT1            at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TR2_LT2_Field is HAL.UInt8;
   subtype TR2_HT2_Field is HAL.UInt8;

   --  watchdog threshold register
   type TR2_Register is record
      --  LT2
      LT2            : TR2_LT2_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  HT2
      HT2            : TR2_HT2_Field := 16#FF#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#F#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TR2_Register use record
      LT2            at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      HT2            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TR3_LT3_Field is HAL.UInt8;
   subtype TR3_HT3_Field is HAL.UInt8;

   --  watchdog threshold register 3
   type TR3_Register is record
      --  LT3
      LT3            : TR3_LT3_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  HT3
      HT3            : TR3_HT3_Field := 16#FF#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#F#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TR3_Register use record
      LT3            at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      HT3            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SQR1_L3_Field is HAL.UInt4;
   subtype SQR1_SQ1_Field is HAL.UInt5;
   subtype SQR1_SQ2_Field is HAL.UInt5;
   subtype SQR1_SQ3_Field is HAL.UInt5;
   subtype SQR1_SQ4_Field is HAL.UInt5;

   --  regular sequence register 1
   type SQR1_Register_1 is record
      --  L3
      L3             : SQR1_L3_Field := 16#0#;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  SQ1
      SQ1            : SQR1_SQ1_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  SQ2
      SQ2            : SQR1_SQ2_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  SQ3
      SQ3            : SQR1_SQ3_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  SQ4
      SQ4            : SQR1_SQ4_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SQR1_Register_1 use record
      L3             at 0 range 0 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      SQ1            at 0 range 6 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SQ2            at 0 range 12 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      SQ3            at 0 range 18 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SQ4            at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype SQR2_SQ5_Field is HAL.UInt5;
   subtype SQR2_SQ6_Field is HAL.UInt5;
   subtype SQR2_SQ7_Field is HAL.UInt5;
   subtype SQR2_SQ8_Field is HAL.UInt5;
   subtype SQR2_SQ9_Field is HAL.UInt5;

   --  regular sequence register 2
   type SQR2_Register_1 is record
      --  SQ5
      SQ5            : SQR2_SQ5_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  SQ6
      SQ6            : SQR2_SQ6_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  SQ7
      SQ7            : SQR2_SQ7_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  SQ8
      SQ8            : SQR2_SQ8_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  SQ9
      SQ9            : SQR2_SQ9_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SQR2_Register_1 use record
      SQ5            at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SQ6            at 0 range 6 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SQ7            at 0 range 12 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      SQ8            at 0 range 18 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SQ9            at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype SQR3_SQ10_Field is HAL.UInt5;
   subtype SQR3_SQ11_Field is HAL.UInt5;
   subtype SQR3_SQ12_Field is HAL.UInt5;
   subtype SQR3_SQ13_Field is HAL.UInt5;
   subtype SQR3_SQ14_Field is HAL.UInt5;

   --  regular sequence register 3
   type SQR3_Register_1 is record
      --  SQ10
      SQ10           : SQR3_SQ10_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  SQ11
      SQ11           : SQR3_SQ11_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  SQ12
      SQ12           : SQR3_SQ12_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  SQ13
      SQ13           : SQR3_SQ13_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  SQ14
      SQ14           : SQR3_SQ14_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SQR3_Register_1 use record
      SQ10           at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SQ11           at 0 range 6 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SQ12           at 0 range 12 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      SQ13           at 0 range 18 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SQ14           at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype SQR4_SQ15_Field is HAL.UInt5;
   subtype SQR4_SQ16_Field is HAL.UInt5;

   --  regular sequence register 4
   type SQR4_Register is record
      --  SQ15
      SQ15           : SQR4_SQ15_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  SQ16
      SQ16           : SQR4_SQ16_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SQR4_Register use record
      SQ15           at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SQ16           at 0 range 6 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DR_regularDATA_Field is HAL.UInt16;

   --  regular Data Register
   type DR_Register_1 is record
      --  Read-only. regularDATA
      regularDATA    : DR_regularDATA_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register_1 use record
      regularDATA    at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype JSQR_JEXTSEL_Field is HAL.UInt4;
   subtype JSQR_JEXTEN_Field is HAL.UInt2;
   subtype JSQR_JSQ1_Field is HAL.UInt5;
   subtype JSQR_JSQ2_Field is HAL.UInt5;
   subtype JSQR_JSQ3_Field is HAL.UInt5;
   subtype JSQR_JSQ4_Field is HAL.UInt5;

   --  injected sequence register
   type JSQR_Register_1 is record
      --  JL
      JL             : JSQR_JL_Field := 16#0#;
      --  JEXTSEL
      JEXTSEL        : JSQR_JEXTSEL_Field := 16#0#;
      --  JEXTEN
      JEXTEN         : JSQR_JEXTEN_Field := 16#0#;
      --  JSQ1
      JSQ1           : JSQR_JSQ1_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  JSQ2
      JSQ2           : JSQR_JSQ2_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  JSQ3
      JSQ3           : JSQR_JSQ3_Field := 16#0#;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  JSQ4
      JSQ4           : JSQR_JSQ4_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JSQR_Register_1 use record
      JL             at 0 range 0 .. 1;
      JEXTSEL        at 0 range 2 .. 5;
      JEXTEN         at 0 range 6 .. 7;
      JSQ1           at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      JSQ2           at 0 range 14 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      JSQ3           at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      JSQ4           at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OFR1_OFFSET1_Field is HAL.UInt12;
   subtype OFR1_OFFSET1_CH_Field is HAL.UInt5;

   --  offset register 1
   type OFR1_Register is record
      --  OFFSET1
      OFFSET1        : OFR1_OFFSET1_Field := 16#0#;
      --  unspecified
      Reserved_12_25 : HAL.UInt14 := 16#0#;
      --  OFFSET1_CH
      OFFSET1_CH     : OFR1_OFFSET1_CH_Field := 16#0#;
      --  OFFSET1_EN
      OFFSET1_EN     : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OFR1_Register use record
      OFFSET1        at 0 range 0 .. 11;
      Reserved_12_25 at 0 range 12 .. 25;
      OFFSET1_CH     at 0 range 26 .. 30;
      OFFSET1_EN     at 0 range 31 .. 31;
   end record;

   subtype OFR2_OFFSET2_Field is HAL.UInt12;
   subtype OFR2_OFFSET2_CH_Field is HAL.UInt5;

   --  offset register 2
   type OFR2_Register is record
      --  OFFSET2
      OFFSET2        : OFR2_OFFSET2_Field := 16#0#;
      --  unspecified
      Reserved_12_25 : HAL.UInt14 := 16#0#;
      --  OFFSET2_CH
      OFFSET2_CH     : OFR2_OFFSET2_CH_Field := 16#0#;
      --  OFFSET2_EN
      OFFSET2_EN     : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OFR2_Register use record
      OFFSET2        at 0 range 0 .. 11;
      Reserved_12_25 at 0 range 12 .. 25;
      OFFSET2_CH     at 0 range 26 .. 30;
      OFFSET2_EN     at 0 range 31 .. 31;
   end record;

   subtype OFR3_OFFSET3_Field is HAL.UInt12;
   subtype OFR3_OFFSET3_CH_Field is HAL.UInt5;

   --  offset register 3
   type OFR3_Register is record
      --  OFFSET3
      OFFSET3        : OFR3_OFFSET3_Field := 16#0#;
      --  unspecified
      Reserved_12_25 : HAL.UInt14 := 16#0#;
      --  OFFSET3_CH
      OFFSET3_CH     : OFR3_OFFSET3_CH_Field := 16#0#;
      --  OFFSET3_EN
      OFFSET3_EN     : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OFR3_Register use record
      OFFSET3        at 0 range 0 .. 11;
      Reserved_12_25 at 0 range 12 .. 25;
      OFFSET3_CH     at 0 range 26 .. 30;
      OFFSET3_EN     at 0 range 31 .. 31;
   end record;

   subtype OFR4_OFFSET4_Field is HAL.UInt12;
   subtype OFR4_OFFSET4_CH_Field is HAL.UInt5;

   --  offset register 4
   type OFR4_Register is record
      --  OFFSET4
      OFFSET4        : OFR4_OFFSET4_Field := 16#0#;
      --  unspecified
      Reserved_12_25 : HAL.UInt14 := 16#0#;
      --  OFFSET4_CH
      OFFSET4_CH     : OFR4_OFFSET4_CH_Field := 16#0#;
      --  OFFSET4_EN
      OFFSET4_EN     : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OFR4_Register use record
      OFFSET4        at 0 range 0 .. 11;
      Reserved_12_25 at 0 range 12 .. 25;
      OFFSET4_CH     at 0 range 26 .. 30;
      OFFSET4_EN     at 0 range 31 .. 31;
   end record;

   subtype JDR1_JDATA1_Field is HAL.UInt16;

   --  injected data register 1
   type JDR1_Register is record
      --  Read-only. JDATA1
      JDATA1         : JDR1_JDATA1_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JDR1_Register use record
      JDATA1         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype JDR2_JDATA2_Field is HAL.UInt16;

   --  injected data register 2
   type JDR2_Register is record
      --  Read-only. JDATA2
      JDATA2         : JDR2_JDATA2_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JDR2_Register use record
      JDATA2         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype JDR3_JDATA3_Field is HAL.UInt16;

   --  injected data register 3
   type JDR3_Register is record
      --  Read-only. JDATA3
      JDATA3         : JDR3_JDATA3_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JDR3_Register use record
      JDATA3         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype JDR4_JDATA4_Field is HAL.UInt16;

   --  injected data register 4
   type JDR4_Register is record
      --  Read-only. JDATA4
      JDATA4         : JDR4_JDATA4_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JDR4_Register use record
      JDATA4         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype AWD2CR_AWD2CH_Field is HAL.UInt18;

   --  Analog Watchdog 2 Configuration Register
   type AWD2CR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  AWD2CH
      AWD2CH         : AWD2CR_AWD2CH_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AWD2CR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      AWD2CH         at 0 range 1 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype AWD3CR_AWD3CH_Field is HAL.UInt18;

   --  Analog Watchdog 3 Configuration Register
   type AWD3CR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  AWD3CH
      AWD3CH         : AWD3CR_AWD3CH_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AWD3CR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      AWD3CH         at 0 range 1 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype DIFSEL_DIFSEL_1_15_Field is HAL.UInt15;
   subtype DIFSEL_DIFSEL_16_18_Field is HAL.UInt3;

   --  Differential Mode Selection Register 2
   type DIFSEL_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Differential mode for channels 15 to 1
      DIFSEL_1_15    : DIFSEL_DIFSEL_1_15_Field := 16#0#;
      --  Read-only. Differential mode for channels 18 to 16
      DIFSEL_16_18   : DIFSEL_DIFSEL_16_18_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIFSEL_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      DIFSEL_1_15    at 0 range 1 .. 15;
      DIFSEL_16_18   at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype CALFACT_CALFACT_S_Field is HAL.UInt7;
   subtype CALFACT_CALFACT_D_Field is HAL.UInt7;

   --  Calibration Factors
   type CALFACT_Register is record
      --  CALFACT_S
      CALFACT_S      : CALFACT_CALFACT_S_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  CALFACT_D
      CALFACT_D      : CALFACT_CALFACT_D_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CALFACT_Register use record
      CALFACT_S      at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      CALFACT_D      at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog to digital converter
   type ADC1_Peripheral is record
      --  status register
      SR    : aliased SR_Register;
      --  control register 1
      CR1   : aliased CR1_Register;
      --  control register 2
      CR2   : aliased CR2_Register;
      --  sample time register 1
      SMPR1 : aliased SMPR1_Register;
      --  sample time register 2
      SMPR2 : aliased SMPR2_Register;
      --  injected channel data offset register x
      JOFR1 : aliased JOFR1_Register;
      --  injected channel data offset register x
      JOFR2 : aliased JOFR2_Register;
      --  injected channel data offset register x
      JOFR3 : aliased JOFR3_Register;
      --  injected channel data offset register x
      JOFR4 : aliased JOFR4_Register;
      --  watchdog higher threshold register
      HTR   : aliased HTR_Register;
      --  watchdog lower threshold register
      LTR   : aliased LTR_Register;
      --  regular sequence register 1
      SQR1  : aliased SQR1_Register;
      --  regular sequence register 2
      SQR2  : aliased SQR2_Register;
      --  regular sequence register 3
      SQR3  : aliased SQR3_Register;
      --  injected sequence register
      JSQR  : aliased JSQR_Register;
      --  injected data register x
      JDR1  : aliased JDR_Register;
      --  injected data register x
      JDR2  : aliased JDR_Register;
      --  injected data register x
      JDR3  : aliased JDR_Register;
      --  injected data register x
      JDR4  : aliased JDR_Register;
      --  regular data register
      DR    : aliased DR_Register;
   end record
     with Volatile;

   for ADC1_Peripheral use record
      SR    at 16#0# range 0 .. 31;
      CR1   at 16#4# range 0 .. 31;
      CR2   at 16#8# range 0 .. 31;
      SMPR1 at 16#C# range 0 .. 31;
      SMPR2 at 16#10# range 0 .. 31;
      JOFR1 at 16#14# range 0 .. 31;
      JOFR2 at 16#18# range 0 .. 31;
      JOFR3 at 16#1C# range 0 .. 31;
      JOFR4 at 16#20# range 0 .. 31;
      HTR   at 16#24# range 0 .. 31;
      LTR   at 16#28# range 0 .. 31;
      SQR1  at 16#2C# range 0 .. 31;
      SQR2  at 16#30# range 0 .. 31;
      SQR3  at 16#34# range 0 .. 31;
      JSQR  at 16#38# range 0 .. 31;
      JDR1  at 16#3C# range 0 .. 31;
      JDR2  at 16#40# range 0 .. 31;
      JDR3  at 16#44# range 0 .. 31;
      JDR4  at 16#48# range 0 .. 31;
      DR    at 16#4C# range 0 .. 31;
   end record;

   --  Analog to digital converter
   ADC1_Periph : aliased ADC1_Peripheral
     with Import, Address => System'To_Address (16#50000000#);

   --  Analog-to-Digital Converter
   type ADC2_Peripheral is record
      --  interrupt and status register
      ISR     : aliased ISR_Register;
      --  interrupt enable register
      IER     : aliased IER_Register;
      --  control register
      CR      : aliased CR_Register;
      --  configuration register
      CFGR    : aliased CFGR_Register;
      --  sample time register 1
      SMPR1   : aliased SMPR1_Register_1;
      --  sample time register 2
      SMPR2   : aliased SMPR2_Register_1;
      --  watchdog threshold register 1
      TR1     : aliased TR1_Register;
      --  watchdog threshold register
      TR2     : aliased TR2_Register;
      --  watchdog threshold register 3
      TR3     : aliased TR3_Register;
      --  regular sequence register 1
      SQR1    : aliased SQR1_Register_1;
      --  regular sequence register 2
      SQR2    : aliased SQR2_Register_1;
      --  regular sequence register 3
      SQR3    : aliased SQR3_Register_1;
      --  regular sequence register 4
      SQR4    : aliased SQR4_Register;
      --  regular Data Register
      DR      : aliased DR_Register_1;
      --  injected sequence register
      JSQR    : aliased JSQR_Register_1;
      --  offset register 1
      OFR1    : aliased OFR1_Register;
      --  offset register 2
      OFR2    : aliased OFR2_Register;
      --  offset register 3
      OFR3    : aliased OFR3_Register;
      --  offset register 4
      OFR4    : aliased OFR4_Register;
      --  injected data register 1
      JDR1    : aliased JDR1_Register;
      --  injected data register 2
      JDR2    : aliased JDR2_Register;
      --  injected data register 3
      JDR3    : aliased JDR3_Register;
      --  injected data register 4
      JDR4    : aliased JDR4_Register;
      --  Analog Watchdog 2 Configuration Register
      AWD2CR  : aliased AWD2CR_Register;
      --  Analog Watchdog 3 Configuration Register
      AWD3CR  : aliased AWD3CR_Register;
      --  Differential Mode Selection Register 2
      DIFSEL  : aliased DIFSEL_Register;
      --  Calibration Factors
      CALFACT : aliased CALFACT_Register;
   end record
     with Volatile;

   for ADC2_Peripheral use record
      ISR     at 16#0# range 0 .. 31;
      IER     at 16#4# range 0 .. 31;
      CR      at 16#8# range 0 .. 31;
      CFGR    at 16#C# range 0 .. 31;
      SMPR1   at 16#14# range 0 .. 31;
      SMPR2   at 16#18# range 0 .. 31;
      TR1     at 16#20# range 0 .. 31;
      TR2     at 16#24# range 0 .. 31;
      TR3     at 16#28# range 0 .. 31;
      SQR1    at 16#30# range 0 .. 31;
      SQR2    at 16#34# range 0 .. 31;
      SQR3    at 16#38# range 0 .. 31;
      SQR4    at 16#3C# range 0 .. 31;
      DR      at 16#40# range 0 .. 31;
      JSQR    at 16#4C# range 0 .. 31;
      OFR1    at 16#60# range 0 .. 31;
      OFR2    at 16#64# range 0 .. 31;
      OFR3    at 16#68# range 0 .. 31;
      OFR4    at 16#6C# range 0 .. 31;
      JDR1    at 16#80# range 0 .. 31;
      JDR2    at 16#84# range 0 .. 31;
      JDR3    at 16#88# range 0 .. 31;
      JDR4    at 16#8C# range 0 .. 31;
      AWD2CR  at 16#A0# range 0 .. 31;
      AWD3CR  at 16#A4# range 0 .. 31;
      DIFSEL  at 16#B0# range 0 .. 31;
      CALFACT at 16#B4# range 0 .. 31;
   end record;

   --  Analog-to-Digital Converter
   ADC2_Periph : aliased ADC2_Peripheral
     with Import, Address => System'To_Address (16#50000400#);

end STM32_SVD.ADC;

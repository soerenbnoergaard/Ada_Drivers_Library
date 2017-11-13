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

--  This spec has been automatically generated from ATSAML21G16B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.AES is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype AES_CTRLA_AESMODE_Field is HAL.UInt3;
   subtype AES_CTRLA_CFBS_Field is HAL.UInt3;
   subtype AES_CTRLA_KEYSIZE_Field is HAL.UInt2;
   subtype AES_CTRLA_CTYPE_Field is HAL.UInt4;

   --  Control A
   type AES_CTRLA_Register is record
      --  Software Reset
      SWRST          : Boolean := False;
      --  Enable
      ENABLE         : Boolean := False;
      --  AES Modes of operation
      AESMODE        : AES_CTRLA_AESMODE_Field := 16#0#;
      --  CFB Types
      CFBS           : AES_CTRLA_CFBS_Field := 16#0#;
      --  Keysize
      KEYSIZE        : AES_CTRLA_KEYSIZE_Field := 16#0#;
      --  Cipher mode
      CIPHER         : Boolean := False;
      --  Start mode
      STARTMODE      : Boolean := False;
      --  LOD Enable
      LOD            : Boolean := False;
      --  Last key generation
      KEYGEN         : Boolean := False;
      --  Xor Key operation
      XORKEY         : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Counter measure types
      CTYPE          : AES_CTRLA_CTYPE_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AES_CTRLA_Register use record
      SWRST          at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      AESMODE        at 0 range 2 .. 4;
      CFBS           at 0 range 5 .. 7;
      KEYSIZE        at 0 range 8 .. 9;
      CIPHER         at 0 range 10 .. 10;
      STARTMODE      at 0 range 11 .. 11;
      LOD            at 0 range 12 .. 12;
      KEYGEN         at 0 range 13 .. 13;
      XORKEY         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CTYPE          at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Control B
   type AES_CTRLB_Register is record
      --  Manual Start
      START        : Boolean := False;
      --  New message
      NEWMSG       : Boolean := False;
      --  End of message
      EOM          : Boolean := False;
      --  GF Multiplication
      GFMUL        : Boolean := False;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for AES_CTRLB_Register use record
      START        at 0 range 0 .. 0;
      NEWMSG       at 0 range 1 .. 1;
      EOM          at 0 range 2 .. 2;
      GFMUL        at 0 range 3 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  Interrupt Enable Clear
   type AES_INTENCLR_Register is record
      --  Encryption Complete
      ENCCMP       : Boolean := False;
      --  GF Multiplication Complete
      GFMCMP       : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for AES_INTENCLR_Register use record
      ENCCMP       at 0 range 0 .. 0;
      GFMCMP       at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Interrupt Enable Set
   type AES_INTENSET_Register is record
      --  Encryption Complete
      ENCCMP       : Boolean := False;
      --  GF Multiplication Complete
      GFMCMP       : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for AES_INTENSET_Register use record
      ENCCMP       at 0 range 0 .. 0;
      GFMCMP       at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Interrupt Flag Status
   type AES_INTFLAG_Register is record
      --  Encryption Complete
      ENCCMP       : Boolean := False;
      --  GF Multiplication Complete
      GFMCMP       : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for AES_INTFLAG_Register use record
      ENCCMP       at 0 range 0 .. 0;
      GFMCMP       at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   subtype AES_DATABUFPTR_INDATAPTR_Field is HAL.UInt2;

   --  Data buffer pointer
   type AES_DATABUFPTR_Register is record
      --  Input Data Pointer
      INDATAPTR    : AES_DATABUFPTR_INDATAPTR_Field := 16#0#;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for AES_DATABUFPTR_Register use record
      INDATAPTR    at 0 range 0 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Debug control
   type AES_DBGCTRL_Register is record
      --  Write-only. Debug Run
      DBGRUN       : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for AES_DBGCTRL_Register use record
      DBGRUN       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Keyword n

   --  Keyword n
   type AES_KEYWORD_Registers is array (0 .. 7) of HAL.UInt32
     with Volatile;

   --  Initialisation Vector n

   --  Initialisation Vector n
   type AES_INTVECTV_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  Hash key n

   --  Hash key n
   type AES_HASHKEY_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  Galois Hash n

   --  Galois Hash n
   type AES_GHASH_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Advanced Encryption Standard
   type AES_Peripheral is record
      --  Control A
      CTRLA      : aliased AES_CTRLA_Register;
      --  Control B
      CTRLB      : aliased AES_CTRLB_Register;
      --  Interrupt Enable Clear
      INTENCLR   : aliased AES_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET   : aliased AES_INTENSET_Register;
      --  Interrupt Flag Status
      INTFLAG    : aliased AES_INTFLAG_Register;
      --  Data buffer pointer
      DATABUFPTR : aliased AES_DATABUFPTR_Register;
      --  Debug control
      DBGCTRL    : aliased AES_DBGCTRL_Register;
      --  Keyword n
      KEYWORD    : aliased AES_KEYWORD_Registers;
      --  Indata
      INDATA     : aliased HAL.UInt32;
      --  Initialisation Vector n
      INTVECTV   : aliased AES_INTVECTV_Registers;
      --  Hash key n
      HASHKEY    : aliased AES_HASHKEY_Registers;
      --  Galois Hash n
      GHASH      : aliased AES_GHASH_Registers;
      --  Cipher Length
      CIPLEN     : aliased HAL.UInt32;
      --  Random Seed
      RANDSEED   : aliased HAL.UInt32;
   end record
     with Volatile;

   for AES_Peripheral use record
      CTRLA      at 16#0# range 0 .. 31;
      CTRLB      at 16#4# range 0 .. 7;
      INTENCLR   at 16#5# range 0 .. 7;
      INTENSET   at 16#6# range 0 .. 7;
      INTFLAG    at 16#7# range 0 .. 7;
      DATABUFPTR at 16#8# range 0 .. 7;
      DBGCTRL    at 16#9# range 0 .. 7;
      KEYWORD    at 16#C# range 0 .. 255;
      INDATA     at 16#38# range 0 .. 31;
      INTVECTV   at 16#3C# range 0 .. 127;
      HASHKEY    at 16#5C# range 0 .. 127;
      GHASH      at 16#6C# range 0 .. 127;
      CIPLEN     at 16#80# range 0 .. 31;
      RANDSEED   at 16#84# range 0 .. 31;
   end record;

   --  Advanced Encryption Standard
   AES_Periph : aliased AES_Peripheral
     with Import, Address => System'To_Address (16#42003400#);

end SAM_SVD.AES;

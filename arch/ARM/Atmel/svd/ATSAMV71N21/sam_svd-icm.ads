--  This spec has been automatically generated from ATSAMV71N21.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Integrity Check Monitor
package SAM_SVD.ICM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ICM_CFG_BBC_Field is HAL.UInt4;

   --  User SHA Algorithm
   type CFG_UALGO_Field is
     (
      --  SHA1 algorithm processed
      Sha1,
      --  SHA256 algorithm processed
      Sha256,
      --  SHA224 algorithm processed
      Sha224)
     with Size => 3;
   for CFG_UALGO_Field use
     (Sha1 => 0,
      Sha256 => 1,
      Sha224 => 4);

   subtype ICM_CFG_HAPROT_Field is HAL.UInt6;
   subtype ICM_CFG_DAPROT_Field is HAL.UInt6;

   --  Configuration Register
   type ICM_CFG_Register is record
      --  Write Back Disable
      WBDIS          : Boolean := False;
      --  End of Monitoring Disable
      EOMDIS         : Boolean := False;
      --  Secondary List Branching Disable
      SLBDIS         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Bus Burden Control
      BBC            : ICM_CFG_BBC_Field := 16#0#;
      --  Automatic Switch To Compare Digest
      ASCD           : Boolean := False;
      --  Dual Input Buffer
      DUALBUFF       : Boolean := False;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  User Initial Hash Value
      UIHASH         : Boolean := False;
      --  User SHA Algorithm
      UALGO          : CFG_UALGO_Field := SAM_SVD.ICM.Sha1;
      --  Region Hash Area Protection
      HAPROT         : ICM_CFG_HAPROT_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Region Descriptor Area Protection
      DAPROT         : ICM_CFG_DAPROT_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_CFG_Register use record
      WBDIS          at 0 range 0 .. 0;
      EOMDIS         at 0 range 1 .. 1;
      SLBDIS         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      BBC            at 0 range 4 .. 7;
      ASCD           at 0 range 8 .. 8;
      DUALBUFF       at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      UIHASH         at 0 range 12 .. 12;
      UALGO          at 0 range 13 .. 15;
      HAPROT         at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DAPROT         at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ICM_CTRL_REHASH_Field is HAL.UInt4;
   subtype ICM_CTRL_RMDIS_Field is HAL.UInt4;
   subtype ICM_CTRL_RMEN_Field is HAL.UInt4;

   --  Control Register
   type ICM_CTRL_Register is record
      --  Write-only. ICM Enable
      ENABLE         : Boolean := False;
      --  Write-only. ICM Disable Register
      DISABLE        : Boolean := False;
      --  Write-only. Software Reset
      SWRST          : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Write-only. Recompute Internal Hash
      REHASH         : ICM_CTRL_REHASH_Field := 16#0#;
      --  Write-only. Region Monitoring Disable
      RMDIS          : ICM_CTRL_RMDIS_Field := 16#0#;
      --  Write-only. Region Monitoring Enable
      RMEN           : ICM_CTRL_RMEN_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_CTRL_Register use record
      ENABLE         at 0 range 0 .. 0;
      DISABLE        at 0 range 1 .. 1;
      SWRST          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      REHASH         at 0 range 4 .. 7;
      RMDIS          at 0 range 8 .. 11;
      RMEN           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ICM_SR_RAWRMDIS_Field is HAL.UInt4;
   subtype ICM_SR_RMDIS_Field is HAL.UInt4;

   --  Status Register
   type ICM_SR_Register is record
      --  Write-only. ICM Controller Enable Register
      ENABLE         : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Write-only. Region Monitoring Disabled Raw Status
      RAWRMDIS       : ICM_SR_RAWRMDIS_Field := 16#0#;
      --  Write-only. Region Monitoring Disabled Status
      RMDIS          : ICM_SR_RMDIS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_SR_Register use record
      ENABLE         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      RAWRMDIS       at 0 range 8 .. 11;
      RMDIS          at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ICM_IER_RHC_Field is HAL.UInt4;
   subtype ICM_IER_RDM_Field is HAL.UInt4;
   subtype ICM_IER_RBE_Field is HAL.UInt4;
   subtype ICM_IER_RWC_Field is HAL.UInt4;
   subtype ICM_IER_REC_Field is HAL.UInt4;
   subtype ICM_IER_RSU_Field is HAL.UInt4;

   --  Interrupt Enable Register
   type ICM_IER_Register is record
      --  Write-only. Region Hash Completed Interrupt Enable
      RHC            : ICM_IER_RHC_Field := 16#0#;
      --  Write-only. Region Digest Mismatch Interrupt Enable
      RDM            : ICM_IER_RDM_Field := 16#0#;
      --  Write-only. Region Bus Error Interrupt Enable
      RBE            : ICM_IER_RBE_Field := 16#0#;
      --  Write-only. Region Wrap Condition detected Interrupt Enable
      RWC            : ICM_IER_RWC_Field := 16#0#;
      --  Write-only. Region End bit Condition Detected Interrupt Enable
      REC            : ICM_IER_REC_Field := 16#0#;
      --  Write-only. Region Status Updated Interrupt Disable
      RSU            : ICM_IER_RSU_Field := 16#0#;
      --  Write-only. Undefined Register Access Detection Interrupt Enable
      URAD           : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_IER_Register use record
      RHC            at 0 range 0 .. 3;
      RDM            at 0 range 4 .. 7;
      RBE            at 0 range 8 .. 11;
      RWC            at 0 range 12 .. 15;
      REC            at 0 range 16 .. 19;
      RSU            at 0 range 20 .. 23;
      URAD           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ICM_IDR_RHC_Field is HAL.UInt4;
   subtype ICM_IDR_RDM_Field is HAL.UInt4;
   subtype ICM_IDR_RBE_Field is HAL.UInt4;
   subtype ICM_IDR_RWC_Field is HAL.UInt4;
   subtype ICM_IDR_REC_Field is HAL.UInt4;
   subtype ICM_IDR_RSU_Field is HAL.UInt4;

   --  Interrupt Disable Register
   type ICM_IDR_Register is record
      --  Write-only. Region Hash Completed Interrupt Disable
      RHC            : ICM_IDR_RHC_Field := 16#0#;
      --  Write-only. Region Digest Mismatch Interrupt Disable
      RDM            : ICM_IDR_RDM_Field := 16#0#;
      --  Write-only. Region Bus Error Interrupt Disable
      RBE            : ICM_IDR_RBE_Field := 16#0#;
      --  Write-only. Region Wrap Condition Detected Interrupt Disable
      RWC            : ICM_IDR_RWC_Field := 16#0#;
      --  Write-only. Region End bit Condition detected Interrupt Disable
      REC            : ICM_IDR_REC_Field := 16#0#;
      --  Write-only. Region Status Updated Interrupt Disable
      RSU            : ICM_IDR_RSU_Field := 16#0#;
      --  Write-only. Undefined Register Access Detection Interrupt Disable
      URAD           : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_IDR_Register use record
      RHC            at 0 range 0 .. 3;
      RDM            at 0 range 4 .. 7;
      RBE            at 0 range 8 .. 11;
      RWC            at 0 range 12 .. 15;
      REC            at 0 range 16 .. 19;
      RSU            at 0 range 20 .. 23;
      URAD           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ICM_IMR_RHC_Field is HAL.UInt4;
   subtype ICM_IMR_RDM_Field is HAL.UInt4;
   subtype ICM_IMR_RBE_Field is HAL.UInt4;
   subtype ICM_IMR_RWC_Field is HAL.UInt4;
   subtype ICM_IMR_REC_Field is HAL.UInt4;
   subtype ICM_IMR_RSU_Field is HAL.UInt4;

   --  Interrupt Mask Register
   type ICM_IMR_Register is record
      --  Read-only. Region Hash Completed Interrupt Mask
      RHC            : ICM_IMR_RHC_Field;
      --  Read-only. Region Digest Mismatch Interrupt Mask
      RDM            : ICM_IMR_RDM_Field;
      --  Read-only. Region Bus Error Interrupt Mask
      RBE            : ICM_IMR_RBE_Field;
      --  Read-only. Region Wrap Condition Detected Interrupt Mask
      RWC            : ICM_IMR_RWC_Field;
      --  Read-only. Region End bit Condition Detected Interrupt Mask
      REC            : ICM_IMR_REC_Field;
      --  Read-only. Region Status Updated Interrupt Mask
      RSU            : ICM_IMR_RSU_Field;
      --  Read-only. Undefined Register Access Detection Interrupt Mask
      URAD           : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_IMR_Register use record
      RHC            at 0 range 0 .. 3;
      RDM            at 0 range 4 .. 7;
      RBE            at 0 range 8 .. 11;
      RWC            at 0 range 12 .. 15;
      REC            at 0 range 16 .. 19;
      RSU            at 0 range 20 .. 23;
      URAD           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ICM_ISR_RHC_Field is HAL.UInt4;
   subtype ICM_ISR_RDM_Field is HAL.UInt4;
   subtype ICM_ISR_RBE_Field is HAL.UInt4;
   subtype ICM_ISR_RWC_Field is HAL.UInt4;
   subtype ICM_ISR_REC_Field is HAL.UInt4;
   subtype ICM_ISR_RSU_Field is HAL.UInt4;

   --  Interrupt Status Register
   type ICM_ISR_Register is record
      --  Read-only. Region Hash Completed
      RHC            : ICM_ISR_RHC_Field;
      --  Read-only. Region Digest Mismatch
      RDM            : ICM_ISR_RDM_Field;
      --  Read-only. Region Bus Error
      RBE            : ICM_ISR_RBE_Field;
      --  Read-only. Region Wrap Condition Detected
      RWC            : ICM_ISR_RWC_Field;
      --  Read-only. Region End bit Condition Detected
      REC            : ICM_ISR_REC_Field;
      --  Read-only. Region Status Updated Detected
      RSU            : ICM_ISR_RSU_Field;
      --  Read-only. Undefined Register Access Detection Status
      URAD           : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_ISR_Register use record
      RHC            at 0 range 0 .. 3;
      RDM            at 0 range 4 .. 7;
      RBE            at 0 range 8 .. 11;
      RWC            at 0 range 12 .. 15;
      REC            at 0 range 16 .. 19;
      RSU            at 0 range 20 .. 23;
      URAD           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Undefined Register Access Trace
   type UASR_URAT_Field is
     (
      --  Unspecified structure member set to one detected when the descriptor
      --  is loaded.
      Unspec_Struct_Member,
      --  ICM_CFG modified during active monitoring.
      Icm_Cfg_Modified,
      --  ICM_DSCR modified during active monitoring.
      Icm_Dscr_Modified,
      --  ICM_HASH modified during active monitoring
      Icm_Hash_Modified,
      --  Write-only register read access
      Read_Access)
     with Size => 3;
   for UASR_URAT_Field use
     (Unspec_Struct_Member => 0,
      Icm_Cfg_Modified => 1,
      Icm_Dscr_Modified => 2,
      Icm_Hash_Modified => 3,
      Read_Access => 4);

   --  Undefined Access Status Register
   type ICM_UASR_Register is record
      --  Read-only. Undefined Register Access Trace
      URAT          : UASR_URAT_Field;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_UASR_Register use record
      URAT          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype ICM_DSCR_DASA_Field is HAL.UInt26;

   --  Region Descriptor Area Start Address Register
   type ICM_DSCR_Register is record
      --  unspecified
      Reserved_0_5 : HAL.UInt6 := 16#0#;
      --  Descriptor Area Start Address
      DASA         : ICM_DSCR_DASA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_DSCR_Register use record
      Reserved_0_5 at 0 range 0 .. 5;
      DASA         at 0 range 6 .. 31;
   end record;

   subtype ICM_HASH_HASA_Field is HAL.UInt25;

   --  Region Hash Area Start Address Register
   type ICM_HASH_Register is record
      --  unspecified
      Reserved_0_6 : HAL.UInt7 := 16#0#;
      --  Hash Area Start Address
      HASA         : ICM_HASH_HASA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_HASH_Register use record
      Reserved_0_6 at 0 range 0 .. 6;
      HASA         at 0 range 7 .. 31;
   end record;

   --  User Initial Hash Value 0 Register

   --  User Initial Hash Value 0 Register
   type ICM_UIHVAL_Registers is array (0 .. 7) of HAL.UInt32
     with Volatile;

   subtype ICM_ADDRSIZE_ADDRSIZE_Field is HAL.UInt16;

   --  Address Size Register
   type ICM_ADDRSIZE_Register is record
      --  Read-only. Peripheral Bus Address Area Size
      ADDRSIZE       : ICM_ADDRSIZE_ADDRSIZE_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_ADDRSIZE_Register use record
      ADDRSIZE       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  IP Name 1 Register

   --  IP Name 1 Register
   type ICM_IPNAME_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  ICM_FEATURES_HSHA array
   type ICM_FEATURES_HSHA_Field_Array is array (1 .. 5) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for ICM_FEATURES_HSHA
   type ICM_FEATURES_HSHA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  HSHA as a value
            Val : HAL.UInt5;
         when True =>
            --  HSHA as an array
            Arr : ICM_FEATURES_HSHA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for ICM_FEATURES_HSHA_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  Feature Register
   type ICM_FEATURES_Register is record
      --  Read-only. Configurable Algorithms
      CFGALGO        : Boolean;
      --  Read-only. Reserved for Future Use
      RFU            : Boolean;
      --  Read-only. Configurable Processing Period
      CFGPP          : Boolean;
      --  Read-only. Hardcoded Processing Period
      HDPP           : Boolean;
      --  Read-only. Peripheral DMA Logic
      PDC            : Boolean;
      --  Read-only. No Access to Intermediate State
      NAIS           : Boolean;
      --  Read-only. Embedded LFSR
      EF             : Boolean;
      --  Read-only. Scan Intrusion
      SI             : Boolean;
      --  Read-only. Bridge Type
      BTYP           : Boolean;
      --  Read-only. PDC Offset is 0x0C
      PDCOFF0C       : Boolean;
      --  unspecified
      Reserved_10_15 : HAL.UInt6;
      --  Read-only. SHA1 Hardcoded Mode
      HSHA           : ICM_FEATURES_HSHA_Field;
      --  unspecified
      Reserved_21_31 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_FEATURES_Register use record
      CFGALGO        at 0 range 0 .. 0;
      RFU            at 0 range 1 .. 1;
      CFGPP          at 0 range 2 .. 2;
      HDPP           at 0 range 3 .. 3;
      PDC            at 0 range 4 .. 4;
      NAIS           at 0 range 5 .. 5;
      EF             at 0 range 6 .. 6;
      SI             at 0 range 7 .. 7;
      BTYP           at 0 range 8 .. 8;
      PDCOFF0C       at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      HSHA           at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype ICM_VERSION_VERSION_Field is HAL.UInt12;
   subtype ICM_VERSION_MFN_Field is HAL.UInt3;

   --  Version Register
   type ICM_VERSION_Register is record
      --  Read-only. Version of the Hardware Module
      VERSION        : ICM_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Metal Fix Number
      MFN            : ICM_VERSION_MFN_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MFN            at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Integrity Check Monitor
   type ICM_Peripheral is record
      --  Configuration Register
      CFG      : aliased ICM_CFG_Register;
      --  Control Register
      CTRL     : aliased ICM_CTRL_Register;
      --  Status Register
      SR       : aliased ICM_SR_Register;
      --  Interrupt Enable Register
      IER      : aliased ICM_IER_Register;
      --  Interrupt Disable Register
      IDR      : aliased ICM_IDR_Register;
      --  Interrupt Mask Register
      IMR      : aliased ICM_IMR_Register;
      --  Interrupt Status Register
      ISR      : aliased ICM_ISR_Register;
      --  Undefined Access Status Register
      UASR     : aliased ICM_UASR_Register;
      --  Region Descriptor Area Start Address Register
      DSCR     : aliased ICM_DSCR_Register;
      --  Region Hash Area Start Address Register
      HASH     : aliased ICM_HASH_Register;
      --  User Initial Hash Value 0 Register
      UIHVAL   : aliased ICM_UIHVAL_Registers;
      --  Address Size Register
      ADDRSIZE : aliased ICM_ADDRSIZE_Register;
      --  IP Name 1 Register
      IPNAME   : aliased ICM_IPNAME_Registers;
      --  Feature Register
      FEATURES : aliased ICM_FEATURES_Register;
      --  Version Register
      VERSION  : aliased ICM_VERSION_Register;
   end record
     with Volatile;

   for ICM_Peripheral use record
      CFG      at 16#0# range 0 .. 31;
      CTRL     at 16#4# range 0 .. 31;
      SR       at 16#8# range 0 .. 31;
      IER      at 16#10# range 0 .. 31;
      IDR      at 16#14# range 0 .. 31;
      IMR      at 16#18# range 0 .. 31;
      ISR      at 16#1C# range 0 .. 31;
      UASR     at 16#20# range 0 .. 31;
      DSCR     at 16#30# range 0 .. 31;
      HASH     at 16#34# range 0 .. 31;
      UIHVAL   at 16#38# range 0 .. 255;
      ADDRSIZE at 16#EC# range 0 .. 31;
      IPNAME   at 16#F0# range 0 .. 63;
      FEATURES at 16#F8# range 0 .. 31;
      VERSION  at 16#FC# range 0 .. 31;
   end record;

   --  Integrity Check Monitor
   ICM_Periph : aliased ICM_Peripheral
     with Import, Address => ICM_Base;

end SAM_SVD.ICM;

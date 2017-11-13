--  This spec has been automatically generated from STM32F302.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.USB_FS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype USB_EP0R_EA_Field is HAL.UInt4;
   subtype USB_EP0R_STAT_TX_Field is HAL.UInt2;
   subtype USB_EP0R_EP_TYPE_Field is HAL.UInt2;
   subtype USB_EP0R_STAT_RX_Field is HAL.UInt2;

   --  endpoint 0 register
   type USB_EP0R_Register is record
      --  Endpoint address
      EA             : USB_EP0R_EA_Field := 16#0#;
      --  Status bits, for transmission transfers
      STAT_TX        : USB_EP0R_STAT_TX_Field := 16#0#;
      --  Data Toggle, for transmission transfers
      DTOG_TX        : Boolean := False;
      --  Correct Transfer for transmission
      CTR_TX         : Boolean := False;
      --  Endpoint kind
      EP_KIND        : Boolean := False;
      --  Endpoint type
      EP_TYPE        : USB_EP0R_EP_TYPE_Field := 16#0#;
      --  Read-only. Setup transaction completed
      SETUP          : Boolean := False;
      --  Status bits, for reception transfers
      STAT_RX        : USB_EP0R_STAT_RX_Field := 16#0#;
      --  Data Toggle, for reception transfers
      DTOG_RX        : Boolean := False;
      --  Correct transfer for reception
      CTR_RX         : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_EP0R_Register use record
      EA             at 0 range 0 .. 3;
      STAT_TX        at 0 range 4 .. 5;
      DTOG_TX        at 0 range 6 .. 6;
      CTR_TX         at 0 range 7 .. 7;
      EP_KIND        at 0 range 8 .. 8;
      EP_TYPE        at 0 range 9 .. 10;
      SETUP          at 0 range 11 .. 11;
      STAT_RX        at 0 range 12 .. 13;
      DTOG_RX        at 0 range 14 .. 14;
      CTR_RX         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USB_EP1R_EA_Field is HAL.UInt4;
   subtype USB_EP1R_STAT_TX_Field is HAL.UInt2;
   subtype USB_EP1R_EP_TYPE_Field is HAL.UInt2;
   subtype USB_EP1R_STAT_RX_Field is HAL.UInt2;

   --  endpoint 1 register
   type USB_EP1R_Register is record
      --  Endpoint address
      EA             : USB_EP1R_EA_Field := 16#0#;
      --  Status bits, for transmission transfers
      STAT_TX        : USB_EP1R_STAT_TX_Field := 16#0#;
      --  Data Toggle, for transmission transfers
      DTOG_TX        : Boolean := False;
      --  Correct Transfer for transmission
      CTR_TX         : Boolean := False;
      --  Endpoint kind
      EP_KIND        : Boolean := False;
      --  Endpoint type
      EP_TYPE        : USB_EP1R_EP_TYPE_Field := 16#0#;
      --  Read-only. Setup transaction completed
      SETUP          : Boolean := False;
      --  Status bits, for reception transfers
      STAT_RX        : USB_EP1R_STAT_RX_Field := 16#0#;
      --  Data Toggle, for reception transfers
      DTOG_RX        : Boolean := False;
      --  Correct transfer for reception
      CTR_RX         : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_EP1R_Register use record
      EA             at 0 range 0 .. 3;
      STAT_TX        at 0 range 4 .. 5;
      DTOG_TX        at 0 range 6 .. 6;
      CTR_TX         at 0 range 7 .. 7;
      EP_KIND        at 0 range 8 .. 8;
      EP_TYPE        at 0 range 9 .. 10;
      SETUP          at 0 range 11 .. 11;
      STAT_RX        at 0 range 12 .. 13;
      DTOG_RX        at 0 range 14 .. 14;
      CTR_RX         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USB_EP2R_EA_Field is HAL.UInt4;
   subtype USB_EP2R_STAT_TX_Field is HAL.UInt2;
   subtype USB_EP2R_EP_TYPE_Field is HAL.UInt2;
   subtype USB_EP2R_STAT_RX_Field is HAL.UInt2;

   --  endpoint 2 register
   type USB_EP2R_Register is record
      --  Endpoint address
      EA             : USB_EP2R_EA_Field := 16#0#;
      --  Status bits, for transmission transfers
      STAT_TX        : USB_EP2R_STAT_TX_Field := 16#0#;
      --  Data Toggle, for transmission transfers
      DTOG_TX        : Boolean := False;
      --  Correct Transfer for transmission
      CTR_TX         : Boolean := False;
      --  Endpoint kind
      EP_KIND        : Boolean := False;
      --  Endpoint type
      EP_TYPE        : USB_EP2R_EP_TYPE_Field := 16#0#;
      --  Read-only. Setup transaction completed
      SETUP          : Boolean := False;
      --  Status bits, for reception transfers
      STAT_RX        : USB_EP2R_STAT_RX_Field := 16#0#;
      --  Data Toggle, for reception transfers
      DTOG_RX        : Boolean := False;
      --  Correct transfer for reception
      CTR_RX         : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_EP2R_Register use record
      EA             at 0 range 0 .. 3;
      STAT_TX        at 0 range 4 .. 5;
      DTOG_TX        at 0 range 6 .. 6;
      CTR_TX         at 0 range 7 .. 7;
      EP_KIND        at 0 range 8 .. 8;
      EP_TYPE        at 0 range 9 .. 10;
      SETUP          at 0 range 11 .. 11;
      STAT_RX        at 0 range 12 .. 13;
      DTOG_RX        at 0 range 14 .. 14;
      CTR_RX         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USB_EP3R_EA_Field is HAL.UInt4;
   subtype USB_EP3R_STAT_TX_Field is HAL.UInt2;
   subtype USB_EP3R_EP_TYPE_Field is HAL.UInt2;
   subtype USB_EP3R_STAT_RX_Field is HAL.UInt2;

   --  endpoint 3 register
   type USB_EP3R_Register is record
      --  Endpoint address
      EA             : USB_EP3R_EA_Field := 16#0#;
      --  Status bits, for transmission transfers
      STAT_TX        : USB_EP3R_STAT_TX_Field := 16#0#;
      --  Data Toggle, for transmission transfers
      DTOG_TX        : Boolean := False;
      --  Correct Transfer for transmission
      CTR_TX         : Boolean := False;
      --  Endpoint kind
      EP_KIND        : Boolean := False;
      --  Endpoint type
      EP_TYPE        : USB_EP3R_EP_TYPE_Field := 16#0#;
      --  Read-only. Setup transaction completed
      SETUP          : Boolean := False;
      --  Status bits, for reception transfers
      STAT_RX        : USB_EP3R_STAT_RX_Field := 16#0#;
      --  Data Toggle, for reception transfers
      DTOG_RX        : Boolean := False;
      --  Correct transfer for reception
      CTR_RX         : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_EP3R_Register use record
      EA             at 0 range 0 .. 3;
      STAT_TX        at 0 range 4 .. 5;
      DTOG_TX        at 0 range 6 .. 6;
      CTR_TX         at 0 range 7 .. 7;
      EP_KIND        at 0 range 8 .. 8;
      EP_TYPE        at 0 range 9 .. 10;
      SETUP          at 0 range 11 .. 11;
      STAT_RX        at 0 range 12 .. 13;
      DTOG_RX        at 0 range 14 .. 14;
      CTR_RX         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USB_EP4R_EA_Field is HAL.UInt4;
   subtype USB_EP4R_STAT_TX_Field is HAL.UInt2;
   subtype USB_EP4R_EP_TYPE_Field is HAL.UInt2;
   subtype USB_EP4R_STAT_RX_Field is HAL.UInt2;

   --  endpoint 4 register
   type USB_EP4R_Register is record
      --  Endpoint address
      EA             : USB_EP4R_EA_Field := 16#0#;
      --  Status bits, for transmission transfers
      STAT_TX        : USB_EP4R_STAT_TX_Field := 16#0#;
      --  Data Toggle, for transmission transfers
      DTOG_TX        : Boolean := False;
      --  Correct Transfer for transmission
      CTR_TX         : Boolean := False;
      --  Endpoint kind
      EP_KIND        : Boolean := False;
      --  Endpoint type
      EP_TYPE        : USB_EP4R_EP_TYPE_Field := 16#0#;
      --  Read-only. Setup transaction completed
      SETUP          : Boolean := False;
      --  Status bits, for reception transfers
      STAT_RX        : USB_EP4R_STAT_RX_Field := 16#0#;
      --  Data Toggle, for reception transfers
      DTOG_RX        : Boolean := False;
      --  Correct transfer for reception
      CTR_RX         : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_EP4R_Register use record
      EA             at 0 range 0 .. 3;
      STAT_TX        at 0 range 4 .. 5;
      DTOG_TX        at 0 range 6 .. 6;
      CTR_TX         at 0 range 7 .. 7;
      EP_KIND        at 0 range 8 .. 8;
      EP_TYPE        at 0 range 9 .. 10;
      SETUP          at 0 range 11 .. 11;
      STAT_RX        at 0 range 12 .. 13;
      DTOG_RX        at 0 range 14 .. 14;
      CTR_RX         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USB_EP5R_EA_Field is HAL.UInt4;
   subtype USB_EP5R_STAT_TX_Field is HAL.UInt2;
   subtype USB_EP5R_EP_TYPE_Field is HAL.UInt2;
   subtype USB_EP5R_STAT_RX_Field is HAL.UInt2;

   --  endpoint 5 register
   type USB_EP5R_Register is record
      --  Endpoint address
      EA             : USB_EP5R_EA_Field := 16#0#;
      --  Status bits, for transmission transfers
      STAT_TX        : USB_EP5R_STAT_TX_Field := 16#0#;
      --  Data Toggle, for transmission transfers
      DTOG_TX        : Boolean := False;
      --  Correct Transfer for transmission
      CTR_TX         : Boolean := False;
      --  Endpoint kind
      EP_KIND        : Boolean := False;
      --  Endpoint type
      EP_TYPE        : USB_EP5R_EP_TYPE_Field := 16#0#;
      --  Read-only. Setup transaction completed
      SETUP          : Boolean := False;
      --  Status bits, for reception transfers
      STAT_RX        : USB_EP5R_STAT_RX_Field := 16#0#;
      --  Data Toggle, for reception transfers
      DTOG_RX        : Boolean := False;
      --  Correct transfer for reception
      CTR_RX         : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_EP5R_Register use record
      EA             at 0 range 0 .. 3;
      STAT_TX        at 0 range 4 .. 5;
      DTOG_TX        at 0 range 6 .. 6;
      CTR_TX         at 0 range 7 .. 7;
      EP_KIND        at 0 range 8 .. 8;
      EP_TYPE        at 0 range 9 .. 10;
      SETUP          at 0 range 11 .. 11;
      STAT_RX        at 0 range 12 .. 13;
      DTOG_RX        at 0 range 14 .. 14;
      CTR_RX         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USB_EP6R_EA_Field is HAL.UInt4;
   subtype USB_EP6R_STAT_TX_Field is HAL.UInt2;
   subtype USB_EP6R_EP_TYPE_Field is HAL.UInt2;
   subtype USB_EP6R_STAT_RX_Field is HAL.UInt2;

   --  endpoint 6 register
   type USB_EP6R_Register is record
      --  Endpoint address
      EA             : USB_EP6R_EA_Field := 16#0#;
      --  Status bits, for transmission transfers
      STAT_TX        : USB_EP6R_STAT_TX_Field := 16#0#;
      --  Data Toggle, for transmission transfers
      DTOG_TX        : Boolean := False;
      --  Correct Transfer for transmission
      CTR_TX         : Boolean := False;
      --  Endpoint kind
      EP_KIND        : Boolean := False;
      --  Endpoint type
      EP_TYPE        : USB_EP6R_EP_TYPE_Field := 16#0#;
      --  Read-only. Setup transaction completed
      SETUP          : Boolean := False;
      --  Status bits, for reception transfers
      STAT_RX        : USB_EP6R_STAT_RX_Field := 16#0#;
      --  Data Toggle, for reception transfers
      DTOG_RX        : Boolean := False;
      --  Correct transfer for reception
      CTR_RX         : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_EP6R_Register use record
      EA             at 0 range 0 .. 3;
      STAT_TX        at 0 range 4 .. 5;
      DTOG_TX        at 0 range 6 .. 6;
      CTR_TX         at 0 range 7 .. 7;
      EP_KIND        at 0 range 8 .. 8;
      EP_TYPE        at 0 range 9 .. 10;
      SETUP          at 0 range 11 .. 11;
      STAT_RX        at 0 range 12 .. 13;
      DTOG_RX        at 0 range 14 .. 14;
      CTR_RX         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USB_EP7R_EA_Field is HAL.UInt4;
   subtype USB_EP7R_STAT_TX_Field is HAL.UInt2;
   subtype USB_EP7R_EP_TYPE_Field is HAL.UInt2;
   subtype USB_EP7R_STAT_RX_Field is HAL.UInt2;

   --  endpoint 7 register
   type USB_EP7R_Register is record
      --  Endpoint address
      EA             : USB_EP7R_EA_Field := 16#0#;
      --  Status bits, for transmission transfers
      STAT_TX        : USB_EP7R_STAT_TX_Field := 16#0#;
      --  Data Toggle, for transmission transfers
      DTOG_TX        : Boolean := False;
      --  Correct Transfer for transmission
      CTR_TX         : Boolean := False;
      --  Endpoint kind
      EP_KIND        : Boolean := False;
      --  Endpoint type
      EP_TYPE        : USB_EP7R_EP_TYPE_Field := 16#0#;
      --  Read-only. Setup transaction completed
      SETUP          : Boolean := False;
      --  Status bits, for reception transfers
      STAT_RX        : USB_EP7R_STAT_RX_Field := 16#0#;
      --  Data Toggle, for reception transfers
      DTOG_RX        : Boolean := False;
      --  Correct transfer for reception
      CTR_RX         : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_EP7R_Register use record
      EA             at 0 range 0 .. 3;
      STAT_TX        at 0 range 4 .. 5;
      DTOG_TX        at 0 range 6 .. 6;
      CTR_TX         at 0 range 7 .. 7;
      EP_KIND        at 0 range 8 .. 8;
      EP_TYPE        at 0 range 9 .. 10;
      SETUP          at 0 range 11 .. 11;
      STAT_RX        at 0 range 12 .. 13;
      DTOG_RX        at 0 range 14 .. 14;
      CTR_RX         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  control register
   type USB_CNTR_Register is record
      --  Force USB Reset
      FRES           : Boolean := True;
      --  Power down
      PDWN           : Boolean := True;
      --  Low-power mode
      LPMODE         : Boolean := False;
      --  Force suspend
      FSUSP          : Boolean := False;
      --  Resume request
      RESUME         : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Expected start of frame interrupt mask
      ESOFM          : Boolean := False;
      --  Start of frame interrupt mask
      SOFM           : Boolean := False;
      --  USB reset interrupt mask
      RESETM         : Boolean := False;
      --  Suspend mode interrupt mask
      SUSPM          : Boolean := False;
      --  Wakeup interrupt mask
      WKUPM          : Boolean := False;
      --  Error interrupt mask
      ERRM           : Boolean := False;
      --  Packet memory area over / underrun interrupt mask
      PMAOVRM        : Boolean := False;
      --  Correct transfer interrupt mask
      CTRM           : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_CNTR_Register use record
      FRES           at 0 range 0 .. 0;
      PDWN           at 0 range 1 .. 1;
      LPMODE         at 0 range 2 .. 2;
      FSUSP          at 0 range 3 .. 3;
      RESUME         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      ESOFM          at 0 range 8 .. 8;
      SOFM           at 0 range 9 .. 9;
      RESETM         at 0 range 10 .. 10;
      SUSPM          at 0 range 11 .. 11;
      WKUPM          at 0 range 12 .. 12;
      ERRM           at 0 range 13 .. 13;
      PMAOVRM        at 0 range 14 .. 14;
      CTRM           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ISTR_EP_ID_Field is HAL.UInt4;

   --  interrupt status register
   type ISTR_Register is record
      --  Read-only. Endpoint Identifier
      EP_ID          : ISTR_EP_ID_Field := 16#0#;
      --  Read-only. Direction of transaction
      DIR            : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Expected start frame
      ESOF           : Boolean := False;
      --  start of frame
      SOF            : Boolean := False;
      --  reset request
      RESET          : Boolean := False;
      --  Suspend mode request
      SUSP           : Boolean := False;
      --  Wakeup
      WKUP           : Boolean := False;
      --  Error
      ERR            : Boolean := False;
      --  Packet memory area over / underrun
      PMAOVR         : Boolean := False;
      --  Read-only. Correct transfer
      CTR            : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISTR_Register use record
      EP_ID          at 0 range 0 .. 3;
      DIR            at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      ESOF           at 0 range 8 .. 8;
      SOF            at 0 range 9 .. 9;
      RESET          at 0 range 10 .. 10;
      SUSP           at 0 range 11 .. 11;
      WKUP           at 0 range 12 .. 12;
      ERR            at 0 range 13 .. 13;
      PMAOVR         at 0 range 14 .. 14;
      CTR            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FNR_FN_Field is HAL.UInt11;
   subtype FNR_LSOF_Field is HAL.UInt2;

   --  frame number register
   type FNR_Register is record
      --  Read-only. Frame number
      FN             : FNR_FN_Field;
      --  Read-only. Lost SOF
      LSOF           : FNR_LSOF_Field;
      --  Read-only. Locked
      LCK            : Boolean;
      --  Read-only. Receive data - line status
      RXDM           : Boolean;
      --  Read-only. Receive data + line status
      RXDP           : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FNR_Register use record
      FN             at 0 range 0 .. 10;
      LSOF           at 0 range 11 .. 12;
      LCK            at 0 range 13 .. 13;
      RXDM           at 0 range 14 .. 14;
      RXDP           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DADDR_ADD array
   type DADDR_ADD_Field_Array is array (1 .. 7) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for DADDR_ADD
   type DADDR_ADD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ADD as a value
            Val : HAL.UInt7;
         when True =>
            --  ADD as an array
            Arr : DADDR_ADD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for DADDR_ADD_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  device address
   type DADDR_Register is record
      --  Device address
      ADD           : DADDR_ADD_Field := (As_Array => False, Val => 16#0#);
      --  Enable function
      EF            : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DADDR_Register use record
      ADD           at 0 range 0 .. 6;
      EF            at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype BTABLE_BTABLE_Field is HAL.UInt13;

   --  Buffer table address
   type BTABLE_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Buffer table
      BTABLE         : BTABLE_BTABLE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BTABLE_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      BTABLE         at 0 range 3 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Universal serial bus full-speed device interface
   type USB_FS_Peripheral is record
      --  endpoint 0 register
      USB_EP0R : aliased USB_EP0R_Register;
      --  endpoint 1 register
      USB_EP1R : aliased USB_EP1R_Register;
      --  endpoint 2 register
      USB_EP2R : aliased USB_EP2R_Register;
      --  endpoint 3 register
      USB_EP3R : aliased USB_EP3R_Register;
      --  endpoint 4 register
      USB_EP4R : aliased USB_EP4R_Register;
      --  endpoint 5 register
      USB_EP5R : aliased USB_EP5R_Register;
      --  endpoint 6 register
      USB_EP6R : aliased USB_EP6R_Register;
      --  endpoint 7 register
      USB_EP7R : aliased USB_EP7R_Register;
      --  control register
      USB_CNTR : aliased USB_CNTR_Register;
      --  interrupt status register
      ISTR     : aliased ISTR_Register;
      --  frame number register
      FNR      : aliased FNR_Register;
      --  device address
      DADDR    : aliased DADDR_Register;
      --  Buffer table address
      BTABLE   : aliased BTABLE_Register;
   end record
     with Volatile;

   for USB_FS_Peripheral use record
      USB_EP0R at 16#0# range 0 .. 31;
      USB_EP1R at 16#4# range 0 .. 31;
      USB_EP2R at 16#8# range 0 .. 31;
      USB_EP3R at 16#C# range 0 .. 31;
      USB_EP4R at 16#10# range 0 .. 31;
      USB_EP5R at 16#14# range 0 .. 31;
      USB_EP6R at 16#18# range 0 .. 31;
      USB_EP7R at 16#1C# range 0 .. 31;
      USB_CNTR at 16#40# range 0 .. 31;
      ISTR     at 16#44# range 0 .. 31;
      FNR      at 16#48# range 0 .. 31;
      DADDR    at 16#4C# range 0 .. 31;
      BTABLE   at 16#50# range 0 .. 31;
   end record;

   --  Universal serial bus full-speed device interface
   USB_FS_Periph : aliased USB_FS_Peripheral
     with Import, Address => System'To_Address (16#40005C00#);

end STM32_SVD.USB_FS;

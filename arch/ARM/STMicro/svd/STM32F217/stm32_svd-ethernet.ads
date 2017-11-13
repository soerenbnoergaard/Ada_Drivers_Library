--  This spec has been automatically generated from STM32F217.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.Ethernet is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DMABMR_DSL_Field is HAL.UInt5;
   subtype DMABMR_PBL_Field is HAL.UInt6;
   subtype DMABMR_RTPR_Field is HAL.UInt2;
   subtype DMABMR_RDP_Field is HAL.UInt6;

   --  Ethernet DMA bus mode register
   type DMABMR_Register is record
      --  Software reset
      SR             : Boolean := True;
      --  DMA Arbitration
      DA             : Boolean := False;
      --  Descriptor skip length
      DSL            : DMABMR_DSL_Field := 16#0#;
      --  Enhanced descriptor format enable
      EDFE           : Boolean := False;
      --  Programmable burst length
      PBL            : DMABMR_PBL_Field := 16#1#;
      --  Rx Tx priority ratio
      RTPR           : DMABMR_RTPR_Field := 16#0#;
      --  Fixed burst
      FB             : Boolean := False;
      --  Rx DMA PBL
      RDP            : DMABMR_RDP_Field := 16#1#;
      --  Use separate PBL
      USP            : Boolean := False;
      --  4xPBL mode
      FPM            : Boolean := False;
      --  Address-aligned beats
      AAB            : Boolean := False;
      --  Mixed burst
      MB             : Boolean := False;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMABMR_Register use record
      SR             at 0 range 0 .. 0;
      DA             at 0 range 1 .. 1;
      DSL            at 0 range 2 .. 6;
      EDFE           at 0 range 7 .. 7;
      PBL            at 0 range 8 .. 13;
      RTPR           at 0 range 14 .. 15;
      FB             at 0 range 16 .. 16;
      RDP            at 0 range 17 .. 22;
      USP            at 0 range 23 .. 23;
      FPM            at 0 range 24 .. 24;
      AAB            at 0 range 25 .. 25;
      MB             at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DMASR_RPS_Field is HAL.UInt3;
   subtype DMASR_TPS_Field is HAL.UInt3;
   subtype DMASR_EBS_Field is HAL.UInt3;

   --  Ethernet DMA status register
   type DMASR_Register is record
      --  Transmit status
      TS             : Boolean := False;
      --  Transmit process stopped status
      TPSS           : Boolean := False;
      --  Transmit buffer unavailable status
      TBUS           : Boolean := False;
      --  Transmit jabber timeout status
      TJTS           : Boolean := False;
      --  Receive overflow status
      ROS            : Boolean := False;
      --  Transmit underflow status
      TUS            : Boolean := False;
      --  Receive status
      RS             : Boolean := False;
      --  Receive buffer unavailable status
      RBUS           : Boolean := False;
      --  Receive process stopped status
      RPSS           : Boolean := False;
      --  Receive watchdog timeout status
      PWTS           : Boolean := False;
      --  Early transmit status
      ETS            : Boolean := False;
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  Fatal bus error status
      FBES           : Boolean := False;
      --  Early receive status
      ERS            : Boolean := False;
      --  Abnormal interrupt summary
      AIS            : Boolean := False;
      --  Normal interrupt summary
      NIS            : Boolean := False;
      --  Read-only. Receive process state
      RPS            : DMASR_RPS_Field := 16#0#;
      --  Read-only. Transmit process state
      TPS            : DMASR_TPS_Field := 16#0#;
      --  Read-only. Error bits status
      EBS            : DMASR_EBS_Field := 16#0#;
      --  unspecified
      Reserved_26_26 : HAL.Bit := 16#0#;
      --  Read-only. MMC status
      MMCS           : Boolean := False;
      --  Read-only. PMT status
      PMTS           : Boolean := False;
      --  Read-only. Time stamp trigger status
      TSTS           : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMASR_Register use record
      TS             at 0 range 0 .. 0;
      TPSS           at 0 range 1 .. 1;
      TBUS           at 0 range 2 .. 2;
      TJTS           at 0 range 3 .. 3;
      ROS            at 0 range 4 .. 4;
      TUS            at 0 range 5 .. 5;
      RS             at 0 range 6 .. 6;
      RBUS           at 0 range 7 .. 7;
      RPSS           at 0 range 8 .. 8;
      PWTS           at 0 range 9 .. 9;
      ETS            at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      FBES           at 0 range 13 .. 13;
      ERS            at 0 range 14 .. 14;
      AIS            at 0 range 15 .. 15;
      NIS            at 0 range 16 .. 16;
      RPS            at 0 range 17 .. 19;
      TPS            at 0 range 20 .. 22;
      EBS            at 0 range 23 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      MMCS           at 0 range 27 .. 27;
      PMTS           at 0 range 28 .. 28;
      TSTS           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DMAOMR_RTC_Field is HAL.UInt2;
   subtype DMAOMR_TTC_Field is HAL.UInt3;

   --  Ethernet DMA operation mode register
   type DMAOMR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  SR
      SR             : Boolean := False;
      --  OSF
      OSF            : Boolean := False;
      --  RTC
      RTC            : DMAOMR_RTC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  FUGF
      FUGF           : Boolean := False;
      --  FEF
      FEF            : Boolean := False;
      --  unspecified
      Reserved_8_12  : HAL.UInt5 := 16#0#;
      --  ST
      ST             : Boolean := False;
      --  TTC
      TTC            : DMAOMR_TTC_Field := 16#0#;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  FTF
      FTF            : Boolean := False;
      --  TSF
      TSF            : Boolean := False;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  DFRF
      DFRF           : Boolean := False;
      --  RSF
      RSF            : Boolean := False;
      --  DTCEFD
      DTCEFD         : Boolean := False;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAOMR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      SR             at 0 range 1 .. 1;
      OSF            at 0 range 2 .. 2;
      RTC            at 0 range 3 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      FUGF           at 0 range 6 .. 6;
      FEF            at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      ST             at 0 range 13 .. 13;
      TTC            at 0 range 14 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      FTF            at 0 range 20 .. 20;
      TSF            at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DFRF           at 0 range 24 .. 24;
      RSF            at 0 range 25 .. 25;
      DTCEFD         at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Ethernet DMA interrupt enable register
   type DMAIER_Register is record
      --  Transmit interrupt enable
      TIE            : Boolean := False;
      --  Transmit process stopped interrupt enable
      TPSIE          : Boolean := False;
      --  Transmit buffer unavailable interrupt enable
      TBUIE          : Boolean := False;
      --  Transmit jabber timeout interrupt enable
      TJTIE          : Boolean := False;
      --  Overflow interrupt enable
      ROIE           : Boolean := False;
      --  Underflow interrupt enable
      TUIE           : Boolean := False;
      --  Receive interrupt enable
      RIE            : Boolean := False;
      --  Receive buffer unavailable interrupt enable
      RBUIE          : Boolean := False;
      --  Receive process stopped interrupt enable
      RPSIE          : Boolean := False;
      --  receive watchdog timeout interrupt enable
      RWTIE          : Boolean := False;
      --  Early transmit interrupt enable
      ETIE           : Boolean := False;
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  Fatal bus error interrupt enable
      FBEIE          : Boolean := False;
      --  Early receive interrupt enable
      ERIE           : Boolean := False;
      --  Abnormal interrupt summary enable
      AISE           : Boolean := False;
      --  Normal interrupt summary enable
      NISE           : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAIER_Register use record
      TIE            at 0 range 0 .. 0;
      TPSIE          at 0 range 1 .. 1;
      TBUIE          at 0 range 2 .. 2;
      TJTIE          at 0 range 3 .. 3;
      ROIE           at 0 range 4 .. 4;
      TUIE           at 0 range 5 .. 5;
      RIE            at 0 range 6 .. 6;
      RBUIE          at 0 range 7 .. 7;
      RPSIE          at 0 range 8 .. 8;
      RWTIE          at 0 range 9 .. 9;
      ETIE           at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      FBEIE          at 0 range 13 .. 13;
      ERIE           at 0 range 14 .. 14;
      AISE           at 0 range 15 .. 15;
      NISE           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype DMAMFBOCR_MFC_Field is HAL.UInt16;
   subtype DMAMFBOCR_MFA_Field is HAL.UInt11;

   --  Ethernet DMA missed frame and buffer overflow counter register
   type DMAMFBOCR_Register is record
      --  Missed frames by the controller
      MFC            : DMAMFBOCR_MFC_Field := 16#0#;
      --  Overflow bit for missed frame counter
      OMFC           : Boolean := False;
      --  Missed frames by the application
      MFA            : DMAMFBOCR_MFA_Field := 16#0#;
      --  Overflow bit for FIFO overflow counter
      OFOC           : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMFBOCR_Register use record
      MFC            at 0 range 0 .. 15;
      OMFC           at 0 range 16 .. 16;
      MFA            at 0 range 17 .. 27;
      OFOC           at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMARSWTR_RSWTC_Field is HAL.UInt8;

   --  Ethernet DMA receive status watchdog timer register
   type DMARSWTR_Register is record
      --  Receive status watchdog timer count
      RSWTC         : DMARSWTR_RSWTC_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMARSWTR_Register use record
      RSWTC         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype MACCR_BL_Field is HAL.UInt2;
   subtype MACCR_IFG_Field is HAL.UInt3;

   --  Ethernet MAC configuration register
   type MACCR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  RE
      RE             : Boolean := False;
      --  TE
      TE             : Boolean := False;
      --  DC
      DC             : Boolean := False;
      --  BL
      BL             : MACCR_BL_Field := 16#0#;
      --  APCS
      APCS           : Boolean := False;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  RD
      RD             : Boolean := False;
      --  IPCO
      IPCO           : Boolean := False;
      --  DM
      DM             : Boolean := False;
      --  LM
      LM             : Boolean := False;
      --  ROD
      ROD            : Boolean := False;
      --  FES
      FES            : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#1#;
      --  CSD
      CSD            : Boolean := False;
      --  IFG
      IFG            : MACCR_IFG_Field := 16#0#;
      --  unspecified
      Reserved_20_21 : HAL.UInt2 := 16#0#;
      --  JD
      JD             : Boolean := False;
      --  WD
      WD             : Boolean := False;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  CSTF
      CSTF           : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACCR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RE             at 0 range 2 .. 2;
      TE             at 0 range 3 .. 3;
      DC             at 0 range 4 .. 4;
      BL             at 0 range 5 .. 6;
      APCS           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      RD             at 0 range 9 .. 9;
      IPCO           at 0 range 10 .. 10;
      DM             at 0 range 11 .. 11;
      LM             at 0 range 12 .. 12;
      ROD            at 0 range 13 .. 13;
      FES            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSD            at 0 range 16 .. 16;
      IFG            at 0 range 17 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      JD             at 0 range 22 .. 22;
      WD             at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      CSTF           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Ethernet MAC frame filter register
   type MACFFR_Register is record
      --  Promiscuous mode
      PM             : Boolean := False;
      --  Hash unicast
      HU             : Boolean := False;
      --  Hash multicast
      HM             : Boolean := False;
      --  Destination address inverse filtering
      DAIF           : Boolean := False;
      --  Pass all multicast
      PAM            : Boolean := False;
      --  Broadcast frames disable
      BFD            : Boolean := False;
      --  Pass control frames
      PCF            : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Source address inverse filtering
      SAIF           : Boolean := False;
      --  Source address filter
      SAF            : Boolean := False;
      --  Hash or perfect filter
      HPF            : Boolean := False;
      --  unspecified
      Reserved_11_30 : HAL.UInt20 := 16#0#;
      --  Receive all
      RA             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACFFR_Register use record
      PM             at 0 range 0 .. 0;
      HU             at 0 range 1 .. 1;
      HM             at 0 range 2 .. 2;
      DAIF           at 0 range 3 .. 3;
      PAM            at 0 range 4 .. 4;
      BFD            at 0 range 5 .. 5;
      PCF            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SAIF           at 0 range 8 .. 8;
      SAF            at 0 range 9 .. 9;
      HPF            at 0 range 10 .. 10;
      Reserved_11_30 at 0 range 11 .. 30;
      RA             at 0 range 31 .. 31;
   end record;

   subtype MACMIIAR_CR_Field is HAL.UInt3;
   subtype MACMIIAR_MR_Field is HAL.UInt5;
   subtype MACMIIAR_PA_Field is HAL.UInt5;

   --  Ethernet MAC MII address register
   type MACMIIAR_Register is record
      --  MII busy
      MB             : Boolean := False;
      --  MII write
      MW             : Boolean := False;
      --  Clock range
      CR             : MACMIIAR_CR_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  MII register
      MR             : MACMIIAR_MR_Field := 16#0#;
      --  PHY address
      PA             : MACMIIAR_PA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACMIIAR_Register use record
      MB             at 0 range 0 .. 0;
      MW             at 0 range 1 .. 1;
      CR             at 0 range 2 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      MR             at 0 range 6 .. 10;
      PA             at 0 range 11 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MACMIIDR_MD_Field is HAL.UInt16;

   --  Ethernet MAC MII data register
   type MACMIIDR_Register is record
      --  MII data
      MD             : MACMIIDR_MD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACMIIDR_Register use record
      MD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MACFCR_PLT_Field is HAL.UInt2;
   subtype MACFCR_PT_Field is HAL.UInt16;

   --  Ethernet MAC flow control register
   type MACFCR_Register is record
      --  Flow control busy/back pressure activate
      FCB           : Boolean := False;
      --  Transmit flow control enable
      TFCE          : Boolean := False;
      --  Receive flow control enable
      RFCE          : Boolean := False;
      --  Unicast pause frame detect
      UPFD          : Boolean := False;
      --  Pause low threshold
      PLT           : MACFCR_PLT_Field := 16#0#;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Zero-quanta pause disable
      ZQPD          : Boolean := False;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
      --  Pause time
      PT            : MACFCR_PT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACFCR_Register use record
      FCB           at 0 range 0 .. 0;
      TFCE          at 0 range 1 .. 1;
      RFCE          at 0 range 2 .. 2;
      UPFD          at 0 range 3 .. 3;
      PLT           at 0 range 4 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      ZQPD          at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
      PT            at 0 range 16 .. 31;
   end record;

   subtype MACVLANTR_VLANTI_Field is HAL.UInt16;

   --  Ethernet MAC VLAN tag register
   type MACVLANTR_Register is record
      --  VLAN tag identifier
      VLANTI         : MACVLANTR_VLANTI_Field := 16#0#;
      --  12-bit VLAN tag comparison
      VLANTC         : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACVLANTR_Register use record
      VLANTI         at 0 range 0 .. 15;
      VLANTC         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Ethernet MAC PMT control and status register
   type MACPMTCSR_Register is record
      --  Power down
      PD             : Boolean := False;
      --  Magic Packet enable
      MPE            : Boolean := False;
      --  Wakeup frame enable
      WFE            : Boolean := False;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  Magic packet received
      MPR            : Boolean := False;
      --  Wakeup frame received
      WFR            : Boolean := False;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Global unicast
      GU             : Boolean := False;
      --  unspecified
      Reserved_10_30 : HAL.UInt21 := 16#0#;
      --  Wakeup frame filter register pointer reset
      WFFRPR         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACPMTCSR_Register use record
      PD             at 0 range 0 .. 0;
      MPE            at 0 range 1 .. 1;
      WFE            at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      MPR            at 0 range 5 .. 5;
      WFR            at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      GU             at 0 range 9 .. 9;
      Reserved_10_30 at 0 range 10 .. 30;
      WFFRPR         at 0 range 31 .. 31;
   end record;

   subtype MACDBGR_MTFCS_Field is HAL.UInt2;
   subtype MACDBGR_TFRS_Field is HAL.UInt2;

   --  Ethernet MAC debug register
   type MACDBGR_Register is record
      --  Read-only. MAC MII receive protocol engine active
      MMRPEA         : Boolean;
      --  Read-only. MAC small FIFO read / write controllers status
      MSFRWCS        : Boolean;
      --  unspecified
      Reserved_2_3   : HAL.UInt2;
      --  Read-only. Rx FIFO write controller active
      RFWRA          : Boolean;
      --  Read-only. Rx FIFO read controller status
      RFRCS          : Boolean;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Rx FIFO fill level
      RFFL           : Boolean;
      --  unspecified
      Reserved_9_15  : HAL.UInt7;
      --  Read-only. MAC MII transmit engine active
      MMTEA          : Boolean;
      --  Read-only. MAC transmit frame controller status
      MTFCS          : MACDBGR_MTFCS_Field;
      --  Read-only. MAC transmitter in pause
      MTP            : Boolean;
      --  Read-only. Tx FIFO read status
      TFRS           : MACDBGR_TFRS_Field;
      --  Read-only. Tx FIFO write active
      TFWA           : Boolean;
      --  unspecified
      Reserved_23_23 : HAL.Bit;
      --  Read-only. Tx FIFO not empty
      TFNE           : Boolean;
      --  Read-only. Tx FIFO full
      TFF            : Boolean;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACDBGR_Register use record
      MMRPEA         at 0 range 0 .. 0;
      MSFRWCS        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RFWRA          at 0 range 4 .. 4;
      RFRCS          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      RFFL           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      MMTEA          at 0 range 16 .. 16;
      MTFCS          at 0 range 17 .. 18;
      MTP            at 0 range 19 .. 19;
      TFRS           at 0 range 20 .. 21;
      TFWA           at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TFNE           at 0 range 24 .. 24;
      TFF            at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Ethernet MAC interrupt status register
   type MACSR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Read-only. PMT status
      PMTS           : Boolean := False;
      --  Read-only. MMC status
      MMCS           : Boolean := False;
      --  Read-only. MMC receive status
      MMCRS          : Boolean := False;
      --  Read-only. MMC transmit status
      MMCTS          : Boolean := False;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Time stamp trigger status
      TSTS           : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACSR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      PMTS           at 0 range 3 .. 3;
      MMCS           at 0 range 4 .. 4;
      MMCRS          at 0 range 5 .. 5;
      MMCTS          at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      TSTS           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Ethernet MAC interrupt mask register
   type MACIMR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  PMT interrupt mask
      PMTIM          : Boolean := False;
      --  unspecified
      Reserved_4_8   : HAL.UInt5 := 16#0#;
      --  Time stamp trigger interrupt mask
      TSTIM          : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACIMR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      PMTIM          at 0 range 3 .. 3;
      Reserved_4_8   at 0 range 4 .. 8;
      TSTIM          at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype MACA0HR_MACA0H_Field is HAL.UInt16;

   --  Ethernet MAC address 0 high register
   type MACA0HR_Register is record
      --  MAC address0 high
      MACA0H         : MACA0HR_MACA0H_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#10#;
      --  Read-only. MO
      MO             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACA0HR_Register use record
      MACA0H         at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      MO             at 0 range 31 .. 31;
   end record;

   subtype MACA1HR_MACA1H_Field is HAL.UInt16;
   subtype MACA1HR_MBC_Field is HAL.UInt6;

   --  Ethernet MAC address 1 high register
   type MACA1HR_Register is record
      --  MAC address1 high
      MACA1H         : MACA1HR_MACA1H_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  Mask byte control
      MBC            : MACA1HR_MBC_Field := 16#0#;
      --  Source address
      SA             : Boolean := False;
      --  Address enable
      AE             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACA1HR_Register use record
      MACA1H         at 0 range 0 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      MBC            at 0 range 24 .. 29;
      SA             at 0 range 30 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   subtype MACA2HR_MAC2AH_Field is HAL.UInt16;
   subtype MACA2HR_MBC_Field is HAL.UInt6;

   --  Ethernet MAC address 2 high register
   type MACA2HR_Register is record
      --  MAC address2 high
      MAC2AH         : MACA2HR_MAC2AH_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  Mask byte control
      MBC            : MACA2HR_MBC_Field := 16#0#;
      --  Source address
      SA             : Boolean := False;
      --  Address enable
      AE             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACA2HR_Register use record
      MAC2AH         at 0 range 0 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      MBC            at 0 range 24 .. 29;
      SA             at 0 range 30 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   subtype MACA2LR_MACA2L_Field is HAL.UInt31;

   --  Ethernet MAC address 2 low register
   type MACA2LR_Register is record
      --  MAC address2 low
      MACA2L         : MACA2LR_MACA2L_Field := 16#7FFFFFFF#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#1#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACA2LR_Register use record
      MACA2L         at 0 range 0 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype MACA3HR_MACA3H_Field is HAL.UInt16;
   subtype MACA3HR_MBC_Field is HAL.UInt6;

   --  Ethernet MAC address 3 high register
   type MACA3HR_Register is record
      --  MAC address3 high
      MACA3H         : MACA3HR_MACA3H_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  Mask byte control
      MBC            : MACA3HR_MBC_Field := 16#0#;
      --  Source address
      SA             : Boolean := False;
      --  Address enable
      AE             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACA3HR_Register use record
      MACA3H         at 0 range 0 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      MBC            at 0 range 24 .. 29;
      SA             at 0 range 30 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   --  Ethernet MMC control register
   type MMCCR_Register is record
      --  Counter reset
      CR            : Boolean := False;
      --  Counter stop rollover
      CSR           : Boolean := False;
      --  Reset on read
      ROR           : Boolean := False;
      --  MMC counter freeze
      MCF           : Boolean := False;
      --  MMC counter preset
      MCP           : Boolean := False;
      --  MMC counter Full-Half preset
      MCFHP         : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MMCCR_Register use record
      CR            at 0 range 0 .. 0;
      CSR           at 0 range 1 .. 1;
      ROR           at 0 range 2 .. 2;
      MCF           at 0 range 3 .. 3;
      MCP           at 0 range 4 .. 4;
      MCFHP         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Ethernet MMC receive interrupt register
   type MMCRIR_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5 := 16#0#;
      --  Received frames CRC error status
      RFCES          : Boolean := False;
      --  Received frames alignment error status
      RFAES          : Boolean := False;
      --  unspecified
      Reserved_7_16  : HAL.UInt10 := 16#0#;
      --  Received Good Unicast Frames Status
      RGUFS          : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MMCRIR_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      RFCES          at 0 range 5 .. 5;
      RFAES          at 0 range 6 .. 6;
      Reserved_7_16  at 0 range 7 .. 16;
      RGUFS          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Ethernet MMC transmit interrupt register
   type MMCTIR_Register is record
      --  unspecified
      Reserved_0_13  : HAL.UInt14 := 16#0#;
      --  Transmitted good frames single collision status
      TGFSCS         : Boolean := False;
      --  Transmitted good frames more single collision status
      TGFMSCS        : Boolean := False;
      --  unspecified
      Reserved_16_20 : HAL.UInt5 := 16#0#;
      --  Transmitted good frames status
      TGFS           : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MMCTIR_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      TGFSCS         at 0 range 14 .. 14;
      TGFMSCS        at 0 range 15 .. 15;
      Reserved_16_20 at 0 range 16 .. 20;
      TGFS           at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Ethernet MMC receive interrupt mask register
   type MMCRIMR_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5 := 16#0#;
      --  Received frame CRC error mask
      RFCEM          : Boolean := False;
      --  Received frames alignment error mask
      RFAEM          : Boolean := False;
      --  unspecified
      Reserved_7_16  : HAL.UInt10 := 16#0#;
      --  Received good unicast frames mask
      RGUFM          : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MMCRIMR_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      RFCEM          at 0 range 5 .. 5;
      RFAEM          at 0 range 6 .. 6;
      Reserved_7_16  at 0 range 7 .. 16;
      RGUFM          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Ethernet MMC transmit interrupt mask register
   type MMCTIMR_Register is record
      --  unspecified
      Reserved_0_13  : HAL.UInt14 := 16#0#;
      --  Transmitted good frames single collision mask
      TGFSCM         : Boolean := False;
      --  Transmitted good frames more single collision mask
      TGFMSCM        : Boolean := False;
      --  unspecified
      Reserved_16_20 : HAL.UInt5 := 16#0#;
      --  Transmitted good frames mask
      TGFM           : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MMCTIMR_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      TGFSCM         at 0 range 14 .. 14;
      TGFMSCM        at 0 range 15 .. 15;
      Reserved_16_20 at 0 range 16 .. 20;
      TGFM           at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype PTPTSCR_TSCNT_Field is HAL.UInt2;

   --  Ethernet PTP time stamp control register
   type PTPTSCR_Register is record
      --  Time stamp enable
      TSE            : Boolean := False;
      --  Time stamp fine or coarse update
      TSFCU          : Boolean := False;
      --  Time stamp system time initialize
      TSSTI          : Boolean := False;
      --  Time stamp system time update
      TSSTU          : Boolean := False;
      --  Time stamp interrupt trigger enable
      TSITE          : Boolean := False;
      --  Time stamp addend register update
      TTSARU         : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Time stamp snapshot for all received frames enable
      TSSARFE        : Boolean := False;
      --  Time stamp subsecond rollover: digital or binary rollover control
      TSSSR          : Boolean := False;
      --  Time stamp PTP packet snooping for version2 format enable
      TSPTPPSV2E     : Boolean := False;
      --  Time stamp snapshot for PTP over ethernet frames enable
      TSSPTPOEFE     : Boolean := False;
      --  Time stamp snapshot for IPv6 frames enable
      TSSIPV6FE      : Boolean := False;
      --  Time stamp snapshot for IPv4 frames enable
      TSSIPV4FE      : Boolean := True;
      --  Time stamp snapshot for event message enable
      TSSEME         : Boolean := False;
      --  Time stamp snapshot for message relevant to master enable
      TSSMRME        : Boolean := False;
      --  Time stamp clock node type
      TSCNT          : PTPTSCR_TSCNT_Field := 16#0#;
      --  Time stamp PTP frame filtering MAC address enable
      TSPFFMAE       : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PTPTSCR_Register use record
      TSE            at 0 range 0 .. 0;
      TSFCU          at 0 range 1 .. 1;
      TSSTI          at 0 range 2 .. 2;
      TSSTU          at 0 range 3 .. 3;
      TSITE          at 0 range 4 .. 4;
      TTSARU         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TSSARFE        at 0 range 8 .. 8;
      TSSSR          at 0 range 9 .. 9;
      TSPTPPSV2E     at 0 range 10 .. 10;
      TSSPTPOEFE     at 0 range 11 .. 11;
      TSSIPV6FE      at 0 range 12 .. 12;
      TSSIPV4FE      at 0 range 13 .. 13;
      TSSEME         at 0 range 14 .. 14;
      TSSMRME        at 0 range 15 .. 15;
      TSCNT          at 0 range 16 .. 17;
      TSPFFMAE       at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype PTPSSIR_STSSI_Field is HAL.UInt8;

   --  Ethernet PTP subsecond increment register
   type PTPSSIR_Register is record
      --  System time subsecond increment
      STSSI         : PTPSSIR_STSSI_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PTPSSIR_Register use record
      STSSI         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PTPTSLR_STSS_Field is HAL.UInt31;

   --  Ethernet PTP time stamp low register
   type PTPTSLR_Register is record
      --  Read-only. System time subseconds
      STSS  : PTPTSLR_STSS_Field;
      --  Read-only. System time positive or negative sign
      STPNS : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PTPTSLR_Register use record
      STSS  at 0 range 0 .. 30;
      STPNS at 0 range 31 .. 31;
   end record;

   subtype PTPTSLUR_TSUSS_Field is HAL.UInt31;

   --  Ethernet PTP time stamp low update register
   type PTPTSLUR_Register is record
      --  Time stamp update subseconds
      TSUSS  : PTPTSLUR_TSUSS_Field := 16#0#;
      --  Time stamp update positive or negative sign
      TSUPNS : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PTPTSLUR_Register use record
      TSUSS  at 0 range 0 .. 30;
      TSUPNS at 0 range 31 .. 31;
   end record;

   --  Ethernet PTP time stamp status register
   type PTPTSSR_Register is record
      --  Read-only. Time stamp second overflow
      TSSO          : Boolean;
      --  Read-only. Time stamp target time reached
      TSTTR         : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PTPTSSR_Register use record
      TSSO          at 0 range 0 .. 0;
      TSTTR         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype PTPPPSCR_PPSFREQ_Field is HAL.UInt4;

   --  Ethernet PTP PPS control register
   type PTPPPSCR_Register is record
      --  Read-only. PPS frequency selection
      PPSFREQ       : PTPPPSCR_PPSFREQ_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PTPPPSCR_Register use record
      PPSFREQ       at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Ethernet: DMA controller operation
   type Ethernet_DMA_Peripheral is record
      --  Ethernet DMA bus mode register
      DMABMR    : aliased DMABMR_Register;
      --  Ethernet DMA transmit poll demand register
      DMATPDR   : aliased HAL.UInt32;
      --  EHERNET DMA receive poll demand register
      DMARPDR   : aliased HAL.UInt32;
      --  Ethernet DMA receive descriptor list address register
      DMARDLAR  : aliased HAL.UInt32;
      --  Ethernet DMA transmit descriptor list address register
      DMATDLAR  : aliased HAL.UInt32;
      --  Ethernet DMA status register
      DMASR     : aliased DMASR_Register;
      --  Ethernet DMA operation mode register
      DMAOMR    : aliased DMAOMR_Register;
      --  Ethernet DMA interrupt enable register
      DMAIER    : aliased DMAIER_Register;
      --  Ethernet DMA missed frame and buffer overflow counter register
      DMAMFBOCR : aliased DMAMFBOCR_Register;
      --  Ethernet DMA receive status watchdog timer register
      DMARSWTR  : aliased DMARSWTR_Register;
      --  Ethernet DMA current host transmit descriptor register
      DMACHTDR  : aliased HAL.UInt32;
      --  Ethernet DMA current host receive descriptor register
      DMACHRDR  : aliased HAL.UInt32;
      --  Ethernet DMA current host transmit buffer address register
      DMACHTBAR : aliased HAL.UInt32;
      --  Ethernet DMA current host receive buffer address register
      DMACHRBAR : aliased HAL.UInt32;
   end record
     with Volatile;

   for Ethernet_DMA_Peripheral use record
      DMABMR    at 16#0# range 0 .. 31;
      DMATPDR   at 16#4# range 0 .. 31;
      DMARPDR   at 16#8# range 0 .. 31;
      DMARDLAR  at 16#C# range 0 .. 31;
      DMATDLAR  at 16#10# range 0 .. 31;
      DMASR     at 16#14# range 0 .. 31;
      DMAOMR    at 16#18# range 0 .. 31;
      DMAIER    at 16#1C# range 0 .. 31;
      DMAMFBOCR at 16#20# range 0 .. 31;
      DMARSWTR  at 16#24# range 0 .. 31;
      DMACHTDR  at 16#48# range 0 .. 31;
      DMACHRDR  at 16#4C# range 0 .. 31;
      DMACHTBAR at 16#50# range 0 .. 31;
      DMACHRBAR at 16#54# range 0 .. 31;
   end record;

   --  Ethernet: DMA controller operation
   Ethernet_DMA_Periph : aliased Ethernet_DMA_Peripheral
     with Import, Address => System'To_Address (16#40029000#);

   --  Ethernet: media access control (MAC)
   type Ethernet_MAC_Peripheral is record
      --  Ethernet MAC configuration register
      MACCR     : aliased MACCR_Register;
      --  Ethernet MAC frame filter register
      MACFFR    : aliased MACFFR_Register;
      --  Ethernet MAC hash table high register
      MACHTHR   : aliased HAL.UInt32;
      --  Ethernet MAC hash table low register
      MACHTLR   : aliased HAL.UInt32;
      --  Ethernet MAC MII address register
      MACMIIAR  : aliased MACMIIAR_Register;
      --  Ethernet MAC MII data register
      MACMIIDR  : aliased MACMIIDR_Register;
      --  Ethernet MAC flow control register
      MACFCR    : aliased MACFCR_Register;
      --  Ethernet MAC VLAN tag register
      MACVLANTR : aliased MACVLANTR_Register;
      --  Ethernet MAC remote wakeup frame filter register
      MACRWUFFR : aliased HAL.UInt32;
      --  Ethernet MAC PMT control and status register
      MACPMTCSR : aliased MACPMTCSR_Register;
      --  Ethernet MAC debug register
      MACDBGR   : aliased MACDBGR_Register;
      --  Ethernet MAC interrupt status register
      MACSR     : aliased MACSR_Register;
      --  Ethernet MAC interrupt mask register
      MACIMR    : aliased MACIMR_Register;
      --  Ethernet MAC address 0 high register
      MACA0HR   : aliased MACA0HR_Register;
      --  Ethernet MAC address 0 low register
      MACA0LR   : aliased HAL.UInt32;
      --  Ethernet MAC address 1 high register
      MACA1HR   : aliased MACA1HR_Register;
      --  Ethernet MAC address1 low register
      MACA1LR   : aliased HAL.UInt32;
      --  Ethernet MAC address 2 high register
      MACA2HR   : aliased MACA2HR_Register;
      --  Ethernet MAC address 2 low register
      MACA2LR   : aliased MACA2LR_Register;
      --  Ethernet MAC address 3 high register
      MACA3HR   : aliased MACA3HR_Register;
      --  Ethernet MAC address 3 low register
      MACA3LR   : aliased HAL.UInt32;
   end record
     with Volatile;

   for Ethernet_MAC_Peripheral use record
      MACCR     at 16#0# range 0 .. 31;
      MACFFR    at 16#4# range 0 .. 31;
      MACHTHR   at 16#8# range 0 .. 31;
      MACHTLR   at 16#C# range 0 .. 31;
      MACMIIAR  at 16#10# range 0 .. 31;
      MACMIIDR  at 16#14# range 0 .. 31;
      MACFCR    at 16#18# range 0 .. 31;
      MACVLANTR at 16#1C# range 0 .. 31;
      MACRWUFFR at 16#28# range 0 .. 31;
      MACPMTCSR at 16#2C# range 0 .. 31;
      MACDBGR   at 16#34# range 0 .. 31;
      MACSR     at 16#38# range 0 .. 31;
      MACIMR    at 16#3C# range 0 .. 31;
      MACA0HR   at 16#40# range 0 .. 31;
      MACA0LR   at 16#44# range 0 .. 31;
      MACA1HR   at 16#48# range 0 .. 31;
      MACA1LR   at 16#4C# range 0 .. 31;
      MACA2HR   at 16#50# range 0 .. 31;
      MACA2LR   at 16#54# range 0 .. 31;
      MACA3HR   at 16#58# range 0 .. 31;
      MACA3LR   at 16#5C# range 0 .. 31;
   end record;

   --  Ethernet: media access control (MAC)
   Ethernet_MAC_Periph : aliased Ethernet_MAC_Peripheral
     with Import, Address => System'To_Address (16#40028000#);

   --  Ethernet: MAC management counters
   type Ethernet_MMC_Peripheral is record
      --  Ethernet MMC control register
      MMCCR       : aliased MMCCR_Register;
      --  Ethernet MMC receive interrupt register
      MMCRIR      : aliased MMCRIR_Register;
      --  Ethernet MMC transmit interrupt register
      MMCTIR      : aliased MMCTIR_Register;
      --  Ethernet MMC receive interrupt mask register
      MMCRIMR     : aliased MMCRIMR_Register;
      --  Ethernet MMC transmit interrupt mask register
      MMCTIMR     : aliased MMCTIMR_Register;
      --  Ethernet MMC transmitted good frames after a single collision counter
      MMCTGFSCCR  : aliased HAL.UInt32;
      --  Ethernet MMC transmitted good frames after more than a single
      --  collision
      MMCTGFMSCCR : aliased HAL.UInt32;
      --  Ethernet MMC transmitted good frames counter register
      MMCTGFCR    : aliased HAL.UInt32;
      --  Ethernet MMC received frames with CRC error counter register
      MMCRFCECR   : aliased HAL.UInt32;
      --  Ethernet MMC received frames with alignment error counter register
      MMCRFAECR   : aliased HAL.UInt32;
      --  MMC received good unicast frames counter register
      MMCRGUFCR   : aliased HAL.UInt32;
   end record
     with Volatile;

   for Ethernet_MMC_Peripheral use record
      MMCCR       at 16#0# range 0 .. 31;
      MMCRIR      at 16#4# range 0 .. 31;
      MMCTIR      at 16#8# range 0 .. 31;
      MMCRIMR     at 16#C# range 0 .. 31;
      MMCTIMR     at 16#10# range 0 .. 31;
      MMCTGFSCCR  at 16#4C# range 0 .. 31;
      MMCTGFMSCCR at 16#50# range 0 .. 31;
      MMCTGFCR    at 16#68# range 0 .. 31;
      MMCRFCECR   at 16#94# range 0 .. 31;
      MMCRFAECR   at 16#98# range 0 .. 31;
      MMCRGUFCR   at 16#C4# range 0 .. 31;
   end record;

   --  Ethernet: MAC management counters
   Ethernet_MMC_Periph : aliased Ethernet_MMC_Peripheral
     with Import, Address => System'To_Address (16#40028100#);

   --  Ethernet: Precision time protocol
   type Ethernet_PTP_Peripheral is record
      --  Ethernet PTP time stamp control register
      PTPTSCR  : aliased PTPTSCR_Register;
      --  Ethernet PTP subsecond increment register
      PTPSSIR  : aliased PTPSSIR_Register;
      --  Ethernet PTP time stamp high register
      PTPTSHR  : aliased HAL.UInt32;
      --  Ethernet PTP time stamp low register
      PTPTSLR  : aliased PTPTSLR_Register;
      --  Ethernet PTP time stamp high update register
      PTPTSHUR : aliased HAL.UInt32;
      --  Ethernet PTP time stamp low update register
      PTPTSLUR : aliased PTPTSLUR_Register;
      --  Ethernet PTP time stamp addend register
      PTPTSAR  : aliased HAL.UInt32;
      --  Ethernet PTP target time high register
      PTPTTHR  : aliased HAL.UInt32;
      --  Ethernet PTP target time low register
      PTPTTLR  : aliased HAL.UInt32;
      --  Ethernet PTP time stamp status register
      PTPTSSR  : aliased PTPTSSR_Register;
      --  Ethernet PTP PPS control register
      PTPPPSCR : aliased PTPPPSCR_Register;
   end record
     with Volatile;

   for Ethernet_PTP_Peripheral use record
      PTPTSCR  at 16#0# range 0 .. 31;
      PTPSSIR  at 16#4# range 0 .. 31;
      PTPTSHR  at 16#8# range 0 .. 31;
      PTPTSLR  at 16#C# range 0 .. 31;
      PTPTSHUR at 16#10# range 0 .. 31;
      PTPTSLUR at 16#14# range 0 .. 31;
      PTPTSAR  at 16#18# range 0 .. 31;
      PTPTTHR  at 16#1C# range 0 .. 31;
      PTPTTLR  at 16#20# range 0 .. 31;
      PTPTSSR  at 16#28# range 0 .. 31;
      PTPPPSCR at 16#2C# range 0 .. 31;
   end record;

   --  Ethernet: Precision time protocol
   Ethernet_PTP_Periph : aliased Ethernet_PTP_Peripheral
     with Import, Address => System'To_Address (16#40028700#);

end STM32_SVD.Ethernet;

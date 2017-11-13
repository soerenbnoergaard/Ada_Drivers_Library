--  This spec has been automatically generated from STM32L4R7.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  STM32L4R7
package STM32_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   DAC_Base : constant System.Address :=
     System'To_Address (16#40007400#);
   DMA1_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   DMA2_Base : constant System.Address :=
     System'To_Address (16#40020400#);
   CRC_Base : constant System.Address :=
     System'To_Address (16#40023000#);
   LTCD_Base : constant System.Address :=
     System'To_Address (16#40016800#);
   TSC_Base : constant System.Address :=
     System'To_Address (16#40024000#);
   IWDG_Base : constant System.Address :=
     System'To_Address (16#40003000#);
   WWDG_Base : constant System.Address :=
     System'To_Address (16#40002C00#);
   COMP_Base : constant System.Address :=
     System'To_Address (16#40010200#);
   FIREWALL_Base : constant System.Address :=
     System'To_Address (16#40011C00#);
   I2C1_Base : constant System.Address :=
     System'To_Address (16#40005400#);
   I2C2_Base : constant System.Address :=
     System'To_Address (16#40005800#);
   I2C3_Base : constant System.Address :=
     System'To_Address (16#40005C00#);
   I2C4_Base : constant System.Address :=
     System'To_Address (16#40008400#);
   FLASH_Base : constant System.Address :=
     System'To_Address (16#40022000#);
   DBGMCU_Base : constant System.Address :=
     System'To_Address (16#E0042000#);
   OCTOSPI1_Base : constant System.Address :=
     System'To_Address (16#A0001000#);
   OCTOSPI2_Base : constant System.Address :=
     System'To_Address (16#A0001400#);
   RCC_Base : constant System.Address :=
     System'To_Address (16#40021000#);
   PWR_Base : constant System.Address :=
     System'To_Address (16#40007000#);
   SYSCFG_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   DFSDM1_Base : constant System.Address :=
     System'To_Address (16#40016000#);
   RNG_Base : constant System.Address :=
     System'To_Address (16#50060800#);
   AES_Base : constant System.Address :=
     System'To_Address (16#50060000#);
   ADC_Base : constant System.Address :=
     System'To_Address (16#50040000#);
   ADC_Common_Base : constant System.Address :=
     System'To_Address (16#50040300#);
   GPIOA_Base : constant System.Address :=
     System'To_Address (16#48000000#);
   GPIOB_Base : constant System.Address :=
     System'To_Address (16#48000400#);
   GPIOC_Base : constant System.Address :=
     System'To_Address (16#48000800#);
   GPIOD_Base : constant System.Address :=
     System'To_Address (16#48000C00#);
   GPIOE_Base : constant System.Address :=
     System'To_Address (16#48001000#);
   GPIOF_Base : constant System.Address :=
     System'To_Address (16#48001400#);
   GPIOG_Base : constant System.Address :=
     System'To_Address (16#48001800#);
   GPIOH_Base : constant System.Address :=
     System'To_Address (16#48001C00#);
   GPIOI_Base : constant System.Address :=
     System'To_Address (16#48002000#);
   SAI1_Base : constant System.Address :=
     System'To_Address (16#40015400#);
   SAI2_Base : constant System.Address :=
     System'To_Address (16#40015800#);
   TIM2_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   TIM3_Base : constant System.Address :=
     System'To_Address (16#40000400#);
   TIM4_Base : constant System.Address :=
     System'To_Address (16#40000800#);
   TIM5_Base : constant System.Address :=
     System'To_Address (16#40000C00#);
   TIM15_Base : constant System.Address :=
     System'To_Address (16#40014000#);
   TIM16_Base : constant System.Address :=
     System'To_Address (16#40014400#);
   TIM17_Base : constant System.Address :=
     System'To_Address (16#40014800#);
   TIM1_Base : constant System.Address :=
     System'To_Address (16#40012C00#);
   TIM8_Base : constant System.Address :=
     System'To_Address (16#40013400#);
   TIM6_Base : constant System.Address :=
     System'To_Address (16#40001000#);
   TIM7_Base : constant System.Address :=
     System'To_Address (16#40001400#);
   LPTIM1_Base : constant System.Address :=
     System'To_Address (16#40007C00#);
   LPTIM2_Base : constant System.Address :=
     System'To_Address (16#40009400#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#40013800#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#40004400#);
   USART3_Base : constant System.Address :=
     System'To_Address (16#40004800#);
   UART4_Base : constant System.Address :=
     System'To_Address (16#40004C00#);
   UART5_Base : constant System.Address :=
     System'To_Address (16#40005000#);
   LPUART1_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   SPI1_Base : constant System.Address :=
     System'To_Address (16#40013000#);
   SPI2_Base : constant System.Address :=
     System'To_Address (16#40003800#);
   SPI3_Base : constant System.Address :=
     System'To_Address (16#40003C00#);
   SDMMC1_Base : constant System.Address :=
     System'To_Address (16#50062400#);
   EXTI_Base : constant System.Address :=
     System'To_Address (16#40010400#);
   VREFBUF_Base : constant System.Address :=
     System'To_Address (16#40010030#);
   CAN1_Base : constant System.Address :=
     System'To_Address (16#40006400#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#40002800#);
   OTG_FS_GLOBAL_Base : constant System.Address :=
     System'To_Address (16#50000000#);
   OTG_FS_HOST_Base : constant System.Address :=
     System'To_Address (16#50000400#);
   OTG_FS_DEVICE_Base : constant System.Address :=
     System'To_Address (16#50000800#);
   OTG_FS_PWRCLK_Base : constant System.Address :=
     System'To_Address (16#50000E00#);
   SWPMI1_Base : constant System.Address :=
     System'To_Address (16#40008800#);
   OPAMP_Base : constant System.Address :=
     System'To_Address (16#40007800#);
   FMC_Base : constant System.Address :=
     System'To_Address (16#A0000000#);
   NVIC_Base : constant System.Address :=
     System'To_Address (16#E000E000#);
   CRS_Base : constant System.Address :=
     System'To_Address (16#40006000#);
   DCMI_Base : constant System.Address :=
     System'To_Address (16#50050000#);
   HASH_Base : constant System.Address :=
     System'To_Address (16#50060400#);
   DMA2D_Base : constant System.Address :=
     System'To_Address (16#4002B000#);
   DSI_Base : constant System.Address :=
     System'To_Address (16#40016C00#);
   GFXMMU_Base : constant System.Address :=
     System'To_Address (16#4002C000#);
   OCTOSPIM_Base : constant System.Address :=
     System'To_Address (16#50061C00#);

end STM32_SVD;

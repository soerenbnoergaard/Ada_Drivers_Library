--  This spec has been automatically generated from STM32H7x3.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  STM32H7x3
package STM32_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   COMP1_Base : constant System.Address :=
     System'To_Address (16#58003800#);
   CRS_Base : constant System.Address :=
     System'To_Address (16#40008400#);
   DAC_Base : constant System.Address :=
     System'To_Address (16#40007400#);
   BDMA_Base : constant System.Address :=
     System'To_Address (16#58025400#);
   DMA2D_Base : constant System.Address :=
     System'To_Address (16#52001000#);
   DMAMUX2_Base : constant System.Address :=
     System'To_Address (16#58025800#);
   FMC_Base : constant System.Address :=
     System'To_Address (16#52004000#);
   CEC_Base : constant System.Address :=
     System'To_Address (16#40006C00#);
   HSEM_Base : constant System.Address :=
     System'To_Address (16#58026400#);
   I2C1_Base : constant System.Address :=
     System'To_Address (16#40005400#);
   I2C2_Base : constant System.Address :=
     System'To_Address (16#40005800#);
   I2C3_Base : constant System.Address :=
     System'To_Address (16#40005C00#);
   I2C4_Base : constant System.Address :=
     System'To_Address (16#58001C00#);
   GPIOA_Base : constant System.Address :=
     System'To_Address (16#58020000#);
   GPIOB_Base : constant System.Address :=
     System'To_Address (16#58020400#);
   GPIOC_Base : constant System.Address :=
     System'To_Address (16#58020800#);
   GPIOD_Base : constant System.Address :=
     System'To_Address (16#58020C00#);
   GPIOE_Base : constant System.Address :=
     System'To_Address (16#58021000#);
   GPIOF_Base : constant System.Address :=
     System'To_Address (16#58021400#);
   GPIOG_Base : constant System.Address :=
     System'To_Address (16#58021800#);
   GPIOH_Base : constant System.Address :=
     System'To_Address (16#58021C00#);
   GPIOI_Base : constant System.Address :=
     System'To_Address (16#58022000#);
   GPIOJ_Base : constant System.Address :=
     System'To_Address (16#58022400#);
   GPIOK_Base : constant System.Address :=
     System'To_Address (16#58022800#);
   JPEG_Base : constant System.Address :=
     System'To_Address (16#52003000#);
   MDMA_Base : constant System.Address :=
     System'To_Address (16#52000000#);
   QUADSPI_Base : constant System.Address :=
     System'To_Address (16#52005000#);
   RNG_Base : constant System.Address :=
     System'To_Address (16#48021800#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#58004000#);
   SAI4_Base : constant System.Address :=
     System'To_Address (16#58005400#);
   SAI1_Base : constant System.Address :=
     System'To_Address (16#40015800#);
   SAI2_Base : constant System.Address :=
     System'To_Address (16#40015C00#);
   SAI3_Base : constant System.Address :=
     System'To_Address (16#40016000#);
   SDMMC1_Base : constant System.Address :=
     System'To_Address (16#52007000#);
   SDMMC2_Base : constant System.Address :=
     System'To_Address (16#48022400#);
   VREFBUF_Base : constant System.Address :=
     System'To_Address (16#58003C00#);
   IWDG_Base : constant System.Address :=
     System'To_Address (16#58004800#);
   WWDG_Base : constant System.Address :=
     System'To_Address (16#50003000#);
   PWR_Base : constant System.Address :=
     System'To_Address (16#58024800#);
   SPI1_Base : constant System.Address :=
     System'To_Address (16#40013000#);
   SPI2_Base : constant System.Address :=
     System'To_Address (16#40003800#);
   SPI3_Base : constant System.Address :=
     System'To_Address (16#40003C00#);
   SPI4_Base : constant System.Address :=
     System'To_Address (16#40013400#);
   SPI5_Base : constant System.Address :=
     System'To_Address (16#40015000#);
   SPI6_Base : constant System.Address :=
     System'To_Address (16#58001400#);
   LTDC_Base : constant System.Address :=
     System'To_Address (16#50001000#);
   SPDIFRX_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   ADC3_Base : constant System.Address :=
     System'To_Address (16#58026000#);
   ADC1_Base : constant System.Address :=
     System'To_Address (16#40022000#);
   ADC2_Base : constant System.Address :=
     System'To_Address (16#40022100#);
   ADC3_Common_Base : constant System.Address :=
     System'To_Address (16#58026300#);
   ADC12_Common_Base : constant System.Address :=
     System'To_Address (16#40022300#);
   DMAMUX1_Base : constant System.Address :=
     System'To_Address (16#40020800#);
   CRC_Base : constant System.Address :=
     System'To_Address (16#58024C00#);
   RCC_Base : constant System.Address :=
     System'To_Address (16#58024400#);
   LPTIM1_Base : constant System.Address :=
     System'To_Address (16#40002400#);
   LPTIM2_Base : constant System.Address :=
     System'To_Address (16#58002400#);
   LPTIM3_Base : constant System.Address :=
     System'To_Address (16#58002800#);
   LPTIM4_Base : constant System.Address :=
     System'To_Address (16#58002C00#);
   LPTIM5_Base : constant System.Address :=
     System'To_Address (16#58003000#);
   LPUART1_Base : constant System.Address :=
     System'To_Address (16#58000C00#);
   SYSCFG_Base : constant System.Address :=
     System'To_Address (16#58000400#);
   EXTI_Base : constant System.Address :=
     System'To_Address (16#58000000#);
   DELAY_Block_SDMMC1_Base : constant System.Address :=
     System'To_Address (16#52008000#);
   DELAY_Block_QUADSPI_Base : constant System.Address :=
     System'To_Address (16#52006000#);
   DELAY_Block_SDMMC2_Base : constant System.Address :=
     System'To_Address (16#48022800#);
   Flash_Base : constant System.Address :=
     System'To_Address (16#52002000#);
   AXI_Base : constant System.Address :=
     System'To_Address (16#51000000#);
   HASH_Base : constant System.Address :=
     System'To_Address (16#48021400#);
   CRYP_Base : constant System.Address :=
     System'To_Address (16#48021000#);
   DCMI_Base : constant System.Address :=
     System'To_Address (16#48020000#);
   OTG1_HS_GLOBAL_Base : constant System.Address :=
     System'To_Address (16#40040000#);
   OTG2_HS_GLOBAL_Base : constant System.Address :=
     System'To_Address (16#40080000#);
   OTG1_HS_HOST_Base : constant System.Address :=
     System'To_Address (16#40040400#);
   OTG2_HS_HOST_Base : constant System.Address :=
     System'To_Address (16#40080400#);
   OTG1_HS_DEVICE_Base : constant System.Address :=
     System'To_Address (16#40040800#);
   OTG2_HS_DEVICE_Base : constant System.Address :=
     System'To_Address (16#40080800#);
   OTG1_HS_PWRCLK_Base : constant System.Address :=
     System'To_Address (16#40040E00#);
   OTG2_HS_PWRCLK_Base : constant System.Address :=
     System'To_Address (16#40080E00#);
   Ethernet_MAC_Base : constant System.Address :=
     System'To_Address (16#40028000#);
   DMA1_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   DMA2_Base : constant System.Address :=
     System'To_Address (16#40020400#);
   HRTIM_Master_Base : constant System.Address :=
     System'To_Address (16#40017400#);
   HRTIM_TIMA_Base : constant System.Address :=
     System'To_Address (16#40017480#);
   HRTIM_TIMB_Base : constant System.Address :=
     System'To_Address (16#40017500#);
   HRTIM_TIMC_Base : constant System.Address :=
     System'To_Address (16#40017580#);
   HRTIM_TIMD_Base : constant System.Address :=
     System'To_Address (16#40017600#);
   HRTIM_TIME_Base : constant System.Address :=
     System'To_Address (16#40017680#);
   HRTIM_Common_Base : constant System.Address :=
     System'To_Address (16#40017780#);
   DFSDM_Base : constant System.Address :=
     System'To_Address (16#40017000#);
   TIM16_Base : constant System.Address :=
     System'To_Address (16#40014400#);
   TIM17_Base : constant System.Address :=
     System'To_Address (16#40014800#);
   TIM15_Base : constant System.Address :=
     System'To_Address (16#40014000#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#40011000#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#40004400#);
   USART3_Base : constant System.Address :=
     System'To_Address (16#40004800#);
   UART4_Base : constant System.Address :=
     System'To_Address (16#40004C00#);
   UART5_Base : constant System.Address :=
     System'To_Address (16#40005000#);
   USART6_Base : constant System.Address :=
     System'To_Address (16#40011400#);
   UART7_Base : constant System.Address :=
     System'To_Address (16#40007800#);
   UART8_Base : constant System.Address :=
     System'To_Address (16#40007C00#);
   TIM1_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   TIM8_Base : constant System.Address :=
     System'To_Address (16#40010400#);
   FDCAN1_Base : constant System.Address :=
     System'To_Address (16#4000A000#);
   FDCAN2_Base : constant System.Address :=
     System'To_Address (16#4000A400#);
   CAN_Msg_RAM_Base : constant System.Address :=
     System'To_Address (16#4000AC00#);
   CAN_CCU_Base : constant System.Address :=
     System'To_Address (16#4000A800#);
   MDIOS_Base : constant System.Address :=
     System'To_Address (16#40009400#);
   OPAMP_Base : constant System.Address :=
     System'To_Address (16#40009000#);
   SWPMI_Base : constant System.Address :=
     System'To_Address (16#40008800#);
   TIM2_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   TIM3_Base : constant System.Address :=
     System'To_Address (16#40000400#);
   TIM4_Base : constant System.Address :=
     System'To_Address (16#40000800#);
   TIM5_Base : constant System.Address :=
     System'To_Address (16#40000C00#);
   TIM12_Base : constant System.Address :=
     System'To_Address (16#40001800#);
   TIM13_Base : constant System.Address :=
     System'To_Address (16#40001C00#);
   TIM14_Base : constant System.Address :=
     System'To_Address (16#40002000#);
   TIM6_Base : constant System.Address :=
     System'To_Address (16#40001000#);
   TIM7_Base : constant System.Address :=
     System'To_Address (16#40001400#);

end STM32_SVD;

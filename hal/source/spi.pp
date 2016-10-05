



 

































 

 
 






 

































 














 

































 












 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

    typedef   signed char   int8_t;
    typedef unsigned char  uint8_t;
    typedef          short  int16_t;
    typedef unsigned short uint16_t;
    typedef          int    int32_t;
    typedef unsigned int   uint32_t;


    typedef          long long  int64_t;
    typedef unsigned long long uint64_t;

 

    typedef  int8_t   int_least8_t;
    typedef uint8_t  uint_least8_t;

    typedef  int16_t  int_least16_t;
    typedef uint16_t uint_least16_t;
    typedef  int32_t  int_least32_t;
    typedef uint32_t uint_least32_t;


    typedef  int64_t  int_least64_t;
    typedef uint64_t uint_least64_t;

 

    typedef  int32_t  int_fast8_t;
    typedef uint32_t uint_fast8_t;
    typedef  int32_t  int_fast16_t;
    typedef uint32_t uint_fast16_t;

    typedef  int32_t  int_fast32_t;
    typedef uint32_t uint_fast32_t;


    typedef  int64_t  int_fast64_t;
    typedef uint64_t uint_fast64_t;

 
    typedef          int intptr_t;
    typedef unsigned int uintptr_t;

 
    typedef          long long intmax_t;
    typedef unsigned long long uintmax_t;





 

 
















 







 







 




 































 






 
 
 
 
 
typedef uint64_t uint64;

typedef uint32_t uint32;

typedef uint16_t uint16;

typedef uint8_t uint8;

typedef _Bool boolean;

typedef int64_t sint64;

typedef int32_t sint32;

typedef int16_t sint16;

typedef int8_t sint8;

typedef float float32;

typedef double float64;


typedef uint8 Std_ReturnType;

typedef struct
{
    uint16 vendorID;
    uint16 moduleID;
    uint8  instanceID;
    uint8  sw_major_version;
    uint8  sw_minor_version;
    uint8  sw_patch_version;
} Std_VersionInfoType;

 
 
 

  typedef unsigned char StatusType;





 
 
 


 

	 

 
 
 
 



 



 

 
 
 
 

 
 


 
 

 
 
 

typedef boolean tBoolean;



 




 
typedef enum loopBackType 
{
    Digital_Lbk = 0U, 
    Analog_Lbk = 1U
}loopBackType_t;



 




 
typedef enum config_value_type
{
	InitialValue,
	CurrentValue
}config_value_type_t;


 
 

 
 
 
 

 
 

 
 













 

































 






 
 

 




 




 
typedef volatile struct gioBase
{
    uint32 GCR0;       
    uint32   rsvd;     
    uint32 INTDET;     
    uint32 POL;        
    uint32 ENASET;     
    uint32 ENACLR;     
    uint32 LVLSET;     
    uint32 LVLCLR;     
    uint32 FLG;        
    uint32 OFF1;       
    uint32 OFF2;       
    uint32 EMU1;       
	uint32 EMU2;       
} gioBASE_t;




 




 
typedef volatile struct gioPort
{
    uint32 DIR;     
    uint32 DIN;     
    uint32 DOUT;    
    uint32 DSET;    
    uint32 DCLR;    
    uint32 PDR;     
    uint32 PULDIS;  
    uint32 PSL;     
} gioPORT_t;






 





 





 

 
 





 
 

 




 




 
typedef volatile struct spiBase
{
    uint32  GCR0;                  
    uint32  GCR1;                  	
    uint32  INT0;                  	
    uint32  LVL;                   
    uint32  FLG;                   		
    uint32  PC0;                   
    uint32  PC1;                   
    uint32  PC2;                   
    uint32  PC3;                   
    uint32  PC4;                   
    uint32  PC5;                   
    uint32  PC6;                   
    uint32  PC7;                   
    uint32  PC8;                   
    uint32  DAT0;                  
    uint32  DAT1;                  
    uint32  BUF;                   
    uint32  EMU;                   
    uint32  DELAY;                 
    uint32  DEF;                   
    uint32  FMT0;                  
    uint32  FMT1;                  
    uint32  FMT2;                  
    uint32  FMT3;                  
    uint32  INTVECT0;              
    uint32  INTVECT1;              
    uint32  RESERVED[51U];         	
    uint32  IOLPKTSTCR;            
} spiBASE_t;





 







 





 







 





 







 





 







 





 







 

 
 







 
enum spiChipSelect
{
    SPI_CS_NONE = 0xFFU,
    SPI_CS_0    = 0xFEU,
    SPI_CS_1    = 0xFDU,
    SPI_CS_2    = 0xFBU,
    SPI_CS_3    = 0xF7U,
    SPI_CS_4    = 0xEFU,
    SPI_CS_5    = 0xDFU,
    SPI_CS_6    = 0xBFU,
    SPI_CS_7    = 0x7FU
};



 
enum spiPinSelect
{
    SPI_PIN_CS0    = 0U,
    SPI_PIN_CS1    = 1U,
    SPI_PIN_CS2    = 2U,
    SPI_PIN_CS3    = 3U,
    SPI_PIN_CS4    = 4U,
    SPI_PIN_CS5    = 5U,
    SPI_PIN_CS6    = 6U,
    SPI_PIN_CS7    = 7U,
    SPI_PIN_ENA    = 8U,
    SPI_PIN_CLK    = 9U,
    SPI_PIN_SIMO   = 10U,
    SPI_PIN_SOMI   = 11U,
    SPI_PIN_SIMO_1 = 17U,
    SPI_PIN_SIMO_2 = 18U,
    SPI_PIN_SIMO_3 = 19U,
    SPI_PIN_SIMO_4 = 20U,
    SPI_PIN_SIMO_5 = 21U,
    SPI_PIN_SIMO_6 = 22U,
    SPI_PIN_SIMO_7 = 23U,
    SPI_PIN_SOMI_1 = 25U,
    SPI_PIN_SOMI_2 = 26U,
    SPI_PIN_SOMI_3 = 27U,
    SPI_PIN_SOMI_4 = 28U,
    SPI_PIN_SOMI_5 = 29U,
    SPI_PIN_SOMI_6 = 30U,
    SPI_PIN_SOMI_7 = 31U
};



 
typedef enum dataformat
{
    SPI_FMT_0 = 0U,
    SPI_FMT_1 = 1U,
    SPI_FMT_2 = 2U,
    SPI_FMT_3 = 3U
}SPIDATAFMT_t;



 
typedef struct spiDAT1RegConfig
{
    boolean CS_HOLD;
    boolean WDEL;
    SPIDATAFMT_t DFSEL;
    uint8 CSNR;
}spiDAT1_t;



 
typedef enum SpiTxRxDataStatus
{
    SPI_READY = 0U,
    SPI_PENDING = 1U,
    SPI_COMPLETED = 2U
}SpiDataStatus_t;

 
 

typedef struct spi_config_reg
{
    uint32 CONFIG_GCR1;
    uint32 CONFIG_INT0;
    uint32 CONFIG_LVL;
    uint32 CONFIG_PC0;
    uint32 CONFIG_PC1;
    uint32 CONFIG_PC6;
    uint32 CONFIG_PC7;
    uint32 CONFIG_PC8;
    uint32 CONFIG_DELAY;
    uint32 CONFIG_FMT0;
    uint32 CONFIG_FMT1;
    uint32 CONFIG_FMT2;
    uint32 CONFIG_FMT3;
}spi_config_reg_t;



























 

 
void spiInit(void);
void spiSetFunctional(spiBASE_t *spi, uint32 port);
void spiEnableNotification(spiBASE_t *spi, uint32 flags);
void spiDisableNotification(spiBASE_t *spi, uint32 flags);
uint32 spiTransmitData(spiBASE_t *spi, spiDAT1_t *dataconfig_t, uint32 blocksize, uint16 * srcbuff);
void spiSendData(spiBASE_t *spi, spiDAT1_t *dataconfig_t, uint32 blocksize, uint16 * srcbuff);
uint32 spiReceiveData(spiBASE_t *spi, spiDAT1_t *dataconfig_t, uint32 blocksize, uint16 * destbuff);
void spiGetData(spiBASE_t *spi, spiDAT1_t *dataconfig_t, uint32 blocksize, uint16 * destbuff);
uint32 spiTransmitAndReceiveData(spiBASE_t *spi, spiDAT1_t *dataconfig_t, uint32 blocksize, uint16 * srcbuff, uint16 * destbuff);
void spiSendAndGetData(spiBASE_t *spi, spiDAT1_t *dataconfig_t, uint32 blocksize, uint16 * srcbuff, uint16 * destbuff);
void spiEnableLoopback(spiBASE_t *spi, loopBackType_t Loopbacktype);
void spiDisableLoopback(spiBASE_t *spi);
SpiDataStatus_t SpiTxStatus(spiBASE_t *spi);
SpiDataStatus_t SpiRxStatus(spiBASE_t *spi);
void spi4GetConfigValue(spi_config_reg_t *config_reg, config_value_type_t type);









 
void spiNotification(spiBASE_t *spi, uint32 flags);







 
void spiEndNotification(spiBASE_t *spi);

 
 
 












 

































 













 

































 




 
 

 




 




 
typedef volatile struct vimBase
{
    uint32      IRQINDEX;          
    uint32      FIQINDEX;          	
    uint32        rsvd1;           
    uint32        rsvd2;           
    uint32      FIRQPR0;           
    uint32      FIRQPR1;           
    uint32      FIRQPR2;           
    uint32      FIRQPR3;           
    uint32      INTREQ0;           
    uint32      INTREQ1;           
    uint32      INTREQ2;           
    uint32      INTREQ3;           
    uint32      REQMASKSET0;       
    uint32      REQMASKSET1;       
    uint32      REQMASKSET2;       
    uint32      REQMASKSET3;       
    uint32      REQMASKCLR0;       
    uint32      REQMASKCLR1;       
    uint32      REQMASKCLR2;       
    uint32      REQMASKCLR3;       
    uint32      WAKEMASKSET0;      
    uint32      WAKEMASKSET1;      
    uint32      WAKEMASKSET2;      
    uint32      WAKEMASKSET3;      
    uint32      WAKEMASKCLR0;      
    uint32      WAKEMASKCLR1;      
    uint32      WAKEMASKCLR2;      
    uint32      WAKEMASKCLR3;      
    uint32      IRQVECREG;         
    uint32      FIQVECREG;         
    uint32      CAPEVT;            	
    uint32        rsvd3;           
    uint32      CHANCTRL[32U];     
} vimBASE_t;


 
 



 
 


 





 
typedef void (*t_isrFuncPTR)(void);







 
typedef enum systemInterrupt
{
    SYS_IRQ = 0U,  
    SYS_FIQ = 1U   
}systemInterrupt_t;
 
 


 


 
 

 

extern void esmHighInterrupt(void);
extern void phantomInterrupt(void);
extern void vPortPreemptiveTick(void);
extern void can1HighLevelInterrupt(void);
extern void vPortYeildWithinAPI(void);

 
 



 
typedef struct vim_config_reg
{
    uint32 CONFIG_FIRQPR0;
    uint32 CONFIG_FIRQPR1;
    uint32 CONFIG_FIRQPR2;
    uint32 CONFIG_FIRQPR3;
    uint32 CONFIG_REQMASKSET0;
    uint32 CONFIG_REQMASKSET1;
    uint32 CONFIG_REQMASKSET2;
    uint32 CONFIG_REQMASKSET3;
    uint32 CONFIG_WAKEMASKSET0;
    uint32 CONFIG_WAKEMASKSET1;
    uint32 CONFIG_WAKEMASKSET2;
    uint32 CONFIG_WAKEMASKSET3;
    uint32 CONFIG_CAPEVT;
    uint32 CONFIG_CHANCTRL[32U];
} vim_config_reg_t;

 
					
					
					
					
						
						
						
						


















 
 
void vimInit(void);
void vimChannelMap(uint32 request, uint32 channel, t_isrFuncPTR handler);
void vimEnableInterrupt(uint32 channel, systemInterrupt_t inttype);
void vimDisableInterrupt(uint32 channel);
void vimGetConfigValue(vim_config_reg_t *config_reg, config_value_type_t type);
 
 
 




 
static volatile struct g_spiPacket
{
    spiDAT1_t g_spiDataFormat;
    uint32  tx_length;
    uint32  rx_length;
    uint16  * txdata_ptr;
    uint16  * rxdata_ptr;
    SpiDataStatus_t tx_data_status;
    SpiDataStatus_t rx_data_status;
} g_spiPacket_t[5U];





 
 
 
 
void spiInit(void)
{
 
 






     

     
    ((spiBASE_t *)0xFFF7FA00U)->GCR0 = 0U;
    ((spiBASE_t *)0xFFF7FA00U)->GCR0 = 1U;

     
    ((spiBASE_t *)0xFFF7FA00U)->GCR1 = (((spiBASE_t *)0xFFF7FA00U)->GCR1 & 0xFFFFFFFCU) | ((uint32)((uint32)1U << 1U)   
                  | 1U);   

     
    ((spiBASE_t *)0xFFF7FA00U)->INT0 = (((spiBASE_t *)0xFFF7FA00U)->INT0 & 0xFEFFFFFFU) | (uint32)((uint32)0U << 24U);   

     
    ((spiBASE_t *)0xFFF7FA00U)->DELAY = (uint32)((uint32)0U << 24U)   
                   | (uint32)((uint32)0U << 16U)   
                   | (uint32)((uint32)0U << 8U)    
                   | (uint32)((uint32)0U << 0U);   

     
    ((spiBASE_t *)0xFFF7FA00U)->FMT0 = (uint32)((uint32)0U << 24U)   
                  | (uint32)((uint32)0U << 23U)   
                  | (uint32)((uint32)0U << 22U)   
                  | (uint32)((uint32)0U << 21U)   
                  | (uint32)((uint32)0U << 20U)   
                  | (uint32)((uint32)0U << 17U)   
                  | (uint32)((uint32)0U << 16U)   
                  | (uint32)((uint32)79U << 8U)  
                  | (uint32)((uint32)16U << 0U);   

     
    ((spiBASE_t *)0xFFF7FA00U)->FMT1 = (uint32)((uint32)0U << 24U)   
                  | (uint32)((uint32)0U << 23U)   
                  | (uint32)((uint32)0U << 22U)   
                  | (uint32)((uint32)0U << 21U)   
                  | (uint32)((uint32)0U << 20U)   
                  | (uint32)((uint32)0U << 17U)   
                  | (uint32)((uint32)0U << 16U)   
                  | (uint32)((uint32)79U << 8U)  
                  | (uint32)((uint32)16U << 0U);   

     
    ((spiBASE_t *)0xFFF7FA00U)->FMT2 = (uint32)((uint32)0U << 24U)   
                  | (uint32)((uint32)0U << 23U)   
                  | (uint32)((uint32)0U << 22U)   
                  | (uint32)((uint32)0U << 21U)   
                  | (uint32)((uint32)0U << 20U)   
                  | (uint32)((uint32)0U << 17U)   
                  | (uint32)((uint32)0U << 16U)   
                  | (uint32)((uint32)79U << 8U)  
                  | (uint32)((uint32)16U << 0U);   

     
    ((spiBASE_t *)0xFFF7FA00U)->FMT3 = (uint32)((uint32)0U << 24U)   
                  | (uint32)((uint32)0U << 23U)   
                  | (uint32)((uint32)0U << 22U)   
                  | (uint32)((uint32)0U << 21U)   
                  | (uint32)((uint32)0U << 20U)   
                  | (uint32)((uint32)0U << 17U)   
                  | (uint32)((uint32)0U << 16U)   
                  | (uint32)((uint32)79U << 8U)  
                  | (uint32)((uint32)16U << 0U);   

     
    ((spiBASE_t *)0xFFF7FA00U)->LVL = (uint32)((uint32)0U << 9U)   
                 | (uint32)((uint32)0U << 8U)   
                 | (uint32)((uint32)0U << 6U)   
                 | (uint32)((uint32)0U << 4U)   
                 | (uint32)((uint32)0U << 3U)   
                 | (uint32)((uint32)0U << 2U)   
                 | (uint32)((uint32)0U << 1U)  
                 | (uint32)((uint32)0U << 0U);   

     
    ((spiBASE_t *)0xFFF7FA00U)->FLG |= 0xFFFFU;

     
    ((spiBASE_t *)0xFFF7FA00U)->INT0 = (((spiBASE_t *)0xFFF7FA00U)->INT0 & 0xFFFF0000U)
                  | (uint32)((uint32)0U << 9U)   
                  | (uint32)((uint32)0U << 8U)   
                  | (uint32)((uint32)0U << 6U)   
                  | (uint32)((uint32)0U << 4U)   
                  | (uint32)((uint32)0U << 3U)   
                  | (uint32)((uint32)0U << 2U)   
                  | (uint32)((uint32)0U << 1U)  
                  | (uint32)((uint32)0U << 0U);   

     

     
    ((spiBASE_t *)0xFFF7FA00U)->PC3 =    (uint32)((uint32)1U << 0U)   
                    | (uint32)((uint32)0U << 8U)   
                    | (uint32)((uint32)0U << 9U)   
                    | (uint32)((uint32)0U << 10U)   
                    | (uint32)((uint32)0U << 11U);  

     
    ((spiBASE_t *)0xFFF7FA00U)->PC1  =   (uint32)((uint32)1U << 0U)   
                    | (uint32)((uint32)0U << 8U)   
                    | (uint32)((uint32)1U << 9U)   
                    | (uint32)((uint32)1U << 10U)   
                    | (uint32)((uint32)0U << 11U);  

     
    ((spiBASE_t *)0xFFF7FA00U)->PC6  =   (uint32)((uint32)0U << 0U)   
                    | (uint32)((uint32)0U << 8U)   
                    | (uint32)((uint32)0U << 9U)   
                    | (uint32)((uint32)0U << 10U)   
                    | (uint32)((uint32)0U << 11U);  

     
    ((spiBASE_t *)0xFFF7FA00U)->PC8  =   (uint32)((uint32)1U << 0U)   
                    | (uint32)((uint32)1U << 8U)   
                    | (uint32)((uint32)1U << 9U)   
                    | (uint32)((uint32)1U << 10U)   
                    | (uint32)((uint32)1U << 11U);  

     
    ((spiBASE_t *)0xFFF7FA00U)->PC7  =   (uint32)((uint32)0U << 0U)   
                    | (uint32)((uint32)0U << 8U)   
                    | (uint32)((uint32)0U << 9U)   
                    | (uint32)((uint32)0U << 10U)   
                    | (uint32)((uint32)0U << 11U);  

     
    ((spiBASE_t *)0xFFF7FA00U)->PC0  =   (uint32)((uint32)1U << 0U)   
                    | (uint32)((uint32)1U << 8U)   
                    | (uint32)((uint32)1U << 9U)   
                    | (uint32)((uint32)1U << 10U)   
                    | (uint32)((uint32)1U << 11U);  

     
    g_spiPacket_t[3U].tx_data_status  = SPI_READY;
    g_spiPacket_t[3U].rx_data_status  = SPI_READY;

     
    ((spiBASE_t *)0xFFF7FA00U)->GCR1 = (((spiBASE_t *)0xFFF7FA00U)->GCR1 & 0xFEFFFFFFU) | 0x01000000U;


 
 
}










 
 
 
 
void spiSetFunctional(spiBASE_t *spi, uint32 port)
{
 
 

    spi->PC0 = port;

 
 
}












 
 
 
 
uint32 spiReceiveData(spiBASE_t *spi, spiDAT1_t *dataconfig_t, uint32 blocksize, uint16 * destbuff)
{
 
 
    uint32 Chip_Select_Hold = (dataconfig_t->CS_HOLD) ? 0x10000000U : 0U;
    uint32 WDelay = (dataconfig_t->WDEL) ? 0x04000000U : 0U;
    SPIDATAFMT_t DataFormat = dataconfig_t->DFSEL;
    uint8 ChipSelect = dataconfig_t->CSNR;

    while(blocksize != 0U)
    {
        if((spi->FLG & 0x000000FFU) !=0U)
        {
          break;
        }
        if(blocksize == 1U)
        {
           Chip_Select_Hold = 0U;
        }
		
         
        spi->DAT1 = ((uint32)DataFormat << 24U) |
                    ((uint32)ChipSelect << 16U) |
                    (WDelay)            |
                    (Chip_Select_Hold)  |
                    (0x00000000U);
         
        while((spi->FLG & 0x00000100U) != 0x00000100U)
        {
        }  
         
        *destbuff = (uint16)spi->BUF;
         
        destbuff++;
        blocksize--;
    }

 
 

    return (spi->FLG & 0xFFU);
}












 
 
 
 
void spiGetData(spiBASE_t *spi, spiDAT1_t *dataconfig_t, uint32 blocksize, uint16 * destbuff)
{
     uint32 index = (spi == ((spiBASE_t *)0xFFF7F400U)) ? 0U :((spi==((spiBASE_t *)0xFFF7F600U)) ? 1U : ((spi==((spiBASE_t *)0xFFF7F800U)) ? 2U:((spi==((spiBASE_t *)0xFFF7FA00U)) ? 3U:4U)));

 
 

     g_spiPacket_t[index].rx_length = blocksize;
     g_spiPacket_t[index].rxdata_ptr   = destbuff;
     g_spiPacket_t[index].g_spiDataFormat = *dataconfig_t;
     g_spiPacket_t[index].rx_data_status = SPI_PENDING;

     spi->INT0 |= 0x0100U;

 
 
}












 
 
 
 
uint32 spiTransmitData(spiBASE_t *spi, spiDAT1_t *dataconfig_t, uint32 blocksize, uint16 * srcbuff)
{
    volatile uint32 SpiBuf;
    uint16 Tx_Data;
    uint32 Chip_Select_Hold = (dataconfig_t->CS_HOLD) ? 0x10000000U : 0U;
    uint32 WDelay = (dataconfig_t->WDEL) ? 0x04000000U : 0U;
    SPIDATAFMT_t DataFormat = dataconfig_t->DFSEL;
    uint8 ChipSelect = dataconfig_t->CSNR;

 
 
    while(blocksize != 0U)
    {
        if((spi->FLG & 0x000000FFU) !=0U)
        {
           break;
        }

        if(blocksize == 1U)
        {
           Chip_Select_Hold = 0U;
        }
         
        Tx_Data = *srcbuff;

        spi->DAT1 =  ((uint32)DataFormat << 24U) |
                     ((uint32)ChipSelect << 16U) |
                     (WDelay)           |
                     (Chip_Select_Hold) |
                     (uint32)Tx_Data;
         
        srcbuff++;
         
        while((spi->FLG & 0x00000100U) != 0x00000100U)
        {
        }  
        SpiBuf = spi->BUF;

        blocksize--;
    }

 
 

    return (spi->FLG & 0xFFU);
}












 
 
 
 
void spiSendData(spiBASE_t *spi, spiDAT1_t *dataconfig_t, uint32 blocksize, uint16 * srcbuff)
{
        uint32 index = (spi == ((spiBASE_t *)0xFFF7F400U)) ? 0U :((spi==((spiBASE_t *)0xFFF7F600U)) ? 1U : ((spi==((spiBASE_t *)0xFFF7F800U)) ? 2U:((spi==((spiBASE_t *)0xFFF7FA00U)) ? 3U:4U)));

 
 

     g_spiPacket_t[index].tx_length = blocksize;
     g_spiPacket_t[index].txdata_ptr   = srcbuff;
     g_spiPacket_t[index].g_spiDataFormat = *dataconfig_t;
     g_spiPacket_t[index].tx_data_status = SPI_PENDING;

     spi->INT0 |= 0x0200U;

 
 
}













 
 
 
 
uint32 spiTransmitAndReceiveData(spiBASE_t *spi, spiDAT1_t *dataconfig_t, uint32 blocksize, uint16 * srcbuff, uint16 * destbuff)
{
    uint16 Tx_Data;
    uint32 Chip_Select_Hold = (dataconfig_t->CS_HOLD) ? 0x10000000U : 0U;
    uint32 WDelay = (dataconfig_t->WDEL) ? 0x04000000U : 0U;
    SPIDATAFMT_t DataFormat = dataconfig_t->DFSEL;
    uint8 ChipSelect = dataconfig_t->CSNR;

 
 
    while(blocksize != 0U)
    {
        if((spi->FLG & 0x000000FFU) != 0U)
        {
           break;
        }

        if(blocksize == 1U)
        {
           Chip_Select_Hold = 0U;
        }
         
        Tx_Data = *srcbuff;

        spi->DAT1 =((uint32)DataFormat << 24U) |
                   ((uint32)ChipSelect << 16U) |
                   (WDelay)           |
                   (Chip_Select_Hold) |
                   (uint32)Tx_Data;
         
        srcbuff++;
         
        while((spi->FLG & 0x00000100U) != 0x00000100U)
        {
        }  
         
        *destbuff = (uint16)spi->BUF;
         
        destbuff++;

        blocksize--;
    }

 
 

    return (spi->FLG & 0xFFU);
}

 
 










 
 
 
 
void spiSendAndGetData(spiBASE_t *spi, spiDAT1_t *dataconfig_t, uint32 blocksize, uint16 * srcbuff, uint16 * destbuff)
{

 
 

    uint32 index = (spi == ((spiBASE_t *)0xFFF7F400U)) ? 0U :((spi==((spiBASE_t *)0xFFF7F600U)) ? 1U : ((spi==((spiBASE_t *)0xFFF7F800U)) ? 2U:((spi==((spiBASE_t *)0xFFF7FA00U)) ? 3U:4U)));

    g_spiPacket_t[index].tx_length       = blocksize;
    g_spiPacket_t[index].rx_length       = blocksize;
    g_spiPacket_t[index].txdata_ptr      = srcbuff;
    g_spiPacket_t[index].rxdata_ptr      = destbuff;
    g_spiPacket_t[index].g_spiDataFormat = *dataconfig_t;
    g_spiPacket_t[index].tx_data_status  = SPI_PENDING;
    g_spiPacket_t[index].rx_data_status  = SPI_PENDING;

    spi->INT0 |= 0x0300U;

 
 
}








 
 
 
 
SpiDataStatus_t SpiTxStatus(spiBASE_t *spi)
{

 
 

    uint32 index = (spi == ((spiBASE_t *)0xFFF7F400U)) ? 0U :((spi==((spiBASE_t *)0xFFF7F600U)) ? 1U : ((spi==((spiBASE_t *)0xFFF7F800U)) ? 2U:((spi==((spiBASE_t *)0xFFF7FA00U)) ? 3U:4U)));
    return(g_spiPacket_t[index].tx_data_status);
}

 
 








 
 
 
 
SpiDataStatus_t SpiRxStatus(spiBASE_t *spi)
{

 
 

    uint32 index = (spi == ((spiBASE_t *)0xFFF7F400U)) ? 0U :((spi==((spiBASE_t *)0xFFF7F600U)) ? 1U : ((spi==((spiBASE_t *)0xFFF7F800U)) ? 2U:((spi==((spiBASE_t *)0xFFF7FA00U)) ? 3U:4U)));
    return(g_spiPacket_t[index].rx_data_status);
}

 
 







 
 
 
 
void spiEnableLoopback(spiBASE_t *spi, loopBackType_t Loopbacktype)
{
 
 

     
    spi->IOLPKTSTCR = 0U;

     
    spi->IOLPKTSTCR = (uint32)0x00000A00U
                    | (uint32)((uint32)Loopbacktype << 1U);

 
 
}

 
 






 
 
 
 
void spiDisableLoopback(spiBASE_t *spi)
{
 
 

     
    spi->IOLPKTSTCR = 0x00000500U;

 
 
}

 
 





 
 
 
 
void spiEnableNotification(spiBASE_t *spi, uint32 flags)
{
 
 

    spi->INT0 = (spi->INT0 & 0xFFFF0000U) | flags;

 
 
}

 
 





 
 
 
 
void spiDisableNotification(spiBASE_t *spi, uint32 flags)
{
 
 

    spi->INT0 = (spi->INT0 & (~(flags)));

 
 
}


















 
 
 
 
void spi4GetConfigValue(spi_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    {
        config_reg->CONFIG_GCR1  = (0x01000000U | (uint32)((uint32)1U << 1U) | 1U);
        config_reg->CONFIG_INT0  = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 6U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 0U));
        config_reg->CONFIG_LVL   = ((uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 6U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 0U));
        config_reg->CONFIG_PC0   = ((uint32)((uint32)1U << 0U) | (uint32)((uint32)1U << 8U) | (uint32)((uint32)1U << 9U) | (uint32)((uint32)1U << 10U) | (uint32)((uint32)1U << 16U) | (uint32)((uint32)1U << 11U) | (uint32)((uint32)1U << 24U));
        config_reg->CONFIG_PC1   = ((uint32)((uint32)1U << 0U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)1U << 9U) | (uint32)((uint32)1U << 10U) | (uint32)((uint32)1U << 16U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 24U));
        config_reg->CONFIG_PC6   = ((uint32)((uint32)0U << 0U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 10U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 24U));
        config_reg->CONFIG_PC7   = ((uint32)((uint32)0U << 0U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 10U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 24U));
        config_reg->CONFIG_PC8   = ((uint32)((uint32)1U << 0U) | (uint32)((uint32)1U << 8U) | (uint32)((uint32)1U << 9U) | (uint32)((uint32)1U << 10U) | (uint32)((uint32)1U << 16U) | (uint32)((uint32)1U << 11U) | (uint32)((uint32)1U << 24U));
        config_reg->CONFIG_DELAY = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 0U));
        config_reg->CONFIG_FMT0  = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)79U << 8U) | (uint32)((uint32)16U << 0U));
        config_reg->CONFIG_FMT1  = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)79U << 8U) | (uint32)((uint32)16U << 0U));
        config_reg->CONFIG_FMT2  = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)79U << 8U) | (uint32)((uint32)16U << 0U));
        config_reg->CONFIG_FMT3  = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)79U << 8U) | (uint32)((uint32)16U << 0U));
    }
    else
    {
     
        config_reg->CONFIG_GCR1  = ((spiBASE_t *)0xFFF7FA00U)->GCR1;
        config_reg->CONFIG_INT0  = ((spiBASE_t *)0xFFF7FA00U)->INT0;
        config_reg->CONFIG_LVL   = ((spiBASE_t *)0xFFF7FA00U)->LVL;
        config_reg->CONFIG_PC0   = ((spiBASE_t *)0xFFF7FA00U)->PC0;
        config_reg->CONFIG_PC1   = ((spiBASE_t *)0xFFF7FA00U)->PC1;
        config_reg->CONFIG_PC6   = ((spiBASE_t *)0xFFF7FA00U)->PC6;
        config_reg->CONFIG_PC7   = ((spiBASE_t *)0xFFF7FA00U)->PC7;
        config_reg->CONFIG_PC8   = ((spiBASE_t *)0xFFF7FA00U)->PC8;
        config_reg->CONFIG_DELAY = ((spiBASE_t *)0xFFF7FA00U)->DELAY ;
        config_reg->CONFIG_FMT0  = ((spiBASE_t *)0xFFF7FA00U)->FMT0;
        config_reg->CONFIG_FMT1  = ((spiBASE_t *)0xFFF7FA00U)->FMT1;
        config_reg->CONFIG_FMT2  = ((spiBASE_t *)0xFFF7FA00U)->FMT2;
        config_reg->CONFIG_FMT3  = ((spiBASE_t *)0xFFF7FA00U)->FMT3;
    }
}











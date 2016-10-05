




 

































 


 
 






 

































 















 

































 












 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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






 





 





 

 
 





 
 

 




 




 
typedef volatile struct mibspiBase
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
    uint32  SRSEL;                 
    uint32  PMCTRL;                
    uint32  MIBSPIE;               
    uint32  TGITENST;              
    uint32  TGITENCR;              
    uint32  TGITLVST;              
    uint32  TGITLVCR;              
    uint32  TGINTFLG;              	
    uint32    rsvd1[2U];            
    uint32  TICKCNT;               
    uint32  LTGPEND;               	
    uint32  TGCTRL[16U];           
    uint32  DMACTRL[8U];           
    uint32  DMACOUNT[8U];          
    uint32  DMACNTLEN;             
    uint32    rsvd2;               
    uint32  UERRCTRL;              	
    uint32  UERRSTAT;              	  
    uint32  UERRADDRRX;            	
    uint32  UERRADDRTX;            	
    uint32  RXOVRN_BUF_ADDR;       
    uint32  IOLPKTSTCR;            
    uint32  EXT_PRESCALE1;         
    uint32  EXT_PRESCALE2;         
} mibspiBASE_t;






 







 





 







 





 







 






 




 
typedef volatile struct mibspiRamBase
{
    struct 
    {
     uint16  control;   
     uint16  data;      
    } tx[128];
    struct
    {
	 uint16 flags;     
     uint16 data;      
    } rx[128];
} mibspiRAM_t;






 





 





 





 





 






 

 
 




 
 



 
enum triggerEvent
{
    TRG_NEVER   = 0U,
    TRG_RISING  = 1U,
    TRG_FALLING = 2U,
    TRG_BOTH    = 3U,
    TRG_HIGH    = 5U,
    TRG_LOW     = 6U,
    TRG_ALWAYS  = 7U
};



 
enum triggerSource
{
    TRG_DISABLED,
    TRG_GIOA0,
    TRG_GIOA1,
    TRG_GIOA2,
    TRG_GIOA3,
    TRG_GIOA4,
    TRG_GIOA5,
    TRG_GIOA6,
    TRG_GIOA7,
    TRG_HET1_8,
    TRG_HET1_10,
    TRG_HET1_12,
    TRG_HET1_14,
    TRG_HET1_16,
    TRG_HET1_18,
    TRG_TICK
};




 
enum mibspiPinSelect
{
    PIN_CS0 = 0U,
    PIN_CS1 = 1U,
    PIN_CS2 = 2U,
    PIN_CS3 = 3U,
    PIN_CS4 = 4U,
    PIN_CS5 = 5U,
    PIN_CS6 = 6U,
    PIN_CS7 = 7U,
    PIN_ENA = 8U,
    PIN_CLK = 9U,
    PIN_SIMO = 10U,
    PIN_SOMI = 11U,
   PIN_SIMO_1 = 17U,
   PIN_SIMO_2 = 18U,
   PIN_SIMO_3 = 19U,
   PIN_SIMO_4 = 20U,
   PIN_SIMO_5 = 21U,
   PIN_SIMO_6 = 22U,
   PIN_SIMO_7 = 23U,
   PIN_SOMI_1 = 25U,
   PIN_SOMI_2 = 26U,
   PIN_SOMI_3 = 27U,
   PIN_SOMI_4 = 28U,
   PIN_SOMI_5 = 29U,
   PIN_SOMI_6 = 30U,
   PIN_SOMI_7 = 31U
};




 
enum chipSelect
{
    CS_NONE = 0xFFU,
    CS_0    = 0xFEU,
    CS_1    = 0xFDU,
    CS_2    = 0xFBU,
    CS_3    = 0xF7U,
    CS_4    = 0xEFU,
    CS_5    = 0xDFU,
    CS_6    = 0xBFU,
    CS_7    = 0x7FU
};





 
typedef enum mibspiPmode
{
    PMODE_NORMAL        = 0x0U,
    PMODE_2_DATALINE    = 0x1U,
    PMODE_4_DATALINE    = 0x2U,
    PMODE_8_DATALINE    = 0x3U
}mibspiPmode_t;





 
typedef enum mibspiDFMT
{
    DATA_FORMAT0    = 0x0U,
    DATA_FORMAT1    = 0x1U,
    DATA_FORMAT2    = 0x2U,
    DATA_FORMAT3    = 0x3U
}mibspiDFMT_t;

typedef struct mibspi_config_reg
{
    uint32 CONFIG_GCR1;
    uint32 CONFIG_INT0;
    uint32 CONFIG_LVL;
    uint32 CONFIG_PCFUN;
    uint32 CONFIG_PCDIR;
    uint32 CONFIG_PCPDR;
    uint32 CONFIG_PCDIS;
    uint32 CONFIG_PCPSL;
    uint32 CONFIG_DELAY;
    uint32 CONFIG_FMT0;
    uint32 CONFIG_FMT1;
    uint32 CONFIG_FMT2;
    uint32 CONFIG_FMT3;
    uint32 CONFIG_MIBSPIE;
    uint32 CONFIG_LTGPEND;
    uint32 CONFIG_TGCTRL[8U];
    uint32 CONFIG_UERRCTRL;
}mibspi_config_reg_t;






































 

 
void mibspiInit(void);
void mibspiSetFunctional(mibspiBASE_t *mibspi, uint32 port);
void mibspiSetData(mibspiBASE_t *mibspi, uint32 group, uint16 * data);
uint32 mibspiGetData(mibspiBASE_t *mibspi, uint32 group, uint16 * data);
void mibspiTransfer(mibspiBASE_t *mibspi, uint32 group);
boolean mibspiIsTransferComplete(mibspiBASE_t *mibspi, uint32 group);
void mibspiEnableGroupNotification(mibspiBASE_t *mibspi, uint32 group, uint32 level);
void mibspiDisableGroupNotification(mibspiBASE_t *mibspi, uint32 group);
void mibspiEnableLoopback(mibspiBASE_t *mibspi, loopBackType_t Loopbacktype);
void mibspiDisableLoopback(mibspiBASE_t *mibspi);
void mibspiPmodeSet(mibspiBASE_t *mibspi, mibspiPmode_t Pmode, mibspiDFMT_t DFMT);
void mibspi1GetConfigValue(mibspi_config_reg_t *config_reg, config_value_type_t type);
void mibspi3GetConfigValue(mibspi_config_reg_t *config_reg, config_value_type_t type);
void mibspi5GetConfigValue(mibspi_config_reg_t *config_reg, config_value_type_t type);









 
void mibspiNotification(mibspiBASE_t *mibspi, uint32 flags);










 
void mibspiGroupNotification(mibspiBASE_t *mibspi, uint32 group);

 
 

 











 

































 













 

































 




 
 

 




 




 
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
 
 
 





 
 
 
 
void mibspiInit(void)
{
uint32 i ;

 
 


     

     
    ((mibspiBASE_t *)0xFFF7F400U)->GCR0 = 0U;
    ((mibspiBASE_t *)0xFFF7F400U)->GCR0 = 1U;

     
    ((mibspiBASE_t *)0xFFF7F400U)->MIBSPIE = (((mibspiBASE_t *)0xFFF7F400U)->MIBSPIE & 0xFFFFFFFEU) | 1U;

     
    ((mibspiBASE_t *)0xFFF7F400U)->GCR1 = (((mibspiBASE_t *)0xFFF7F400U)->GCR1 & 0xFFFFFFFCU) | ((uint32)((uint32)1U << 1U)   
                  | 1U);   

     
    ((mibspiBASE_t *)0xFFF7F400U)->INT0 = (((mibspiBASE_t *)0xFFF7F400U)->INT0 & 0xFEFFFFFFU) | (uint32)((uint32)0U << 24U);   

     
    ((mibspiBASE_t *)0xFFF7F400U)->DELAY = (uint32)((uint32)0U << 24U)   
                      | (uint32)((uint32)0U << 16U)   
                      | (uint32)((uint32)0U << 8U)    
                      | (uint32)((uint32)0U << 0U);   

     
    ((mibspiBASE_t *)0xFFF7F400U)->FMT0 = (uint32)((uint32)0U << 24U)   
                     | (uint32)((uint32)0U << 23U)   
                     | (uint32)((uint32)0U << 22U)   
                     | (uint32)((uint32)0U << 21U)   
                     | (uint32)((uint32)0U << 20U)   
                     | (uint32)((uint32)0U << 17U)   
                     | (uint32)((uint32)0U << 16U)   
                     | (uint32)((uint32)79U << 8U)   
                     | (uint32)((uint32)16U << 0U);  

     
    ((mibspiBASE_t *)0xFFF7F400U)->FMT1 = (uint32)((uint32)0U << 24U)   
                     | (uint32)((uint32)0U << 23U)   
                     | (uint32)((uint32)0U << 22U)   
                     | (uint32)((uint32)0U << 21U)   
                     | (uint32)((uint32)0U << 20U)   
                     | (uint32)((uint32)0U << 17U)   
                     | (uint32)((uint32)0U << 16U)   
                     | (uint32)((uint32)79U << 8U)   
                     | (uint32)((uint32)16U << 0U);  

     
    ((mibspiBASE_t *)0xFFF7F400U)->FMT2 = (uint32)((uint32)0U << 24U)   
                     | (uint32)((uint32)0U << 23U)   
                     | (uint32)((uint32)0U << 22U)   
                     | (uint32)((uint32)0U << 21U)   
                     | (uint32)((uint32)0U << 20U)   
                     | (uint32)((uint32)0U << 17U)   
                     | (uint32)((uint32)0U << 16U)   
                     | (uint32)((uint32)79U << 8U)   
                     | (uint32)((uint32)16U << 0U);  

     
    ((mibspiBASE_t *)0xFFF7F400U)->FMT3 = (uint32)((uint32)0U << 24U)   
                     | (uint32)((uint32)0U << 23U)   
                     | (uint32)((uint32)0U << 22U)   
                     | (uint32)((uint32)0U << 21U)   
                     | (uint32)((uint32)0U << 20U)   
                     | (uint32)((uint32)0U << 17U)   
                     | (uint32)((uint32)0U << 16U)   
                     | (uint32)((uint32)79U << 8U)   
                     | (uint32)((uint32)16U << 0U);  

     
    ((mibspiBASE_t *)0xFFF7F400U)->DEF = (uint32)(0xFFU);

     
     
    while ((((mibspiBASE_t *)0xFFF7F400U)->FLG & 0x01000000U) != 0U)
    {
    }  

     
    ((mibspiBASE_t *)0xFFF7F400U)->UERRCTRL = (((mibspiBASE_t *)0xFFF7F400U)->UERRCTRL & 0xFFFFFFF0U) | (0x00000005U);

     
    ((mibspiBASE_t *)0xFFF7F400U)->TGCTRL[0U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)0U << 8U);   

    ((mibspiBASE_t *)0xFFF7F400U)->TGCTRL[1U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)8U << 8U);   

    ((mibspiBASE_t *)0xFFF7F400U)->TGCTRL[2U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)(8U+0U) << 8U);   

    ((mibspiBASE_t *)0xFFF7F400U)->TGCTRL[3U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)(8U+0U+0U) << 8U);   

    ((mibspiBASE_t *)0xFFF7F400U)->TGCTRL[4U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)(8U+0U+0U+0U) << 8U);   

    ((mibspiBASE_t *)0xFFF7F400U)->TGCTRL[5U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)(8U+0U+0U+0U+0U) << 8U);   

    ((mibspiBASE_t *)0xFFF7F400U)->TGCTRL[6U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)(8U+0U+0U+0U+0U+0U) << 8U);   

    ((mibspiBASE_t *)0xFFF7F400U)->TGCTRL[7U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)(8U+0U+0U+0U+0U+0U+0U) << 8U);   


    ((mibspiBASE_t *)0xFFF7F400U)->TGCTRL[8U] = (uint32)(8U+0U+0U+0U+0U+0U+0U+0U) << 8U;

    ((mibspiBASE_t *)0xFFF7F400U)->LTGPEND = (((mibspiBASE_t *)0xFFF7F400U)->LTGPEND & 0xFFFF00FFU) | (uint32)((uint32)((8U+0U+0U+0U+0U+0U+0U+0U)-1U) << 8U);

     
    {
        i = 0U;

        {


            while (i < (8U-1U))
            {
                ((mibspiRAM_t *)0xFF0E0000U)->tx[i].control = (uint16)((uint16)4U << 13U)   
                                          | (uint16)((uint16)0U << 12U)   
                                          | (uint16)((uint16)0U << 10U)   
                                          | (uint16)((uint16)0U << 11U)   
                                          | (uint16)((uint16)0U << 8U)   
										   
                                          | ((uint16)(~((uint16)0xFFU ^ (uint16)CS_0)) & (uint16)0x00FFU);   
                i++;
            }
            ((mibspiRAM_t *)0xFF0E0000U)->tx[i].control = (uint16)((uint16)4U << 13U)   
                                      | (uint16)((uint16)0U << 12U)  
                                      | (uint16)((uint16)0U << 10U)   
                                      | (uint16)((uint16)0U << 8U)   
										   
                                      | ((uint16)(~((uint16)0xFFU ^ (uint16)CS_0)) & (uint16)0x00FFU);   


            i++;
        }







    }

     
    ((mibspiBASE_t *)0xFFF7F400U)->LVL = (uint32)((uint32)0U << 9U)   
                    | (uint32)((uint32)0U << 8U)   
                    | (uint32)((uint32)0U << 6U)   
                    | (uint32)((uint32)0U << 4U)   
                    | (uint32)((uint32)0U << 3U)   
                    | (uint32)((uint32)0U << 2U)   
                    | (uint32)((uint32)0U << 1U)   
                    | (uint32)((uint32)0U << 0U);  

     
    ((mibspiBASE_t *)0xFFF7F400U)->FLG |= 0xFFFFU;

     
    ((mibspiBASE_t *)0xFFF7F400U)->INT0 = (((mibspiBASE_t *)0xFFF7F400U)->INT0 & 0xFFFF0000U)
                     | (uint32)((uint32)0U << 9U)   
                     | (uint32)((uint32)0U << 8U)   
                     | (uint32)((uint32)0U << 6U)   
                     | (uint32)((uint32)0U << 4U)   
                     | (uint32)((uint32)0U << 3U)   
                     | (uint32)((uint32)0U << 2U)   
                     | (uint32)((uint32)0U << 1U)   
                     | (uint32)((uint32)0U << 0U);  

     

     
    ((mibspiBASE_t *)0xFFF7F400U)->PC3 = (uint32)((uint32)1U << 0U)   
                    | (uint32)((uint32)1U << 1U)   
                    | (uint32)((uint32)1U << 2U)   
                    | (uint32)((uint32)1U << 3U)   
                    | (uint32)((uint32)1U << 4U)   
                    | (uint32)((uint32)1U << 5U)   
                    | (uint32)((uint32)0U << 8U)   
                    | (uint32)((uint32)0U << 9U)   
                    | (uint32)((uint32)0U << 10U)   
                    | (uint32)((uint32)0U << 11U)   
                    | (uint32)((uint32)0U << 17U)   
                    | (uint32)((uint32)0U << 25U);  

     
    ((mibspiBASE_t *)0xFFF7F400U)->PC1 = (uint32)((uint32)1U << 0U)   
                    | (uint32)((uint32)1U << 1U)   
                    | (uint32)((uint32)1U << 2U)   
                    | (uint32)((uint32)1U << 3U)   
                    | (uint32)((uint32)1U << 4U)   
                    | (uint32)((uint32)1U << 5U)   
                    | (uint32)((uint32)0U << 8U)   
                    | (uint32)((uint32)1U << 9U)   
                    | (uint32)((uint32)1U << 10U)   
                    | (uint32)((uint32)0U << 11U)   
                    | (uint32)((uint32)0U << 17U)   
                    | (uint32)((uint32)0U << 25U);  

     
    ((mibspiBASE_t *)0xFFF7F400U)->PC6 = (uint32)((uint32)0U << 0U)   
                    | (uint32)((uint32)0U << 1U)   
                    | (uint32)((uint32)0U << 2U)   
                    | (uint32)((uint32)0U << 3U)   
                    | (uint32)((uint32)0U << 4U)   
                    | (uint32)((uint32)0U << 5U)   
                    | (uint32)((uint32)0U << 8U)   
                    | (uint32)((uint32)0U << 9U)   
                    | (uint32)((uint32)0U << 10U)   
                    | (uint32)((uint32)0U << 11U)   
                    | (uint32)((uint32)0U << 17U)   
                    | (uint32)((uint32)0U << 25U);  

     
    ((mibspiBASE_t *)0xFFF7F400U)->PC8 = (uint32)((uint32)1U << 0U)   
                    | (uint32)((uint32)1U << 1U)   
                    | (uint32)((uint32)1U << 2U)   
                    | (uint32)((uint32)1U << 3U)   
                    | (uint32)((uint32)1U << 4U)   
                    | (uint32)((uint32)1U << 5U)   
                    | (uint32)((uint32)1U << 8U)   
                    | (uint32)((uint32)1U << 9U)   
                    | (uint32)((uint32)1U << 10U)   
                    | (uint32)((uint32)1U << 11U)   
                    | (uint32)((uint32)1U << 17U)   
                    | (uint32)((uint32)1U << 25U);  

     
    ((mibspiBASE_t *)0xFFF7F400U)->PC7 = (uint32)((uint32)0U << 0U)   
                    | (uint32)((uint32)0U << 1U)   
                    | (uint32)((uint32)0U << 2U)   
                    | (uint32)((uint32)0U << 3U)   
                    | (uint32)((uint32)0U << 4U)   
                    | (uint32)((uint32)0U << 5U)   
                    | (uint32)((uint32)0U << 8U)   
                    | (uint32)((uint32)0U << 9U)   
                    | (uint32)((uint32)0U << 10U)   
                    | (uint32)((uint32)0U << 11U)   
                    | (uint32)((uint32)0U << 17U)   
                    | (uint32)((uint32)0U << 25U);  

     
    ((mibspiBASE_t *)0xFFF7F400U)->PC0 = (uint32)((uint32)1U << 0U)   
                    | (uint32)((uint32)0U << 1U)   
                    | (uint32)((uint32)0U << 2U)   
                    | (uint32)((uint32)0U << 3U)   
                    | (uint32)((uint32)0U << 4U)   
                    | (uint32)((uint32)0U << 5U)   
                    | (uint32)((uint32)1U << 8U)   
                    | (uint32)((uint32)1U << 9U)   
                    | (uint32)((uint32)1U << 10U)   
                    | (uint32)((uint32)1U << 11U)   
                    | (uint32)((uint32)1U << 17U)   
                    | (uint32)((uint32)1U << 25U);  

     
    ((mibspiBASE_t *)0xFFF7F400U)->GCR1 = (((mibspiBASE_t *)0xFFF7F400U)->GCR1 & 0xFEFFFFFFU) | 0x01000000U;



      

     
    ((mibspiBASE_t *)0xFFF7F800U)->GCR0 = 0U;
    ((mibspiBASE_t *)0xFFF7F800U)->GCR0 = 1U;

     
    ((mibspiBASE_t *)0xFFF7F800U)->MIBSPIE = (((mibspiBASE_t *)0xFFF7F800U)->MIBSPIE & 0xFFFFFFFEU) | 1U;

     
    ((mibspiBASE_t *)0xFFF7F800U)->GCR1 = (((mibspiBASE_t *)0xFFF7F800U)->GCR1 & 0xFFFFFFFCU) | ((uint32)((uint32)1U << 1U)   
                  | 1U);   

     
    ((mibspiBASE_t *)0xFFF7F800U)->INT0 = (((mibspiBASE_t *)0xFFF7F800U)->INT0 & 0xFEFFFFFFU) | (uint32)((uint32)0U << 24U);   

     
    ((mibspiBASE_t *)0xFFF7F800U)->DELAY = (uint32)((uint32)0U << 24U)   
                      | (uint32)((uint32)0U << 16U)   
                      | (uint32)((uint32)0U << 8U)    
                      | (uint32)((uint32)0U << 0U);   

     
    ((mibspiBASE_t *)0xFFF7F800U)->FMT0 = (uint32)((uint32)0U << 24U)   
                     | (uint32)((uint32)0U << 23U)   
                     | (uint32)((uint32)0U << 22U)   
                     | (uint32)((uint32)0U << 21U)   
                     | (uint32)((uint32)0U << 20U)   
                     | (uint32)((uint32)0U << 17U)   
                     | (uint32)((uint32)0U << 16U)   
                     | (uint32)((uint32)79U << 8U)   
                     | (uint32)((uint32)16U << 0U);  

     
    ((mibspiBASE_t *)0xFFF7F800U)->FMT1 = (uint32)((uint32)0U << 24U)   
                     | (uint32)((uint32)0U << 23U)   
                     | (uint32)((uint32)0U << 22U)   
                     | (uint32)((uint32)0U << 21U)   
                     | (uint32)((uint32)0U << 20U)   
                     | (uint32)((uint32)0U << 17U)   
                     | (uint32)((uint32)0U << 16U)   
                     | (uint32)((uint32)79U << 8U)   
                     | (uint32)((uint32)16U << 0U);  

     
    ((mibspiBASE_t *)0xFFF7F800U)->FMT2 = (uint32)((uint32)0U << 24U)   
                     | (uint32)((uint32)0U << 23U)   
                     | (uint32)((uint32)0U << 22U)   
                     | (uint32)((uint32)0U << 21U)   
                     | (uint32)((uint32)0U << 20U)   
                     | (uint32)((uint32)0U << 17U)   
                     | (uint32)((uint32)0U << 16U)   
                     | (uint32)((uint32)79U << 8U)   
                     | (uint32)((uint32)16U << 0U);  

     
    ((mibspiBASE_t *)0xFFF7F800U)->FMT3 = (uint32)((uint32)0U << 24U)   
                     | (uint32)((uint32)0U << 23U)   
                     | (uint32)((uint32)0U << 22U)   
                     | (uint32)((uint32)0U << 21U)   
                     | (uint32)((uint32)0U << 20U)   
                     | (uint32)((uint32)0U << 17U)   
                     | (uint32)((uint32)0U << 16U)   
                     | (uint32)((uint32)79U << 8U)   
                     | (uint32)((uint32)16U << 0U);  

     
    ((mibspiBASE_t *)0xFFF7F800U)->DEF = (uint32)(0xFFU);

     
     
    while ((((mibspiBASE_t *)0xFFF7F800U)->FLG & 0x01000000U) != 0U)
    {
    }  

     
    ((mibspiBASE_t *)0xFFF7F800U)->UERRCTRL = (((mibspiBASE_t *)0xFFF7F800U)->UERRCTRL & 0xFFFFFFF0U) | (0x00000005U);

     
    ((mibspiBASE_t *)0xFFF7F800U)->TGCTRL[0U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)0U << 8U);   

    ((mibspiBASE_t *)0xFFF7F800U)->TGCTRL[1U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)8U << 8U);   

    ((mibspiBASE_t *)0xFFF7F800U)->TGCTRL[2U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)(8U+0U) << 8U);   

    ((mibspiBASE_t *)0xFFF7F800U)->TGCTRL[3U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)(8U+0U+0U) << 8U);   

    ((mibspiBASE_t *)0xFFF7F800U)->TGCTRL[4U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)(8U+0U+0U+0U) << 8U);   

    ((mibspiBASE_t *)0xFFF7F800U)->TGCTRL[5U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)(8U+0U+0U+0U+0U) << 8U);   

    ((mibspiBASE_t *)0xFFF7F800U)->TGCTRL[6U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)(8U+0U+0U+0U+0U+0U) << 8U);   

    ((mibspiBASE_t *)0xFFF7F800U)->TGCTRL[7U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)(8U+0U+0U+0U+0U+0U+0U) << 8U);   


    ((mibspiBASE_t *)0xFFF7F800U)->TGCTRL[8U] = (uint32)(8U+0U+0U+0U+0U+0U+0U+0U) << 8U;

    ((mibspiBASE_t *)0xFFF7F800U)->LTGPEND = (((mibspiBASE_t *)0xFFF7F800U)->LTGPEND & 0xFFFF00FFU) | (uint32)(((uint32)(8U+0U+0U+0U+0U+0U+0U+0U)-1U) << 8U);

     
    {
        i = 0U;

        {


            while (i < (8U-1U))
            {
                ((mibspiRAM_t *)0xFF0C0000U)->tx[i].control = (uint16)((uint16)4U << 13U)   
                                          | (uint16)((uint16)0U << 12U)   
                                          | (uint16)((uint16)0U << 10U)   
                                          | (uint16)((uint16)0U << 11U)   
                                          | (uint16)((uint16)0U << 8U)   
										   
                                          | ((uint16)(~((uint16)0xFFU ^ (uint16)CS_0)) & (uint16)0x00FFU);   
                i++;
            }
            ((mibspiRAM_t *)0xFF0C0000U)->tx[i].control = (uint16)((uint16)4U << 13U)   
                                      | (uint16)((uint16)0U << 12U)  
                                      | (uint16)((uint16)0U << 10U)   
                                      | (uint16)((uint16)0U << 8U)   
										   
                                      | ((uint16)(~((uint16)0xFFU ^ (uint16)CS_0)) & (uint16)0x00FFU);   


            i++;
        }







    }

     
    ((mibspiBASE_t *)0xFFF7F800U)->LVL = (uint32)((uint32)0U << 9U)   
                    | (uint32)((uint32)0U << 8U)   
                    | (uint32)((uint32)0U << 6U)   
                    | (uint32)((uint32)0U << 4U)   
                    | (uint32)((uint32)0U << 3U)   
                    | (uint32)((uint32)0U << 2U)   
                    | (uint32)((uint32)0U << 1U)   
                    | (uint32)((uint32)0U << 0U);  

     
    ((mibspiBASE_t *)0xFFF7F800U)->FLG |= 0xFFFFU;

     
    ((mibspiBASE_t *)0xFFF7F800U)->INT0 = (((mibspiBASE_t *)0xFFF7F800U)->INT0 & 0xFFFF0000U)
                     | (uint32)((uint32)0U << 9U)   
                     | (uint32)((uint32)0U << 8U)   
                     | (uint32)((uint32)0U << 6U)   
                     | (uint32)((uint32)0U << 4U)   
                     | (uint32)((uint32)0U << 3U)   
                     | (uint32)((uint32)0U << 2U)   
                     | (uint32)((uint32)0U << 1U)   
                     | (uint32)((uint32)0U << 0U);  

     

     
    ((mibspiBASE_t *)0xFFF7F800U)->PC3 = (uint32)((uint32)1U << 0U)   
                    | (uint32)((uint32)1U << 1U)   
                    | (uint32)((uint32)1U << 2U)   
                    | (uint32)((uint32)1U << 3U)   
                    | (uint32)((uint32)1U << 4U)   
                    | (uint32)((uint32)1U << 5U)   
                    | (uint32)((uint32)0U << 8U)   
                    | (uint32)((uint32)0U << 9U)   
                    | (uint32)((uint32)0U << 10U)   
                    | (uint32)((uint32)0U << 11U);  

     
    ((mibspiBASE_t *)0xFFF7F800U)->PC1 = (uint32)((uint32)1U << 0U)   
                    | (uint32)((uint32)1U << 1U)   
                    | (uint32)((uint32)1U << 2U)   
                    | (uint32)((uint32)1U << 3U)   
                    | (uint32)((uint32)1U << 4U)   
                    | (uint32)((uint32)1U << 5U)   
                    | (uint32)((uint32)0U << 8U)   
                    | (uint32)((uint32)1U << 9U)   
                    | (uint32)((uint32)1U << 10U)   
                    | (uint32)((uint32)0U << 11U);  

     
    ((mibspiBASE_t *)0xFFF7F800U)->PC6 = (uint32)((uint32)0U << 0U)   
                    | (uint32)((uint32)0U << 1U)   
                    | (uint32)((uint32)0U << 2U)   
                    | (uint32)((uint32)0U << 3U)   
                    | (uint32)((uint32)0U << 4U)   
                    | (uint32)((uint32)0U << 5U)   
                    | (uint32)((uint32)0U << 8U)   
                    | (uint32)((uint32)0U << 9U)   
                    | (uint32)((uint32)0U << 10U)   
                    | (uint32)((uint32)0U << 11U);  


     
    ((mibspiBASE_t *)0xFFF7F800U)->PC8 = (uint32)((uint32)1U << 0U)   
                    | (uint32)((uint32)1U << 1U)   
                    | (uint32)((uint32)1U << 2U)   
                    | (uint32)((uint32)1U << 3U)   
                    | (uint32)((uint32)1U << 4U)   
                    | (uint32)((uint32)1U << 5U)   
                    | (uint32)((uint32)1U << 8U)   
                    | (uint32)((uint32)1U << 9U)   
                    | (uint32)((uint32)1U << 10U)   
                    | (uint32)((uint32)1U << 11U);  


     
    ((mibspiBASE_t *)0xFFF7F800U)->PC7 = (uint32)((uint32)0U << 0U)   
                    | (uint32)((uint32)0U << 1U)   
                    | (uint32)((uint32)0U << 2U)   
                    | (uint32)((uint32)0U << 3U)   
                    | (uint32)((uint32)0U << 4U)   
                    | (uint32)((uint32)0U << 5U)   
                    | (uint32)((uint32)0U << 8U)   
                    | (uint32)((uint32)0U << 9U)   
                    | (uint32)((uint32)0U << 10U)   
                    | (uint32)((uint32)0U << 11U);  


     
    ((mibspiBASE_t *)0xFFF7F800U)->PC0 = (uint32)((uint32)1U << 0U)   
                    | (uint32)((uint32)0U << 1U)   
                    | (uint32)((uint32)0U << 2U)   
                    | (uint32)((uint32)0U << 3U)   
                    | (uint32)((uint32)0U << 4U)   
                    | (uint32)((uint32)0U << 5U)   
                    | (uint32)((uint32)1U << 8U)   
                    | (uint32)((uint32)1U << 9U)   
                    | (uint32)((uint32)1U << 10U)   
                    | (uint32)((uint32)1U << 11U);  

     
    ((mibspiBASE_t *)0xFFF7F800U)->GCR1 = (((mibspiBASE_t *)0xFFF7F800U)->GCR1 & 0xFEFFFFFFU) | 0x01000000U;



     

     
    ((mibspiBASE_t *)0xFFF7FC00U)->GCR0 = 0U;
    ((mibspiBASE_t *)0xFFF7FC00U)->GCR0 = 1U;

     
    ((mibspiBASE_t *)0xFFF7FC00U)->MIBSPIE = (((mibspiBASE_t *)0xFFF7FC00U)->MIBSPIE & 0xFFFFFFFEU) | 1U;

     
    ((mibspiBASE_t *)0xFFF7FC00U)->GCR1 = (((mibspiBASE_t *)0xFFF7FC00U)->GCR1 & 0xFFFFFFFCU) | ((uint32)((uint32)1U << 1U)   
                  | 1U);   

     
    ((mibspiBASE_t *)0xFFF7FC00U)->INT0 = (((mibspiBASE_t *)0xFFF7FC00U)->INT0 & 0xFEFFFFFFU) | (uint32)((uint32)0U << 24U);   

     
    ((mibspiBASE_t *)0xFFF7FC00U)->DELAY = (uint32)((uint32)0U << 24U)   
                      | (uint32)((uint32)0U << 16U)   
                      | (uint32)((uint32)0U << 8U)    
                      | (uint32)((uint32)0U << 0U);   

     
    ((mibspiBASE_t *)0xFFF7FC00U)->FMT0 = (uint32)((uint32)0U << 24U)   
                     | (uint32)((uint32)0U << 23U)   
                     | (uint32)((uint32)0U << 22U)   
                     | (uint32)((uint32)0U << 21U)   
                     | (uint32)((uint32)0U << 20U)   
                     | (uint32)((uint32)0U << 17U)   
                     | (uint32)((uint32)0U << 16U)   
                     | (uint32)((uint32)79U << 8U)   
                     | (uint32)((uint32)16U << 0U);  

     
    ((mibspiBASE_t *)0xFFF7FC00U)->FMT1 = (uint32)((uint32)0U << 24U)   
                     | (uint32)((uint32)0U << 23U)   
                     | (uint32)((uint32)0U << 22U)   
                     | (uint32)((uint32)0U << 21U)   
                     | (uint32)((uint32)0U << 20U)   
                     | (uint32)((uint32)0U << 17U)   
                     | (uint32)((uint32)0U << 16U)   
                     | (uint32)((uint32)79U << 8U)   
                     | (uint32)((uint32)16U << 0U);  

     
    ((mibspiBASE_t *)0xFFF7FC00U)->FMT2 = (uint32)((uint32)0U << 24U)   
                     | (uint32)((uint32)0U << 23U)   
                     | (uint32)((uint32)0U << 22U)   
                     | (uint32)((uint32)0U << 21U)   
                     | (uint32)((uint32)0U << 20U)   
                     | (uint32)((uint32)0U << 17U)   
                     | (uint32)((uint32)0U << 16U)   
                     | (uint32)((uint32)79U << 8U)   
                     | (uint32)((uint32)16U << 0U);  

     
    ((mibspiBASE_t *)0xFFF7FC00U)->FMT3 = (uint32)((uint32)0U << 24U)   
                     | (uint32)((uint32)0U << 23U)   
                     | (uint32)((uint32)0U << 22U)   
                     | (uint32)((uint32)0U << 21U)   
                     | (uint32)((uint32)0U << 20U)   
                     | (uint32)((uint32)0U << 17U)   
                     | (uint32)((uint32)0U << 16U)   
                     | (uint32)((uint32)79U << 8U)   
                     | (uint32)((uint32)16U << 0U);  

     
    ((mibspiBASE_t *)0xFFF7FC00U)->DEF = (uint32)(0xFFU);

     
     
    while ((((mibspiBASE_t *)0xFFF7FC00U)->FLG & 0x01000000U) != 0U)
    {
    }  

     
    ((mibspiBASE_t *)0xFFF7FC00U)->UERRCTRL = (((mibspiBASE_t *)0xFFF7FC00U)->UERRCTRL & 0xFFFFFFF0U) | (0x00000005U);

     
    ((mibspiBASE_t *)0xFFF7FC00U)->TGCTRL[0U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)0U << 8U);   

    ((mibspiBASE_t *)0xFFF7FC00U)->TGCTRL[1U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)8U << 8U);   

    ((mibspiBASE_t *)0xFFF7FC00U)->TGCTRL[2U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)(8U+0U) << 8U);   

    ((mibspiBASE_t *)0xFFF7FC00U)->TGCTRL[3U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)(8U+0U+0U) << 8U);   

    ((mibspiBASE_t *)0xFFF7FC00U)->TGCTRL[4U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)(8U+0U+0U+0U) << 8U);   

    ((mibspiBASE_t *)0xFFF7FC00U)->TGCTRL[5U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)(8U+0U+0U+0U+0U) << 8U);   

    ((mibspiBASE_t *)0xFFF7FC00U)->TGCTRL[6U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)(8U+0U+0U+0U+0U+0U) << 8U);   

    ((mibspiBASE_t *)0xFFF7FC00U)->TGCTRL[7U] = (uint32)((uint32)1U << 30U)   
                           | (uint32)((uint32)0U << 29U)   
                           | (uint32)((uint32)TRG_ALWAYS << 20U)   
                           | (uint32)((uint32)TRG_DISABLED << 16U)   
                           | (uint32)((uint32)(8U+0U+0U+0U+0U+0U+0U) << 8U);   


    ((mibspiBASE_t *)0xFFF7FC00U)->TGCTRL[8U] = (uint32)(8U+0U+0U+0U+0U+0U+0U+0U) << 8U;

    ((mibspiBASE_t *)0xFFF7FC00U)->LTGPEND = (((mibspiBASE_t *)0xFFF7FC00U)->LTGPEND & 0xFFFF00FFU) | (uint32)(((uint32)(8U+0U+0U+0U+0U+0U+0U+0U)-1U) << 8U);

     
    {
        i = 0U;

        {


            while (i < (8U-1U))
            {
                ((mibspiRAM_t *)0xFF0A0000U)->tx[i].control = (uint16)((uint16)4U << 13U)   
                                          | (uint16)((uint16)0U << 12U)   
                                          | (uint16)((uint16)0U << 10U)   
                                          | (uint16)((uint16)0U << 11U)   
                                          | (uint16)((uint16)0U << 8U)   
										   
                                          | ((uint16)(~((uint16)0xFFU ^ (uint16)CS_0)) & (uint16)0x00FFU);   
                i++;
            }
            ((mibspiRAM_t *)0xFF0A0000U)->tx[i].control = (uint16)((uint16)4U << 13U)   
                                      | (uint16)((uint16)0U << 12U)  
                                      | (uint16)((uint16)0U << 10U)   
                                      | (uint16)((uint16)0U << 8U)   
										   
                                      | ((uint16)(~((uint16)0xFFU ^ (uint16)CS_0)) & (uint16)0x00FFU);   


            i++;
        }







    }

     
    ((mibspiBASE_t *)0xFFF7FC00U)->LVL = (uint32)((uint32)0U << 9U)   
                    | (uint32)((uint32)0U << 8U)   
                    | (uint32)((uint32)0U << 6U)   
                    | (uint32)((uint32)0U << 4U)   
                    | (uint32)((uint32)0U << 3U)   
                    | (uint32)((uint32)0U << 2U)   
                    | (uint32)((uint32)0U << 1U)   
                    | (uint32)((uint32)0U << 0U);  

     
    ((mibspiBASE_t *)0xFFF7FC00U)->FLG |= 0xFFFFU;

     
    ((mibspiBASE_t *)0xFFF7FC00U)->INT0 = (((mibspiBASE_t *)0xFFF7FC00U)->INT0 & 0xFFFF0000U)
                     | (uint32)((uint32)0U << 9U)   
                     | (uint32)((uint32)0U << 8U)   
                     | (uint32)((uint32)0U << 6U)   
                     | (uint32)((uint32)0U << 4U)   
                     | (uint32)((uint32)0U << 3U)   
                     | (uint32)((uint32)0U << 2U)   
                     | (uint32)((uint32)0U << 1U)   
                     | (uint32)((uint32)0U << 0U);  

     

     
    ((mibspiBASE_t *)0xFFF7FC00U)->PC3 = (uint32)((uint32)1U << 0U)   
                    | (uint32)((uint32)1U << 1U)   
                    | (uint32)((uint32)1U << 2U)   
                    | (uint32)((uint32)1U << 3U)   
                    | (uint32)((uint32)0U << 8U)   
                    | (uint32)((uint32)0U << 9U)   
                    | (uint32)((uint32)0U << 10U)   
                    | (uint32)((uint32)0U << 11U)   
                    | (uint32)((uint32)0U << 17U)   
                    | (uint32)((uint32)0U << 18U)   
                    | (uint32)((uint32)0U << 19U)   
                    | (uint32)((uint32)0U << 25U)   
                    | (uint32)((uint32)0U << 26U)   
                    | (uint32)((uint32)0U << 27U);  

     
    ((mibspiBASE_t *)0xFFF7FC00U)->PC1 = (uint32)((uint32)1U << 0U)   
                    | (uint32)((uint32)1U << 1U)   
                    | (uint32)((uint32)1U << 2U)   
                    | (uint32)((uint32)1U << 3U)   
                    | (uint32)((uint32)0U << 8U)   
                    | (uint32)((uint32)1U << 9U)   
                    | (uint32)((uint32)1U << 10U)   
                    | (uint32)((uint32)0U << 11U)   
                    | (uint32)((uint32)0U << 17U)   
                    | (uint32)((uint32)0U << 18U)   
                    | (uint32)((uint32)0U << 19U)   
                    | (uint32)((uint32)0U << 25U)   
                    | (uint32)((uint32)0U << 26U)   
                    | (uint32)((uint32)0U << 27U);  

     
    ((mibspiBASE_t *)0xFFF7FC00U)->PC6 = (uint32)((uint32)0U << 0U)   
                    | (uint32)((uint32)0U << 1U)   
                    | (uint32)((uint32)0U << 2U)   
                    | (uint32)((uint32)0U << 3U)   
                    | (uint32)((uint32)0U << 8U)   
                    | (uint32)((uint32)0U << 9U)   
                    | (uint32)((uint32)0U << 10U)   
                    | (uint32)((uint32)0U << 11U)   
                    | (uint32)((uint32)0U << 17U)   
                    | (uint32)((uint32)0U << 18U)   
                    | (uint32)((uint32)0U << 19U)   
                    | (uint32)((uint32)0U << 25U)   
                    | (uint32)((uint32)0U << 26U)   
                    | (uint32)((uint32)0U << 27U);  

     
    ((mibspiBASE_t *)0xFFF7FC00U)->PC8 = (uint32)((uint32)1U << 0U)   
                    | (uint32)((uint32)1U << 1U)   
                    | (uint32)((uint32)1U << 2U)   
                    | (uint32)((uint32)1U << 3U)   
                    | (uint32)((uint32)1U << 8U)   
                    | (uint32)((uint32)1U << 9U)   
                    | (uint32)((uint32)1U << 10U)   
                    | (uint32)((uint32)1U << 11U)   
                    | (uint32)((uint32)1U << 17U)   
                    | (uint32)((uint32)1U << 18U)   
                    | (uint32)((uint32)1U << 19U)   
                    | (uint32)((uint32)1U << 25U)   
                    | (uint32)((uint32)1U << 26U)   
                    | (uint32)((uint32)1U << 27U);  

     
    ((mibspiBASE_t *)0xFFF7FC00U)->PC7 = (uint32)((uint32)0U << 0U)   
                    | (uint32)((uint32)0U << 1U)   
                    | (uint32)((uint32)0U << 2U)   
                    | (uint32)((uint32)0U << 3U)   
                    | (uint32)((uint32)0U << 8U)   
                    | (uint32)((uint32)0U << 9U)   
                    | (uint32)((uint32)0U << 10U)   
                    | (uint32)((uint32)0U << 11U)   
                    | (uint32)((uint32)0U << 17U)   
                    | (uint32)((uint32)0U << 18U)   
                    | (uint32)((uint32)0U << 19U)   
                    | (uint32)((uint32)0U << 25U)   
                    | (uint32)((uint32)0U << 26U)   
                    | (uint32)((uint32)0U << 27U);  

     
    ((mibspiBASE_t *)0xFFF7FC00U)->PC0 = (uint32)((uint32)1U << 0U)   
                    | (uint32)((uint32)0U << 1U)   
                    | (uint32)((uint32)0U << 2U)   
                    | (uint32)((uint32)0U << 3U)   
                    | (uint32)((uint32)1U << 8U)   
                    | (uint32)((uint32)1U << 9U)   
                    | (uint32)((uint32)1U << 10U)   
                    | (uint32)((uint32)1U << 11U)   
                    | (uint32)((uint32)1U << 17U)   
                    | (uint32)((uint32)1U << 18U)   
                    | (uint32)((uint32)1U << 19U)   
                    | (uint32)((uint32)1U << 25U)   
                    | (uint32)((uint32)1U << 26U)   
                    | (uint32)((uint32)1U << 27U);  

   
    ((mibspiBASE_t *)0xFFF7FC00U)->GCR1 = (((mibspiBASE_t *)0xFFF7FC00U)->GCR1 & 0xFEFFFFFFU) | 0x01000000U;

 
 

}










 
 
 
 
void mibspiSetFunctional(mibspiBASE_t *mibspi, uint32 port)
{
 
 

    mibspi->PC0 = port;

 
 
}










 
 
 
 
void mibspiSetData(mibspiBASE_t *mibspi, uint32 group, uint16 * data)
{
 
 

    mibspiRAM_t *ram    = (mibspi == ((mibspiBASE_t *)0xFFF7F400U)) ? ((mibspiRAM_t *)0xFF0E0000U) : ((mibspi == ((mibspiBASE_t *)0xFFF7F800U)) ? ((mibspiRAM_t *)0xFF0C0000U) : ((mibspiRAM_t *)0xFF0A0000U));
    uint32 start  = (mibspi->TGCTRL[group] >> 8U) & 0xFFU;
    uint32 end    = (group == 7U) ? (((mibspi->LTGPEND & 0x00007F00U) >> 8U) + 1U) : ((mibspi->TGCTRL[group+1U] >> 8U) & 0xFFU);

    if (end == 0U) {end = 128U;}

    while (start < end)
    {
     
        ram->tx[start].data = *data;
         
        data++;
        start++;
    }
 
 
}














 
 
 
 
uint32 mibspiGetData(mibspiBASE_t *mibspi, uint32 group, uint16 * data)
{
 
 

    mibspiRAM_t *ram    = (mibspi == ((mibspiBASE_t *)0xFFF7F400U)) ? ((mibspiRAM_t *)0xFF0E0000U) : ((mibspi == ((mibspiBASE_t *)0xFFF7F800U)) ? ((mibspiRAM_t *)0xFF0C0000U) : ((mibspiRAM_t *)0xFF0A0000U));
    uint32 start  = (mibspi->TGCTRL[group] >> 8U) & 0xFFU;
    uint32 end    = (group == 7U) ? (((mibspi->LTGPEND & 0x00007F00U) >> 8U) + 1U) : ((mibspi->TGCTRL[group+1U] >> 8U) & 0xFFU);
    uint16 mibspiFlags  = 0U;
	uint32 ret;
    if (end == 0U) {end = 128U;}

    while (start < end)
    {
        mibspiFlags  |= ram->rx[start].flags;
         
        *data = ram->rx[start].data;
         
        data++;
        start++;
    }

	ret = ((uint32)mibspiFlags >> 8U) & 0x5FU;
 
 

    return ret;
}








 
 
 
 
void mibspiTransfer(mibspiBASE_t *mibspi, uint32 group)
{
 
 

    mibspi->TGCTRL[group] |= 0x80000000U;

 
 
}











 
 
 
 
boolean mibspiIsTransferComplete(mibspiBASE_t *mibspi, uint32 group)
{
    boolean status;

 
 

    if(((((mibspi->TGINTFLG & 0xFFFF0000U) >> 16U)>> group) & 1U) == 1U)
    {
       mibspi->TGINTFLG = (mibspi->TGINTFLG & 0x0000FFFFU) | ((uint32)((uint32)1U << group) << 16U);
       status = 1;
    }
    else
    {
       status = 0;
    }

 
 

    return (status);
}








 
 
 
 
void mibspiEnableLoopback(mibspiBASE_t *mibspi, loopBackType_t Loopbacktype)
{
 
 

     
    mibspi->IOLPKTSTCR = 0U;

     
    mibspi->IOLPKTSTCR = (uint32)0x00000A00U
                       | (uint32)((uint32)Loopbacktype << 1U);

 
 
}






 
 
 
 
void mibspiDisableLoopback(mibspiBASE_t *mibspi)
{
 
 

     
    mibspi->IOLPKTSTCR = 0x00000500U;

 
 
}
















 
 
 
 
void mibspiPmodeSet(mibspiBASE_t *mibspi, mibspiPmode_t Pmode, mibspiDFMT_t DFMT)
{
    uint32 pmctrl_reg;
     
    pmctrl_reg     = (mibspi->PMCTRL & (~(uint32)((uint32)0xFFU << (8U * DFMT))));
    mibspi->PMCTRL = (pmctrl_reg | (uint32)((uint32)Pmode <<  ((8U * DFMT))));

}








 
 
 
 
void mibspiEnableGroupNotification(mibspiBASE_t *mibspi, uint32 group, uint32 level)
{
 
 

    if (level != 0U)
    {
        mibspi->TGITLVST = (mibspi->TGITLVST & 0x0000FFFFU) | (uint32)((uint32)((uint32)1U << group) << 16U);
    }
    else
    {
        mibspi->TGITLVCR = (mibspi->TGITLVCR & 0x0000FFFFU) | (uint32)((uint32)((uint32)1U << group) << 16U);
    }
    mibspi->TGITENST = (mibspi->TGITENST & 0x0000FFFFU) | (uint32)((uint32)((uint32)1U << group) << 16U);

 
 
}








 
 
 
 
void mibspiDisableGroupNotification(mibspiBASE_t *mibspi, uint32 group)
{
 
 

    mibspi->TGITENCR = (mibspi->TGITENCR & 0x0000FFFFU) | (uint32)((uint32)((uint32)1U << group) << 16U);

 
 
}















 
 
 
 
void mibspi1GetConfigValue(mibspi_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    {
        config_reg->CONFIG_GCR1       = (0x01000000U | (uint32)((uint32)1U << 1U) | 1U);
        config_reg->CONFIG_INT0       = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 6U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 0U));
        config_reg->CONFIG_LVL        = ((uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 6U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 0U));
        config_reg->CONFIG_PCFUN      = ((uint32)((uint32)1U << 0U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 5U) | (uint32)((uint32)1U << 8U) | (uint32)((uint32)1U << 9U) | (uint32)((uint32)1U << 10U) | (uint32)((uint32)1U << 16U) | (uint32)((uint32)1U << 11U) | (uint32)((uint32)1U << 24U) | (uint32)((uint32)1U << 17U) | (uint32)((uint32)1U << 25U));
        config_reg->CONFIG_PCDIR      = ((uint32)((uint32)1U << 0U) | (uint32)((uint32)1U << 1U) | (uint32)((uint32)1U << 2U) | (uint32)((uint32)1U << 3U) | (uint32)((uint32)1U << 4U) | (uint32)((uint32)1U << 5U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)1U << 9U) | (uint32)((uint32)1U << 10U) | (uint32)((uint32)1U << 16U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 25U));
        config_reg->CONFIG_PCPDR      = ((uint32)((uint32)0U << 0U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 5U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 10U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 25U));
        config_reg->CONFIG_PCDIS      = ((uint32)((uint32)0U << 0U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 5U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 10U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 25U));
        config_reg->CONFIG_PCPSL      = ((uint32)((uint32)1U << 0U) | (uint32)((uint32)1U << 1U) | (uint32)((uint32)1U << 2U) | (uint32)((uint32)1U << 3U) | (uint32)((uint32)1U << 4U) | (uint32)((uint32)1U << 5U) | (uint32)((uint32)1U << 8U) | (uint32)((uint32)1U << 9U) | (uint32)((uint32)1U << 10U) | (uint32)((uint32)1U << 16U) | (uint32)((uint32)1U << 11U) | (uint32)((uint32)1U << 24U) | (uint32)((uint32)1U << 17U) | (uint32)((uint32)1U << 25U));
        config_reg->CONFIG_DELAY      = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 0U));
        config_reg->CONFIG_FMT0       = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)79U << 8U) | (uint32)((uint32)16U << 0U));
        config_reg->CONFIG_FMT1       = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)79U << 8U) | (uint32)((uint32)16U << 0U));
        config_reg->CONFIG_FMT2       = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)79U << 8U) | (uint32)((uint32)16U << 0U));
        config_reg->CONFIG_FMT3       = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)79U << 8U) | (uint32)((uint32)16U << 0U));
        config_reg->CONFIG_MIBSPIE    = 1U;
        config_reg->CONFIG_LTGPEND    = ((uint32)((uint32)((8U+0U+0U+0U+0U+0U+0U+0U)-1U) << 8U));
        config_reg->CONFIG_TGCTRL[0U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)0U << 8U)));
        config_reg->CONFIG_TGCTRL[1U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)8U << 8U)));
        config_reg->CONFIG_TGCTRL[2U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)(8U+0U) << 8U)));
        config_reg->CONFIG_TGCTRL[3U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)(8U+0U+0U) << 8U)));
        config_reg->CONFIG_TGCTRL[4U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)(8U+0U+0U+0U) << 8U)));
        config_reg->CONFIG_TGCTRL[5U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)(8U+0U+0U+0U+0U) << 8U)));
        config_reg->CONFIG_TGCTRL[6U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)(8U+0U+0U+0U+0U+0U) << 8U)));
        config_reg->CONFIG_TGCTRL[7U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)(8U+0U+0U+0U+0U+0U+0U) << 8U)));
        config_reg->CONFIG_UERRCTRL   = (0x00000005U);
    }
    else
    {
     
        config_reg->CONFIG_GCR1       = ((mibspiBASE_t *)0xFFF7F400U)->GCR1;
        config_reg->CONFIG_INT0       = ((mibspiBASE_t *)0xFFF7F400U)->INT0;
        config_reg->CONFIG_LVL        = ((mibspiBASE_t *)0xFFF7F400U)->LVL;
        config_reg->CONFIG_PCFUN      = ((mibspiBASE_t *)0xFFF7F400U)->PC0;
        config_reg->CONFIG_PCDIR      = ((mibspiBASE_t *)0xFFF7F400U)->PC1;
        config_reg->CONFIG_PCPDR      = ((mibspiBASE_t *)0xFFF7F400U)->PC6;
        config_reg->CONFIG_PCDIS      = ((mibspiBASE_t *)0xFFF7F400U)->PC7;
        config_reg->CONFIG_PCPSL      = ((mibspiBASE_t *)0xFFF7F400U)->PC8;
        config_reg->CONFIG_DELAY      = ((mibspiBASE_t *)0xFFF7F400U)->DELAY;
        config_reg->CONFIG_FMT0       = ((mibspiBASE_t *)0xFFF7F400U)->FMT0;
        config_reg->CONFIG_FMT1       = ((mibspiBASE_t *)0xFFF7F400U)->FMT1;
        config_reg->CONFIG_FMT2       = ((mibspiBASE_t *)0xFFF7F400U)->FMT2;
        config_reg->CONFIG_FMT3       = ((mibspiBASE_t *)0xFFF7F400U)->FMT3;
        config_reg->CONFIG_MIBSPIE    = ((mibspiBASE_t *)0xFFF7F400U)->MIBSPIE;
        config_reg->CONFIG_LTGPEND    = ((mibspiBASE_t *)0xFFF7F400U)->LTGPEND;
        config_reg->CONFIG_TGCTRL[0U] = ((mibspiBASE_t *)0xFFF7F400U)->TGCTRL[0U];
        config_reg->CONFIG_TGCTRL[1U] = ((mibspiBASE_t *)0xFFF7F400U)->TGCTRL[1U];
        config_reg->CONFIG_TGCTRL[2U] = ((mibspiBASE_t *)0xFFF7F400U)->TGCTRL[2U];
        config_reg->CONFIG_TGCTRL[3U] = ((mibspiBASE_t *)0xFFF7F400U)->TGCTRL[3U];
        config_reg->CONFIG_TGCTRL[4U] = ((mibspiBASE_t *)0xFFF7F400U)->TGCTRL[4U];
        config_reg->CONFIG_TGCTRL[5U] = ((mibspiBASE_t *)0xFFF7F400U)->TGCTRL[5U];
        config_reg->CONFIG_TGCTRL[6U] = ((mibspiBASE_t *)0xFFF7F400U)->TGCTRL[6U];
        config_reg->CONFIG_TGCTRL[7U] = ((mibspiBASE_t *)0xFFF7F400U)->TGCTRL[7U];
        config_reg->CONFIG_UERRCTRL   = ((mibspiBASE_t *)0xFFF7F400U)->UERRCTRL;
    }
}















 
 
 
 
void mibspi3GetConfigValue(mibspi_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    {
        config_reg->CONFIG_GCR1       = (0x01000000U | (uint32)((uint32)1U << 1U) | 1U);
        config_reg->CONFIG_INT0       = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 6U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 0U));
        config_reg->CONFIG_LVL        = ((uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 6U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 0U));
        config_reg->CONFIG_PCFUN      = ((uint32)((uint32)1U << 0U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 5U) | (uint32)((uint32)1U << 8U) | (uint32)((uint32)1U << 9U) | (uint32)((uint32)1U << 10U) | (uint32)((uint32)1U << 16U) | (uint32)((uint32)1U << 11U) | (uint32)((uint32)1U << 24U));
        config_reg->CONFIG_PCDIR      = ((uint32)((uint32)1U << 0U) | (uint32)((uint32)1U << 1U) | (uint32)((uint32)1U << 2U) | (uint32)((uint32)1U << 3U) | (uint32)((uint32)1U << 4U) | (uint32)((uint32)1U << 5U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)1U << 9U) | (uint32)((uint32)1U << 10U) | (uint32)((uint32)1U << 16U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 24U));
        config_reg->CONFIG_PCPDR      = ((uint32)((uint32)0U << 0U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 5U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 10U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 24U));
        config_reg->CONFIG_PCDIS      = ((uint32)((uint32)0U << 0U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 5U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 10U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 24U));
        config_reg->CONFIG_PCPSL      = ((uint32)((uint32)1U << 0U) | (uint32)((uint32)1U << 1U) | (uint32)((uint32)1U << 2U) | (uint32)((uint32)1U << 3U) | (uint32)((uint32)1U << 4U) | (uint32)((uint32)1U << 5U) | (uint32)((uint32)1U << 8U) | (uint32)((uint32)1U << 9U) | (uint32)((uint32)1U << 10U) | (uint32)((uint32)1U << 16U) | (uint32)((uint32)1U << 11U) | (uint32)((uint32)1U << 24U));
        config_reg->CONFIG_DELAY      = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 0U));
        config_reg->CONFIG_FMT0       = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)79U << 8U) | (uint32)((uint32)16U << 0U));
        config_reg->CONFIG_FMT1       = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)79U << 8U) | (uint32)((uint32)16U << 0U));
        config_reg->CONFIG_FMT2       = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)79U << 8U) | (uint32)((uint32)16U << 0U));
        config_reg->CONFIG_FMT3       = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)79U << 8U) | (uint32)((uint32)16U << 0U));
        config_reg->CONFIG_MIBSPIE    = 1U;
        config_reg->CONFIG_LTGPEND    = ((uint32)((uint32)((8U+0U+0U+0U+0U+0U+0U+0U)-1U) << 8U));
        config_reg->CONFIG_TGCTRL[0U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)0U << 8U)));
        config_reg->CONFIG_TGCTRL[1U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)8U << 8U)));
        config_reg->CONFIG_TGCTRL[2U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)(8U+0U) << 8U)));
        config_reg->CONFIG_TGCTRL[3U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)(8U+0U+0U) << 8U)));
        config_reg->CONFIG_TGCTRL[4U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)(8U+0U+0U+0U) << 8U)));
        config_reg->CONFIG_TGCTRL[5U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)(8U+0U+0U+0U+0U) << 8U)));
        config_reg->CONFIG_TGCTRL[6U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)(8U+0U+0U+0U+0U+0U) << 8U)));
        config_reg->CONFIG_TGCTRL[7U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)(8U+0U+0U+0U+0U+0U+0U) << 8U)));
        config_reg->CONFIG_UERRCTRL   = (0x00000005U);
    }
    else
    {
     
        config_reg->CONFIG_GCR1       = ((mibspiBASE_t *)0xFFF7F800U)->GCR1;
        config_reg->CONFIG_INT0       = ((mibspiBASE_t *)0xFFF7F800U)->INT0;
        config_reg->CONFIG_LVL        = ((mibspiBASE_t *)0xFFF7F800U)->LVL;
        config_reg->CONFIG_PCFUN      = ((mibspiBASE_t *)0xFFF7F800U)->PC0;
        config_reg->CONFIG_PCDIR      = ((mibspiBASE_t *)0xFFF7F800U)->PC1;
        config_reg->CONFIG_PCPDR      = ((mibspiBASE_t *)0xFFF7F800U)->PC6;
        config_reg->CONFIG_PCDIS      = ((mibspiBASE_t *)0xFFF7F800U)->PC7;
        config_reg->CONFIG_PCPSL      = ((mibspiBASE_t *)0xFFF7F800U)->PC8;
        config_reg->CONFIG_DELAY      = ((mibspiBASE_t *)0xFFF7F800U)->DELAY;
        config_reg->CONFIG_FMT0       = ((mibspiBASE_t *)0xFFF7F800U)->FMT0;
        config_reg->CONFIG_FMT1       = ((mibspiBASE_t *)0xFFF7F800U)->FMT1;
        config_reg->CONFIG_FMT2       = ((mibspiBASE_t *)0xFFF7F800U)->FMT2;
        config_reg->CONFIG_FMT3       = ((mibspiBASE_t *)0xFFF7F800U)->FMT3;
        config_reg->CONFIG_MIBSPIE    = ((mibspiBASE_t *)0xFFF7F800U)->MIBSPIE;
        config_reg->CONFIG_LTGPEND    = ((mibspiBASE_t *)0xFFF7F800U)->LTGPEND;
        config_reg->CONFIG_TGCTRL[0U] = ((mibspiBASE_t *)0xFFF7F800U)->TGCTRL[0U];
        config_reg->CONFIG_TGCTRL[1U] = ((mibspiBASE_t *)0xFFF7F800U)->TGCTRL[1U];
        config_reg->CONFIG_TGCTRL[2U] = ((mibspiBASE_t *)0xFFF7F800U)->TGCTRL[2U];
        config_reg->CONFIG_TGCTRL[3U] = ((mibspiBASE_t *)0xFFF7F800U)->TGCTRL[3U];
        config_reg->CONFIG_TGCTRL[4U] = ((mibspiBASE_t *)0xFFF7F800U)->TGCTRL[4U];
        config_reg->CONFIG_TGCTRL[5U] = ((mibspiBASE_t *)0xFFF7F800U)->TGCTRL[5U];
        config_reg->CONFIG_TGCTRL[6U] = ((mibspiBASE_t *)0xFFF7F800U)->TGCTRL[6U];
        config_reg->CONFIG_TGCTRL[7U] = ((mibspiBASE_t *)0xFFF7F800U)->TGCTRL[7U];
        config_reg->CONFIG_UERRCTRL   = ((mibspiBASE_t *)0xFFF7F800U)->UERRCTRL;
    }
}















 
 
 
 
void mibspi5GetConfigValue(mibspi_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    {
        config_reg->CONFIG_GCR1       = (0x01000000U | (uint32)((uint32)1U << 1U) | 1U);
        config_reg->CONFIG_INT0       = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 6U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 0U));
        config_reg->CONFIG_LVL        = ((uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 6U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 0U));
        config_reg->CONFIG_PCFUN      = ((uint32)((uint32)1U << 0U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)1U << 8U) | (uint32)((uint32)1U << 9U) | (uint32)((uint32)1U << 10U) | (uint32)((uint32)1U << 16U) | (uint32)((uint32)1U << 11U) | (uint32)((uint32)1U << 24U) | (uint32)((uint32)1U << 17U) | (uint32)((uint32)1U << 18U) | (uint32)((uint32)1U << 19U) | (uint32)((uint32)1U << 25U) | (uint32)((uint32)1U << 26U) | (uint32)((uint32)1U << 27U));
        config_reg->CONFIG_PCDIR      = ((uint32)((uint32)1U << 0U) | (uint32)((uint32)1U << 1U) | (uint32)((uint32)1U << 2U) | (uint32)((uint32)1U << 3U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)1U << 9U) | (uint32)((uint32)1U << 10U) | (uint32)((uint32)1U << 16U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 18U) | (uint32)((uint32)0U << 19U) | (uint32)((uint32)0U << 25U) | (uint32)((uint32)0U << 26U) | (uint32)((uint32)0U << 27U));
        config_reg->CONFIG_PCPDR      = ((uint32)((uint32)0U << 0U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 10U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 18U) | (uint32)((uint32)0U << 19U) | (uint32)((uint32)0U << 25U) | (uint32)((uint32)0U << 26U) | (uint32)((uint32)0U << 27U));
        config_reg->CONFIG_PCDIS      = ((uint32)((uint32)0U << 0U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 10U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 18U) | (uint32)((uint32)0U << 19U) | (uint32)((uint32)0U << 25U) | (uint32)((uint32)0U << 26U) | (uint32)((uint32)0U << 27U));
        config_reg->CONFIG_PCPSL      = ((uint32)((uint32)1U << 0U) | (uint32)((uint32)1U << 1U) | (uint32)((uint32)1U << 2U) | (uint32)((uint32)1U << 3U) | (uint32)((uint32)1U << 8U) | (uint32)((uint32)1U << 9U) | (uint32)((uint32)1U << 10U) | (uint32)((uint32)1U << 16U) | (uint32)((uint32)1U << 11U) | (uint32)((uint32)1U << 24U) | (uint32)((uint32)1U << 17U) | (uint32)((uint32)1U << 18U) | (uint32)((uint32)1U << 19U) | (uint32)((uint32)1U << 25U) | (uint32)((uint32)1U << 26U) | (uint32)((uint32)1U << 27U));
        config_reg->CONFIG_DELAY      = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 0U));
        config_reg->CONFIG_FMT0       = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)79U << 8U) | (uint32)((uint32)16U << 0U));
        config_reg->CONFIG_FMT1       = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)79U << 8U) | (uint32)((uint32)16U << 0U));
        config_reg->CONFIG_FMT2       = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)79U << 8U) | (uint32)((uint32)16U << 0U));
        config_reg->CONFIG_FMT3       = ((uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)79U << 8U) | (uint32)((uint32)16U << 0U));
        config_reg->CONFIG_MIBSPIE    = 1U;
        config_reg->CONFIG_LTGPEND    = ((uint32)((uint32)((8U+0U+0U+0U+0U+0U+0U+0U)-1U) << 8U));
        config_reg->CONFIG_TGCTRL[0U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)0U << 8U)));
        config_reg->CONFIG_TGCTRL[1U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)8U << 8U)));
        config_reg->CONFIG_TGCTRL[2U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)(8U+0U) << 8U)));
        config_reg->CONFIG_TGCTRL[3U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)(8U+0U+0U) << 8U)));
        config_reg->CONFIG_TGCTRL[4U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)(8U+0U+0U+0U) << 8U)));
        config_reg->CONFIG_TGCTRL[5U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)(8U+0U+0U+0U+0U) << 8U)));
        config_reg->CONFIG_TGCTRL[6U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)(8U+0U+0U+0U+0U+0U) << 8U)));
        config_reg->CONFIG_TGCTRL[7U] = (0xFFFF7FFFU & ((uint32)((uint32)1U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)TRG_ALWAYS << 20U) | (uint32)((uint32)TRG_DISABLED << 16U) | (uint32)((uint32)(8U+0U+0U+0U+0U+0U+0U) << 8U)));
        config_reg->CONFIG_UERRCTRL   = (0x00000005U);
    }
    else
    {
     
        config_reg->CONFIG_GCR1       = ((mibspiBASE_t *)0xFFF7FC00U)->GCR1;
        config_reg->CONFIG_INT0       = ((mibspiBASE_t *)0xFFF7FC00U)->INT0;
        config_reg->CONFIG_LVL        = ((mibspiBASE_t *)0xFFF7FC00U)->LVL;
        config_reg->CONFIG_PCFUN      = ((mibspiBASE_t *)0xFFF7FC00U)->PC0;
        config_reg->CONFIG_PCDIR      = ((mibspiBASE_t *)0xFFF7FC00U)->PC1;
        config_reg->CONFIG_PCPDR      = ((mibspiBASE_t *)0xFFF7FC00U)->PC6;
        config_reg->CONFIG_PCDIS      = ((mibspiBASE_t *)0xFFF7FC00U)->PC7;
        config_reg->CONFIG_PCPSL      = ((mibspiBASE_t *)0xFFF7FC00U)->PC8;
        config_reg->CONFIG_DELAY      = ((mibspiBASE_t *)0xFFF7FC00U)->DELAY;
        config_reg->CONFIG_FMT0       = ((mibspiBASE_t *)0xFFF7FC00U)->FMT0;
        config_reg->CONFIG_FMT1       = ((mibspiBASE_t *)0xFFF7FC00U)->FMT1;
        config_reg->CONFIG_FMT2       = ((mibspiBASE_t *)0xFFF7FC00U)->FMT2;
        config_reg->CONFIG_FMT3       = ((mibspiBASE_t *)0xFFF7FC00U)->FMT3;
        config_reg->CONFIG_MIBSPIE    = ((mibspiBASE_t *)0xFFF7FC00U)->MIBSPIE;
        config_reg->CONFIG_LTGPEND    = ((mibspiBASE_t *)0xFFF7FC00U)->LTGPEND;
        config_reg->CONFIG_TGCTRL[0U] = ((mibspiBASE_t *)0xFFF7FC00U)->TGCTRL[0U];
        config_reg->CONFIG_TGCTRL[1U] = ((mibspiBASE_t *)0xFFF7FC00U)->TGCTRL[1U];
        config_reg->CONFIG_TGCTRL[2U] = ((mibspiBASE_t *)0xFFF7FC00U)->TGCTRL[2U];
        config_reg->CONFIG_TGCTRL[3U] = ((mibspiBASE_t *)0xFFF7FC00U)->TGCTRL[3U];
        config_reg->CONFIG_TGCTRL[4U] = ((mibspiBASE_t *)0xFFF7FC00U)->TGCTRL[4U];
        config_reg->CONFIG_TGCTRL[5U] = ((mibspiBASE_t *)0xFFF7FC00U)->TGCTRL[5U];
        config_reg->CONFIG_TGCTRL[6U] = ((mibspiBASE_t *)0xFFF7FC00U)->TGCTRL[6U];
        config_reg->CONFIG_TGCTRL[7U] = ((mibspiBASE_t *)0xFFF7FC00U)->TGCTRL[7U];
        config_reg->CONFIG_UERRCTRL   = ((mibspiBASE_t *)0xFFF7FC00U)->UERRCTRL;
    }
}













 

































 








 

































 



 
 











 

































 












 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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


 
 

 
 
 
 

 
 

 
 



 
 

 




 




 
typedef volatile struct dmaBase
{

    uint32 GCTRL;        
    uint32 PEND;         
    uint32 FBREG;        
    uint32 DMASTAT;      
    uint32  rsvd1;       
    uint32 HWCHENAS;     
    uint32  rsvd2;       
    uint32 HWCHENAR;     
    uint32  rsvd3;       
    uint32 SWCHENAS;     
    uint32  rsvd4;       
    uint32 SWCHENAR;     
    uint32  rsvd5;       
    uint32 CHPRIOS;      
    uint32  rsvd6;       
    uint32 CHPRIOR;      
    uint32  rsvd7;       
    uint32 GCHIENAS;     
    uint32  rsvd8;       
    uint32 GCHIENAR;     
    uint32  rsvd9;       
    uint32 DREQASI[8U];  
    uint32  rsvd10[8U];  
    uint32 PAR[4U];      
    uint32  rsvd11[4U];  
    uint32 FTCMAP;       
    uint32  rsvd12;      
    uint32 LFSMAP;       
    uint32  rsvd13;      
    uint32 HBCMAP;       
    uint32  rsvd14;      
    uint32 BTCMAP;       
    uint32  rsvd15;      
    uint32 BERMAP;       
    uint32  rsvd16;      
    uint32 FTCINTENAS;   
    uint32  rsvd17;      
    uint32 FTCINTENAR;   
    uint32  rsvd18;      
    uint32 LFSINTENAS;   
    uint32  rsvd19;      
    uint32 LFSINTENAR;   
    uint32  rsvd20;      
    uint32 HBCINTENAS;   
    uint32  rsvd21;      
    uint32 HBCINTENAR;   
    uint32  rsvd22;      
    uint32 BTCINTENAS;   
    uint32  rsvd23;      
    uint32 BTCINTENAR;   
    uint32  rsvd24;      
    uint32 GINTFLAG;     
    uint32  rsvd25;      
    uint32 FTCFLAG;      
    uint32  rsvd26;      
    uint32 LFSFLAG;      
    uint32  rsvd27;      
    uint32 HBCFLAG;      
    uint32  rsvd28;      
    uint32 BTCFLAG;      
    uint32  rsvd29;      
    uint32 BERFLAG;      
    uint32  rsvd30;      
    uint32 FTCAOFFSET;   
    uint32 LFSAOFFSET;   
    uint32 HBCAOFFSET;   
    uint32 BTCAOFFSET;   
    uint32 BERAOFFSET;   
    uint32 FTCBOFFSET;   
    uint32 LFSBOFFSET;   
    uint32 HBCBOFFSET;   
    uint32 BTCBOFFSET;   
    uint32 BERBOFFSET;   
    uint32  rsvd31;      
    uint32 PTCRL;        
    uint32 RTCTRL;       
    uint32 DCTRL;        
    uint32 WPR;          
    uint32 WMR;          
    uint32 PAACSADDR;    
    uint32 PAACDADDR;    
    uint32 PAACTC;       
    uint32 PBACSADDR;    
    uint32 PBACDADDR;    
    uint32 PBACTC;       
    uint32  rsvd32;      
    uint32 DMAPCR;       
    uint32 DMAPAR;       
    uint32 DMAMPCTRL;    
    uint32 DMAMPST;      
    struct
    {
    	uint32 STARTADD;  
    	uint32 ENDADD;    
    }DMAMPR[4U];
} dmaBASE_t;






 

 
 



 
 




 




 




 




 




 




 




 




 




 





 





 
enum dmaREQTYPE
{
    DMA_HW = 0x0U,   
    DMA_SW = 0x1U    
};






 
enum dmaCHANNEL
{
    DMA_CH0  = 0x00U,
    DMA_CH1  = 0x01U,
    DMA_CH2  = 0x02U,
    DMA_CH3  = 0x03U,
    DMA_CH4  = 0x04U,
    DMA_CH5  = 0x05U,
    DMA_CH6  = 0x06U,
    DMA_CH7  = 0x07U,
    DMA_CH8  = 0x08U,
    DMA_CH9  = 0x09U,
    DMA_CH10 = 0x0AU,
    DMA_CH11 = 0x0BU,
    DMA_CH12 = 0x0CU,
    DMA_CH13 = 0x0DU,
    DMA_CH14 = 0x0EU,
    DMA_CH15 = 0x0FU,
    DMA_CH16 = 0x10U,
    DMA_CH17 = 0x11U,
    DMA_CH18 = 0x12U,
    DMA_CH19 = 0x13U,
    DMA_CH20 = 0x14U,
    DMA_CH21 = 0x15U,
    DMA_CH22 = 0x16U,
    DMA_CH23 = 0x17U,
    DMA_CH24 = 0x18U,
    DMA_CH25 = 0x19U,
    DMA_CH26 = 0x1AU,
    DMA_CH27 = 0x1BU,
    DMA_CH28 = 0x1CU,
    DMA_CH29 = 0x1DU,
    DMA_CH30 = 0x1EU,
    DMA_CH31 = 0x1FU
};





 
typedef enum dmaACCESS
{
 ACCESS_8_BIT   =  0U,
 ACCESS_16_BIT  =  1U,
 ACCESS_32_BIT  =  2U,
 ACCESS_64_BIT  =  3U
}dmaACCESS_t;






 
typedef enum dmaPRIORITY
{
	LOWPRIORITY = 0U,
	HIGHPRIORITY = 1U
}dmaPRIORITY_t;






 
typedef enum dmaREGION
{
	DMA_REGION0 = 0U,
	DMA_REGION1 = 1U,
	DMA_REGION2 = 2U,
	DMA_REGION3 = 3U
}dmaREGION_t;






 
typedef enum dmaRegionAccess
{
	FULLACCESS = 0U,
	READONLY   = 1U,
	WRITEONLY  = 2U,
	NOACCESS   = 3U
}dmaRegionAccess_t;






 
typedef enum dmaInterrupt
{
	FTC = 1U,    
	LFS = 2U,    
	HBC = 3U,    
	BTC = 4U     
}dmaInterrupt_t;




 
typedef struct  dmaCTRLPKT
{
    uint32 SADD;        
    uint32 DADD;        
    uint32 CHCTRL;      
    uint32 FRCNT;       
    uint32 ELCNT;       
    uint32 ELDOFFSET;   
    uint32 ELSOFFSET;   
    uint32 FRDOFFSET;   
    uint32 FRSOFFSET;   
    uint32 PORTASGN;    
    uint32 RDSIZE;      
    uint32 WRSIZE;      
    uint32 TTYPE;       
    uint32 ADDMODERD;   
    uint32 ADDMODEWR;   
    uint32 AUTOINIT;    
    uint32 COMBO;       
} g_dmaCTRL;

typedef volatile struct
{
     
     struct                                      
     {
      uint32 ISADDR;
      uint32 IDADDR;
      uint32 ITCOUNT; 
      uint32  rsvd1;    
      uint32 CHCTRL;
      uint32 EIOFF;
      uint32 FIOFF;
      uint32  rsvd2;  
     }PCP[32U];

     struct                                      
     {
       uint32 res[256U];
     } RESERVED;

     struct                                      
     {
      uint32 CSADDR;
      uint32 CDADDR;
      uint32 CTCOUNT;
      uint32  rsvd3; 
     }WCP[32U];

} dmaRAMBASE_t;


typedef struct dma_config_reg
{
    uint32 CONFIG_CHPRIOS;
    uint32 CONFIG_GCHIENAS;
    uint32 CONFIG_DREQASI[8U];
    uint32 CONFIG_FTCINTENAS;
    uint32 CONFIG_LFSINTENAS;
    uint32 CONFIG_HBCINTENAS;
    uint32 CONFIG_BTCINTENAS;
    uint32 CONFIG_DMAPCR;
    uint32 CONFIG_DMAMPCTRL;
} dma_config_reg_t;




















 
 
void dmaEnable(void);
void dmaDisable(void);
void dmaSetCtrlPacket(uint32 channel, g_dmaCTRL g_dmaCTRLPKT);
void dmaSetChEnable(uint32 channel,uint32 type);
void dmaReqAssign(uint32 channel,uint32 reqline);
uint32 dmaGetReq(uint32 channel);
void dmaSetPriority(uint32 channel, dmaPRIORITY_t priority);
void dmaEnableInterrupt(uint32 channel, dmaInterrupt_t inttype);
void dmaDisableInterrupt(uint32 channel, dmaInterrupt_t inttype);
void dmaDefineRegion(dmaREGION_t region, uint32 start_add, uint32 end_add);
void dmaEnableRegion(dmaREGION_t region, dmaRegionAccess_t access, boolean intenable);
void dmaDisableRegion(dmaREGION_t region);
void dmaEnableParityCheck(void);
void dmaDisableParityCheck(void);
void dmaGetConfigValue(dma_config_reg_t *config_reg, config_value_type_t type);












 
void dmaGroupANotification(dmaInterrupt_t inttype, uint32 channel);

 
 

 











 

































 













 

































 




 
 

 




 




 
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
 





 
 
 
 
void dmaEnable(void)
{
  ((dmaBASE_t *)0xFFFFF000U)->GCTRL  = 0x00010000U;  
  ((dmaBASE_t *)0xFFFFF000U)->GCTRL |= 0x00000300U;  
}





 
 
 
 
void dmaDisable(void)
{
     
     
     
    while((((dmaBASE_t *)0xFFFFF000U)->GCTRL & (0x00004000U)) != 0U)
    {
    }  
     
    ((dmaBASE_t *)0xFFFFF000U)->GCTRL = 0U;
}








 
 
 
 
void dmaReqAssign(uint32 channel,uint32 reqline)
{
    register uint32 i=0U,j=0U;

    i = channel >> 2U;               
    j = channel - (i << 2U);         
    j = 3U - j;                      
    j = j << 3U;                     

     
    ((dmaBASE_t *)0xFFFFF000U)->DREQASI[i] &= ~(uint32)((uint32)0xFFU << j);
    ((dmaBASE_t *)0xFFFFF000U)->DREQASI[i] |= (reqline << j);
}







 
 
 
 
uint32 dmaGetReq(uint32 channel)
{
    register uint32 i=0U,j=0U;

    i = channel >> 2U;               
    j = channel - (i << 2U);         
    j = 3U - j;                      
    j = j << 3U;                     
    return ((((dmaBASE_t *)0xFFFFF000U)->DREQASI[i] >> j) & 0xFFU);
}






 
 
 
 
void dmaSetCtrlPacket(uint32 channel, g_dmaCTRL g_dmaCTRLPKT)
{
    register uint32 i=0U,j=0U;

    ((dmaRAMBASE_t *)0xFFF80000U)->PCP[channel].ISADDR  =  g_dmaCTRLPKT.SADD;

    ((dmaRAMBASE_t *)0xFFF80000U)->PCP[channel].IDADDR  =  g_dmaCTRLPKT.DADD;

    ((dmaRAMBASE_t *)0xFFF80000U)->PCP[channel].ITCOUNT = (g_dmaCTRLPKT.FRCNT << 16U) | g_dmaCTRLPKT.ELCNT;

    ((dmaRAMBASE_t *)0xFFF80000U)->PCP[channel].CHCTRL  = (g_dmaCTRLPKT.RDSIZE    << 14U) | (g_dmaCTRLPKT.WRSIZE    << 12U) | (g_dmaCTRLPKT.TTYPE << 8U)|                                       (g_dmaCTRLPKT.ADDMODERD << 3U ) | (g_dmaCTRLPKT.ADDMODEWR << 1U ) | (g_dmaCTRLPKT.AUTOINIT);

    ((dmaRAMBASE_t *)0xFFF80000U)->PCP[channel].CHCTRL |= (g_dmaCTRLPKT.CHCTRL << 16U);

    ((dmaRAMBASE_t *)0xFFF80000U)->PCP[channel].EIOFF   = (g_dmaCTRLPKT.ELDOFFSET << 16U) | (g_dmaCTRLPKT.ELSOFFSET);

    ((dmaRAMBASE_t *)0xFFF80000U)->PCP[channel].FIOFF   = (g_dmaCTRLPKT.FRDOFFSET << 16U) | (g_dmaCTRLPKT.FRSOFFSET);

    i = channel >> 3U;                 
    j = channel - (i << 3U);           
    j = 7U - j;                        
    j = j << 2U;                       

    ((dmaBASE_t *)0xFFFFF000U)->PAR[i] &= ~(uint32)((uint32)0xFU << j);
    ((dmaBASE_t *)0xFFFFF000U)->PAR[i] |= (g_dmaCTRLPKT.PORTASGN << j);
}











 
 
 
 
void dmaSetChEnable(uint32 channel,uint32 type)
{
    if(type == (uint32)DMA_HW)
    {
     ((dmaBASE_t *)0xFFFFF000U)->HWCHENAS = (uint32)1U << channel;
    }
    else if(type == (uint32)DMA_SW)
    {
     ((dmaBASE_t *)0xFFFFF000U)->SWCHENAS = (uint32)1U << channel;
    }
    else
    {
     
    }
}











 
 
 
 
void dmaSetPriority(uint32 channel, dmaPRIORITY_t priority)
{
    if (priority == LOWPRIORITY)
    {
        ((dmaBASE_t *)0xFFFFF000U)->CHPRIOR = (uint32)1U << channel;
    }
    else
    {
        ((dmaBASE_t *)0xFFFFF000U)->CHPRIOS = (uint32)1U << channel;
    }
}













 
 
 
 
void dmaEnableInterrupt(uint32 channel, dmaInterrupt_t inttype)
{
    ((dmaBASE_t *)0xFFFFF000U)->GCHIENAS = (uint32)1U << channel;

    switch (inttype)
    {
    case FTC:   ((dmaBASE_t *)0xFFFFF000U)->FTCINTENAS = (uint32)1U << channel;
                break;
    case LFS:   ((dmaBASE_t *)0xFFFFF000U)->LFSINTENAS = (uint32)1U << channel;
                break;
    case HBC:   ((dmaBASE_t *)0xFFFFF000U)->HBCINTENAS = (uint32)1U << channel;
                break;
    case BTC:   ((dmaBASE_t *)0xFFFFF000U)->BTCINTENAS = (uint32)1U << channel;
                break;
    default :
                break;
    }
}














 
 
 
 
void dmaDisableInterrupt(uint32 channel, dmaInterrupt_t inttype)
{
    switch (inttype)
    {
    case FTC:   ((dmaBASE_t *)0xFFFFF000U)->FTCINTENAR = (uint32)1U << channel;
                break;
    case LFS:   ((dmaBASE_t *)0xFFFFF000U)->LFSINTENAR = (uint32)1U << channel;
                break;
    case HBC:   ((dmaBASE_t *)0xFFFFF000U)->HBCINTENAR = (uint32)1U << channel;
                break;
    case BTC:   ((dmaBASE_t *)0xFFFFF000U)->BTCINTENAR = (uint32)1U << channel;
                break;
    default :
                break;
    }
}














 
 
 
 
void dmaDefineRegion(dmaREGION_t region, uint32 start_add, uint32 end_add)
{
    ((dmaBASE_t *)0xFFFFF000U)->DMAMPR[region].STARTADD = start_add;
    ((dmaBASE_t *)0xFFFFF000U)->DMAMPR[region].ENDADD = end_add;
}




















 
 
 
 
void dmaEnableRegion(dmaREGION_t region, dmaRegionAccess_t access, boolean intenable)
{
    ((dmaBASE_t *)0xFFFFF000U)->DMAMPCTRL &= ~(uint32)((uint32)0xFFU << (region*8U));

     
    ((dmaBASE_t *)0xFFFFF000U)->DMAMPCTRL |= (uint32)1U << (region*8U);

     
    ((dmaBASE_t *)0xFFFFF000U)->DMAMPCTRL |= (uint32)access << ((region*8U) + 1U);

    if(intenable)
    {
         
        ((dmaBASE_t *)0xFFFFF000U)->DMAMPCTRL |= (uint32)1U << ((region*8U) + 3U);
    }
}












 
 
 
 
void dmaDisableRegion(dmaREGION_t region)
{
    ((dmaBASE_t *)0xFFFFF000U)->DMAMPCTRL &= ~(uint32)((uint32)1U << ((uint32)region*8U));
}







 
 
 
 
void dmaEnableParityCheck(void)
{
    ((dmaBASE_t *)0xFFFFF000U)->DMAPCR = 0xAU;
}







 
 
 
 
void dmaDisableParityCheck(void)
{
    ((dmaBASE_t *)0xFFFFF000U)->DMAPCR = 0x5U;
}















 
 
 
 
void dmaGetConfigValue(dma_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    { 
    }
    else
    {
        config_reg->CONFIG_CHPRIOS     = ((dmaBASE_t *)0xFFFFF000U)->CHPRIOS;
        config_reg->CONFIG_GCHIENAS    = ((dmaBASE_t *)0xFFFFF000U)->GCHIENAS;
        config_reg->CONFIG_DREQASI[0U] = ((dmaBASE_t *)0xFFFFF000U)->DREQASI[0U];
        config_reg->CONFIG_DREQASI[1U] = ((dmaBASE_t *)0xFFFFF000U)->DREQASI[1U];
        config_reg->CONFIG_DREQASI[2U] = ((dmaBASE_t *)0xFFFFF000U)->DREQASI[2U];
        config_reg->CONFIG_DREQASI[3U] = ((dmaBASE_t *)0xFFFFF000U)->DREQASI[3U];
        config_reg->CONFIG_DREQASI[4U] = ((dmaBASE_t *)0xFFFFF000U)->DREQASI[4U];
        config_reg->CONFIG_DREQASI[5U] = ((dmaBASE_t *)0xFFFFF000U)->DREQASI[5U];
        config_reg->CONFIG_DREQASI[6U] = ((dmaBASE_t *)0xFFFFF000U)->DREQASI[6U];
        config_reg->CONFIG_DREQASI[7U] = ((dmaBASE_t *)0xFFFFF000U)->DREQASI[7U];
        config_reg->CONFIG_FTCINTENAS  = ((dmaBASE_t *)0xFFFFF000U)->FTCINTENAS;
        config_reg->CONFIG_LFSINTENAS  = ((dmaBASE_t *)0xFFFFF000U)->LFSINTENAS;
        config_reg->CONFIG_HBCINTENAS  = ((dmaBASE_t *)0xFFFFF000U)->HBCINTENAS;
        config_reg->CONFIG_BTCINTENAS  = ((dmaBASE_t *)0xFFFFF000U)->BTCINTENAS;
        config_reg->CONFIG_DMAPCR      = ((dmaBASE_t *)0xFFFFF000U)->DMAPCR;
        config_reg->CONFIG_DMAMPCTRL   = ((dmaBASE_t *)0xFFFFF000U)->DMAMPCTRL;
    }
}






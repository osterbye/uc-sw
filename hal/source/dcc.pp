




 

































 


 
 






 

































 














 

































 












 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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


 
 

 
 
 
 

 
 

 
 



 
 

 




 




 
typedef volatile struct dccBase
{
    uint32 GCTRL;      	     
    uint32 REV;      		 
    uint32 CNT0SEED;    	 
    uint32 VALID0SEED;       
    uint32 CNT1SEED;		 
    uint32 STAT; 			 
    uint32 CNT0;    		 
    uint32 VALID0;    	     
    uint32 CNT1;      	     
    uint32 CNT1CLKSRC;   	 
    uint32 CNT0CLKSRC;   	 
} dccBASE_t;






 






 

 
 


 
 

 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 






 
enum dcc1clocksource
{
    DCC1_CNT0_HF_LPO    = 0x5U,     
    DCC1_CNT0_TCK       = 0xAU,     
    DCC1_CNT0_OSCIN     = 0xFU,     

    DCC1_CNT1_PLL1      = 0x0U,     
    DCC1_CNT1_PLL2      = 0x1U,     
    DCC1_CNT1_LF_LPO    = 0x2U,     
    DCC1_CNT1_HF_LPO    = 0x3U,     
    DCC1_CNT1_EXTCLKIN1 = 0x5U,     
    DCC1_CNT1_EXTCLKIN2 = 0x6U,     
    DCC1_CNT1_VCLK      = 0x8U,     
    DCC1_CNT1_N2HET1_31 = 0xAU      
};





 
enum dcc2clocksource
{
    DCC2_CNT0_OSCIN      = 0xFU,     
    DCC2_CNT0_TCK        = 0xAU,     
    
    DCC2_CNT1_VCLK       = 0x8U,     
    DCC2_CNT1_N2HET2_0   = 0xAU      
};

 
typedef struct dcc_config_reg
{
    uint32 CONFIG_GCTRL;
    uint32 CONFIG_CNT0SEED;
    uint32 CONFIG_VALID0SEED;
    uint32 CONFIG_CNT1SEED;
    uint32 CONFIG_CNT1CLKSRC;
    uint32 CONFIG_CNT0CLKSRC;
} dcc_config_reg_t;


 
                                     
 

 

 
 















 

 
void dccInit(void);
void dccSetCounter0Seed(dccBASE_t  *dcc, uint32 cnt0seed);
void dccSetTolerance(dccBASE_t  *dcc, uint32 valid0seed);
void dccSetCounter1Seed(dccBASE_t  *dcc, uint32 cnt1seed);
void dccSetSeed(dccBASE_t  *dcc, uint32 cnt0seed, uint32 valid0seed, uint32 cnt1seed);
void dccSelectClockSource(dccBASE_t  *dcc, uint32 cnt0_Clock_Source, uint32 cnt1_Clock_Source);
void dccEnable(dccBASE_t  *dcc);
void dccDisable(dccBASE_t  *dcc);
uint32 dccGetErrStatus(dccBASE_t  *dcc);

void dccEnableNotification(dccBASE_t  *dcc, uint32 notification);
void dccDisableNotification(dccBASE_t  *dcc, uint32 notification);
void dcc1GetConfigValue(dcc_config_reg_t *config_reg, config_value_type_t type);
void dcc2GetConfigValue(dcc_config_reg_t *config_reg, config_value_type_t type);







 
void dccNotification(dccBASE_t  *dcc,uint32 flags);

 
 
 











 

































 













 

































 




 
 

 




 




 
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
 

 
 





 
 
 
 
void dccInit(void)
{

 
 

     
       
     
    ((dccBASE_t *)0xFFFFEC00U)->CNT0SEED   = 78408U;
    
     
    ((dccBASE_t *)0xFFFFEC00U)->VALID0SEED = 1584U;          
    
     
    ((dccBASE_t *)0xFFFFEC00U)->CNT1SEED   = 792000U;

     
    ((dccBASE_t *)0xFFFFEC00U)->CNT1CLKSRC = (uint32)((uint32)10U << 12U) |      
                          (uint32) DCC1_CNT1_PLL1;   
   
    ((dccBASE_t *)0xFFFFEC00U)->CNT0CLKSRC = (uint32)DCC1_CNT0_OSCIN;   

     
    ((dccBASE_t *)0xFFFFEC00U)->GCTRL      = (uint32)0xAU |        
                          (uint32)((uint32)0xAU << 4U) |  
                          (uint32)((uint32)0x5U << 8U) |  
                          (uint32)((uint32)0xAU << 12U);  


     

     
    ((dccBASE_t *)0xFFFFF400U)->CNT0SEED   = 0U;
    
     
    ((dccBASE_t *)0xFFFFF400U)->VALID0SEED = 0U;          
    
     
    ((dccBASE_t *)0xFFFFF400U)->CNT1SEED   = 0U;

     
    ((dccBASE_t *)0xFFFFF400U)->CNT1CLKSRC = (uint32)((uint32)0x5U << 12U) |      
                          (uint32) DCC2_CNT1_VCLK;   
   
    ((dccBASE_t *)0xFFFFF400U)->CNT0CLKSRC = (uint32)DCC2_CNT0_OSCIN;   

     
    ((dccBASE_t *)0xFFFFF400U)->GCTRL      = (uint32)0xAU |        
                          (uint32)((uint32)0xAU << 4U) |  
                          (uint32)((uint32)0x5U << 8U) |  
                          (uint32)((uint32)0xAU << 12U);  

 
 

}










 
 
 
 
void dccSetCounter0Seed(dccBASE_t  *dcc, uint32 cnt0seed)
{
 
 

    dcc->CNT0SEED     = cnt0seed;

 
 
}











 
 
 
 
void dccSetTolerance(dccBASE_t  *dcc, uint32 valid0seed)
{
 
 

    dcc->VALID0SEED = valid0seed;

 
 
}










 
 
 
 
void dccSetCounter1Seed(dccBASE_t  *dcc, uint32 cnt1seed)
{
 
 

    dcc->CNT1SEED     = cnt1seed;

 
 
}













 
 
 
 
void dccSetSeed(dccBASE_t  *dcc, uint32 cnt0seed, uint32 valid0seed, uint32 cnt1seed)
{
 
 

    dcc->CNT0SEED   = cnt0seed;
    dcc->VALID0SEED = valid0seed;
    dcc->CNT1SEED   = cnt1seed;

 
 
}












 
 
 
 
void dccSelectClockSource(dccBASE_t  *dcc, uint32 cnt0_Clock_Source, uint32 cnt1_Clock_Source)
{
 
 

    dcc->CNT1CLKSRC  = ((uint32)((uint32)0xAU << 12U) |     		 
	                    (uint32)(cnt1_Clock_Source & 0x0000000FU));	 
    dcc->CNT0CLKSRC  = cnt0_Clock_Source;  							 
	
 
 
}









 
 
 
 
void dccEnable(dccBASE_t  *dcc)
{
 
 
 
    dcc->GCTRL = (dcc->GCTRL & 0xFFFFFFF0U) | 0xAU; 

 
 
}









 
 
 
 
void dccDisable(dccBASE_t  *dcc)
{
 
 
 
    dcc->GCTRL = (dcc->GCTRL & 0xFFFFFFF0U) | 0x5U; 

 
 
}











 
 
 
 
uint32 dccGetErrStatus(dccBASE_t  *dcc)
{
 
 

    return(dcc->STAT & 0x00000001U); 
}












 
 
 
 
void dccEnableNotification(dccBASE_t  *dcc, uint32 notification)
{
 
 
 
    dcc->GCTRL = ((dcc->GCTRL & 0xFFFF0F0FU) | notification); 

 
 
}












 
 
 
 
void dccDisableNotification(dccBASE_t  *dcc, uint32 notification)
{
 
 
 
    dcc->GCTRL = ((dcc->GCTRL & 0xFFFF0F0FU) | ((~notification) & 0x0000F0F0U));

 
 
}











 
 
 
 
void dcc1GetConfigValue(dcc_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    {
        config_reg->CONFIG_GCTRL = ( (uint32)0xAU | (uint32)((uint32)0xAU << 4U) | (uint32)((uint32)0x5U << 8U) | (uint32)((uint32)0xAU << 12U));
        config_reg->CONFIG_CNT0SEED = 78408U;
        config_reg->CONFIG_VALID0SEED = 1584U;
        config_reg->CONFIG_CNT1SEED = 792000U;
        config_reg->CONFIG_CNT1CLKSRC = ((uint32)((uint32)10U << 12U) | (uint32)DCC1_CNT1_PLL1);
        config_reg->CONFIG_CNT0CLKSRC = ((uint32)DCC1_CNT0_OSCIN);
    }
    else
    {
	 
        config_reg->CONFIG_GCTRL = ((dccBASE_t *)0xFFFFEC00U)->GCTRL;
        config_reg->CONFIG_CNT0SEED = ((dccBASE_t *)0xFFFFEC00U)->CNT0SEED;
        config_reg->CONFIG_VALID0SEED = ((dccBASE_t *)0xFFFFEC00U)->VALID0SEED;
        config_reg->CONFIG_CNT1SEED = ((dccBASE_t *)0xFFFFEC00U)->CNT1SEED;
        config_reg->CONFIG_CNT1CLKSRC = ((dccBASE_t *)0xFFFFEC00U)->CNT1CLKSRC;
        config_reg->CONFIG_CNT0CLKSRC = ((dccBASE_t *)0xFFFFEC00U)->CNT0CLKSRC;
    }
}











 
 
 
 
void dcc2GetConfigValue(dcc_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    {
        config_reg->CONFIG_GCTRL = ( (uint32)0xAU | (uint32)((uint32)0xAU << 4U) | (uint32)((uint32)0x5U << 8U) | (uint32)((uint32)0xAU << 12U));
        config_reg->CONFIG_CNT0SEED = 0U;
        config_reg->CONFIG_VALID0SEED = 0U;
        config_reg->CONFIG_CNT1SEED = 0U;
        config_reg->CONFIG_CNT1CLKSRC = ((uint32)((uint32)0x5U << 12U) | (uint32)DCC2_CNT1_VCLK);
        config_reg->CONFIG_CNT0CLKSRC = ((uint32)DCC2_CNT0_OSCIN);
    }
    else
    {
	 
        config_reg->CONFIG_GCTRL = ((dccBASE_t *)0xFFFFF400U)->GCTRL;
        config_reg->CONFIG_CNT0SEED = ((dccBASE_t *)0xFFFFF400U)->CNT0SEED;
        config_reg->CONFIG_VALID0SEED = ((dccBASE_t *)0xFFFFF400U)->VALID0SEED;
        config_reg->CONFIG_CNT1SEED = ((dccBASE_t *)0xFFFFF400U)->CNT1SEED;
        config_reg->CONFIG_CNT1CLKSRC = ((dccBASE_t *)0xFFFFF400U)->CNT1CLKSRC;
        config_reg->CONFIG_CNT0CLKSRC = ((dccBASE_t *)0xFFFFF400U)->CNT0CLKSRC;
    }
}





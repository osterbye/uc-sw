








 

































 


 
 

 











 

































 














 

































 












 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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


 
 

 
 
 
 

 
 

 
 





 
 

 




 




 
typedef volatile struct esmBase
{
    uint32 EEPAPR1;            
    uint32 DEPAPR1;            
    uint32 IESR1;              
    uint32 IECR1;              
    uint32 ILSR1;              
    uint32 ILCR1;              
    uint32 SR1[3U];            
    uint32 EPSR;               
    uint32 IOFFHR;             
    uint32 IOFFLR;             
    uint32 LTCR;               
    uint32 LTCPR;              
    uint32 EKR;                
    uint32 SSR2;               
    uint32 IEPSR4;             
    uint32 IEPCR4;             
    uint32 IESR4;              
    uint32 IECR4;              
    uint32 ILSR4;              
    uint32 ILCR4;              
    uint32 SR4[3U];            
} esmBASE_t;





 

 
 




 
 

 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 







 





 
typedef enum esmSelfTestFlag 
{
    esmSelfTest_Passed = 0U,
	esmSelfTest_Active = 1U,
	esmSelfTest_NotStarted = 2U,
    esmSelfTest_Failed = 3U
}esmSelfTestFlag_t;

 
typedef struct esm_config_reg
{
    uint32 CONFIG_EEPAPR1;
    uint32 CONFIG_IESR1;
    uint32 CONFIG_ILSR1;
    uint32 CONFIG_LTCPR;
	uint32 CONFIG_EKR;  
    uint32 CONFIG_IEPSR4;
    uint32 CONFIG_IESR4;
    uint32 CONFIG_ILSR4;
} esm_config_reg_t;

 


 
 













 
 
 
void   esmInit(void);
uint32 esmError(void);
void   esmEnableError(uint64 channels);
void   esmDisableError(uint64 channels);
void   esmTriggerErrorPinReset(void);
void   esmActivateNormalOperation(void);
void   esmEnableInterrupt(uint64 channels);
void   esmDisableInterrupt(uint64 channels);
void   esmSetInterruptLevel(uint64 channels, uint64 flags);
void   esmClearStatus(uint32 group, uint64 channels);
void   esmClearStatusBuffer(uint64 channels);
void   esmSetCounterPreloadValue(uint32 value);

uint64 esmGetStatus(uint32 group, uint64 channels);
uint64 esmGetStatusBuffer(uint64 channels);

esmSelfTestFlag_t esmEnterSelfTest(void);
esmSelfTestFlag_t esmSelfTestStatus(void);


void esmGetConfigValue(esm_config_reg_t *config_reg, config_value_type_t type);






 
void esmGroup1Notification(uint32 channel);








 
void esmGroup2Notification(uint32 channel);

 
 
 












 

































 













 

































 




 
 

 




 




 
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
 

 
 







 

 
 
 
 
 
void esmInit(void)
{
 
 

     
    ((esmBASE_t *)0xFFFFF500U)->DEPAPR1 = 0xFFFFFFFFU;
    ((esmBASE_t *)0xFFFFF500U)->IEPCR4 = 0xFFFFFFFFU;

     
    ((esmBASE_t *)0xFFFFF500U)->IECR1 = 0xFFFFFFFFU;
    ((esmBASE_t *)0xFFFFF500U)->IECR4 = 0xFFFFFFFFU;

     
    ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0xFFFFFFFFU;
    ((esmBASE_t *)0xFFFFF500U)->SR1[1U] = 0xFFFFFFFFU;
    ((esmBASE_t *)0xFFFFF500U)->SSR2  = 0xFFFFFFFFU;
    ((esmBASE_t *)0xFFFFF500U)->SR1[2U] = 0xFFFFFFFFU;
    ((esmBASE_t *)0xFFFFF500U)->SR4[0U] = 0xFFFFFFFFU;

     
    ((esmBASE_t *)0xFFFFF500U)->LTCPR = 16384U - 1U;

     
    if (((esmBASE_t *)0xFFFFF500U)->EPSR == 0U)
    {
        ((esmBASE_t *)0xFFFFF500U)->EKR = 0x00000005U;
    }
    else
    {
        ((esmBASE_t *)0xFFFFF500U)->EKR = 0x00000000U;
    }

     
    ((esmBASE_t *)0xFFFFF500U)->ILCR1 = 0xFFFFFFFFU;
    ((esmBASE_t *)0xFFFFF500U)->ILCR4 = 0xFFFFFFFFU;

     
    ((esmBASE_t *)0xFFFFF500U)->ILSR1 = (uint32)((uint32)0U << 31U)
                  | (uint32)((uint32)0U << 30U)
                  | (uint32)((uint32)0U << 29U)
                  | (uint32)((uint32)0U << 28U)
                  | (uint32)((uint32)0U << 27U)
                  | (uint32)((uint32)0U << 26U)
                  | (uint32)((uint32)0U << 25U)
                  | (uint32)((uint32)0U << 24U)
                  | (uint32)((uint32)0U << 23U)
                  | (uint32)((uint32)0U << 22U)
                  | (uint32)((uint32)0U << 21U)
                  | (uint32)((uint32)0U << 20U)
                  | (uint32)((uint32)0U << 19U)
                  | (uint32)((uint32)0U << 18U)
                  | (uint32)((uint32)0U << 17U)
                  | (uint32)((uint32)0U << 16U)
                  | (uint32)((uint32)0U << 15U)
                  | (uint32)((uint32)0U << 14U)
                  | (uint32)((uint32)0U << 13U)
                  | (uint32)((uint32)0U << 12U)
                  | (uint32)((uint32)0U << 11U)
                  | (uint32)((uint32)0U << 10U)
                  | (uint32)((uint32)0U <<  9U)
                  | (uint32)((uint32)0U <<  8U)
                  | (uint32)((uint32)0U <<  7U)
                  | (uint32)((uint32)0U <<  6U)
                  | (uint32)((uint32)0U <<  5U)
                  | (uint32)((uint32)0U <<  4U)
                  | (uint32)((uint32)0U <<  3U)
                  | (uint32)((uint32)0U <<  2U)
                  | (uint32)((uint32)0U <<  1U)
                  | (uint32)((uint32)0U <<  0U);

    ((esmBASE_t *)0xFFFFF500U)->ILSR4 = (uint32)((uint32)0U << 31U)
                  | (uint32)((uint32)0U << 30U)
                  | (uint32)((uint32)0U << 29U)
                  | (uint32)((uint32)0U << 28U)
                  | (uint32)((uint32)0U << 27U)
                  | (uint32)((uint32)0U << 26U)
                  | (uint32)((uint32)0U << 25U)
                  | (uint32)((uint32)0U << 24U)
                  | (uint32)((uint32)0U << 23U)
                  | (uint32)((uint32)0U << 22U)
                  | (uint32)((uint32)0U << 21U)
                  | (uint32)((uint32)0U << 20U)
                  | (uint32)((uint32)0U << 19U)
                  | (uint32)((uint32)0U << 18U)
                  | (uint32)((uint32)0U << 17U)
                  | (uint32)((uint32)0U << 16U)
                  | (uint32)((uint32)0U << 15U)
                  | (uint32)((uint32)0U << 14U)
                  | (uint32)((uint32)0U << 13U)
                  | (uint32)((uint32)0U << 12U)
                  | (uint32)((uint32)0U << 11U)
                  | (uint32)((uint32)0U << 10U)
                  | (uint32)((uint32)0U <<  9U)
                  | (uint32)((uint32)0U <<  8U)
                  | (uint32)((uint32)0U <<  7U)
                  | (uint32)((uint32)0U <<  6U)
                  | (uint32)((uint32)0U <<  5U)
                  | (uint32)((uint32)0U <<  4U)
                  | (uint32)((uint32)0U <<  3U)
                  | (uint32)((uint32)0U <<  2U)
                  | (uint32)((uint32)0U <<  1U)
                  | (uint32)((uint32)0U <<  0U);

     
    ((esmBASE_t *)0xFFFFF500U)->EEPAPR1 = (uint32)((uint32)0U << 31U)
                    | (uint32)((uint32)0U << 30U)
                    | (uint32)((uint32)0U << 29U)
                    | (uint32)((uint32)0U << 28U)
                    | (uint32)((uint32)0U << 27U)
                    | (uint32)((uint32)0U << 26U)
                    | (uint32)((uint32)0U << 25U)
                    | (uint32)((uint32)0U << 24U)
                    | (uint32)((uint32)0U << 23U)
                    | (uint32)((uint32)0U << 22U)
                    | (uint32)((uint32)0U << 21U)
                    | (uint32)((uint32)0U << 20U)
                    | (uint32)((uint32)0U << 19U)
                    | (uint32)((uint32)0U << 18U)
                    | (uint32)((uint32)0U << 17U)
                    | (uint32)((uint32)0U << 16U)
                    | (uint32)((uint32)0U << 15U)
                    | (uint32)((uint32)0U << 14U)
                    | (uint32)((uint32)0U << 13U)
                    | (uint32)((uint32)0U << 12U)
                    | (uint32)((uint32)0U << 11U)
                    | (uint32)((uint32)0U << 10U)
                    | (uint32)((uint32)0U <<  9U)
                    | (uint32)((uint32)0U <<  8U)
                    | (uint32)((uint32)0U <<  7U)
                    | (uint32)((uint32)0U <<  6U)
                    | (uint32)((uint32)0U <<  5U)
                    | (uint32)((uint32)0U <<  4U)
                    | (uint32)((uint32)0U <<  3U)
                    | (uint32)((uint32)0U <<  2U)
                    | (uint32)((uint32)0U <<  1U)
                    | (uint32)((uint32)0U <<  0U);

    ((esmBASE_t *)0xFFFFF500U)->IEPSR4 = (uint32)((uint32)0U << 31U)
                   | (uint32)((uint32)0U << 30U)
                   | (uint32)((uint32)0U << 29U)
                   | (uint32)((uint32)0U << 28U)
                   | (uint32)((uint32)0U << 27U)
                   | (uint32)((uint32)0U << 26U)
                   | (uint32)((uint32)0U << 25U)
                   | (uint32)((uint32)0U << 24U)
                   | (uint32)((uint32)0U << 23U)
                   | (uint32)((uint32)0U << 22U)
                   | (uint32)((uint32)0U << 21U)
                   | (uint32)((uint32)0U << 20U)
                   | (uint32)((uint32)0U << 19U)
                   | (uint32)((uint32)0U << 18U)
                   | (uint32)((uint32)0U << 17U)
                   | (uint32)((uint32)0U << 16U)
                   | (uint32)((uint32)0U << 15U)
                   | (uint32)((uint32)0U << 14U)
                   | (uint32)((uint32)0U << 13U)
                   | (uint32)((uint32)0U << 12U)
                   | (uint32)((uint32)0U << 11U)
                   | (uint32)((uint32)0U << 10U)
                   | (uint32)((uint32)0U <<  9U)
                   | (uint32)((uint32)0U <<  8U)
                   | (uint32)((uint32)0U <<  7U)
                   | (uint32)((uint32)0U <<  6U)
                   | (uint32)((uint32)0U <<  5U)
                   | (uint32)((uint32)0U <<  4U)
                   | (uint32)((uint32)0U <<  3U)
                   | (uint32)((uint32)0U <<  2U)
                   | (uint32)((uint32)0U <<  1U)
                   | (uint32)((uint32)0U <<  0U);

     
    ((esmBASE_t *)0xFFFFF500U)->IESR1 = (uint32)((uint32)0U << 31U)
                  | (uint32)((uint32)0U << 30U)
                  | (uint32)((uint32)0U << 29U)
                  | (uint32)((uint32)0U << 28U)
                  | (uint32)((uint32)0U << 27U)
                  | (uint32)((uint32)0U << 26U)
                  | (uint32)((uint32)0U << 25U)
                  | (uint32)((uint32)0U << 24U)
                  | (uint32)((uint32)0U << 23U)
                  | (uint32)((uint32)0U << 22U)
                  | (uint32)((uint32)0U << 21U)
                  | (uint32)((uint32)0U << 20U)
                  | (uint32)((uint32)0U << 19U)
                  | (uint32)((uint32)0U << 18U)
                  | (uint32)((uint32)0U << 17U)
                  | (uint32)((uint32)0U << 16U)
                  | (uint32)((uint32)0U << 15U)
                  | (uint32)((uint32)0U << 14U)
                  | (uint32)((uint32)0U << 13U)
                  | (uint32)((uint32)0U << 12U)
                  | (uint32)((uint32)0U << 11U)
                  | (uint32)((uint32)0U << 10U)
                  | (uint32)((uint32)0U <<  9U)
                  | (uint32)((uint32)0U <<  8U)
                  | (uint32)((uint32)0U <<  7U)
                  | (uint32)((uint32)0U <<  6U)
                  | (uint32)((uint32)0U <<  5U)
                  | (uint32)((uint32)0U <<  4U)
                  | (uint32)((uint32)0U <<  3U)
                  | (uint32)((uint32)0U <<  2U)
                  | (uint32)((uint32)0U <<  1U)
                  | (uint32)((uint32)0U <<  0U);

    ((esmBASE_t *)0xFFFFF500U)->IESR4 = (uint32)((uint32)0U << 31U)
                  | (uint32)((uint32)0U << 30U)
                  | (uint32)((uint32)0U << 29U)
                  | (uint32)((uint32)0U << 28U)
                  | (uint32)((uint32)0U << 27U)
                  | (uint32)((uint32)0U << 26U)
                  | (uint32)((uint32)0U << 25U)
                  | (uint32)((uint32)0U << 24U)
                  | (uint32)((uint32)0U << 23U)
                  | (uint32)((uint32)0U << 22U)
                  | (uint32)((uint32)0U << 21U)
                  | (uint32)((uint32)0U << 20U)
                  | (uint32)((uint32)0U << 19U)
                  | (uint32)((uint32)0U << 18U)
                  | (uint32)((uint32)0U << 17U)
                  | (uint32)((uint32)0U << 16U)
                  | (uint32)((uint32)0U << 15U)
                  | (uint32)((uint32)0U << 14U)
                  | (uint32)((uint32)0U << 13U)
                  | (uint32)((uint32)0U << 12U)
                  | (uint32)((uint32)0U << 11U)
                  | (uint32)((uint32)0U << 10U)
                  | (uint32)((uint32)0U <<  9U)
                  | (uint32)((uint32)0U <<  8U)
                  | (uint32)((uint32)0U <<  7U)
                  | (uint32)((uint32)0U <<  6U)
                  | (uint32)((uint32)0U <<  5U)
                  | (uint32)((uint32)0U <<  4U)
                  | (uint32)((uint32)0U <<  3U)
                  | (uint32)((uint32)0U <<  2U)
                  | (uint32)((uint32)0U <<  1U)
                  | (uint32)((uint32)0U <<  0U);

 
 
}








 
 
 
 
uint32 esmError(void)
{
    uint32 status;

 
 

    status = ((esmBASE_t *)0xFFFFF500U)->EPSR;

 
 

    return status;
}








 
 
 
 
void esmEnableError(uint64 channels)
{
 
 

    ((esmBASE_t *)0xFFFFF500U)->IEPSR4 = (uint32)((channels >> 32U) & 0xFFFFFFFFU);
    ((esmBASE_t *)0xFFFFF500U)->EEPAPR1 = (uint32)(channels & 0xFFFFFFFFU);

 
 
}








 
 
 
 
void esmDisableError(uint64 channels)
{
 
 

    ((esmBASE_t *)0xFFFFF500U)->IEPCR4 = (uint32)((channels >> 32U) & 0xFFFFFFFFU);
    ((esmBASE_t *)0xFFFFF500U)->DEPAPR1 = (uint32)(channels & 0xFFFFFFFFU);

 
 
}






 
 
 
 
void esmTriggerErrorPinReset(void)
{
 
 

    ((esmBASE_t *)0xFFFFF500U)->EKR = 5U;

 
 
}






 
 
 
 
void esmActivateNormalOperation(void)
{
 
 

    ((esmBASE_t *)0xFFFFF500U)->EKR = 0U;

 
 
}








 
 
 
 
void esmEnableInterrupt(uint64 channels)
{
 
 

    ((esmBASE_t *)0xFFFFF500U)->IESR4 = (uint32)((channels >> 32U) & 0xFFFFFFFFU);
    ((esmBASE_t *)0xFFFFF500U)->IESR1 = (uint32)(channels & 0xFFFFFFFFU);

 
 
}








 
 
 
 
void esmDisableInterrupt(uint64 channels)
{
 
 

    ((esmBASE_t *)0xFFFFF500U)->IECR4 = (uint32)((channels >> 32U) & 0xFFFFFFFFU);
    ((esmBASE_t *)0xFFFFF500U)->IECR1 = (uint32)(channels & 0xFFFFFFFFU);

 
 
}










 
 
 
 
void esmSetInterruptLevel(uint64 channels, uint64 flags)
{
 
 

    ((esmBASE_t *)0xFFFFF500U)->ILCR4 = (uint32)(((channels & (~flags)) >> 32U) & 0xFFFFFFFFU);
    ((esmBASE_t *)0xFFFFF500U)->ILSR4 = (uint32)(((channels & flags) >> 32U) & 0xFFFFFFFFU);
    ((esmBASE_t *)0xFFFFF500U)->ILCR1 = (uint32)((channels & (~flags)) & 0xFFFFFFFFU);
    ((esmBASE_t *)0xFFFFF500U)->ILSR1 = (uint32)((channels & flags) & 0xFFFFFFFFU);

 
 
}









 
 
 
 
void esmClearStatus(uint32 group, uint64 channels)
{
 
 

    ((esmBASE_t *)0xFFFFF500U)->SR1[group] = (uint32)(channels & 0xFFFFFFFFU);
	if(group == 0U)
	{
	    ((esmBASE_t *)0xFFFFF500U)->SR4[group] = (uint32)((channels >> 32U) & 0xFFFFFFFFU);
	}

 
 
}








 
 
 
 
void esmClearStatusBuffer(uint64 channels)
{
 
 

    ((esmBASE_t *)0xFFFFF500U)->SSR2 = (uint32)(channels & 0xFFFFFFFFU);

 
 
}








 
 
 
 
void esmSetCounterPreloadValue(uint32 value)
{
 
 

    ((esmBASE_t *)0xFFFFF500U)->LTCPR = value & 0xC000U;

 
 
}











 
 
 
 
uint64 esmGetStatus(uint32 group, uint64 channels)
{
    uint64 status;
	uint32 ESM_ESTATUS4, ESM_ESTATUS1;
	if(group == 0U)
	{
		ESM_ESTATUS4 = ((esmBASE_t *)0xFFFFF500U)->SR4[group];
	}
	else
	{
		ESM_ESTATUS4 = 0U;
	}
	ESM_ESTATUS1 = ((esmBASE_t *)0xFFFFF500U)->SR1[group];

 
 
    status = (((uint64)(ESM_ESTATUS4) << 32U) | (uint64)ESM_ESTATUS1) & channels;

 
 

    return status;
}










 
 
 
 
uint64 esmGetStatusBuffer(uint64 channels)
{
    uint64 status;

 
 
    status = ((uint64)((esmBASE_t *)0xFFFFF500U)->SSR2) & channels;

 
 

    return status;
}







 
 
 
 
esmSelfTestFlag_t esmEnterSelfTest(void)
{
    esmSelfTestFlag_t status;

 
 

	uint32 errPinStat = ((esmBASE_t *)0xFFFFF500U)->EPSR & 0x1U;
	uint32 esmKeyReg  = ((esmBASE_t *)0xFFFFF500U)->EKR;
	if((errPinStat == 0x0U) && (esmKeyReg == 0x0U))
	{
	  status = esmSelfTest_NotStarted;
	}
	else
	{
	  ((esmBASE_t *)0xFFFFF500U)->EKR = 0xAU;
	  status = esmSelfTest_Active;
	  if((((esmBASE_t *)0xFFFFF500U)->EPSR & 0x1U) != 0x0U)
	  {
	    status = esmSelfTest_Failed;
	  }
	  ((esmBASE_t *)0xFFFFF500U)->EKR = 0x5U;
	}

 
 

	return status;
}





 
 
 
 
esmSelfTestFlag_t esmSelfTestStatus(void)
{
    esmSelfTestFlag_t status;

 
 

	if((((esmBASE_t *)0xFFFFF500U)->EPSR & 0x1U) == 0x0U) 
	{
	  if(((esmBASE_t *)0xFFFFF500U)->EKR == 0x5U)
	  { 
	    status = esmSelfTest_Active;
	  }
	  else
	  {
	    status = esmSelfTest_Failed;
	  }
	}
	else
	{
	    status = esmSelfTest_Passed;
	}

 
 

	return status;
}















 
 
 
 
void esmGetConfigValue(esm_config_reg_t *config_reg, config_value_type_t type)
{
	if (type == InitialValue)
	{
		config_reg->CONFIG_EEPAPR1 = ((uint32)((uint32)0U << 31U) | (uint32)((uint32)0U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)0U << 28U) | (uint32)((uint32)0U << 27U) | (uint32)((uint32)0U << 26U) | (uint32)((uint32)0U << 25U) | (uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 19U) | (uint32)((uint32)0U << 18U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 15U) | (uint32)((uint32)0U << 14U) | (uint32)((uint32)0U << 13U) | (uint32)((uint32)0U << 12U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 10U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 7U) | (uint32)((uint32)0U << 6U) | (uint32)((uint32)0U << 5U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 0U));
		config_reg->CONFIG_IESR1 = ((uint32)((uint32)0U << 31U) | (uint32)((uint32)0U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)0U << 28U) | (uint32)((uint32)0U << 27U) | (uint32)((uint32)0U << 26U) | (uint32)((uint32)0U << 25U) | (uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 19U) | (uint32)((uint32)0U << 18U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 15U) | (uint32)((uint32)0U << 14U) | (uint32)((uint32)0U << 13U) | (uint32)((uint32)0U << 12U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 10U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 7U) | (uint32)((uint32)0U << 6U) | (uint32)((uint32)0U << 5U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 0U));
		config_reg->CONFIG_ILSR1 = ((uint32)((uint32)0U << 31U) | (uint32)((uint32)0U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)0U << 28U) | (uint32)((uint32)0U << 27U) | (uint32)((uint32)0U << 26U) | (uint32)((uint32)0U << 25U) | (uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 19U) | (uint32)((uint32)0U << 18U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 15U) | (uint32)((uint32)0U << 14U) | (uint32)((uint32)0U << 13U) | (uint32)((uint32)0U << 12U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 10U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 7U) | (uint32)((uint32)0U << 6U) | (uint32)((uint32)0U << 5U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 0U));
		config_reg->CONFIG_LTCPR = (16384U - 1U);
		config_reg->CONFIG_EKR = 0U;  
		config_reg->CONFIG_IEPSR4 = ((uint32)((uint32)0U << 31U) | (uint32)((uint32)0U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)0U << 28U) | (uint32)((uint32)0U << 27U) | (uint32)((uint32)0U << 26U) | (uint32)((uint32)0U << 25U) | (uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 19U) | (uint32)((uint32)0U << 18U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 15U) | (uint32)((uint32)0U << 14U) | (uint32)((uint32)0U << 13U) | (uint32)((uint32)0U << 12U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 10U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 7U) | (uint32)((uint32)0U << 6U) | (uint32)((uint32)0U << 5U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 0U));
		config_reg->CONFIG_IESR4 = ((uint32)((uint32)0U << 31U) | (uint32)((uint32)0U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)0U << 28U) | (uint32)((uint32)0U << 27U) | (uint32)((uint32)0U << 26U) | (uint32)((uint32)0U << 25U) | (uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 19U) | (uint32)((uint32)0U << 18U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 15U) | (uint32)((uint32)0U << 14U) | (uint32)((uint32)0U << 13U) | (uint32)((uint32)0U << 12U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 10U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 7U) | (uint32)((uint32)0U << 6U) | (uint32)((uint32)0U << 5U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 0U));
		config_reg->CONFIG_ILSR4 = ((uint32)((uint32)0U << 31U) | (uint32)((uint32)0U << 30U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)0U << 28U) | (uint32)((uint32)0U << 27U) | (uint32)((uint32)0U << 26U) | (uint32)((uint32)0U << 25U) | (uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 19U) | (uint32)((uint32)0U << 18U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 15U) | (uint32)((uint32)0U << 14U) | (uint32)((uint32)0U << 13U) | (uint32)((uint32)0U << 12U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 10U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 7U) | (uint32)((uint32)0U << 6U) | (uint32)((uint32)0U << 5U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 0U));
	}
	else
	{
	 
		config_reg->CONFIG_EEPAPR1 = ((esmBASE_t *)0xFFFFF500U)->EEPAPR1;
		config_reg->CONFIG_IESR1 = ((esmBASE_t *)0xFFFFF500U)->IESR1;
		config_reg->CONFIG_ILSR1 = ((esmBASE_t *)0xFFFFF500U)->ILSR1;
		config_reg->CONFIG_LTCPR = ((esmBASE_t *)0xFFFFF500U)->LTCPR;
		config_reg->CONFIG_EKR = ((esmBASE_t *)0xFFFFF500U)->EKR;  
		config_reg->CONFIG_IEPSR4 = ((esmBASE_t *)0xFFFFF500U)->IEPSR4;
		config_reg->CONFIG_IESR4 = ((esmBASE_t *)0xFFFFF500U)->IESR4;
		config_reg->CONFIG_ILSR4 = ((esmBASE_t *)0xFFFFF500U)->ILSR4;
	}
}

 
 



 
#pragma CODE_STATE(esmHighInterrupt, 32)
#pragma INTERRUPT(esmHighInterrupt, FIQ)
 
 
 
void esmHighInterrupt(void)
{
    uint32 vec = ((esmBASE_t *)0xFFFFF500U)->IOFFHR - 1U;

 
 

    if (vec < 32U)
    {
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = (uint32)1U << vec;
        esmGroup1Notification(vec);
    }
    else if (vec < 64U)
    {
        ((esmBASE_t *)0xFFFFF500U)->SR1[1U] = (uint32)1U << (vec-32U);
        esmGroup2Notification(vec-32U);
    }
    else if (vec < 96U)
    {
        ((esmBASE_t *)0xFFFFF500U)->SR4[0U] = (uint32)1U << (vec-64U);
        esmGroup1Notification(vec-32U);
    }
    else
    {
        ((esmBASE_t *)0xFFFFF500U)->SR4[0U] = 0xFFFFFFFFU;
        ((esmBASE_t *)0xFFFFF500U)->SR1[1U] = 0xFFFFFFFFU;
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0xFFFFFFFFU;
    }

 
 
}


 
 

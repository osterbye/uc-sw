









 

































 














 

































 














 

































 












 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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


 
 

 
 
 
 

 
 

 
 





 
 

 




 




 

typedef volatile struct ecapBASE
 {
   uint32 TSCTR;      
   uint32 CTRPHS;      
   uint32 CAP1;       
   uint32 CAP2;       
   uint32 CAP3;       
   uint32 CAP4;       
   uint16 rsvd1[8U];  
   uint16 ECCTL2;     
   uint16 ECCTL1;     
   uint16 ECFLG;       
   uint16 ECEINT;     
   uint16 ECFRC;      
   uint16 ECCLR;      
   uint16 rsvd2[6U];  

}ecapBASE_t;





 





 





 





 





 





 

 
 






 
 

 
typedef enum
{
    ecapInt_CTR_CMP = 0x0080U,     
    ecapInt_CTR_PRD = 0x0040U,     
    ecapInt_CTR_OVF = 0x0020U,     
    ecapInt_CEVT4   = 0x0010U,     
    ecapInt_CEVT3   = 0x0008U,     
    ecapInt_CEVT2   = 0x0004U,     
    ecapInt_CEVT1   = 0x0002U,     
    ecapInt_Global  = 0x0001U,     
    ecapInt_All     = 0x00FFU      
} ecapInterrupt_t;


 
typedef enum
{
    ecapPrescale_By_1  = ((uint16)0U << 9U),    
    ecapPrescale_By_2  = ((uint16)1U << 9U),    
    ecapPrescale_By_4  = ((uint16)2U << 9U),    
    ecapPrescale_By_6  = ((uint16)3U << 9U),    
    ecapPrescale_By_8  = ((uint16)4U << 9U),    
    ecapPrescale_By_10 = ((uint16)5U << 9U),    
    ecapPrescale_By_12 = ((uint16)6U << 9U),    
    ecapPrescale_By_14 = ((uint16)7U << 9U),    
    ecapPrescale_By_16 = ((uint16)8U << 9U),    
    ecapPrescale_By_18 = ((uint16)9U << 9U),    
    ecapPrescale_By_20 = ((uint16)10U << 9U),   
    ecapPrescale_By_22 = ((uint16)11U << 9U),   
    ecapPrescale_By_24 = ((uint16)12U << 9U),   
    ecapPrescale_By_26 = ((uint16)13U << 9U),   
    ecapPrescale_By_28 = ((uint16)14U << 9U),   
    ecapPrescale_By_30 = ((uint16)15U << 9U),   
    ecapPrescale_By_32 = ((uint16)16U << 9U),   
    ecapPrescale_By_34 = ((uint16)17U << 9U),   
    ecapPrescale_By_36 = ((uint16)18U << 9U),   
    ecapPrescale_By_38 = ((uint16)19U << 9U),   
    ecapPrescale_By_40 = ((uint16)20U << 9U),   
    ecapPrescale_By_42 = ((uint16)21U << 9U),   
    ecapPrescale_By_44 = ((uint16)22U << 9U),   
    ecapPrescale_By_46 = ((uint16)23U << 9U),   
    ecapPrescale_By_48 = ((uint16)24U << 9U),   
    ecapPrescale_By_50 = ((uint16)25U << 9U),   
    ecapPrescale_By_52 = ((uint16)26U << 9U),   
    ecapPrescale_By_54 = ((uint16)27U << 9U),   
    ecapPrescale_By_56 = ((uint16)28U << 9U),   
    ecapPrescale_By_58 = ((uint16)29U << 9U),   
    ecapPrescale_By_60 = ((uint16)30U << 9U),   
    ecapPrescale_By_62 = ((uint16)31U << 9U)    
} ecapPrescale_t;


 
typedef enum
{
    SyncOut_SyncIn = ((uint16)0U << 6U),    
    SyncOut_CTRPRD = ((uint16)1U << 6U),    
    SyncOut_None   = ((uint16)2U << 6U)     
} ecapSyncOut_t;


 
typedef enum
{
    RISING_EDGE  = 0U,
    FALLING_EDGE = 1U
}ecapEdgePolarity_t;

typedef enum
{
    ACTIVE_HIGH = 0U,
    ACTIVE_LOW  = 1U
}ecapAPWMPolarity_t;


 
typedef enum
{
    CONTINUOUS = 0U,
    ONE_SHOT   = 1U
}ecapMode_t;


 
typedef enum
{
    CAPTURE_EVENT1 = 0U,
    CAPTURE_EVENT2 = 1U,
    CAPTURE_EVENT3 = 2U,
    CAPTURE_EVENT4 = 3U
}ecapEvent_t ;

typedef enum
{
    RESET_ENABLE  = 1U,
    RESET_DISABLE = 0U
}ecapReset_t ;

typedef struct ecap_config_reg
 {
   uint32 CONFIG_CTRPHS;
   uint16 CONFIG_ECCTL1;
   uint16 CONFIG_ECCTL2;
   uint16 CONFIG_ECEINT;
}ecap_config_reg_t;




















 
void ecapInit(void);
void ecapSetCounter(ecapBASE_t *ecap, uint32 value);
void ecapEnableCounterLoadOnSync(ecapBASE_t *ecap, uint32 phase);
void ecapDisableCounterLoadOnSync(ecapBASE_t *ecap);
void ecapSetEventPrescaler(ecapBASE_t *ecap, ecapPrescale_t prescale);
void ecapSetCaptureEvent1(ecapBASE_t *ecap, ecapEdgePolarity_t edgePolarity, ecapReset_t resetenable);
void ecapSetCaptureEvent2(ecapBASE_t *ecap, ecapEdgePolarity_t edgePolarity, ecapReset_t resetenable);
void ecapSetCaptureEvent3(ecapBASE_t *ecap, ecapEdgePolarity_t edgePolarity, ecapReset_t resetenable);
void ecapSetCaptureEvent4(ecapBASE_t *ecap, ecapEdgePolarity_t edgePolarity, ecapReset_t resetenable);
void ecapSetCaptureMode(ecapBASE_t *ecap, ecapMode_t capMode, ecapEvent_t event);
void ecapEnableCapture(ecapBASE_t *ecap);
void ecapDisableCapture(ecapBASE_t *ecap);
void ecapStartCounter(ecapBASE_t *ecap);
void ecapStopCounter(ecapBASE_t *ecap);
void ecapSetSyncOut(ecapBASE_t *ecap, ecapSyncOut_t syncOutSrc);
void ecapEnableAPWMmode(ecapBASE_t *ecap, ecapAPWMPolarity_t pwmPolarity, uint32 period, uint32 duty);
void ecapDisableAPWMMode(ecapBASE_t *ecap);
void ecapEnableInterrupt(ecapBASE_t *ecap, ecapInterrupt_t interrupts);
void ecapDisableInterrupt(ecapBASE_t *ecap, ecapInterrupt_t interrupts);
uint16 ecapGetEventStatus(ecapBASE_t *ecap, ecapInterrupt_t events);
void ecapClearFlag(ecapBASE_t *ecap, ecapInterrupt_t events);
uint32 ecapGetCAP1(ecapBASE_t *ecap);
uint32 ecapGetCAP2(ecapBASE_t *ecap);
uint32 ecapGetCAP3(ecapBASE_t *ecap);
uint32 ecapGetCAP4(ecapBASE_t *ecap);
void ecap1GetConfigValue(ecap_config_reg_t *config_reg, config_value_type_t type);
void ecap2GetConfigValue(ecap_config_reg_t *config_reg, config_value_type_t type);
void ecap3GetConfigValue(ecap_config_reg_t *config_reg, config_value_type_t type);
void ecap4GetConfigValue(ecap_config_reg_t *config_reg, config_value_type_t type);
void ecap5GetConfigValue(ecap_config_reg_t *config_reg, config_value_type_t type);
void ecap6GetConfigValue(ecap_config_reg_t *config_reg, config_value_type_t type);




 
void ecapNotification(ecapBASE_t *ecap,uint16 flags);

 


 
 










 

































 













 

































 




 
 

 




 




 
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
 


 
 





 
 
 
 
void ecapInit(void)
{
 
 

     

    



 
    ((ecapBASE_t *)0xFCF79300U)->ECCTL1 = ((uint16)((uint16)RISING_EDGE << 0U)         
                      | (uint16)((uint16)RESET_DISABLE << 1U)    
                      | (uint16)((uint16)RISING_EDGE << 2U)         
                      | (uint16)((uint16)RESET_DISABLE << 3U)    
                      | (uint16)((uint16)RISING_EDGE << 4U)         
                      | (uint16)((uint16)RESET_DISABLE << 5U)    
                      | (uint16)((uint16)RISING_EDGE << 6U)         
                      | (uint16)((uint16)RESET_DISABLE << 7U)    
                      | (uint16)((uint16)0U << 8U)             
                      | (uint16)((uint16)0U << 9U));       
    
    


 
    ((ecapBASE_t *)0xFCF79300U)->ECCTL2 = (uint16)((uint16)ONE_SHOT << 0U)       
                     | (uint16)((uint16)CAPTURE_EVENT1 << 1U)        
                     | (uint16)((uint16)0U << 9U)       
                     | (uint16)0x00000010U;       
    
    

     
     ((ecapBASE_t *)0xFCF79300U)->ECEINT = 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U;    

      

    



 
    ((ecapBASE_t *)0xFCF79400U)->ECCTL1 = ((uint16)((uint16)RISING_EDGE << 0U)         
                      | (uint16)((uint16)RESET_DISABLE << 1U)    
                      | (uint16)((uint16)RISING_EDGE << 2U)         
                      | (uint16)((uint16)RESET_DISABLE << 3U)    
                      | (uint16)((uint16)RISING_EDGE << 4U)         
                      | (uint16)((uint16)RESET_DISABLE << 5U)    
                      | (uint16)((uint16)RISING_EDGE << 6U)         
                      | (uint16)((uint16)RESET_DISABLE << 7U)    
                      | (uint16)((uint16)0U << 8U)             
                      | (uint16)((uint16)0U << 9U));       

                    
    


 
    ((ecapBASE_t *)0xFCF79400U)->ECCTL2 = (uint16)((uint16)ONE_SHOT << 0U)       
                     | (uint16)((uint16)CAPTURE_EVENT1 << 1U)        
                     | (uint16)((uint16)0U << 9U)       
                     | (uint16)0x00000010U;       
    
    

     
     ((ecapBASE_t *)0xFCF79400U)->ECEINT = 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U;    

     

    



 
    ((ecapBASE_t *)0xFCF79500U)->ECCTL1 = ((uint16)((uint16)RISING_EDGE << 0U)         
                      | (uint16)((uint16)RESET_DISABLE << 1U)    
                      | (uint16)((uint16)RISING_EDGE << 2U)         
                      | (uint16)((uint16)RESET_DISABLE << 3U)    
                      | (uint16)((uint16)RISING_EDGE << 4U)         
                      | (uint16)((uint16)RESET_DISABLE << 5U)    
                      | (uint16)((uint16)RISING_EDGE << 6U)         
                      | (uint16)((uint16)RESET_DISABLE << 7U)    
                      | (uint16)((uint16)0U << 8U)             
                      | (uint16)((uint16)0U << 9U));       

                    
    


 
    ((ecapBASE_t *)0xFCF79500U)->ECCTL2 = (uint16)((uint16)ONE_SHOT << 0U)       
                     | (uint16)((uint16)CAPTURE_EVENT1 << 1U)        
                     | (uint16)((uint16)0U << 9U)       
                     | (uint16)0x00000010U;       
    
    

     
     ((ecapBASE_t *)0xFCF79500U)->ECEINT = 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U;    

     

    



 
    ((ecapBASE_t *)0xFCF79600U)->ECCTL1 = ((uint16)((uint16)RISING_EDGE << 0U)         
                      | (uint16)((uint16)RESET_DISABLE << 1U)    
                      | (uint16)((uint16)RISING_EDGE << 2U)         
                      | (uint16)((uint16)RESET_DISABLE << 3U)    
                      | (uint16)((uint16)RISING_EDGE << 4U)         
                      | (uint16)((uint16)RESET_DISABLE << 5U)    
                      | (uint16)((uint16)RISING_EDGE << 6U)         
                      | (uint16)((uint16)RESET_DISABLE << 7U)    
                      | (uint16)((uint16)0U << 8U)             
                      | (uint16)((uint16)0U << 9U));       

                    
    


 
    ((ecapBASE_t *)0xFCF79600U)->ECCTL2 = (uint16)((uint16)ONE_SHOT << 0U)       
                     | (uint16)((uint16)CAPTURE_EVENT1 << 1U)        
                     | (uint16)((uint16)0U << 9U)       
                     | (uint16)0x00000010U;       
    
    

     
     ((ecapBASE_t *)0xFCF79600U)->ECEINT = 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U;    

     

    



 
    ((ecapBASE_t *)0xFCF79700U)->ECCTL1 = ((uint16)((uint16)RISING_EDGE << 0U)         
                      | (uint16)((uint16)RESET_DISABLE << 1U)    
                      | (uint16)((uint16)RISING_EDGE << 2U)         
                      | (uint16)((uint16)RESET_DISABLE << 3U)    
                      | (uint16)((uint16)RISING_EDGE << 4U)         
                      | (uint16)((uint16)RESET_DISABLE << 5U)    
                      | (uint16)((uint16)RISING_EDGE << 6U)         
                      | (uint16)((uint16)RESET_DISABLE << 7U)    
                      | (uint16)((uint16)0U << 8U)             
                      | (uint16)((uint16)0U << 9U));       

                    
    


 
    ((ecapBASE_t *)0xFCF79700U)->ECCTL2 = (uint16)((uint16)ONE_SHOT << 0U)       
                     | (uint16)((uint16)CAPTURE_EVENT1 << 1U)        
                     | (uint16)((uint16)0U << 9U)       
                     | (uint16)0x00000010U;       
    
    

     
     ((ecapBASE_t *)0xFCF79700U)->ECEINT = 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U;    

     

    



 
    ((ecapBASE_t *)0xFCF79800U)->ECCTL1 = ((uint16)((uint16)RISING_EDGE << 0U)         
                      | (uint16)((uint16)RESET_DISABLE << 1U)    
                      | (uint16)((uint16)RISING_EDGE << 2U)         
                      | (uint16)((uint16)RESET_DISABLE << 3U)    
                      | (uint16)((uint16)RISING_EDGE << 4U)         
                      | (uint16)((uint16)RESET_DISABLE << 5U)    
                      | (uint16)((uint16)RISING_EDGE << 6U)         
                      | (uint16)((uint16)RESET_DISABLE << 7U)    
                      | (uint16)((uint16)0U << 8U)             
                      | (uint16)((uint16)0U << 9U));       

                    
    


 
    ((ecapBASE_t *)0xFCF79800U)->ECCTL2 = (uint16)((uint16)ONE_SHOT << 0U)         
                     | (uint16)((uint16)CAPTURE_EVENT1 << 1U)        
                     | (uint16)((uint16)0U << 9U)       
                     | (uint16)0x00000010U;       
    
    

     
     ((ecapBASE_t *)0xFCF79800U)->ECEINT = 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U;    

}








 
 
 
 
void ecapSetCounter(ecapBASE_t *ecap, uint32 value)
{
    ecap->TSCTR = value;
}








 
 
 
 
void ecapEnableCounterLoadOnSync(ecapBASE_t *ecap, uint32 phase)
{
    ecap->ECCTL2 |= 0x0020U;
    ecap->CTRPHS = phase;
}







 
 
 
 
void ecapDisableCounterLoadOnSync(ecapBASE_t *ecap)
{
    ecap->ECCTL2 &= (uint16)~(uint16)0x0020U;
}








 
 
 
 
void ecapSetEventPrescaler(ecapBASE_t *ecap, ecapPrescale_t prescale)
{
    ecap->ECCTL1 &= (uint16)~(uint16)0x3E00U;
    ecap->ECCTL1 |= (uint16)prescale;
}













 
 
 
 
void ecapSetCaptureEvent1(ecapBASE_t *ecap, ecapEdgePolarity_t edgePolarity, ecapReset_t resetenable)
{
    ecap->ECCTL1 &= (uint16)~(uint16)((uint16)0x3U << 0U);
    ecap->ECCTL1 |= (uint16)(((uint16)edgePolarity | (uint16)((uint16)resetenable << 1U)) << 0U);
}













 
 
 
 
void ecapSetCaptureEvent2(ecapBASE_t *ecap, ecapEdgePolarity_t edgePolarity, ecapReset_t resetenable)
{
    ecap->ECCTL1 &= (uint16)~(uint16)((uint16)0x3U << 2U);
    ecap->ECCTL1 |= (uint16)(((uint16)edgePolarity | (uint16)((uint16)resetenable << 1U)) << 2U);
}













 
 
 
 
void ecapSetCaptureEvent3(ecapBASE_t *ecap, ecapEdgePolarity_t edgePolarity, ecapReset_t resetenable)
{
    ecap->ECCTL1 &= (uint16)~(uint16)((uint16)0x3U << 4U);
    ecap->ECCTL1 |= (uint16)(((uint16)edgePolarity | (uint16)((uint16)resetenable << 1U)) << 4U);
}













 
 
 
 
void ecapSetCaptureEvent4(ecapBASE_t *ecap, ecapEdgePolarity_t edgePolarity, ecapReset_t resetenable)
{
    ecap->ECCTL1 &= (uint16)~(uint16)((uint16)0x3U << 6U);
    ecap->ECCTL1 |= (uint16)(((uint16)edgePolarity | (uint16)((uint16)resetenable << 1U)) << 6U);
}















 
 
 
 
void ecapSetCaptureMode(ecapBASE_t *ecap, ecapMode_t capMode, ecapEvent_t event)
{
    ecap->ECCTL2 &= 0xFFF8U;
    ecap->ECCTL2 |= ((uint16)((uint16)event << 1U) | (uint16)capMode);
}







 
 
 
 
void ecapEnableCapture(ecapBASE_t *ecap)
{
    ecap->ECCTL1 |= 0x0100U;
}







 
 
 
 
void ecapDisableCapture(ecapBASE_t *ecap)
{
    ecap->ECCTL1 &= (uint16)~(uint16)0x0100U;
}







 
 
 
 
void ecapStartCounter(ecapBASE_t *ecap)
{
    ecap->ECCTL2 |= 0x0010U;
}







 
 
 
 
void ecapStopCounter(ecapBASE_t *ecap)
{
    ecap->ECCTL2 &= (uint16)~(uint16)0x0010U;
}











 
 
 
 
void ecapSetSyncOut(ecapBASE_t *ecap, ecapSyncOut_t syncOutSrc)
{
    ecap->ECCTL2 &= (uint16)~(uint16)0x00C0U;
    ecap->ECCTL2 |= syncOutSrc;
}












 
 
 
 
void ecapEnableAPWMmode(ecapBASE_t *ecap, ecapAPWMPolarity_t pwmPolarity, uint32 period, uint32 duty)
{
    ecap->ECCTL2 &= (uint16)~(uint16)0x0400U;
    ecap->ECCTL2 |= (uint16)((uint16)pwmPolarity << 10U) | (uint16)((uint16)1U << 9U);
    ecap->CAP1 = period - 1U;
    ecap->CAP2 = duty;
}







 
 
 
 
void ecapDisableAPWMMode(ecapBASE_t *ecap)
{
    ecap->ECCTL2 &= (uint16)~(uint16)0x0200U;
}
















 
 
 
 
void ecapEnableInterrupt(ecapBASE_t *ecap, ecapInterrupt_t interrupts)
{
    ecap->ECEINT |= interrupts;
}
















 
 
 
 
void ecapDisableInterrupt(ecapBASE_t *ecap, ecapInterrupt_t interrupts)
{
    ecap->ECEINT &= (uint16)~(uint16)interrupts;
}


















 
 
 
 
uint16 ecapGetEventStatus(ecapBASE_t *ecap, ecapInterrupt_t events)
{
    return (ecap->ECFLG & events);
}

















 
 
 
 
void ecapClearFlag(ecapBASE_t *ecap, ecapInterrupt_t events)
{
    ecap->ECCLR = events;
}







 
 
 
 
uint32 ecapGetCAP1(ecapBASE_t *ecap)
{
	return ecap->CAP1;
}







 
 
 
 
uint32 ecapGetCAP2(ecapBASE_t *ecap)
{
	return ecap->CAP2;
}







 
 
 
 
uint32 ecapGetCAP3(ecapBASE_t *ecap)
{
	return ecap->CAP3;
}







 
 
 
 
uint32 ecapGetCAP4(ecapBASE_t *ecap)
{
	return ecap->CAP4;
}















 
 
 
 
void ecap1GetConfigValue(ecap_config_reg_t *config_reg, config_value_type_t type)
{
	if (type == InitialValue)
	{
		config_reg->CONFIG_CTRPHS = 0x00000000U;
		config_reg->CONFIG_ECCTL1 = ((uint16)((uint16)RISING_EDGE << 0U) | (uint16)((uint16)RESET_DISABLE << 1U) | (uint16)((uint16)RISING_EDGE << 2U) | (uint16)((uint16)RESET_DISABLE << 3U) | (uint16)((uint16)RISING_EDGE << 4U)| (uint16)((uint16)RESET_DISABLE << 5U) | (uint16)((uint16)RISING_EDGE << 6U) | (uint16)((uint16)RESET_DISABLE << 7U) | (uint16)((uint16)0U << 8U) | (uint16)((uint16)0U << 9U));
		config_reg->CONFIG_ECCTL2 = ((uint16)((uint16)ONE_SHOT << 0U) | (uint16)((uint16)CAPTURE_EVENT1 << 1U) | (uint16)((uint16)0U << 9U) | (uint16)0x00000010U);
		config_reg->CONFIG_ECEINT = (0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U);
	}
	else
	{
		config_reg->CONFIG_CTRPHS = ((ecapBASE_t *)0xFCF79300U)->CTRPHS;
		config_reg->CONFIG_ECCTL1 = ((ecapBASE_t *)0xFCF79300U)->ECCTL1;
		config_reg->CONFIG_ECCTL2 = ((ecapBASE_t *)0xFCF79300U)->ECCTL2;
		config_reg->CONFIG_ECEINT = ((ecapBASE_t *)0xFCF79300U)->ECEINT;
	}
}















 
 
 
 
void ecap2GetConfigValue(ecap_config_reg_t *config_reg, config_value_type_t type)
{
	if (type == InitialValue)
	{
		config_reg->CONFIG_CTRPHS = 0x00000000U;
		config_reg->CONFIG_ECCTL1 = ((uint16)((uint16)RISING_EDGE << 0U) | (uint16)((uint16)RESET_DISABLE << 1U) | (uint16)((uint16)RISING_EDGE << 2U) | (uint16)((uint16)RESET_DISABLE << 3U) | (uint16)((uint16)RISING_EDGE << 4U)| (uint16)((uint16)RESET_DISABLE << 5U) | (uint16)((uint16)RISING_EDGE << 6U) | (uint16)((uint16)RESET_DISABLE << 7U) | (uint16)((uint16)0U << 8U) | (uint16)((uint16)0U << 9U));
		config_reg->CONFIG_ECCTL2 = ((uint16)((uint16)ONE_SHOT << 0U) | (uint16)((uint16)CAPTURE_EVENT1 << 1U) | (uint16)((uint16)0U << 9U) | (uint16)0x00000010U);
		config_reg->CONFIG_ECEINT = (0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U);
	}
	else
	{
		config_reg->CONFIG_CTRPHS = ((ecapBASE_t *)0xFCF79400U)->CTRPHS;
		config_reg->CONFIG_ECCTL1 = ((ecapBASE_t *)0xFCF79400U)->ECCTL1;
		config_reg->CONFIG_ECCTL2 = ((ecapBASE_t *)0xFCF79400U)->ECCTL2;
		config_reg->CONFIG_ECEINT = ((ecapBASE_t *)0xFCF79400U)->ECEINT;
	}
}















 
 
 
 
void ecap3GetConfigValue(ecap_config_reg_t *config_reg, config_value_type_t type)
{
	if (type == InitialValue)
	{
		config_reg->CONFIG_CTRPHS = 0x00000000U;
		config_reg->CONFIG_ECCTL1 = ((uint16)((uint16)RISING_EDGE << 0U) | (uint16)((uint16)RESET_DISABLE << 1U) | (uint16)((uint16)RISING_EDGE << 2U) | (uint16)((uint16)RESET_DISABLE << 3U) | (uint16)((uint16)RISING_EDGE << 4U)| (uint16)((uint16)RESET_DISABLE << 5U) | (uint16)((uint16)RISING_EDGE << 6U) | (uint16)((uint16)RESET_DISABLE << 7U) | (uint16)((uint16)0U << 8U) | (uint16)((uint16)0U << 9U));
		config_reg->CONFIG_ECCTL2 = ((uint16)((uint16)ONE_SHOT << 0U) | (uint16)((uint16)CAPTURE_EVENT1 << 1U) | (uint16)((uint16)0U << 9U) | (uint16)0x00000010U);
		config_reg->CONFIG_ECEINT = (0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U);
	}
	else
	{
		config_reg->CONFIG_CTRPHS = ((ecapBASE_t *)0xFCF79500U)->CTRPHS;
		config_reg->CONFIG_ECCTL1 = ((ecapBASE_t *)0xFCF79500U)->ECCTL1;
		config_reg->CONFIG_ECCTL2 = ((ecapBASE_t *)0xFCF79500U)->ECCTL2;
		config_reg->CONFIG_ECEINT = ((ecapBASE_t *)0xFCF79500U)->ECEINT;
	}
}















 
 
 
 
void ecap4GetConfigValue(ecap_config_reg_t *config_reg, config_value_type_t type)
{
	if (type == InitialValue)
	{
		config_reg->CONFIG_CTRPHS = 0x00000000U;
		config_reg->CONFIG_ECCTL1 = ((uint16)((uint16)RISING_EDGE << 0U) | (uint16)((uint16)RESET_DISABLE << 1U) | (uint16)((uint16)RISING_EDGE << 2U) | (uint16)((uint16)RESET_DISABLE << 3U) | (uint16)((uint16)RISING_EDGE << 4U)| (uint16)((uint16)RESET_DISABLE << 5U) | (uint16)((uint16)RISING_EDGE << 6U) | (uint16)((uint16)RESET_DISABLE << 7U) | (uint16)((uint16)0U << 8U) | (uint16)((uint16)0U << 9U));
		config_reg->CONFIG_ECCTL2 = ((uint16)((uint16)ONE_SHOT << 0U) | (uint16)((uint16)CAPTURE_EVENT1 << 1U) | (uint16)((uint16)0U << 9U) | (uint16)0x00000010U);
		config_reg->CONFIG_ECEINT = (0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U);
	}
	else
	{
		config_reg->CONFIG_CTRPHS = ((ecapBASE_t *)0xFCF79600U)->CTRPHS;
		config_reg->CONFIG_ECCTL1 = ((ecapBASE_t *)0xFCF79600U)->ECCTL1;
		config_reg->CONFIG_ECCTL2 = ((ecapBASE_t *)0xFCF79600U)->ECCTL2;
		config_reg->CONFIG_ECEINT = ((ecapBASE_t *)0xFCF79600U)->ECEINT;
	}
}















 
 
 
 
void ecap5GetConfigValue(ecap_config_reg_t *config_reg, config_value_type_t type)
{
	if (type == InitialValue)
	{
		config_reg->CONFIG_CTRPHS = 0x00000000U;
		config_reg->CONFIG_ECCTL1 = ((uint16)((uint16)RISING_EDGE << 0U) | (uint16)((uint16)RESET_DISABLE << 1U) | (uint16)((uint16)RISING_EDGE << 2U) | (uint16)((uint16)RESET_DISABLE << 3U) | (uint16)((uint16)RISING_EDGE << 4U)| (uint16)((uint16)RESET_DISABLE << 5U) | (uint16)((uint16)RISING_EDGE << 6U) | (uint16)((uint16)RESET_DISABLE << 7U) | (uint16)((uint16)0U << 8U) | (uint16)((uint16)0U << 9U));
		config_reg->CONFIG_ECCTL2 = ((uint16)((uint16)ONE_SHOT << 0U) | (uint16)((uint16)CAPTURE_EVENT1 << 1U) | (uint16)((uint16)0U << 9U) | (uint16)0x00000010U);
		config_reg->CONFIG_ECEINT = (0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U);
	}
	else
	{
		config_reg->CONFIG_CTRPHS = ((ecapBASE_t *)0xFCF79700U)->CTRPHS;
		config_reg->CONFIG_ECCTL1 = ((ecapBASE_t *)0xFCF79700U)->ECCTL1;
		config_reg->CONFIG_ECCTL2 = ((ecapBASE_t *)0xFCF79700U)->ECCTL2;
		config_reg->CONFIG_ECEINT = ((ecapBASE_t *)0xFCF79700U)->ECEINT;
	}
}















 
 
 
 
void ecap6GetConfigValue(ecap_config_reg_t *config_reg, config_value_type_t type)
{
	if (type == InitialValue)
	{
		config_reg->CONFIG_CTRPHS = 0x00000000U;
		config_reg->CONFIG_ECCTL1 = ((uint16)((uint16)RISING_EDGE << 0U) | (uint16)((uint16)RESET_DISABLE << 1U) | (uint16)((uint16)RISING_EDGE << 2U) | (uint16)((uint16)RESET_DISABLE << 3U) | (uint16)((uint16)RISING_EDGE << 4U)| (uint16)((uint16)RESET_DISABLE << 5U) | (uint16)((uint16)RISING_EDGE << 6U) | (uint16)((uint16)RESET_DISABLE << 7U) | (uint16)((uint16)0U << 8U) | (uint16)((uint16)0U << 9U));
		config_reg->CONFIG_ECCTL2 = ((uint16)((uint16)ONE_SHOT << 0U) | (uint16)((uint16)CAPTURE_EVENT1 << 1U) | (uint16)((uint16)0U << 9U) | (uint16)0x00000010U);
		config_reg->CONFIG_ECEINT = (0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U);
	}
	else
	{
		config_reg->CONFIG_CTRPHS = ((ecapBASE_t *)0xFCF79800U)->CTRPHS;
		config_reg->CONFIG_ECCTL1 = ((ecapBASE_t *)0xFCF79800U)->ECCTL1;
		config_reg->CONFIG_ECCTL2 = ((ecapBASE_t *)0xFCF79800U)->ECCTL2;
		config_reg->CONFIG_ECEINT = ((ecapBASE_t *)0xFCF79800U)->ECEINT;
	}
}



 

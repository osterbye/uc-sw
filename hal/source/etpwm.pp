









 

































 








 

































 














 

































 












 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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


 
 

 
 
 
 

 
 

 
 





 
 

 




 




 

typedef volatile struct etpwmBASE
{
    uint16 TBSTS;            
	uint16 TBCTL;            
    uint16 TBPHS;            
    uint16   rsvd1;          
    uint16 TBPRD;            
    uint16 TBCTR;            
    uint16 CMPCTL;           
    uint16   rsvd2;          
    uint16 CMPA;             
    uint16   rsvd3;          
    uint16 AQCTLA;           
    uint16 CMPB;             
    uint16 AQSFRC;           
    uint16 AQCTLB;           
    uint16 DBCTL;            
    uint16 AQCSFRC;          
    uint16 DBFED;            
    uint16 DBRED;            
    uint16 TZDCSEL;          
    uint16 TZSEL;            
    uint16 TZEINT;           
    uint16 TZCTL;            
    uint16 TZCLR;            
    uint16 TZFLG;            
    uint16 ETSEL;            
    uint16 TZFRC;            
    uint16 ETFLG;            
    uint16 ETPS;             
    uint16 ETFRC;            
    uint16 ETCLR;            
    uint16   rsvd4;          
    uint16 PCCTL;            
	uint16   rsvd5[16U];     
    uint16 DCACTL;           
    uint16 DCTRIPSEL;        
    uint16 DCFCTL;           
    uint16 DCBCTL;           
    uint16 DCFOFFSET;        
    uint16 DCCAPCTL;         
    uint16 DCFWINDOW;        
    uint16 DCFOFFSETCNT;     
    uint16 DCCAP;            
    uint16 DCFWINDOWCNT;     
} etpwmBASE_t;








 





 





 





 





 





 





 

 
 





 
 



 
typedef enum
{
    ClkDiv_by_1   = ((uint16)0U << 10U),  
    ClkDiv_by_2   = ((uint16)1U << 10U),  
    ClkDiv_by_4   = ((uint16)2U << 10U),  
    ClkDiv_by_8   = ((uint16)3U << 10U),  
    ClkDiv_by_16  = ((uint16)4U << 10U),  
    ClkDiv_by_32  = ((uint16)5U << 10U),  
    ClkDiv_by_64  = ((uint16)6U << 10U),  
    ClkDiv_by_128 = ((uint16)7U << 10U)   
} etpwmClkDiv_t;



 
typedef enum
{
    HspClkDiv_by_1  = ((uint16)0U << 7U),  
    HspClkDiv_by_2  = ((uint16)1U << 7U),  
    HspClkDiv_by_4  = ((uint16)2U << 7U),  
    HspClkDiv_by_6  = ((uint16)3U << 7U),  
    HspClkDiv_by_8  = ((uint16)4U << 7U),  
    HspClkDiv_by_10 = ((uint16)5U << 7U),  
    HspClkDiv_by_12 = ((uint16)6U << 7U),  
    HspClkDiv_by_14 = ((uint16)7U << 7U)   
} etpwmHspClkDiv_t;


 
typedef enum
{
    SyncOut_EPWMxSYNCI = 0x00U,  
    SyncOut_CtrEqZero  = 0x10U,  
    SyncOut_CtrEqCmpB  = 0x20U,  
    SyncOut_Disable    = 0x30U   
} etpwmSyncOut_t;


 
typedef enum
{
    CounterMode_Up     = 0U,  
    Countermode_Down   = 1U,  
    CounterMode_UpDown = 2U,  
    CounterMode_Stop   = 3U   
} etpwmCounterMode_t;


 
typedef enum
{
    RunMode_SoftStopAfterIncr  = ((uint16)0U << 14U),  
    RunMode_SoftStopAfterDecr  = ((uint16)0U << 14U),  
    RunMode_SoftStopAfterCycle = ((uint16)1U << 14U),  
    RunMode_FreeRun            = ((uint16)2U << 14U)   
} etpwmRunMode_t;


 
typedef enum
{                                                                      
    LoadMode_CtrEqZero       = 0U,  
    LoadMode_CtrEqPeriod     = 1U,  
    LoadMode_CtrEqZeroPeriod = 2U,  
    LoadMode_Freeze          = 3U   
} etpwmLoadMode_t;


 
typedef enum
{
    CycleByCycle_TZ1     = ((uint16)1U << 0U),
    CycleByCycle_TZ2     = ((uint16)1U << 1U),
    CycleByCycle_TZ3     = ((uint16)1U << 2U),
    CycleByCycle_TZ4     = ((uint16)1U << 3U),
    CycleByCycle_TZ5     = ((uint16)1U << 4U),
    CycleByCycle_TZ6     = ((uint16)1U << 5U),
    CycleByCycle_DCAEVT2 = ((uint16)1U << 6U),
    CycleByCycle_DCBEVT2 = ((uint16)1U << 7U),
    OneShot_TZ1          = ((uint16)1U << 8U),
    OneShot_TZ2          = ((uint16)1U << 9U),
    OneShot_TZ3          = ((uint16)1U << 10U),
    OneShot_TZ4          = ((uint16)1U << 11U),
    OneShot_TZ5          = ((uint16)1U << 12U),
    OneShot_TZ6          = ((uint16)1U << 13U),
    OneShot_DCAEVT1      = ((uint16)1U << 14U),
    OneShot_DCBEVT1      = ((uint16)1U << 15U)
} etpwmTripZoneSrc_t;


 
typedef enum
{
    CycleByCycleTrip = ((uint16)1U << 1U),  
    OneShotTrip      = ((uint16)1U << 2U),  
    DCAEVT1_inter    = ((uint16)1U << 3U),  
    DCAEVT2_inter    = ((uint16)1U << 4U),  
    DCBEVT1_inter    = ((uint16)1U << 5U),  
    DCBEVT2_inter    = ((uint16)1U << 6U)   
}etpwmTrip_t;


 
typedef enum
{
    NO_EVENT      = 0U,  
    DCAEVT1       = 0U,  
    DCBEVT1       = 0U,  
    CTR_ZERO      = 1U,  
    CTR_PRD       = 2U,  
    CTR_ZERO_PRD  = 3U,  
    CTR_UP_CMPA   = 4U,  
    CTR_D0WM_CMPA = 5U,  
    CTR_UP_CMPB   = 6U,  
    CTR_D0WM_CMPB = 7U   
} etpwmEventSrc_t;


 
typedef enum
{
    EventPeriod_Disable     = 0U,  
    EventPeriod_FirstEvent  = 1U,  
    EventPeriod_SecondEvent = 2U,  
    EventPeriod_ThirdEvent  = 3U   
}etpwmEventPeriod_t;


 
typedef enum
{
    Event_Interrupt = 1U,  
    Event_SOCA      = 4U,  
    Event_SOCB      = 8U   
}etpwmEvent_t;





 
typedef enum
{
    ActionQual_Disabled = 0U,  
    ActionQual_Clear    = 1U,  
    ActionQual_Set      = 2U,  
    ActionQual_Toggle   = 3U,  
	
    ForceSize_ActionQual = 0xFFFFU   
} etpwmActionQual_t;





 
typedef enum
{
    PWMA_RED_FED      = 0x00U,    
    PWMA_FED_PWMB_RED = 0x10U,    
    PWMA_RED_PWMB_FED = 0x20U,    
    PWMB_RED_FED      = 0x30U,    
   
    ForceSize_DBInput = 0xFFFFU   
} etpwmDeadBandInputMode_t;





 
typedef enum
{                                                                                                                                     
    PWMA_PWMB_NIL      = 0U,      
    PWMA_NIL_PWMB_FED  = 1U,      
    PWMA_RED_PWMB_NIL  = 2U,      
    PWMB_FED_PWMA_RED  = 3U,      
    
	ForceSize_DBOutput = 0xFFFFU  
} etpwmDeadBandOutputMode_t;






 
typedef enum
{
    DisableInvert    = ((uint16)0U << 2U),  
    Invert_PWMA      = ((uint16)1U << 2U),  
    Invert_PWMB      = ((uint16)2U << 2U),  
    Invert_PWMA_PWMB = ((uint16)3U << 2U),  
	
    ForceSize_DBPol = 0xFFFFU  
} etpwmDeadBandPolarity_t;






 
typedef enum
{
    TripZoneState_HighImp   = 0U,  
    TripZoneState_EPWM_High = 1U,  
    TripZoneState_EPWM_Low  = 2U,  
    TripZoneState_DoNothing = 3U,  

    ForceSize_TripZoneState = 0xFFFFU  
} etpwmTripZoneState_t;






 
typedef enum
{
    ChoppingPulseWidth_8_VCLK4   = ((uint16)0U << 1U),   
    ChoppingPulseWidth_16_VCLK4  = ((uint16)1U << 1U),   
    ChoppingPulseWidth_24_VCLK4  = ((uint16)2U << 1U),   
    ChoppingPulseWidth_32_VCLK4  = ((uint16)3U << 1U),   
    ChoppingPulseWidth_40_VCLK4  = ((uint16)4U << 1U),   
    ChoppingPulseWidth_48_VCLK4  = ((uint16)5U << 1U),   
    ChoppingPulseWidth_56_VCLK4  = ((uint16)6U << 1U),   
    ChoppingPulseWidth_64_VCLK4  = ((uint16)7U << 1U),   
    ChoppingPulseWidth_72_VCLK4  = ((uint16)8U << 1U),   
    ChoppingPulseWidth_80_VCLK4  = ((uint16)9U << 1U),   
    ChoppingPulseWidth_88_VCLK4  = ((uint16)10U << 1U),  
    ChoppingPulseWidth_96_VCLK4  = ((uint16)11U << 1U),  
    ChoppingPulseWidth_104_VCLK4 = ((uint16)12U << 1U),  
    ChoppingPulseWidth_112_VCLK4 = ((uint16)13U << 1U),  
    ChoppingPulseWidth_120_VCLK4 = ((uint16)14U << 1U),  
    ChoppingPulseWidth_128_VCLK4 = ((uint16)15U << 1U),  
	
    ForceSize_ChopPulseWidth = 0xFFFFU  
} etpwmChoppingPulseWidth_t;






 
typedef enum
{
    ChoppingClkFreq_VCLK4_by_8  = ((uint16)0U << 5U),  
    ChoppingClkFreq_VCLK4_by_16 = ((uint16)1U << 5U),  
    ChoppingClkFreq_VCLK4_by_24 = ((uint16)2U << 5U),  
    ChoppingClkFreq_VCLK4_by_32 = ((uint16)3U << 5U),  
    ChoppingClkFreq_VCLK4_by_40 = ((uint16)4U << 5U),  
    ChoppingClkFreq_VCLK4_by_48 = ((uint16)5U << 5U),  
    ChoppingClkFreq_VCLK4_by_56 = ((uint16)6U << 5U),  
    ChoppingClkFreq_VCLK4_by_64 = ((uint16)7U << 5U),  

    ForceSize_ChopClkFreq = 0xFFFFU  
}etpwmChoppingClkFreq_t;






 
typedef enum
{
    ChoppingDutyCycle_One_Eighth    = 0x0000U,  
    ChoppingDutyCycle_Two_Eighths   = 0x0100U,  
    ChoppingDutyCycle_Three_Eighths = 0x0200U,  
    ChoppingDutyCycle_Four_Eighths  = 0x0300U,  
    ChoppingDutyCycle_Five_Eighths  = 0x0400U,  
    ChoppingDutyCycle_Six_Eighths   = 0x0500U,  
    ChoppingDutyCycle_Seven_Eighths = 0x0600U,  

    ForceSize_ChopDuty = 0xFFFFU  
} etpwmChoppingDutyCycle_t;






 
typedef enum
{
	TZ1 = 0U,
	TZ2 = 1U,
	TZ3 = 2U,

    ForceSize_DCInput = 0xFFFFU  
}etpwmDCInput_t;








 
typedef enum
{
	Event_Disabled     = 0U,   

	DCAH_Low           = 1U,   
	DCAH_High          = 2U,   
	DCAL_Low           = 3U,   
	DCAL_High          = 4U,   
	DCAL_High_DCAH_Low = 5U,   

	DCBH_Low           = 1U,   
	DCBH_High          = 2U,   
	DCBL_Low           = 3U,   
	DCBL_High          = 4U,   
	DCBL_High_DCBH_low = 5U,   

    ForceSize_DCSelect = 0xFFFFU  
}etpwmDCOutputSelect_t;


 
typedef struct
{
    etpwmActionQual_t CtrEqZero_Action;
    etpwmActionQual_t CtrEqPeriod_Action;
    etpwmActionQual_t CtrEqCmpAUp_Action;
    etpwmActionQual_t CtrEqCmpADown_Action;
    etpwmActionQual_t CtrEqCmpBUp_Action;
    etpwmActionQual_t CtrEqCmpBDown_Action;
}etpwmActionQualConfig_t;


 
typedef struct
{
    etpwmDeadBandInputMode_t inputmode;
    etpwmDeadBandOutputMode_t outputmode;
    etpwmDeadBandPolarity_t polarity;
    boolean halfCycleEnable;
}etpwmDeadBandConfig_t;


 
typedef struct
{
    etpwmChoppingPulseWidth_t oswdth;
    etpwmChoppingClkFreq_t freq;
    etpwmChoppingDutyCycle_t duty;
}etpwmChoppingConfig_t;


 
typedef struct
{
    etpwmTripZoneState_t TripEvent_ActionOnPWMA;
    etpwmTripZoneState_t TripEvent_ActionOnPWMB;
    etpwmTripZoneState_t DCAEVT1_ActionOnPWMA;
    etpwmTripZoneState_t DCAEVT2_ActionOnPWMA;
    etpwmTripZoneState_t DCBEVT1_ActionOnPWMB;
    etpwmTripZoneState_t DCBEVT2_ActionOnPWMB;
}etpwmTripActionConfig_t;


 
typedef struct
{
	etpwmDCInput_t DCAH_src;
	etpwmDCInput_t DCAL_src;
	etpwmDCInput_t DCBH_src;
	etpwmDCInput_t DCBL_src;
	etpwmDCOutputSelect_t DCAEVT1_event;
	etpwmDCOutputSelect_t DCAEVT2_event;
	etpwmDCOutputSelect_t DCBEVT1_event;
	etpwmDCOutputSelect_t DCBEVT2_event;
}etpwmDigitalCompareConfig_t;

typedef struct etpwm_config_reg
{
    uint16 CONFIG_TBCTL;
    uint16 CONFIG_TBPHS;
    uint16 CONFIG_TBPRD;
    uint16 CONFIG_CMPCTL;
    uint16 CONFIG_CMPA;
    uint16 CONFIG_CMPB;
    uint16 CONFIG_AQCTLA;
    uint16 CONFIG_AQCTLB;
    uint16 CONFIG_DBCTL;
    uint16 CONFIG_DBRED;
    uint16 CONFIG_DBFED;
    uint16 CONFIG_TZSEL;
    uint16 CONFIG_TZDCSEL;
    uint16 CONFIG_TZCTL;
    uint16 CONFIG_TZEINT;
    uint16 CONFIG_ETSEL;
    uint16 CONFIG_ETPS;
    uint16 CONFIG_PCCTL;
    uint16 CONFIG_DCTRIPSEL;
    uint16 CONFIG_DCACTL;
    uint16 CONFIG_DCBCTL;
    uint16 CONFIG_DCFCTL;
    uint16 CONFIG_DCCAPCTL;
    uint16 CONFIG_DCFWINDOW;
    uint16 CONFIG_DCFWINDOWCNT;
} etpwm_config_reg_t;






















 
void etpwmInit(void);
void etpwmStartTBCLK(void);
void etpwmStopTBCLK(void);

void etpwmSetClkDiv(etpwmBASE_t *etpwm, etpwmClkDiv_t clkdiv, etpwmHspClkDiv_t hspclkdiv);
void etpwmSetTimebasePeriod(etpwmBASE_t *etpwm, uint16 period);
void etpwmSetCount(etpwmBASE_t *etpwm, uint16 count);
void etpwmDisableTimebasePeriodShadowMode(etpwmBASE_t *etpwm);
void etpwmEnableTimebasePeriodShadowMode(etpwmBASE_t *etpwm);
void etpwmEnableCounterLoadOnSync(etpwmBASE_t *etpwm, uint16 phase, uint16 direction);
void etpwmDisableCounterLoadOnSync(etpwmBASE_t *etpwm);
void etpwmSetSyncOut(etpwmBASE_t *etpwm, etpwmSyncOut_t syncOutSrc);
void etpwmSetCounterMode(etpwmBASE_t *etpwm, etpwmCounterMode_t countermode);
void etpwmTriggerSWSync(etpwmBASE_t *etpwm);
void etpwmSetRunMode(etpwmBASE_t *etpwm, etpwmRunMode_t runmode);

void etpwmSetCmpA(etpwmBASE_t *etpwm, uint16 value);
void etpwmSetCmpB(etpwmBASE_t *etpwm, uint16 value);
void etpwmEnableCmpAShadowMode(etpwmBASE_t *etpwm, etpwmLoadMode_t loadmode);
void etpwmDisableCmpAShadowMode(etpwmBASE_t *etpwm);
void etpwmEnableCmpBShadowMode(etpwmBASE_t *etpwm, etpwmLoadMode_t loadmode);
void etpwmDisableCmpBShadowMode(etpwmBASE_t *etpwm);

void etpwmSetActionQualPwmA(etpwmBASE_t *etpwm, etpwmActionQualConfig_t actionqualconfig);
void etpwmSetActionQualPwmB(etpwmBASE_t *etpwm, etpwmActionQualConfig_t actionqualconfig);

void etpwmEnableDeadBand(etpwmBASE_t *etpwm, etpwmDeadBandConfig_t deadbandconfig);
void etpwmDisableDeadband(etpwmBASE_t *etpwm);
void etpwmSetDeadBandDelay(etpwmBASE_t *etpwm, uint16 Rdelay, uint16 Fdelay);

void etpwmEnableChopping(etpwmBASE_t *etpwm, etpwmChoppingConfig_t choppingconfig);
void etpwmDisableChopping(etpwmBASE_t *etpwm);

void etpwmEnableTripZoneSources(etpwmBASE_t *etpwm, etpwmTripZoneSrc_t sources);
void etpwmDisableTripZoneSources(etpwmBASE_t *etpwm, etpwmTripZoneSrc_t sources);
void etpwmSetTripAction(etpwmBASE_t *etpwm, etpwmTripActionConfig_t tripactionconfig);

void etpwmEnableTripInterrupt(etpwmBASE_t *etpwm, etpwmTrip_t interrupts);
void etpwmDisableTripInterrupt(etpwmBASE_t *etpwm, etpwmTrip_t interrupts);
void etpwmClearTripCondition(etpwmBASE_t *etpwm, etpwmTrip_t trips);
void etpwmClearTripInterruptFlag(etpwmBASE_t *etpwm);
void etpwmForceTripEvent(etpwmBASE_t *etpwm, etpwmTrip_t trip);
void etpwmEnableSOCA(etpwmBASE_t *etpwm, etpwmEventSrc_t eventsource, etpwmEventPeriod_t eventperiod);
void etpwmDisableSOCA(etpwmBASE_t *etpwm);
void etpwmEnableSOCB(etpwmBASE_t *etpwm, etpwmEventSrc_t eventsource, etpwmEventPeriod_t eventperiod);
void etpwmDisableSOCB(etpwmBASE_t *etpwm);
void etpwmEnableInterrupt(etpwmBASE_t *etpwm, etpwmEventSrc_t eventsource, etpwmEventPeriod_t eventperiod);
void etpwmDisableInterrupt(etpwmBASE_t *etpwm);
uint16 etpwmGetEventStatus(etpwmBASE_t *etpwm);
void etpwmClearEventFlag(etpwmBASE_t *etpwm, etpwmEvent_t events);
void etpwmTriggerEvent(etpwmBASE_t *etpwm, etpwmEvent_t events);
void etpwmEnableDigitalCompareEvents(etpwmBASE_t *etpwm, etpwmDigitalCompareConfig_t digitalcompareconfig);
void etpwm1GetConfigValue(etpwm_config_reg_t *config_reg, config_value_type_t type);
void etpwm2GetConfigValue(etpwm_config_reg_t *config_reg, config_value_type_t type);
void etpwm3GetConfigValue(etpwm_config_reg_t *config_reg, config_value_type_t type);
void etpwm4GetConfigValue(etpwm_config_reg_t *config_reg, config_value_type_t type);
void etpwm5GetConfigValue(etpwm_config_reg_t *config_reg, config_value_type_t type);
void etpwm6GetConfigValue(etpwm_config_reg_t *config_reg, config_value_type_t type);
void etpwm7GetConfigValue(etpwm_config_reg_t *config_reg, config_value_type_t type);


 
void etpwmNotification(etpwmBASE_t *node);




 
void etpwmTripNotification(etpwmBASE_t *node,uint16 flags);

 


 
 





 

































 














 

































 





 
 

 

 




 
typedef volatile struct iommErrFault
{
    uint32 ERR_RAW_STATUS_REG;           
    uint32 ERR_ENABLED_STATUS_REG;       
    uint32 ERR_ENABLE_REG;               
    uint32 ERR_ENABLE_CLR_REG;           
	uint32  rsvd;                        
    uint32 FAULT_ADDRESS_REG;            
    uint32 FAULT_STATUS_REG;             
    uint32 FAULT_CLEAR_REG;              	
} iommErrFault_t;
 




 
typedef volatile struct pinMuxKicker
{
    uint32 KICKER0;        
    uint32 KICKER1;        
} pinMuxKICKER_t;





 




 
typedef volatile struct pinMuxBase
{
    uint32 PINMMR0;		 
    uint32 PINMMR1;		 
    uint32 PINMMR2;		 
    uint32 PINMMR3;		 
    uint32 PINMMR4;		 
    uint32 PINMMR5;		 
    uint32 PINMMR6;		 
    uint32 PINMMR7;		 
    uint32 PINMMR8;		 
    uint32 PINMMR9;		 
    uint32 PINMMR10;		 
    uint32 PINMMR11;		 
    uint32 PINMMR12;		 
    uint32 PINMMR13;		 
    uint32 PINMMR14;		 
    uint32 PINMMR15;		 
    uint32 PINMMR16;		 
    uint32 PINMMR17;		 
    uint32 PINMMR18;		 
    uint32 PINMMR19;		 
    uint32 PINMMR20;		 
    uint32 PINMMR21;		 
    uint32 PINMMR22;		 
    uint32 PINMMR23;		 
    uint32 PINMMR24;		 
    uint32 PINMMR25;		 
    uint32 PINMMR26;		 
    uint32 PINMMR27;		 
    uint32 PINMMR28;		 
    uint32 PINMMR29;		 
    uint32 PINMMR30;		 
    uint32 PINMMR31;		 
    uint32 PINMMR32;		 
    uint32 PINMMR33;		 
    uint32 PINMMR34;		 
    uint32 PINMMR35;		 
    uint32 PINMMR36;           
    uint32 PINMMR37;           
    uint32 PINMMR38;           
    uint32 PINMMR39;           
    uint32 PINMMR40;           
    uint32 PINMMR41;           
    uint32 PINMMR42;           
    uint32 PINMMR43;           
    uint32 PINMMR44;           
    uint32 PINMMR45;           
    uint32 PINMMR46;           
    uint32 PINMMR47;           
}pinMuxBASE_t;






       
        




 	





 	

 
 

































































typedef struct pinmux_config_reg
{
    uint32 CONFIG_PINMMR0;
    uint32 CONFIG_PINMMR1;
    uint32 CONFIG_PINMMR2;
    uint32 CONFIG_PINMMR3;
    uint32 CONFIG_PINMMR4;
    uint32 CONFIG_PINMMR5;
    uint32 CONFIG_PINMMR6;
    uint32 CONFIG_PINMMR7;
    uint32 CONFIG_PINMMR8;
    uint32 CONFIG_PINMMR9;
    uint32 CONFIG_PINMMR10;
    uint32 CONFIG_PINMMR11;
    uint32 CONFIG_PINMMR12;
    uint32 CONFIG_PINMMR13;
    uint32 CONFIG_PINMMR14;
    uint32 CONFIG_PINMMR15;
    uint32 CONFIG_PINMMR16;
    uint32 CONFIG_PINMMR17;
    uint32 CONFIG_PINMMR18;
    uint32 CONFIG_PINMMR19;
    uint32 CONFIG_PINMMR20;
    uint32 CONFIG_PINMMR21;
    uint32 CONFIG_PINMMR22;
    uint32 CONFIG_PINMMR23;
    uint32 CONFIG_PINMMR24;
    uint32 CONFIG_PINMMR25;
    uint32 CONFIG_PINMMR26;
    uint32 CONFIG_PINMMR27;
    uint32 CONFIG_PINMMR28;
    uint32 CONFIG_PINMMR29;
    uint32 CONFIG_PINMMR30;
    uint32 CONFIG_PINMMR31;
    uint32 CONFIG_PINMMR32;
    uint32 CONFIG_PINMMR33;
    uint32 CONFIG_PINMMR34;
    uint32 CONFIG_PINMMR35;
    uint32 CONFIG_PINMMR36;
    uint32 CONFIG_PINMMR37;
    uint32 CONFIG_PINMMR38;
    uint32 CONFIG_PINMMR39;
    uint32 CONFIG_PINMMR40;
    uint32 CONFIG_PINMMR41;
    uint32 CONFIG_PINMMR42;
    uint32 CONFIG_PINMMR43;
    uint32 CONFIG_PINMMR44;
    uint32 CONFIG_PINMMR45;
    uint32 CONFIG_PINMMR46;
    uint32 CONFIG_PINMMR47;
}pinmux_config_reg_t;

















 






 
void muxInit(void);
void pinmuxGetConfigValue(pinmux_config_reg_t *config_reg, config_value_type_t type);
 
 

 










 

































 













 

































 




 
 

 




 




 
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
 

 
 












 
 
 
 
void etpwmInit(void)
{
 
 

     

     
    ((etpwmBASE_t *)0xFCF78C00U)->TBCTL = (uint16)0U << 7U;

     
    ((etpwmBASE_t *)0xFCF78C00U)->TBCTL |= (uint16)((uint16)0U << 10U);

     
    ((etpwmBASE_t *)0xFCF78C00U)->TBPRD = 1000U;

     
    ((etpwmBASE_t *)0xFCF78C00U)->CMPA = 50U;

     
    ((etpwmBASE_t *)0xFCF78C00U)->CMPB = 50U;

     
    ((etpwmBASE_t *)0xFCF78C00U)->AQCTLA = ((uint16)((uint16)ActionQual_Set   << 0U)
                       | (uint16)((uint16)ActionQual_Clear << 4U));

     
    ((etpwmBASE_t *)0xFCF78C00U)->AQCTLB = ((uint16)((uint16)ActionQual_Set   << 0U)
                       | (uint16)((uint16)ActionQual_Clear << 8U));

    



 
    ((etpwmBASE_t *)0xFCF78C00U)->DBCTL = ((uint16)((uint16)0U << 5U)     
                      | (uint16)((uint16)0u << 4U)     
                      | (uint16)((uint16)0U << 3U)     
                      | (uint16)((uint16)0U << 2U)     
                      | (uint16)((uint16)0U << 1U)     
                      | (uint16)((uint16)0U << 0U));   

     
    ((etpwmBASE_t *)0xFCF78C00U)->DBRED = 1U;

     
    ((etpwmBASE_t *)0xFCF78C00U)->DBFED = 1U ;

    



 
    ((etpwmBASE_t *)0xFCF78C00U)->PCCTL = ((uint16)((uint16)0U << 0U)     
                      | (uint16)((uint16)1U << 1U)     
                      | (uint16)((uint16)3U << 8U)     
                      | (uint16)((uint16)0U << 5U));   

     
    ((etpwmBASE_t *)0xFCF78C00U)->TZSEL = 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U;    

     
    ((etpwmBASE_t *)0xFCF78C00U)->TZEINT = 0x0000U       
                      | 0x0000U       
                      | 0x0000U       
                      | 0x0000U       
                      | 0x0000U       
                      | 0x0000U;      

     
    ((etpwmBASE_t *)0xFCF78C00U)->ETSEL = (uint16)NO_EVENT;

    if ((((etpwmBASE_t *)0xFCF78C00U)->ETSEL & 0x0007U) != 0U)
    {
        ((etpwmBASE_t *)0xFCF78C00U)->ETSEL |= 0x0008U;
    }
     
    ((etpwmBASE_t *)0xFCF78C00U)->ETPS = 1U;

     
    ((etpwmBASE_t *)0xFCF78C00U)->ETSEL |= ((uint16)(0x0000U)
                       | (uint16)(0x0000U)
                       | (uint16)((uint16)DCAEVT1 << 8U)
                       | (uint16)((uint16)DCBEVT1 << 12U));

     
    ((etpwmBASE_t *)0xFCF78C00U)->ETPS |= ((uint16)((uint16)1U << 8U)
                      | (uint16)((uint16)1U << 12U));

     

     
    ((etpwmBASE_t *)0xFCF78D00U)->TBCTL = (uint16)0U << 7U;

     
    ((etpwmBASE_t *)0xFCF78D00U)->TBCTL |= (uint16)((uint16)0U << 10U);

     
    ((etpwmBASE_t *)0xFCF78D00U)->TBPRD = 1000U;

     
    ((etpwmBASE_t *)0xFCF78D00U)->CMPA = 50U;

     
    ((etpwmBASE_t *)0xFCF78D00U)->CMPB = 50U;

     
    ((etpwmBASE_t *)0xFCF78D00U)->AQCTLA = ((uint16)((uint16)ActionQual_Set   << 0U)
                       | (uint16)((uint16)ActionQual_Clear << 4U));

     
    ((etpwmBASE_t *)0xFCF78D00U)->AQCTLB = ((uint16)((uint16)ActionQual_Set   << 0U)
                       | (uint16)((uint16)ActionQual_Clear << 8U));

    



 
    ((etpwmBASE_t *)0xFCF78D00U)->DBCTL = ((uint16)((uint16)0U << 5U)     
                      | (uint16)((uint16)0U << 4U)  
                      | (uint16)((uint16)0U << 3U)   
                      | (uint16)((uint16)0U << 2U)   
                      | (uint16)((uint16)0U << 1U)  
                      | (uint16)((uint16)0U << 0U));    

     
    ((etpwmBASE_t *)0xFCF78D00U)->DBRED = 1U;

     
    ((etpwmBASE_t *)0xFCF78D00U)->DBFED = 1U;

    



 
    ((etpwmBASE_t *)0xFCF78D00U)->PCCTL = ((uint16)((uint16)0U << 0U)  
                      | (uint16)((uint16)1U << 1U)     
                      | (uint16)((uint16)3U << 8U)   
                      | (uint16)((uint16)0U << 5U));   

     
    ((etpwmBASE_t *)0xFCF78D00U)->TZSEL =  0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U;    

     
    ((etpwmBASE_t *)0xFCF78D00U)->TZEINT = 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U;    

     
    ((etpwmBASE_t *)0xFCF78D00U)->ETSEL = (uint16)NO_EVENT;

    if ((((etpwmBASE_t *)0xFCF78D00U)->ETSEL & 0x0007U) != 0U)
    {
        ((etpwmBASE_t *)0xFCF78D00U)->ETSEL |= 0x0008U;
    }
     
    ((etpwmBASE_t *)0xFCF78D00U)->ETPS = 1U;

     
    ((etpwmBASE_t *)0xFCF78D00U)->ETSEL |= ((uint16)(0x0000U)
                       | (uint16)(0x0000U)
                       | (uint16)((uint16)DCAEVT1 << 8U)
                       | (uint16)((uint16)DCBEVT1 << 12U));

     
    ((etpwmBASE_t *)0xFCF78D00U)->ETPS |= ((uint16)((uint16)1U << 8U)
                      | (uint16)((uint16)1U << 12U));

     

     
    ((etpwmBASE_t *)0xFCF78E00U)->TBCTL = (uint16)0U << 7U;

     
    ((etpwmBASE_t *)0xFCF78E00U)->TBCTL |= (uint16)((uint16)0U << 10U);

     
    ((etpwmBASE_t *)0xFCF78E00U)->TBPRD = 1000U;

     
    ((etpwmBASE_t *)0xFCF78E00U)->CMPA = 50U;

     
    ((etpwmBASE_t *)0xFCF78E00U)->CMPB = 50U;

     
    ((etpwmBASE_t *)0xFCF78E00U)->AQCTLA = ((uint16)((uint16)ActionQual_Set   << 0U)
                       | (uint16)((uint16)ActionQual_Clear << 4U));

     
    ((etpwmBASE_t *)0xFCF78E00U)->AQCTLB = ((uint16)((uint16)ActionQual_Set   << 0U)
                       | (uint16)((uint16)ActionQual_Clear << 8U));

    



 
    ((etpwmBASE_t *)0xFCF78E00U)->DBCTL = ((uint16)((uint16)0U << 5U)     
                      | (uint16)((uint16)0U << 4U)  
                      | (uint16)((uint16)0U << 3U)   
                      | (uint16)((uint16)0U << 2U)   
                      | (uint16)((uint16)0U << 1U)  
                      | (uint16)((uint16)0U << 0U));    

     
    ((etpwmBASE_t *)0xFCF78E00U)->DBRED = 1U;

     
    ((etpwmBASE_t *)0xFCF78E00U)->DBFED = 1U;

    



 
    ((etpwmBASE_t *)0xFCF78E00U)->PCCTL = ((uint16)((uint16)0U << 0U)  
                      | (uint16)((uint16)1U << 1U)     
                      | (uint16)((uint16)3U << 8U)   
                      | (uint16)((uint16)0U << 5U));   

     
    ((etpwmBASE_t *)0xFCF78E00U)->TZSEL = 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U;    

     
    ((etpwmBASE_t *)0xFCF78E00U)->TZEINT = 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U;    


     
    ((etpwmBASE_t *)0xFCF78E00U)->ETSEL = (uint16)NO_EVENT;

    if ((((etpwmBASE_t *)0xFCF78E00U)->ETSEL & 0x0007U) != 0U)
    {
        ((etpwmBASE_t *)0xFCF78E00U)->ETSEL |= 0x0008U;
    }
     
    ((etpwmBASE_t *)0xFCF78E00U)->ETPS = 1U;

     
    ((etpwmBASE_t *)0xFCF78E00U)->ETSEL |= ((uint16)(0x0000U)
                       | (uint16)(0x0000U)
                       | (uint16)((uint16)DCAEVT1 << 8U)
                       | (uint16)((uint16)DCBEVT1 << 12U));

     
    ((etpwmBASE_t *)0xFCF78E00U)->ETPS |= ((uint16)((uint16)1U << 8U)
                      | (uint16)((uint16)1U << 12U));

     

     
    ((etpwmBASE_t *)0xFCF78F00U)->TBCTL = (uint16)0U << 7U;

     
    ((etpwmBASE_t *)0xFCF78F00U)->TBCTL |= (uint16)((uint16)0U << 10U);

     
    ((etpwmBASE_t *)0xFCF78F00U)->TBPRD = 1000U;

     
    ((etpwmBASE_t *)0xFCF78F00U)->CMPA = 50U;

     
    ((etpwmBASE_t *)0xFCF78F00U)->CMPB = 50U;

     
    ((etpwmBASE_t *)0xFCF78F00U)->AQCTLA = ((uint16)((uint16)ActionQual_Set   << 0U)
                       | (uint16)((uint16)ActionQual_Clear << 4U));

     
    ((etpwmBASE_t *)0xFCF78F00U)->AQCTLB = ((uint16)((uint16)ActionQual_Set   << 0U)
                       | (uint16)((uint16)ActionQual_Clear << 8U));

    



 
    ((etpwmBASE_t *)0xFCF78F00U)->DBCTL = (uint16)((uint16)0U << 5U)  
                     | (uint16)((uint16)0U << 4U)  
                     | (uint16)((uint16)0U << 3U)   
                     | (uint16)((uint16)0U << 2U)   
                     | (uint16)((uint16)0U << 1U)  
                     | (uint16)((uint16)0U << 0U);     

     
    ((etpwmBASE_t *)0xFCF78F00U)->DBRED = 1U;

     
    ((etpwmBASE_t *)0xFCF78F00U)->DBFED =  1U;

    



 
    ((etpwmBASE_t *)0xFCF78F00U)->PCCTL = (uint16)((uint16)0U << 0U)   
                     | (uint16)((uint16)1U << 1U)     
                     | (uint16)((uint16)3U << 8U)   
                     | (uint16)((uint16)0U << 5U);    

         
    ((etpwmBASE_t *)0xFCF78F00U)->TZSEL = 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U;    

     
    ((etpwmBASE_t *)0xFCF78F00U)->TZEINT = 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U;    

     
    ((etpwmBASE_t *)0xFCF78F00U)->ETSEL = (uint16)NO_EVENT;

    if ((((etpwmBASE_t *)0xFCF78F00U)->ETSEL & 0x0007U) != 0U)
    {
        ((etpwmBASE_t *)0xFCF78F00U)->ETSEL |= 0x0008U;
    }
     
    ((etpwmBASE_t *)0xFCF78F00U)->ETPS = 1U;

     
    ((etpwmBASE_t *)0xFCF78F00U)->ETSEL |= (uint16)(0x0000U)
                      | (uint16)(0x0000U)
                      | (uint16)((uint16)DCAEVT1 << 8U)
                      | (uint16)((uint16)DCBEVT1 << 12U);

     
    ((etpwmBASE_t *)0xFCF78F00U)->ETPS |= ((uint16)((uint16)1U << 8U)
                      | (uint16)((uint16)1U << 12U));

     

     
    ((etpwmBASE_t *)0xFCF79000U)->TBCTL = (uint16)0U << 7U;

     
    ((etpwmBASE_t *)0xFCF79000U)->TBCTL |= (uint16)((uint16)0U << 10U);

     
    ((etpwmBASE_t *)0xFCF79000U)->TBPRD = 1000U;

     
    ((etpwmBASE_t *)0xFCF79000U)->CMPA = 50U;

     
    ((etpwmBASE_t *)0xFCF79000U)->CMPB = 50U;

     
    ((etpwmBASE_t *)0xFCF79000U)->AQCTLA = ((uint16)((uint16)ActionQual_Set   << 0U) 
                       | (uint16)((uint16)ActionQual_Clear << 4U));

     
    ((etpwmBASE_t *)0xFCF79000U)->AQCTLB = ((uint16)((uint16)ActionQual_Set   << 0U) 
                       | (uint16)((uint16)ActionQual_Clear << 8U));

    



 
    ((etpwmBASE_t *)0xFCF79000U)->DBCTL = (uint16)((uint16)0U << 5U)  
                     | (uint16)((uint16)0U << 4U)  
                     | (uint16)((uint16)0U << 3U)   
                     | (uint16)((uint16)0U << 2U)   
                     | (uint16)((uint16)0U << 1U)  
                     | (uint16)((uint16)0U << 0U);     

     
    ((etpwmBASE_t *)0xFCF79000U)->DBRED = 1U;

     
    ((etpwmBASE_t *)0xFCF79000U)->DBFED = 1U;

    



 
    ((etpwmBASE_t *)0xFCF79000U)->PCCTL = (uint16)((uint16)0U << 0U)   
                     | (uint16)((uint16)1U << 1U)     
                     | (uint16)((uint16)3U << 8U)   
                     | (uint16)((uint16)0U << 5U);    


         
    ((etpwmBASE_t *)0xFCF79000U)->TZSEL = 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U      
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U;    

     
    ((etpwmBASE_t *)0xFCF79000U)->TZEINT = 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U;    

     
    ((etpwmBASE_t *)0xFCF79000U)->ETSEL = (uint16)NO_EVENT;

    if ((((etpwmBASE_t *)0xFCF79000U)->ETSEL & 0x0007U) != 0U)
    {
        ((etpwmBASE_t *)0xFCF79000U)->ETSEL |= 0x0008U;
    }
     
    ((etpwmBASE_t *)0xFCF79000U)->ETPS = 1U;

     
    ((etpwmBASE_t *)0xFCF79000U)->ETSEL |= (uint16)(0x0000U)
                      | (uint16)(0x0000U)
                      | (uint16)((uint16)DCAEVT1 << 8U)
                      | (uint16)((uint16)DCBEVT1 << 12U);

     
    ((etpwmBASE_t *)0xFCF79000U)->ETPS |= ((uint16)((uint16)1U << 8U)
                      | (uint16)((uint16)1U << 12U));

     

     
    ((etpwmBASE_t *)0xFCF79100U)->TBCTL = (uint16)0U << 7U;

     
    ((etpwmBASE_t *)0xFCF79100U)->TBCTL |= (uint16)((uint16)0U << 10U);

     
    ((etpwmBASE_t *)0xFCF79100U)->TBPRD = 1000U;

     
    ((etpwmBASE_t *)0xFCF79100U)->CMPA = 50U;

     
    ((etpwmBASE_t *)0xFCF79100U)->CMPB = 50U;


     
    ((etpwmBASE_t *)0xFCF79100U)->AQCTLA = ((uint16)((uint16)ActionQual_Set   << 0U) 
                       | (uint16)((uint16)ActionQual_Clear << 4U));

     
    ((etpwmBASE_t *)0xFCF79100U)->AQCTLB = ((uint16)((uint16)ActionQual_Set   << 0U) 
                       | (uint16)((uint16)ActionQual_Clear << 8U));

    



 
    ((etpwmBASE_t *)0xFCF79100U)->DBCTL = (uint16)((uint16)0U << 5U)  
                     | (uint16)((uint16)0U << 4U)  
                     | (uint16)((uint16)0U << 3U)   
                     | (uint16)((uint16)0U << 2U)   
                     | (uint16)((uint16)0U << 1U)  
                     | (uint16)((uint16)0U << 0U);     

     
    ((etpwmBASE_t *)0xFCF79100U)->DBRED = 1U;

     
    ((etpwmBASE_t *)0xFCF79100U)->DBFED = 1U;

    



 
    ((etpwmBASE_t *)0xFCF79100U)->PCCTL = (uint16)((uint16)0U << 0U)   
                     | (uint16)((uint16)1U << 1U)     
                     | (uint16)((uint16)3U << 8U)   
                     | (uint16)((uint16)0U << 5U);    


     
    ((etpwmBASE_t *)0xFCF79100U)->TZSEL = 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U;    

     
    ((etpwmBASE_t *)0xFCF79100U)->TZEINT = 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U;    


     
    ((etpwmBASE_t *)0xFCF79100U)->ETSEL = (uint16)NO_EVENT;

    if ((((etpwmBASE_t *)0xFCF79100U)->ETSEL & 0x0007U) != 0U)
    {
        ((etpwmBASE_t *)0xFCF79100U)->ETSEL |= 0x0008U;
    }
     
    ((etpwmBASE_t *)0xFCF79100U)->ETPS = 1U;

     
    ((etpwmBASE_t *)0xFCF79100U)->ETSEL |= (uint16)(0x0000U)
                      | (uint16)(0x0000U)
                      | (uint16)((uint16)DCAEVT1 << 8U)
                      | (uint16)((uint16)DCBEVT1 << 12U);

     
    ((etpwmBASE_t *)0xFCF79100U)->ETPS |= ((uint16)((uint16)1U << 8U)
                      | (uint16)((uint16)1U << 12U));

     

     
    ((etpwmBASE_t *)0xFCF79200U)->TBCTL = (uint16)0U << 7U;

     
    ((etpwmBASE_t *)0xFCF79200U)->TBCTL |= (uint16)((uint16)0U << 10U);

     
    ((etpwmBASE_t *)0xFCF79200U)->TBPRD = 1000U;

     
    ((etpwmBASE_t *)0xFCF79200U)->CMPA = 50U;

     
    ((etpwmBASE_t *)0xFCF79200U)->CMPB = 50U;


     
    ((etpwmBASE_t *)0xFCF79200U)->AQCTLA = ((uint16)((uint16)ActionQual_Set   << 0U) 
                       | (uint16)((uint16)ActionQual_Clear << 4U));

     
    ((etpwmBASE_t *)0xFCF79200U)->AQCTLB = ((uint16)((uint16)ActionQual_Set   << 0U) 
                       | (uint16)((uint16)ActionQual_Clear << 8U));

    



 
    ((etpwmBASE_t *)0xFCF79200U)->DBCTL = (uint16)((uint16)0U << 5U)  
                     | (uint16)((uint16)0U << 4U)  
                     | (uint16)((uint16)0U << 3U)   
                     | (uint16)((uint16)0U << 2U)   
                     | (uint16)((uint16)0U << 1U)  
                     | (uint16)((uint16)0U << 0U);     

     
    ((etpwmBASE_t *)0xFCF79200U)->DBRED = 1U;

     
    ((etpwmBASE_t *)0xFCF79200U)->DBFED = 1U;

    



 
    ((etpwmBASE_t *)0xFCF79200U)->PCCTL = (uint16)((uint16)0U << 0U)   
                     | (uint16)((uint16)1U << 1U)     
                     | (uint16)((uint16)3U << 8U)   
                     | (uint16)((uint16)0U << 5U);    


         
    ((etpwmBASE_t *)0xFCF79200U)->TZSEL = 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U     
                     | 0x0000U;    

     
    ((etpwmBASE_t *)0xFCF79200U)->TZEINT = 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U     
                      | 0x0000U      
                      | 0x0000U;     

     
    ((etpwmBASE_t *)0xFCF79200U)->ETSEL = (uint16)NO_EVENT;

    if ((((etpwmBASE_t *)0xFCF79200U)->ETSEL & 0x0007U) != 0U)
    {
        ((etpwmBASE_t *)0xFCF79200U)->ETSEL |= 0x0008U;
    }
     
    ((etpwmBASE_t *)0xFCF79200U)->ETPS = 1U;

     
    ((etpwmBASE_t *)0xFCF79200U)->ETSEL |= (uint16)(0x0000U)
                      | (uint16)(0x0000U)
                      | (uint16)((uint16)DCAEVT1 << 8U)
                      | (uint16)((uint16)DCBEVT1 << 12U);

     
    ((etpwmBASE_t *)0xFCF79200U)->ETPS |= ((uint16)((uint16)1U << 8U)
                      | (uint16)((uint16)1U << 12U));


 
 
}





 
 
 
 
void etpwmStartTBCLK(void)
{
     
    ((pinMuxKICKER_t *) 0xFFFFEA38U)->KICKER0 = 0x83E70B13U;
    ((pinMuxKICKER_t *) 0xFFFFEA38U)->KICKER1 = 0x95A4F1E0U;
	
	((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR37 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR37 & (~(uint32)((uint32)0xFFU << 0U))) | (((uint32)((uint32)0x2U << 0U)));
	
     
    ((pinMuxKICKER_t *) 0xFFFFEA38U)->KICKER0 = 0x00000000U;
    ((pinMuxKICKER_t *) 0xFFFFEA38U)->KICKER1 = 0x00000000U;
}





 
 
 
 
void etpwmStopTBCLK(void)
{
     
    ((pinMuxKICKER_t *) 0xFFFFEA38U)->KICKER0 = 0x83E70B13U;
    ((pinMuxKICKER_t *) 0xFFFFEA38U)->KICKER1 = 0x95A4F1E0U;
	
	((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR37 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR37 & (~(uint32)((uint32)0xFFU << 0U))) | (((uint32)((uint32)0x0 << 0U)));
	
     
    ((pinMuxKICKER_t *) 0xFFFFEA38U)->KICKER0 = 0x00000000U;
    ((pinMuxKICKER_t *) 0xFFFFEA38U)->KICKER1 = 0x00000000U;
}


























 
 
 
 
void etpwmSetClkDiv(etpwmBASE_t *etpwm, etpwmClkDiv_t clkdiv, etpwmHspClkDiv_t hspclkdiv)
{
    etpwm->TBCTL &= (uint16)~(uint16)0x1F80U;
    etpwm->TBCTL |= (uint16)clkdiv | (uint16)hspclkdiv;
}








 
 
 
 
void etpwmSetTimebasePeriod(etpwmBASE_t *etpwm, uint16 period)
{
    etpwm->TBPRD = period;
}








 
 
 
 
void etpwmSetCount(etpwmBASE_t *etpwm, uint16 count)
{
    etpwm->TBCTR = count;
}







 
 
 
 
void etpwmDisableTimebasePeriodShadowMode(etpwmBASE_t *etpwm)
{
    etpwm->TBCTL |= 0x0008U;
}







 
 
 
 
void etpwmEnableTimebasePeriodShadowMode(etpwmBASE_t *etpwm)
{
    etpwm->TBCTL &= (uint16)~(uint16)0x0008U;
}












 
 
 
 
void etpwmEnableCounterLoadOnSync(etpwmBASE_t *etpwm, uint16 phase, uint16 direction)
{
    etpwm->TBCTL &= (uint16)~(uint16)0x2000U;
    etpwm->TBCTL |= 0x0004U | direction;
    etpwm->TBPHS = phase;
}







 
 
 
 
void etpwmDisableCounterLoadOnSync(etpwmBASE_t *etpwm)
{
    etpwm->TBCTL &= (uint16)~(uint16)0x0004U;
}












 
 
 
 
void etpwmSetSyncOut(etpwmBASE_t *etpwm, etpwmSyncOut_t syncOutSrc)
{
    etpwm->TBCTL &= (uint16)~(uint16)0x0030U;
    etpwm->TBCTL |= syncOutSrc;
}












 
 
 
 
void etpwmSetCounterMode(etpwmBASE_t *etpwm, etpwmCounterMode_t countermode)
{
    etpwm->TBCTL &= (uint16)~(uint16)0x0003U;
    etpwm->TBCTL |= countermode;
}







 
 
 
 
void etpwmTriggerSWSync(etpwmBASE_t *etpwm)
{
    etpwm->TBCTL |= 0x0040U;
}












 
 
 
 
void etpwmSetRunMode(etpwmBASE_t *etpwm, etpwmRunMode_t runmode)
{
    etpwm->TBCTL &= (uint16)~(uint16)0xC000U;
    etpwm->TBCTL |= runmode;
}








 
 
 
 
void etpwmSetCmpA(etpwmBASE_t *etpwm, uint16 value)
{
    etpwm->CMPA = value;
}








 
 
 
 
void etpwmSetCmpB(etpwmBASE_t *etpwm, uint16 value)
{
    etpwm->CMPB = value;
}












 
 
 
 
void etpwmEnableCmpAShadowMode(etpwmBASE_t *etpwm, etpwmLoadMode_t loadmode)
{
    etpwm->CMPCTL &= (uint16)~(uint16)0x0013U;
    etpwm->CMPCTL |= loadmode;
}







 
 
 
 
void etpwmDisableCmpAShadowMode(etpwmBASE_t *etpwm)
{
    etpwm->CMPCTL |= 0x0010U;
}












 
 
 
 
void etpwmEnableCmpBShadowMode(etpwmBASE_t *etpwm, etpwmLoadMode_t loadmode)
{
    etpwm->CMPCTL &= (uint16)~(uint16)0x004CU;
    etpwm->CMPCTL |= (uint16)((uint16)loadmode << 2U);
}







 
 
 
 
void etpwmDisableCmpBShadowMode(etpwmBASE_t *etpwm)
{
    etpwm->CMPCTL |= 0x0040U;
}


















 
 
 
 
void etpwmSetActionQualPwmA(etpwmBASE_t *etpwm, etpwmActionQualConfig_t actionqualconfig)
{
    etpwm->AQCTLA = ((uint16)((uint16)actionqualconfig.CtrEqZero_Action     << 0U) |
                     (uint16)((uint16)actionqualconfig.CtrEqPeriod_Action   << 2U) |
                     (uint16)((uint16)actionqualconfig.CtrEqCmpAUp_Action   << 4U) |
                     (uint16)((uint16)actionqualconfig.CtrEqCmpADown_Action << 6U) |
                     (uint16)((uint16)actionqualconfig.CtrEqCmpBUp_Action   << 8U) |
                     (uint16)((uint16)actionqualconfig.CtrEqCmpBDown_Action << 10U));

}


















 
 
 
 
void etpwmSetActionQualPwmB(etpwmBASE_t *etpwm, etpwmActionQualConfig_t actionqualconfig)
{
    etpwm->AQCTLB = ((uint16)((uint16)actionqualconfig.CtrEqZero_Action     << 0U) |
                     (uint16)((uint16)actionqualconfig.CtrEqPeriod_Action   << 2U) |
                     (uint16)((uint16)actionqualconfig.CtrEqCmpAUp_Action   << 4U) |
                     (uint16)((uint16)actionqualconfig.CtrEqCmpADown_Action << 6U) |
                     (uint16)((uint16)actionqualconfig.CtrEqCmpBUp_Action   << 8U) |
                     (uint16)((uint16)actionqualconfig.CtrEqCmpBDown_Action << 10U));

}








 
 
 
 
void etpwmEnableDeadBand(etpwmBASE_t *etpwm, etpwmDeadBandConfig_t deadbandconfig)
{
    uint16 halfCycleMask = (uint16)((deadbandconfig.halfCycleEnable) ? 0x8000U : 0U);
    etpwm->DBCTL = ((uint16)deadbandconfig.inputmode  |
                    (uint16)deadbandconfig.outputmode |
                    (uint16)deadbandconfig.polarity   |
                    halfCycleMask);
}







 
 
 
 
void etpwmDisableDeadband(etpwmBASE_t *etpwm)
{
    etpwm->DBCTL = 0U;
}









 
 
 
 
void etpwmSetDeadBandDelay(etpwmBASE_t *etpwm, uint16 Rdelay, uint16 Fdelay)
{
    etpwm->DBRED = Rdelay;
    etpwm->DBFED = Fdelay;
}








 
 
 
 
void etpwmEnableChopping(etpwmBASE_t *etpwm, etpwmChoppingConfig_t choppingconfig)
{
    etpwm->PCCTL = ((uint16)0x0001U               |
                    (uint16)choppingconfig.oswdth |
                    (uint16)choppingconfig.freq   |
                    (uint16)choppingconfig.duty);
}







 
 
 
 
void etpwmDisableChopping(etpwmBASE_t *etpwm)
{
    etpwm->PCCTL = 0U;
}
























 
 
 
 
void etpwmEnableTripZoneSources(etpwmBASE_t *etpwm, etpwmTripZoneSrc_t sources)
{
    etpwm->TZSEL |= sources;
}
























 
 
 
 
void etpwmDisableTripZoneSources(etpwmBASE_t *etpwm, etpwmTripZoneSrc_t sources)
{
    etpwm->TZSEL &= (uint16)~(uint16)sources;
}








 
 
 
 
void etpwmSetTripAction(etpwmBASE_t *etpwm, etpwmTripActionConfig_t tripactionconfig)
{
    etpwm->TZCTL = ((uint16)((uint16)tripactionconfig.TripEvent_ActionOnPWMA << 0U) |
                    (uint16)((uint16)tripactionconfig.TripEvent_ActionOnPWMB << 2U) |
                    (uint16)((uint16)tripactionconfig.DCAEVT1_ActionOnPWMA   << 4U) |
                    (uint16)((uint16)tripactionconfig.DCAEVT2_ActionOnPWMA   << 6U) |
                    (uint16)((uint16)tripactionconfig.DCBEVT1_ActionOnPWMB   << 8U) |
                    (uint16)((uint16)tripactionconfig.DCBEVT2_ActionOnPWMB   << 10U));
}














 
 
 
 
void etpwmEnableTripInterrupt(etpwmBASE_t *etpwm, etpwmTrip_t interrupts)
{
    etpwm->TZEINT |= interrupts;
}














 
 
 
 
void etpwmDisableTripInterrupt(etpwmBASE_t *etpwm, etpwmTrip_t interrupts)
{
    etpwm->TZEINT &= (uint16)~(uint16)interrupts;
}














 
 
 
 
void etpwmClearTripCondition(etpwmBASE_t *etpwm, etpwmTrip_t trips)
{
    etpwm->TZCLR = trips;
}







 
 
 
 
void etpwmClearTripInterruptFlag(etpwmBASE_t *etpwm)
{
    etpwm->TZCLR = 1U;
}














 
 
 
 
void etpwmForceTripEvent(etpwmBASE_t *etpwm, etpwmTrip_t trip)
{
    etpwm->TZFRC = trip;
}




















 
 
 
 
void etpwmEnableSOCA(etpwmBASE_t *etpwm, etpwmEventSrc_t eventsource, etpwmEventPeriod_t eventperiod)
{
    etpwm->ETSEL &= 0xF0FFU;
    etpwm->ETSEL |= (uint16)((uint16)1U << 11U) | (uint16)((uint16)eventsource << 8U);

    etpwm->ETPS &= 0xF0FFU;
    etpwm->ETPS |= (uint16)((uint16)eventperiod << 8U);
}







 
 
 
 
void etpwmDisableSOCA(etpwmBASE_t *etpwm)
{
    etpwm->ETSEL &= 0xF0FFU;
}




















 
 
 
 
void etpwmEnableSOCB(etpwmBASE_t *etpwm, etpwmEventSrc_t eventsource, etpwmEventPeriod_t eventperiod)
{
    etpwm->ETSEL &= 0x0FFFU;
    etpwm->ETSEL |= (uint16)((uint16)1U << 15U) | (uint16)((uint16)eventsource << 12U);

    etpwm->ETPS &= 0x0FFFU;
    etpwm->ETPS |= (uint16)((uint16)eventperiod << 12U);
}







 
 
 
 
void etpwmDisableSOCB(etpwmBASE_t *etpwm)
{
    etpwm->ETSEL &= 0x0FFFU;
}



















 
 
 
 
void etpwmEnableInterrupt(etpwmBASE_t *etpwm, etpwmEventSrc_t eventsource, etpwmEventPeriod_t eventperiod)
{
    etpwm->ETSEL &= 0xFFF0U;
    etpwm->ETSEL |= (uint16)((uint16)1U << 3U) | (uint16)((uint16)eventsource << 0U);

    etpwm->ETPS &= 0xFFF0U;
    etpwm->ETPS |= (uint16)((uint16)eventperiod << 0U);
}







 
 
 
 
void etpwmDisableInterrupt(etpwmBASE_t *etpwm)
{
    etpwm->ETSEL &= 0xFFF0U;
}











 
 
 
 
uint16 etpwmGetEventStatus(etpwmBASE_t *etpwm)
{
    return etpwm->ETFLG;
}











 
 
 
 
void etpwmClearEventFlag(etpwmBASE_t *etpwm, etpwmEvent_t events)
{
    etpwm->ETCLR = events;
}











 
 
 
 
void etpwmTriggerEvent(etpwmBASE_t *etpwm, etpwmEvent_t events)
{
    etpwm->ETFRC = events;
}




















 
 
 
 
void etpwmEnableDigitalCompareEvents(etpwmBASE_t *etpwm, etpwmDigitalCompareConfig_t digitalcompareconfig)
{
    etpwm->DCTRIPSEL = ((uint16)((uint16)digitalcompareconfig.DCAH_src << 0U) |
                        (uint16)((uint16)digitalcompareconfig.DCAL_src << 4U) |
                        (uint16)((uint16)digitalcompareconfig.DCBH_src << 8U) |
                        (uint16)((uint16)digitalcompareconfig.DCBL_src << 12U));

    etpwm->TZDCSEL = ((uint16)((uint16)digitalcompareconfig.DCAEVT1_event << 0U) |
                      (uint16)((uint16)digitalcompareconfig.DCAEVT2_event << 3U) |
                      (uint16)((uint16)digitalcompareconfig.DCBEVT1_event << 6U) |
                      (uint16)((uint16)digitalcompareconfig.DCBEVT2_event << 9U));
}















 
 
 
 
void etpwm1GetConfigValue(etpwm_config_reg_t *config_reg, config_value_type_t type)
{
	if (type == InitialValue)
	{
	    config_reg->CONFIG_TBCTL        = ((uint16)((uint16)0U << 7U) | (uint16)((uint16)0U << 10U));
		config_reg->CONFIG_TBPHS        = 0x00000000U;
		config_reg->CONFIG_TBPRD        = 1000U;
		config_reg->CONFIG_CMPCTL       = 0x00000000U;
		config_reg->CONFIG_CMPA         = 50U;
		config_reg->CONFIG_CMPB         = 50U;
		config_reg->CONFIG_AQCTLA       = ((uint16)((uint16)ActionQual_Set << 0U) | (uint16)((uint16)ActionQual_Clear << 4U));
		config_reg->CONFIG_AQCTLB       = ((uint16)((uint16)ActionQual_Set << 0U) | (uint16)((uint16)ActionQual_Clear << 8U));
		config_reg->CONFIG_DBCTL        = ((uint16)((uint16)0U << 5U) | (uint16)((uint16)0u << 4U) | (uint16)((uint16)0U << 3U) | (uint16)((uint16)0U << 2U) | (uint16)((uint16)0U << 1U) | (uint16)((uint16)0U << 0U));
		config_reg->CONFIG_DBRED        = 1U;
		config_reg->CONFIG_DBFED        = 1U;
		config_reg->CONFIG_TZSEL        = (0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U);
		config_reg->CONFIG_TZDCSEL      = 0x00000000U;
		config_reg->CONFIG_TZCTL        = 0x00000000U;
		config_reg->CONFIG_TZEINT       = (0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U| 0x0000U);
		config_reg->CONFIG_ETSEL        = ((uint16)(((uint16)NO_EVENT == 0U)? 0x0000U : 0x0008U) | (uint16)NO_EVENT | (uint16)0x0000U | (uint16)0x0000U | (uint16)((uint16)DCAEVT1 << 8U) | (uint16)((uint16)DCBEVT1 << 12U));
		config_reg->CONFIG_ETPS         = ((uint16)1U | (uint16)((uint16)1U << 8U) | (uint16)((uint16)1U << 12U));
		config_reg->CONFIG_PCCTL        = ((uint16)((uint16)0U << 0U) | (uint16)((uint16)1U << 1U) | (uint16)((uint16)3U << 8U) | (uint16)((uint16)0U << 5U));
		config_reg->CONFIG_DCTRIPSEL    = 0x00000000U;
		config_reg->CONFIG_DCACTL       = 0x00000000U;
		config_reg->CONFIG_DCBCTL       = 0x00000000U;
		config_reg->CONFIG_DCFCTL       = 0x00000000U;
		config_reg->CONFIG_DCCAPCTL     = 0x00000000U;
		config_reg->CONFIG_DCFWINDOW    = 0x00000000U;
		config_reg->CONFIG_DCFWINDOWCNT = 0x00000000U;
	}
	else
	{
	    config_reg->CONFIG_TBCTL        = ((etpwmBASE_t *)0xFCF78C00U)->TBCTL;
		config_reg->CONFIG_TBPHS        = ((etpwmBASE_t *)0xFCF78C00U)->TBPHS;
		config_reg->CONFIG_TBPRD        = ((etpwmBASE_t *)0xFCF78C00U)->TBPRD;
		config_reg->CONFIG_CMPCTL       = ((etpwmBASE_t *)0xFCF78C00U)->CMPCTL;
		config_reg->CONFIG_CMPA         = ((etpwmBASE_t *)0xFCF78C00U)->CMPA;
		config_reg->CONFIG_CMPB         = ((etpwmBASE_t *)0xFCF78C00U)->CMPB;
		config_reg->CONFIG_AQCTLA       = ((etpwmBASE_t *)0xFCF78C00U)->AQCTLA;
		config_reg->CONFIG_AQCTLB       = ((etpwmBASE_t *)0xFCF78C00U)->AQCTLB;
		config_reg->CONFIG_DBCTL        = ((etpwmBASE_t *)0xFCF78C00U)->DBCTL;
		config_reg->CONFIG_DBRED        = ((etpwmBASE_t *)0xFCF78C00U)->DBRED;
		config_reg->CONFIG_DBFED        = ((etpwmBASE_t *)0xFCF78C00U)->DBFED;
		config_reg->CONFIG_TZSEL        = ((etpwmBASE_t *)0xFCF78C00U)->TZSEL;
		config_reg->CONFIG_TZDCSEL      = ((etpwmBASE_t *)0xFCF78C00U)->TZDCSEL;
		config_reg->CONFIG_TZCTL        = ((etpwmBASE_t *)0xFCF78C00U)->TZCTL;
		config_reg->CONFIG_TZEINT       = ((etpwmBASE_t *)0xFCF78C00U)->TZEINT;
		config_reg->CONFIG_ETSEL        = ((etpwmBASE_t *)0xFCF78C00U)->ETSEL;
		config_reg->CONFIG_ETPS         = ((etpwmBASE_t *)0xFCF78C00U)->ETPS;
		config_reg->CONFIG_PCCTL        = ((etpwmBASE_t *)0xFCF78C00U)->PCCTL;
		config_reg->CONFIG_DCTRIPSEL    = ((etpwmBASE_t *)0xFCF78C00U)->DCTRIPSEL;
		config_reg->CONFIG_DCACTL       = ((etpwmBASE_t *)0xFCF78C00U)->DCACTL;
		config_reg->CONFIG_DCBCTL       = ((etpwmBASE_t *)0xFCF78C00U)->DCBCTL;
		config_reg->CONFIG_DCFCTL       = ((etpwmBASE_t *)0xFCF78C00U)->DCFCTL;
		config_reg->CONFIG_DCCAPCTL     = ((etpwmBASE_t *)0xFCF78C00U)->DCCAPCTL;
		config_reg->CONFIG_DCFWINDOW    = ((etpwmBASE_t *)0xFCF78C00U)->DCFWINDOW;
		config_reg->CONFIG_DCFWINDOWCNT = ((etpwmBASE_t *)0xFCF78C00U)->DCFWINDOWCNT;
	}
}















 
 
 
 
void etpwm2GetConfigValue(etpwm_config_reg_t *config_reg, config_value_type_t type)
{
	if (type == InitialValue)
	{
	    config_reg->CONFIG_TBCTL        = ((uint16)((uint16)0U << 7U) | (uint16)((uint16)0U << 10U));
		config_reg->CONFIG_TBPHS        = 0x00000000U;
		config_reg->CONFIG_TBPRD        = 1000U;
		config_reg->CONFIG_CMPCTL       = 0x00000000U;
		config_reg->CONFIG_CMPA         = 50U;
		config_reg->CONFIG_CMPB         = 50U;
		config_reg->CONFIG_AQCTLA       = ((uint16)((uint16)ActionQual_Set << 0U) | (uint16)((uint16)ActionQual_Clear << 4U));
		config_reg->CONFIG_AQCTLB       = ((uint16)((uint16)ActionQual_Set << 0U) | (uint16)((uint16)ActionQual_Clear << 8U));
		config_reg->CONFIG_DBCTL        = ((uint16)((uint16)0U << 5U) | (uint16)((uint16)0u << 4U) | (uint16)((uint16)0U << 3U) | (uint16)((uint16)0U << 2U) | (uint16)((uint16)0U << 1U) | (uint16)((uint16)0U << 0U));
		config_reg->CONFIG_DBRED        = 1U;
		config_reg->CONFIG_DBFED        = 1U;
		config_reg->CONFIG_TZSEL        = (0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U);
		config_reg->CONFIG_TZDCSEL      = 0x00000000U;
		config_reg->CONFIG_TZCTL        = 0x00000000U;
		config_reg->CONFIG_TZEINT       = (0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U| 0x0000U);
		config_reg->CONFIG_ETSEL        = ((uint16)(((uint16)NO_EVENT == 0U)? 0x0000U : 0x0008U) | (uint16)NO_EVENT | (uint16)0x0000U | (uint16)0x0000U | (uint16)((uint16)DCAEVT1 << 8U) | (uint16)((uint16)DCBEVT1 << 12U));
		config_reg->CONFIG_ETPS         = ((uint16)1U | (uint16)((uint16)1U << 8U) | (uint16)((uint16)1U << 12U));
		config_reg->CONFIG_PCCTL        = ((uint16)((uint16)0U << 0U) | (uint16)((uint16)1U << 1U) | (uint16)((uint16)3U << 8U) | (uint16)((uint16)0U << 5U));
		config_reg->CONFIG_DCTRIPSEL    = 0x00000000U;
		config_reg->CONFIG_DCACTL       = 0x00000000U;
		config_reg->CONFIG_DCBCTL       = 0x00000000U;
		config_reg->CONFIG_DCFCTL       = 0x00000000U;
		config_reg->CONFIG_DCCAPCTL     = 0x00000000U;
		config_reg->CONFIG_DCFWINDOW    = 0x00000000U;
		config_reg->CONFIG_DCFWINDOWCNT = 0x00000000U;
	}
	else
	{
	    config_reg->CONFIG_TBCTL        = ((etpwmBASE_t *)0xFCF78C00U)->TBCTL;
		config_reg->CONFIG_TBPHS        = ((etpwmBASE_t *)0xFCF78D00U)->TBPHS;
		config_reg->CONFIG_TBPRD        = ((etpwmBASE_t *)0xFCF78D00U)->TBPRD;
		config_reg->CONFIG_CMPCTL       = ((etpwmBASE_t *)0xFCF78D00U)->CMPCTL;
		config_reg->CONFIG_CMPA         = ((etpwmBASE_t *)0xFCF78D00U)->CMPA;
		config_reg->CONFIG_CMPB         = ((etpwmBASE_t *)0xFCF78D00U)->CMPB;
		config_reg->CONFIG_AQCTLA       = ((etpwmBASE_t *)0xFCF78D00U)->AQCTLA;
		config_reg->CONFIG_AQCTLB       = ((etpwmBASE_t *)0xFCF78D00U)->AQCTLB;
		config_reg->CONFIG_DBCTL        = ((etpwmBASE_t *)0xFCF78D00U)->DBCTL;
		config_reg->CONFIG_DBRED        = ((etpwmBASE_t *)0xFCF78D00U)->DBRED;
		config_reg->CONFIG_DBFED        = ((etpwmBASE_t *)0xFCF78D00U)->DBFED;
		config_reg->CONFIG_TZSEL        = ((etpwmBASE_t *)0xFCF78D00U)->TZSEL;
		config_reg->CONFIG_TZDCSEL      = ((etpwmBASE_t *)0xFCF78D00U)->TZDCSEL;
		config_reg->CONFIG_TZCTL        = ((etpwmBASE_t *)0xFCF78D00U)->TZCTL;
		config_reg->CONFIG_TZEINT       = ((etpwmBASE_t *)0xFCF78D00U)->TZEINT;
		config_reg->CONFIG_ETSEL        = ((etpwmBASE_t *)0xFCF78D00U)->ETSEL;
		config_reg->CONFIG_ETPS         = ((etpwmBASE_t *)0xFCF78D00U)->ETPS;
		config_reg->CONFIG_PCCTL        = ((etpwmBASE_t *)0xFCF78D00U)->PCCTL;
		config_reg->CONFIG_DCTRIPSEL    = ((etpwmBASE_t *)0xFCF78D00U)->DCTRIPSEL;
		config_reg->CONFIG_DCACTL       = ((etpwmBASE_t *)0xFCF78D00U)->DCACTL;
		config_reg->CONFIG_DCBCTL       = ((etpwmBASE_t *)0xFCF78D00U)->DCBCTL;
		config_reg->CONFIG_DCFCTL       = ((etpwmBASE_t *)0xFCF78D00U)->DCFCTL;
		config_reg->CONFIG_DCCAPCTL     = ((etpwmBASE_t *)0xFCF78D00U)->DCCAPCTL;
		config_reg->CONFIG_DCFWINDOW    = ((etpwmBASE_t *)0xFCF78D00U)->DCFWINDOW;
		config_reg->CONFIG_DCFWINDOWCNT = ((etpwmBASE_t *)0xFCF78D00U)->DCFWINDOWCNT;
	}
}















 
 
 
 
void etpwm3GetConfigValue(etpwm_config_reg_t *config_reg, config_value_type_t type)
{
	if (type == InitialValue)
	{
	    config_reg->CONFIG_TBCTL        = ((uint16)((uint16)0U << 7U) | (uint16)((uint16)0U << 10U));
		config_reg->CONFIG_TBPHS        = 0x00000000U;
		config_reg->CONFIG_TBPRD        = 1000U;
		config_reg->CONFIG_CMPCTL       = 0x00000000U;
		config_reg->CONFIG_CMPA         = 50U;
		config_reg->CONFIG_CMPB         = 50U;
		config_reg->CONFIG_AQCTLA       = ((uint16)((uint16)ActionQual_Set << 0U) | (uint16)((uint16)ActionQual_Clear << 4U));
		config_reg->CONFIG_AQCTLB       = ((uint16)((uint16)ActionQual_Set << 0U) | (uint16)((uint16)ActionQual_Clear << 8U));
		config_reg->CONFIG_DBCTL        = ((uint16)((uint16)0U << 5U) | (uint16)((uint16)0u << 4U) | (uint16)((uint16)0U << 3U) | (uint16)((uint16)0U << 2U) | (uint16)((uint16)0U << 1U) | (uint16)((uint16)0U << 0U));
		config_reg->CONFIG_DBRED        = 1U;
		config_reg->CONFIG_DBFED        = 1U;
		config_reg->CONFIG_TZSEL        = (0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U);
		config_reg->CONFIG_TZDCSEL      = 0x00000000U;
		config_reg->CONFIG_TZCTL        = 0x00000000U;
		config_reg->CONFIG_TZEINT       = (0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U| 0x0000U);
		config_reg->CONFIG_ETSEL        = ((uint16)(((uint16)NO_EVENT == 0U)? 0x0000U : 0x0008U) | (uint16)NO_EVENT | (uint16)0x0000U | (uint16)0x0000U | (uint16)((uint16)DCAEVT1 << 8U) | (uint16)((uint16)DCBEVT1 << 12U));
		config_reg->CONFIG_ETPS         = ((uint16)1U | (uint16)((uint16)1U << 8U) | (uint16)((uint16)1U << 12U));
		config_reg->CONFIG_PCCTL        = ((uint16)((uint16)0U << 0U) | (uint16)((uint16)1U << 1U) | (uint16)((uint16)3U << 8U) | (uint16)((uint16)0U << 5U));
		config_reg->CONFIG_DCTRIPSEL    = 0x00000000U;
		config_reg->CONFIG_DCACTL       = 0x00000000U;
		config_reg->CONFIG_DCBCTL       = 0x00000000U;
		config_reg->CONFIG_DCFCTL       = 0x00000000U;
		config_reg->CONFIG_DCCAPCTL     = 0x00000000U;
		config_reg->CONFIG_DCFWINDOW    = 0x00000000U;
		config_reg->CONFIG_DCFWINDOWCNT = 0x00000000U;
	}
	else
	{
	    config_reg->CONFIG_TBCTL        = ((etpwmBASE_t *)0xFCF78E00U)->TBCTL;
		config_reg->CONFIG_TBPHS        = ((etpwmBASE_t *)0xFCF78E00U)->TBPHS;
		config_reg->CONFIG_TBPRD        = ((etpwmBASE_t *)0xFCF78E00U)->TBPRD;
		config_reg->CONFIG_CMPCTL       = ((etpwmBASE_t *)0xFCF78E00U)->CMPCTL;
		config_reg->CONFIG_CMPA         = ((etpwmBASE_t *)0xFCF78E00U)->CMPA;
		config_reg->CONFIG_CMPB         = ((etpwmBASE_t *)0xFCF78E00U)->CMPB;
		config_reg->CONFIG_AQCTLA       = ((etpwmBASE_t *)0xFCF78E00U)->AQCTLA;
		config_reg->CONFIG_AQCTLB       = ((etpwmBASE_t *)0xFCF78E00U)->AQCTLB;
		config_reg->CONFIG_DBCTL        = ((etpwmBASE_t *)0xFCF78E00U)->DBCTL;
		config_reg->CONFIG_DBRED        = ((etpwmBASE_t *)0xFCF78E00U)->DBRED;
		config_reg->CONFIG_DBFED        = ((etpwmBASE_t *)0xFCF78E00U)->DBFED;
		config_reg->CONFIG_TZSEL        = ((etpwmBASE_t *)0xFCF78E00U)->TZSEL;
		config_reg->CONFIG_TZDCSEL      = ((etpwmBASE_t *)0xFCF78E00U)->TZDCSEL;
		config_reg->CONFIG_TZCTL        = ((etpwmBASE_t *)0xFCF78E00U)->TZCTL;
		config_reg->CONFIG_TZEINT       = ((etpwmBASE_t *)0xFCF78E00U)->TZEINT;
		config_reg->CONFIG_ETSEL        = ((etpwmBASE_t *)0xFCF78E00U)->ETSEL;
		config_reg->CONFIG_ETPS         = ((etpwmBASE_t *)0xFCF78E00U)->ETPS;
		config_reg->CONFIG_PCCTL        = ((etpwmBASE_t *)0xFCF78E00U)->PCCTL;
		config_reg->CONFIG_DCTRIPSEL    = ((etpwmBASE_t *)0xFCF78E00U)->DCTRIPSEL;
		config_reg->CONFIG_DCACTL       = ((etpwmBASE_t *)0xFCF78E00U)->DCACTL;
		config_reg->CONFIG_DCBCTL       = ((etpwmBASE_t *)0xFCF78E00U)->DCBCTL;
		config_reg->CONFIG_DCFCTL       = ((etpwmBASE_t *)0xFCF78E00U)->DCFCTL;
		config_reg->CONFIG_DCCAPCTL     = ((etpwmBASE_t *)0xFCF78E00U)->DCCAPCTL;
		config_reg->CONFIG_DCFWINDOW    = ((etpwmBASE_t *)0xFCF78E00U)->DCFWINDOW;
		config_reg->CONFIG_DCFWINDOWCNT = ((etpwmBASE_t *)0xFCF78E00U)->DCFWINDOWCNT;
	}
}















 
 
 
 
void etpwm4GetConfigValue(etpwm_config_reg_t *config_reg, config_value_type_t type)
{
	if (type == InitialValue)
	{
	    config_reg->CONFIG_TBCTL        = ((uint16)((uint16)0U << 7U) | (uint16)((uint16)0U << 10U));
		config_reg->CONFIG_TBPHS        = 0x00000000U;
		config_reg->CONFIG_TBPRD        = 1000U;
		config_reg->CONFIG_CMPCTL       = 0x00000000U;
		config_reg->CONFIG_CMPA         = 50U;
		config_reg->CONFIG_CMPB         = 50U;
		config_reg->CONFIG_AQCTLA       = ((uint16)((uint16)ActionQual_Set << 0U) | (uint16)((uint16)ActionQual_Clear << 4U));
		config_reg->CONFIG_AQCTLB       = ((uint16)((uint16)ActionQual_Set << 0U) | (uint16)((uint16)ActionQual_Clear << 8U));
		config_reg->CONFIG_DBCTL        = ((uint16)((uint16)0U << 5U) | (uint16)((uint16)0u << 4U) | (uint16)((uint16)0U << 3U) | (uint16)((uint16)0U << 2U) | (uint16)((uint16)0U << 1U) | (uint16)((uint16)0U << 0U));
		config_reg->CONFIG_DBRED        = 1U;
		config_reg->CONFIG_DBFED        = 1U;
		config_reg->CONFIG_TZSEL        = (0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U);
		config_reg->CONFIG_TZDCSEL      = 0x00000000U;
		config_reg->CONFIG_TZCTL        = 0x00000000U;
		config_reg->CONFIG_TZEINT       = (0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U| 0x0000U);
		config_reg->CONFIG_ETSEL        = ((uint16)(((uint16)NO_EVENT == 0U)? 0x0000U : 0x0008U) | (uint16)NO_EVENT | (uint16)0x0000U | (uint16)0x0000U | (uint16)((uint16)DCAEVT1 << 8U) | (uint16)((uint16)DCBEVT1 << 12U));
		config_reg->CONFIG_ETPS         = ((uint16)1U | (uint16)((uint16)1U << 8U) | (uint16)((uint16)1U << 12U));
		config_reg->CONFIG_PCCTL        = ((uint16)((uint16)0U << 0U) | (uint16)((uint16)1U << 1U) | (uint16)((uint16)3U << 8U) | (uint16)((uint16)0U << 5U));
		config_reg->CONFIG_DCTRIPSEL    = 0x00000000U;
		config_reg->CONFIG_DCACTL       = 0x00000000U;
		config_reg->CONFIG_DCBCTL       = 0x00000000U;
		config_reg->CONFIG_DCFCTL       = 0x00000000U;
		config_reg->CONFIG_DCCAPCTL     = 0x00000000U;
		config_reg->CONFIG_DCFWINDOW    = 0x00000000U;
		config_reg->CONFIG_DCFWINDOWCNT = 0x00000000U;
	}
	else
	{
	    config_reg->CONFIG_TBCTL        = ((etpwmBASE_t *)0xFCF78F00U)->TBCTL;
		config_reg->CONFIG_TBPHS        = ((etpwmBASE_t *)0xFCF78F00U)->TBPHS;
		config_reg->CONFIG_TBPRD        = ((etpwmBASE_t *)0xFCF78F00U)->TBPRD;
		config_reg->CONFIG_CMPCTL       = ((etpwmBASE_t *)0xFCF78F00U)->CMPCTL;
		config_reg->CONFIG_CMPA         = ((etpwmBASE_t *)0xFCF78F00U)->CMPA;
		config_reg->CONFIG_CMPB         = ((etpwmBASE_t *)0xFCF78F00U)->CMPB;
		config_reg->CONFIG_AQCTLA       = ((etpwmBASE_t *)0xFCF78F00U)->AQCTLA;
		config_reg->CONFIG_AQCTLB       = ((etpwmBASE_t *)0xFCF78F00U)->AQCTLB;
		config_reg->CONFIG_DBCTL        = ((etpwmBASE_t *)0xFCF78F00U)->DBCTL;
		config_reg->CONFIG_DBRED        = ((etpwmBASE_t *)0xFCF78F00U)->DBRED;
		config_reg->CONFIG_DBFED        = ((etpwmBASE_t *)0xFCF78F00U)->DBFED;
		config_reg->CONFIG_TZSEL        = ((etpwmBASE_t *)0xFCF78F00U)->TZSEL;
		config_reg->CONFIG_TZDCSEL      = ((etpwmBASE_t *)0xFCF78F00U)->TZDCSEL;
		config_reg->CONFIG_TZCTL        = ((etpwmBASE_t *)0xFCF78F00U)->TZCTL;
		config_reg->CONFIG_TZEINT       = ((etpwmBASE_t *)0xFCF78F00U)->TZEINT;
		config_reg->CONFIG_ETSEL        = ((etpwmBASE_t *)0xFCF78F00U)->ETSEL;
		config_reg->CONFIG_ETPS         = ((etpwmBASE_t *)0xFCF78F00U)->ETPS;
		config_reg->CONFIG_PCCTL        = ((etpwmBASE_t *)0xFCF78F00U)->PCCTL;
		config_reg->CONFIG_DCTRIPSEL    = ((etpwmBASE_t *)0xFCF78F00U)->DCTRIPSEL;
		config_reg->CONFIG_DCACTL       = ((etpwmBASE_t *)0xFCF78F00U)->DCACTL;
		config_reg->CONFIG_DCBCTL       = ((etpwmBASE_t *)0xFCF78F00U)->DCBCTL;
		config_reg->CONFIG_DCFCTL       = ((etpwmBASE_t *)0xFCF78F00U)->DCFCTL;
		config_reg->CONFIG_DCCAPCTL     = ((etpwmBASE_t *)0xFCF78F00U)->DCCAPCTL;
		config_reg->CONFIG_DCFWINDOW    = ((etpwmBASE_t *)0xFCF78F00U)->DCFWINDOW;
		config_reg->CONFIG_DCFWINDOWCNT = ((etpwmBASE_t *)0xFCF78F00U)->DCFWINDOWCNT;
	}
}















 
 
 
 
void etpwm5GetConfigValue(etpwm_config_reg_t *config_reg, config_value_type_t type)
{
	if (type == InitialValue)
	{
	    config_reg->CONFIG_TBCTL        = ((uint16)((uint16)0U << 7U) | (uint16)((uint16)0U << 10U));
		config_reg->CONFIG_TBPHS        = 0x00000000U;
		config_reg->CONFIG_TBPRD        = 1000U;
		config_reg->CONFIG_CMPCTL       = 0x00000000U;
		config_reg->CONFIG_CMPA         = 50U;
		config_reg->CONFIG_CMPB         = 50U;
		config_reg->CONFIG_AQCTLA       = ((uint16)((uint16)ActionQual_Set << 0U) | (uint16)((uint16)ActionQual_Clear << 4U));
		config_reg->CONFIG_AQCTLB       = ((uint16)((uint16)ActionQual_Set << 0U) | (uint16)((uint16)ActionQual_Clear << 8U));
		config_reg->CONFIG_DBCTL        = ((uint16)((uint16)0U << 5U) | (uint16)((uint16)0u << 4U) | (uint16)((uint16)0U << 3U) | (uint16)((uint16)0U << 2U) | (uint16)((uint16)0U << 1U) | (uint16)((uint16)0U << 0U));
		config_reg->CONFIG_DBRED        = 1U;
		config_reg->CONFIG_DBFED        = 1U;
		config_reg->CONFIG_TZSEL        = (0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U);
		config_reg->CONFIG_TZDCSEL      = 0x00000000U;
		config_reg->CONFIG_TZCTL        = 0x00000000U;
		config_reg->CONFIG_TZEINT       = (0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U| 0x0000U);
		config_reg->CONFIG_ETSEL        = ((uint16)(((uint16)NO_EVENT == 0U)? 0x0000U : 0x0008U) | (uint16)NO_EVENT | (uint16)0x0000U | (uint16)0x0000U | (uint16)((uint16)DCAEVT1 << 8U) | (uint16)((uint16)DCBEVT1 << 12U));
		config_reg->CONFIG_ETPS         = ((uint16)1U | (uint16)((uint16)1U << 8U) | (uint16)((uint16)1U << 12U));
		config_reg->CONFIG_PCCTL        = ((uint16)((uint16)0U << 0U) | (uint16)((uint16)1U << 1U) | (uint16)((uint16)3U << 8U) | (uint16)((uint16)0U << 5U));
		config_reg->CONFIG_DCTRIPSEL    = 0x00000000U;
		config_reg->CONFIG_DCACTL       = 0x00000000U;
		config_reg->CONFIG_DCBCTL       = 0x00000000U;
		config_reg->CONFIG_DCFCTL       = 0x00000000U;
		config_reg->CONFIG_DCCAPCTL     = 0x00000000U;
		config_reg->CONFIG_DCFWINDOW    = 0x00000000U;
		config_reg->CONFIG_DCFWINDOWCNT = 0x00000000U;
	}
	else
	{
	    config_reg->CONFIG_TBCTL        = ((etpwmBASE_t *)0xFCF78C00U)->TBCTL;
		config_reg->CONFIG_TBPHS        = ((etpwmBASE_t *)0xFCF79000U)->TBPHS;
		config_reg->CONFIG_TBPRD        = ((etpwmBASE_t *)0xFCF79000U)->TBPRD;
		config_reg->CONFIG_CMPCTL       = ((etpwmBASE_t *)0xFCF79000U)->CMPCTL;
		config_reg->CONFIG_CMPA         = ((etpwmBASE_t *)0xFCF79000U)->CMPA;
		config_reg->CONFIG_CMPB         = ((etpwmBASE_t *)0xFCF79000U)->CMPB;
		config_reg->CONFIG_AQCTLA       = ((etpwmBASE_t *)0xFCF79000U)->AQCTLA;
		config_reg->CONFIG_AQCTLB       = ((etpwmBASE_t *)0xFCF79000U)->AQCTLB;
		config_reg->CONFIG_DBCTL        = ((etpwmBASE_t *)0xFCF79000U)->DBCTL;
		config_reg->CONFIG_DBRED        = ((etpwmBASE_t *)0xFCF79000U)->DBRED;
		config_reg->CONFIG_DBFED        = ((etpwmBASE_t *)0xFCF79000U)->DBFED;
		config_reg->CONFIG_TZSEL        = ((etpwmBASE_t *)0xFCF79000U)->TZSEL;
		config_reg->CONFIG_TZDCSEL      = ((etpwmBASE_t *)0xFCF79000U)->TZDCSEL;
		config_reg->CONFIG_TZCTL        = ((etpwmBASE_t *)0xFCF79000U)->TZCTL;
		config_reg->CONFIG_TZEINT       = ((etpwmBASE_t *)0xFCF79000U)->TZEINT;
		config_reg->CONFIG_ETSEL        = ((etpwmBASE_t *)0xFCF79000U)->ETSEL;
		config_reg->CONFIG_ETPS         = ((etpwmBASE_t *)0xFCF79000U)->ETPS;
		config_reg->CONFIG_PCCTL        = ((etpwmBASE_t *)0xFCF79000U)->PCCTL;
		config_reg->CONFIG_DCTRIPSEL    = ((etpwmBASE_t *)0xFCF79000U)->DCTRIPSEL;
		config_reg->CONFIG_DCACTL       = ((etpwmBASE_t *)0xFCF79000U)->DCACTL;
		config_reg->CONFIG_DCBCTL       = ((etpwmBASE_t *)0xFCF79000U)->DCBCTL;
		config_reg->CONFIG_DCFCTL       = ((etpwmBASE_t *)0xFCF79000U)->DCFCTL;
		config_reg->CONFIG_DCCAPCTL     = ((etpwmBASE_t *)0xFCF79000U)->DCCAPCTL;
		config_reg->CONFIG_DCFWINDOW    = ((etpwmBASE_t *)0xFCF79000U)->DCFWINDOW;
		config_reg->CONFIG_DCFWINDOWCNT = ((etpwmBASE_t *)0xFCF79000U)->DCFWINDOWCNT;
	}
}















 
 
 
 
void etpwm6GetConfigValue(etpwm_config_reg_t *config_reg, config_value_type_t type)
{
	if (type == InitialValue)
	{
	    config_reg->CONFIG_TBCTL        = ((uint16)((uint16)0U << 7U) | (uint16)((uint16)0U << 10U));
		config_reg->CONFIG_TBPHS        = 0x00000000U;
		config_reg->CONFIG_TBPRD        = 1000U;
		config_reg->CONFIG_CMPCTL       = 0x00000000U;
		config_reg->CONFIG_CMPA         = 50U;
		config_reg->CONFIG_CMPB         = 50U;
		config_reg->CONFIG_AQCTLA       = ((uint16)((uint16)ActionQual_Set << 0U) | (uint16)((uint16)ActionQual_Clear << 4U));
		config_reg->CONFIG_AQCTLB       = ((uint16)((uint16)ActionQual_Set << 0U) | (uint16)((uint16)ActionQual_Clear << 8U));
		config_reg->CONFIG_DBCTL        = ((uint16)((uint16)0U << 5U) | (uint16)((uint16)0u << 4U) | (uint16)((uint16)0U << 3U) | (uint16)((uint16)0U << 2U) | (uint16)((uint16)0U << 1U) | (uint16)((uint16)0U << 0U));
		config_reg->CONFIG_DBRED        = 1U;
		config_reg->CONFIG_DBFED        = 1U;
		config_reg->CONFIG_TZSEL        = (0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U);
		config_reg->CONFIG_TZDCSEL      = 0x00000000U;
		config_reg->CONFIG_TZCTL        = 0x00000000U;
		config_reg->CONFIG_TZEINT       = (0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U| 0x0000U);
		config_reg->CONFIG_ETSEL        = ((uint16)(((uint16)NO_EVENT == 0U)? 0x0000U : 0x0008U) | (uint16)NO_EVENT | (uint16)0x0000U | (uint16)0x0000U | (uint16)((uint16)DCAEVT1 << 8U) | (uint16)((uint16)DCBEVT1 << 12U));
		config_reg->CONFIG_ETPS         = ((uint16)1U | (uint16)((uint16)1U << 8U) | (uint16)((uint16)1U << 12U));
		config_reg->CONFIG_PCCTL        = ((uint16)((uint16)0U << 0U) | (uint16)((uint16)1U << 1U) | (uint16)((uint16)3U << 8U) | (uint16)((uint16)0U << 5U));
		config_reg->CONFIG_DCTRIPSEL    = 0x00000000U;
		config_reg->CONFIG_DCACTL       = 0x00000000U;
		config_reg->CONFIG_DCBCTL       = 0x00000000U;
		config_reg->CONFIG_DCFCTL       = 0x00000000U;
		config_reg->CONFIG_DCCAPCTL     = 0x00000000U;
		config_reg->CONFIG_DCFWINDOW    = 0x00000000U;
		config_reg->CONFIG_DCFWINDOWCNT = 0x00000000U;
	}
	else
	{
	    config_reg->CONFIG_TBCTL        = ((etpwmBASE_t *)0xFCF79100U)->TBCTL;
		config_reg->CONFIG_TBPHS        = ((etpwmBASE_t *)0xFCF79100U)->TBPHS;
		config_reg->CONFIG_TBPRD        = ((etpwmBASE_t *)0xFCF79100U)->TBPRD;
		config_reg->CONFIG_CMPCTL       = ((etpwmBASE_t *)0xFCF79100U)->CMPCTL;
		config_reg->CONFIG_CMPA         = ((etpwmBASE_t *)0xFCF79100U)->CMPA;
		config_reg->CONFIG_CMPB         = ((etpwmBASE_t *)0xFCF79100U)->CMPB;
		config_reg->CONFIG_AQCTLA       = ((etpwmBASE_t *)0xFCF79100U)->AQCTLA;
		config_reg->CONFIG_AQCTLB       = ((etpwmBASE_t *)0xFCF79100U)->AQCTLB;
		config_reg->CONFIG_DBCTL        = ((etpwmBASE_t *)0xFCF79100U)->DBCTL;
		config_reg->CONFIG_DBRED        = ((etpwmBASE_t *)0xFCF79100U)->DBRED;
		config_reg->CONFIG_DBFED        = ((etpwmBASE_t *)0xFCF79100U)->DBFED;
		config_reg->CONFIG_TZSEL        = ((etpwmBASE_t *)0xFCF79100U)->TZSEL;
		config_reg->CONFIG_TZDCSEL      = ((etpwmBASE_t *)0xFCF79100U)->TZDCSEL;
		config_reg->CONFIG_TZCTL        = ((etpwmBASE_t *)0xFCF79100U)->TZCTL;
		config_reg->CONFIG_TZEINT       = ((etpwmBASE_t *)0xFCF79100U)->TZEINT;
		config_reg->CONFIG_ETSEL        = ((etpwmBASE_t *)0xFCF79100U)->ETSEL;
		config_reg->CONFIG_ETPS         = ((etpwmBASE_t *)0xFCF79100U)->ETPS;
		config_reg->CONFIG_PCCTL        = ((etpwmBASE_t *)0xFCF79100U)->PCCTL;
		config_reg->CONFIG_DCTRIPSEL    = ((etpwmBASE_t *)0xFCF79100U)->DCTRIPSEL;
		config_reg->CONFIG_DCACTL       = ((etpwmBASE_t *)0xFCF79100U)->DCACTL;
		config_reg->CONFIG_DCBCTL       = ((etpwmBASE_t *)0xFCF79100U)->DCBCTL;
		config_reg->CONFIG_DCFCTL       = ((etpwmBASE_t *)0xFCF79100U)->DCFCTL;
		config_reg->CONFIG_DCCAPCTL     = ((etpwmBASE_t *)0xFCF79100U)->DCCAPCTL;
		config_reg->CONFIG_DCFWINDOW    = ((etpwmBASE_t *)0xFCF79100U)->DCFWINDOW;
		config_reg->CONFIG_DCFWINDOWCNT = ((etpwmBASE_t *)0xFCF79100U)->DCFWINDOWCNT;
	}
}















 
 
 
 
void etpwm7GetConfigValue(etpwm_config_reg_t *config_reg, config_value_type_t type)
{
	if (type == InitialValue)
	{
	    config_reg->CONFIG_TBCTL        = ((uint16)((uint16)0U << 7U) | (uint16)((uint16)0U << 10U));
		config_reg->CONFIG_TBPHS        = 0x00000000U;
		config_reg->CONFIG_TBPRD        = 1000U;
		config_reg->CONFIG_CMPCTL       = 0x00000000U;
		config_reg->CONFIG_CMPA         = 50U;
		config_reg->CONFIG_CMPB         = 50U;
		config_reg->CONFIG_AQCTLA       = ((uint16)((uint16)ActionQual_Set << 0U) | (uint16)((uint16)ActionQual_Clear << 4U));
		config_reg->CONFIG_AQCTLB       = ((uint16)((uint16)ActionQual_Set << 0U) | (uint16)((uint16)ActionQual_Clear << 8U));
		config_reg->CONFIG_DBCTL        = ((uint16)((uint16)0U << 5U) | (uint16)((uint16)0u << 4U) | (uint16)((uint16)0U << 3U) | (uint16)((uint16)0U << 2U) | (uint16)((uint16)0U << 1U) | (uint16)((uint16)0U << 0U));
		config_reg->CONFIG_DBRED        = 1U;
		config_reg->CONFIG_DBFED        = 1U;
		config_reg->CONFIG_TZSEL        = (0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U);
		config_reg->CONFIG_TZDCSEL      = 0x00000000U;
		config_reg->CONFIG_TZCTL        = 0x00000000U;
		config_reg->CONFIG_TZEINT       = (0x0000U | 0x0000U | 0x0000U | 0x0000U | 0x0000U| 0x0000U);
		config_reg->CONFIG_ETSEL        = ((uint16)(((uint16)NO_EVENT == 0U)? 0x0000U : 0x0008U) | (uint16)NO_EVENT | (uint16)0x0000U | (uint16)0x0000U | (uint16)((uint16)DCAEVT1 << 8U) | (uint16)((uint16)DCBEVT1 << 12U));
		config_reg->CONFIG_ETPS         = ((uint16)1U | (uint16)((uint16)1U << 8U) | (uint16)((uint16)1U << 12U));
		config_reg->CONFIG_PCCTL        = ((uint16)((uint16)0U << 0U) | (uint16)((uint16)1U << 1U) | (uint16)((uint16)3U << 8U) | (uint16)((uint16)0U << 5U));
		config_reg->CONFIG_DCTRIPSEL    = 0x00000000U;
		config_reg->CONFIG_DCACTL       = 0x00000000U;
		config_reg->CONFIG_DCBCTL       = 0x00000000U;
		config_reg->CONFIG_DCFCTL       = 0x00000000U;
		config_reg->CONFIG_DCCAPCTL     = 0x00000000U;
		config_reg->CONFIG_DCFWINDOW    = 0x00000000U;
		config_reg->CONFIG_DCFWINDOWCNT = 0x00000000U;
	}
	else
	{
	    config_reg->CONFIG_TBCTL        = ((etpwmBASE_t *)0xFCF79200U)->TBCTL;
		config_reg->CONFIG_TBPHS        = ((etpwmBASE_t *)0xFCF79200U)->TBPHS;
		config_reg->CONFIG_TBPRD        = ((etpwmBASE_t *)0xFCF79200U)->TBPRD;
		config_reg->CONFIG_CMPCTL       = ((etpwmBASE_t *)0xFCF79200U)->CMPCTL;
		config_reg->CONFIG_CMPA         = ((etpwmBASE_t *)0xFCF79200U)->CMPA;
		config_reg->CONFIG_CMPB         = ((etpwmBASE_t *)0xFCF79200U)->CMPB;
		config_reg->CONFIG_AQCTLA       = ((etpwmBASE_t *)0xFCF79200U)->AQCTLA;
		config_reg->CONFIG_AQCTLB       = ((etpwmBASE_t *)0xFCF79200U)->AQCTLB;
		config_reg->CONFIG_DBCTL        = ((etpwmBASE_t *)0xFCF79200U)->DBCTL;
		config_reg->CONFIG_DBRED        = ((etpwmBASE_t *)0xFCF79200U)->DBRED;
		config_reg->CONFIG_DBFED        = ((etpwmBASE_t *)0xFCF79200U)->DBFED;
		config_reg->CONFIG_TZSEL        = ((etpwmBASE_t *)0xFCF79200U)->TZSEL;
		config_reg->CONFIG_TZDCSEL      = ((etpwmBASE_t *)0xFCF79200U)->TZDCSEL;
		config_reg->CONFIG_TZCTL        = ((etpwmBASE_t *)0xFCF79200U)->TZCTL;
		config_reg->CONFIG_TZEINT       = ((etpwmBASE_t *)0xFCF79200U)->TZEINT;
		config_reg->CONFIG_ETSEL        = ((etpwmBASE_t *)0xFCF79200U)->ETSEL;
		config_reg->CONFIG_ETPS         = ((etpwmBASE_t *)0xFCF79200U)->ETPS;
		config_reg->CONFIG_PCCTL        = ((etpwmBASE_t *)0xFCF79200U)->PCCTL;
		config_reg->CONFIG_DCTRIPSEL    = ((etpwmBASE_t *)0xFCF79200U)->DCTRIPSEL;
		config_reg->CONFIG_DCACTL       = ((etpwmBASE_t *)0xFCF79200U)->DCACTL;
		config_reg->CONFIG_DCBCTL       = ((etpwmBASE_t *)0xFCF79200U)->DCBCTL;
		config_reg->CONFIG_DCFCTL       = ((etpwmBASE_t *)0xFCF79200U)->DCFCTL;
		config_reg->CONFIG_DCCAPCTL     = ((etpwmBASE_t *)0xFCF79200U)->DCCAPCTL;
		config_reg->CONFIG_DCFWINDOW    = ((etpwmBASE_t *)0xFCF79200U)->DCFWINDOW;
		config_reg->CONFIG_DCFWINDOWCNT = ((etpwmBASE_t *)0xFCF79200U)->DCFWINDOWCNT;
	}
}

 
 











 

































 








 

































 



 
 












 

































 












 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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


 
 

 
 
 
 

 
 

 
 




 
 

 




 




 

typedef volatile struct eqepBASE
{
  uint32      QPOSCNT;        
  uint32      QPOSINIT;       
  uint32      QPOSMAX;        
  uint32      QPOSCMP;        
  uint32      QPOSILAT;       
  uint32      QPOSSLAT;       
  uint32      QPOSLAT;        
  uint32      QUTMR;          
  uint32      QUPRD;          
  uint16		QWDPRD;		    
  uint16		QWDTMR;		    
  uint16		QEPCTL;		    
  uint16		QDECCTL;	    
  uint16		QPOSCTL;	    
  uint16		QCAPCTL;	    
  uint16		QFLG;		    
  uint16		QEINT;		    
  uint16		QFRC;		    
  uint16		QCLR;		    
  uint16		QCTMR;		    
  uint16		QEPSTS;		    
  uint16		QCTMRLAT;	    
  uint16		QCPRD;		    
  uint16		rsvd_1;	        
  uint16		QCPRDLAT;	    
} eqepBASE_t;






 





 

 
 




 
 

 

 
                                                                                                                                  
                                                                                                                 

 

 
																
 

 

 

 
                                                                                                                  
                                                                                                         

  

 

 

  

 

 

 

 

 

 



 

 
typedef enum
{
	eQEP_Qsrc_Quad_Count_Mode=((uint16)0U << 14U),					 
	eQEP_Qsrc_Dir_Count_Mode=((uint16)1U << 14U),					 
	eQEP_Qsrc_Up_Count_Mode=((uint16)2U << 14U),						 
	eQEP_Qsrc_Down_Count_Mode=((uint16)3U << 14U)					 
} eQEP_Qsrc_t;


 
typedef enum
{	
	eQEP_Spsel_Index_Pin_Sync_Output=((uint16)0U << 12U),			 
	eQEP_Spsel_Strobe_Pin_Sync_Output=((uint16)1U << 12U)			  
} eQEP_Spsel_t;


 
typedef enum
{
	eQEP_Xcr_2x_Res=((uint16)0U << 11U),								 
	eQEP_Xcr_1x_Res=((uint16)1U << 11U)								 
} eQEP_Xcr_t;


 
typedef enum
{
	eQEP_Swap_Not_Swapped=((uint16)0U << 10U),						 
	eQEP_Swap_Swapped=((uint16)1U << 10U)							 
} eQEP_Swap_t;


 
typedef enum
{
	eQEP_Igate_Disable=((uint16)0U << 9U),							 
	eQEP_Igate_Enable=((uint16)1U << 9U)								 
} eQEP_Igate_t;


 
typedef enum
{
	eQEP_Qap_No_Effect=((uint16)0U << 8U),							 
	eQEP_Qap_Inverted=((uint16)1U << 8U)								 
} eQEP_Qap_t;


 
typedef enum
{
	eQEP_Qbp_No_Effect=((uint16)0U << 7U),							 
	eQEP_Qbp_Inverted=((uint16)1U << 7U)								 
} eQEP_Qbp_t;


 
typedef enum
{
	eQEP_Qip_No_Effect=((uint16)0U << 6U),							 
	eQEP_Qip_Inverted=((uint16)1U << 6U)								 
} eQEP_Qip_t;


 
typedef enum
{
	eQEP_Qsp_No_Effect=((uint16)0U << 5U),								 
	eQEP_Qsp_Inverted=((uint16)1U << 5U)								 
} eQEP_Qsp_t;


 
typedef enum
{
	QEPCTL_Freesoft_Immediate_Halt=((uint16)0U << 14U),				 
	QEPCTL_Freesoft_Rollover_Halt=((uint16)1U << 14U),				 
	QEPCTL_Freesoft_Unaffected_Halt=((uint16)2U << 14U)				 
} QEPCTL_Freesoft_t;


 
typedef enum
{
	QEPCTL_Pcrm_Index_Reset=((uint16)0U << 12U),					 
	QEPCTL_Pcrm_Max_Reset=((uint16)1U << 12U),						 
	QEPCTL_Pcrm_First_Index_Reset=((uint16)2U << 12U),				 
	QEPCTL_Pcrm_Unit_Time_Reset=((uint16)3U << 12U)					 
} QEPCTL_Pcrm_t;


 
typedef enum
{ 
	QEPCTL_Sei_Nothing=((uint16)0U << 10U),							 
	QEPCTL_Sei_Rising_Edge_Init=((uint16)2U << 10U),				 
	QEPCTL_Sei_Rising_Falling_Edge_Init=((uint16)3U << 10U)			 
} QEPCTL_Sei_t;


 
typedef enum
{
	QEPCTL_Iei_Nothing=((uint16)0U << 8U),							 
	QEPCTL_Iei_Rising_Edge_Init=((uint16)2U << 8U),					 
	QEPCTL_Iei_Rising_Falling_Edge_Init=((uint16)3U << 8U)			 
} QEPCTL_Iei_t;


 
typedef enum
{
	QEPCTL_Swi_Nothing=((uint16)0U << 7U),							 
	QEPCTL_Swi_Auto_Init_Counter=((uint16)1U << 7U)					 
} QEPCTL_Swi_t;


 
typedef enum
{
	QEPCTL_Sel_Rising_Edge=((uint16)0U << 6U),						 
	QEPCTL_Sel_Rising_Falling_Edge=((uint16)1U << 6U)				 
} QEPCTL_Sel_t;
	

 
typedef enum
{
	QEPCTL_Iel_Rising_Edge=((uint16)1U << 4U),						 
	QEPCTL_Iel_Falling_Edge=((uint16)2U << 4U),						 
	QEPCTL_Iel_Software_Index_Marker=((uint16)3U << 4U)				 
} QEPCTL_Iel_t;


 
typedef enum
{
	QEPCTL_Qclm_Latch_on_CPU_Read=((uint16)0U << 2U),					 
	QEPCTL_Qclm_Latch_on_Unit_Timeout=((uint16)1U << 2U)				 
} QEPCTL_Qclm_t;


 
typedef enum
{
	QPOSCTL_Pcshdw_Load_Immediate=((uint16)0U << 15U),				 
	QPOSCTL_Pcshdw_Shadow_Enabled=((uint16)1U << 15U)				 
} QPOSCTL_Pcshdw_t;


 
typedef enum
{
	QPOSCTL_Pcload_Load_Posn_Count_Zero=((uint16)0U << 14U),			 
	QPOSCTL_Pcload_Load_Posn_Count_Equal_Compare=((uint16)1U << 14U)	 
} QPOSCTL_Pcload_t;


 
typedef enum
{
	QPOSCTL_Pcpol_Active_High=((uint16)0U << 13U),					 
	QPOSCTL_Pcpol_Active_Low=((uint16)1U << 13U)					 
} QPOSCTL_Pcpol_t;


 
typedef enum
{
	QCAPCTL_Ccps_Capture_Div_1=((uint16)0U << 4U),					 
	QCAPCTL_Ccps_Capture_Div_2=((uint16)1U << 4U),					 
	QCAPCTL_Ccps_Capture_Div_4=((uint16)2U << 4U),					 
	QCAPCTL_Ccps_Capture_Div_8=((uint16)3U << 4U),					 
	QCAPCTL_Ccps_Capture_Div_16=((uint16)4U << 4U),					 
	QCAPCTL_Ccps_Capture_Div_32=((uint16)5U << 4U),					 
	QCAPCTL_Ccps_Capture_Div_64=((uint16)6U << 4U),					 
	QCAPCTL_Ccps_Capture_Div_128=((uint16)7U << 4U)					 
} QCAPCTL_Ccps_t;


 
typedef enum
{
	QCAPCTL_Upps_Div_1_Prescale=((uint16)0U << 0U),					 
	QCAPCTL_Upps_Div_2_Prescale=((uint16)1U << 0U),					 
	QCAPCTL_Upps_Div_4_Prescale=((uint16)2U << 0U),					 
	QCAPCTL_Upps_Div_8_Prescale=((uint16)3U << 0U),					 
	QCAPCTL_Upps_Div_16_Prescale=((uint16)4U << 0U),				 
	QCAPCTL_Upps_Div_32_Prescale=((uint16)5U << 0U),				 
	QCAPCTL_Upps_Div_64_Prescale=((uint16)6U << 0U),				 
	QCAPCTL_Upps_Div_128_Prescale=((uint16)7U << 0U),				 
	QCAPCTL_Upps_Div_256_Prescale=((uint16)8U << 0U),				 
	QCAPCTL_Upps_Div_512_Prescale=((uint16)9U << 0U),				 
	QCAPCTL_Upps_Div_1024_Prescale=((uint16)10U << 0U),				 
	QCAPCTL_Upps_Div_2048_Prescale=((uint16)11U << 0U)				 
} QCAPCTL_Upps_t;


 
typedef enum
{
	QEINT_Uto=((uint16)1U << 11U),									     
	QEINT_Iel=((uint16)1U << 10U),								     	 
	QEINT_Sel=((uint16)1U << 9U),										 
	QEINT_Pcm=((uint16)1U << 8U),										 
	QEINT_Pcr=((uint16)1U << 7U),										 
	QEINT_Pco=((uint16)1U << 6U),										 
	QEINT_Pcu=((uint16)1U << 5U),										 
	QEINT_Wto=((uint16)1U << 4U),										 
	QEINT_Qdc=((uint16)1U << 3U),										 
	QEINT_Qpe=((uint16)1U << 2U),										 
	QEINT_Pce=((uint16)1U << 1U)										 
} QEINT_t;                                                                                                             
            
 
typedef struct eqep_config_reg
{
    uint32 CONFIG_QPOSINIT;
    uint32 CONFIG_QPOSMAX;
    uint32 CONFIG_QPOSCMP;
    uint32 CONFIG_QUPRD;
    uint16 CONFIG_QWDPRD;
    uint16 CONFIG_QDECCTL;
    uint16 CONFIG_QEPCTL;
    uint16 CONFIG_QCAPCTL;
    uint16 CONFIG_QPOSCTL;	
	uint16 CONFIG_QEINT;
} eqep_config_reg_t;		

					 
					 
								   
					   
					 
					 
								   
					   
								   















 



 

void QEPInit(void);


void eqepClearAllInterruptFlags (eqepBASE_t *eqep);


void eqepClearInterruptFlag (eqepBASE_t *eqep, QEINT_t QEINT_type);


void eqepClearPosnCounter (eqepBASE_t *eqep);


void eqepDisableAllInterrupts (eqepBASE_t *eqep);

void eqepDisableCapture (eqepBASE_t *eqep);


void eqepDisableGateIndex (eqepBASE_t *eqep);

void eqepDisableInterrupt (eqepBASE_t *eqep, QEINT_t QEINT_type);

void eqepDisablePosnCompare (eqepBASE_t *eqep);

void eqepDisablePosnCompareShadow (eqepBASE_t *eqep);


void eqepDisableSyncOut (eqepBASE_t *eqep);

void eqepDisableUnitTimer (eqepBASE_t *eqep);

void eqepDisableWatchdog (eqepBASE_t *eqep);

void eqepEnableCapture (eqepBASE_t *eqep);

void eqepEnableCounter (eqepBASE_t *eqep);

void eqepEnableGateIndex (eqepBASE_t *eqep);

void eqepEnableInterrupt (eqepBASE_t *eqep, QEINT_t QEINT_type);

void eqepEnablePosnCompare (eqepBASE_t *eqep);

void eqepEnablePosnCompareShadow (eqepBASE_t *eqep);

void eqepEnableSyncOut (eqepBASE_t *eqep);

void eqepEnableUnitTimer (eqepBASE_t *eqep);

void eqepEnableWatchdog (eqepBASE_t *eqep);

void eqepForceInterrupt (eqepBASE_t *eqep, QEINT_t QEINT_type);

uint16 eqepReadCapturePeriodLatch (eqepBASE_t *eqep);

uint16 eqepReadCaptureTimerLatch (eqepBASE_t *eqep);

uint16 eqepReadInterruptFlag (eqepBASE_t *eqep, QEINT_t QEINT_type);

uint32 eqepReadPosnCompare (eqepBASE_t *eqep);

uint32 eqepReadPosnCount (eqepBASE_t *eqep);

uint32 eqepReadPosnIndexLatch (eqepBASE_t *eqep);

uint32 eqepReadPosnLatch (eqepBASE_t *eqep);

uint32 eqepReadPosnStrobeLatch (eqepBASE_t *eqep);

uint16 eqepReadStatus (eqepBASE_t *eqep);

void eqepResetCounter (eqepBASE_t *eqep);

void eqepSetCaptureLatchMode (eqepBASE_t *eqep, QEPCTL_Qclm_t QEPCTL_Qclm);

void eqepSetCapturePeriod (eqepBASE_t *eqep, uint16 period);

void eqepSetCapturePrescale (eqepBASE_t *eqep, QCAPCTL_Ccps_t QCAPCTL_Ccps);

void eqepSetEmuControl (eqepBASE_t *eqep, QEPCTL_Freesoft_t QEPCTL_Freesoft);

void eqepSetExtClockRate (eqepBASE_t *eqep, eQEP_Xcr_t eQEP_Xcr);

void eqepSetIndexEventInit (eqepBASE_t *eqep, QEPCTL_Iei_t QEPCTL_Iei);

void eqepSetIndexEventLatch (eqepBASE_t *eqep, QEPCTL_Iel_t QEPCTL_Iel);

void eqepSetIndexPolarity (eqepBASE_t *eqep, eQEP_Qip_t eQEP_Qip);

void eqepSetMaxPosnCount (eqepBASE_t *eqep, uint32 max_count);

void eqepSetPosnComparePulseWidth (eqepBASE_t *eqep, uint16 pulse_width);

void eqepSetPosnCompareShadowLoad (eqepBASE_t *eqep, QPOSCTL_Pcload_t QPOSCTL_Pcload);

void eqepSetPosnCountResetMode (eqepBASE_t *eqep, QEPCTL_Pcrm_t QEPCTL_Pcrm);

void eqepSetPosnInitCount (eqepBASE_t *eqep, uint32 init_count);

void eqepSetSelectSyncPin (eqepBASE_t *eqep, eQEP_Spsel_t eQEP_SPsel);

void eqepSetSoftInit (eqepBASE_t *eqep, QEPCTL_Swi_t QEPCTL_Swi);

void eqepSetStrobeEventInit (eqepBASE_t *eqep, QEPCTL_Sei_t QEPCTL_Sei);

void eqepSetStrobeEventLatch (eqepBASE_t *eqep, QEPCTL_Sel_t QEPCTL_Sel);

void eqepSetStrobePolarity (eqepBASE_t *eqep, eQEP_Qsp_t eQEP_Qsp);

void eqepSetSwapQuadInputs (eqepBASE_t *eqep, eQEP_Swap_t eQEP_Swap);

void eqepSetSynchOutputComparePolarity (eqepBASE_t *eqep, QPOSCTL_Pcpol_t QPOSCTL_Pcpol);

void eqepSetUnitPeriod (eqepBASE_t *eqep, uint32 unit_period);

void eqepSetUnitPosnPrescale (eqepBASE_t *eqep, QCAPCTL_Upps_t QCAPCTL_Upps);

void eqepSetWatchdogPeriod (eqepBASE_t *eqep, uint16 watchdog_period);

void eqepSetupStrobeEventLatch (eqepBASE_t *eqep, QEPCTL_Sel_t QEPCTL_Sel);

void eqepSetAPolarity (eqepBASE_t *eqep, eQEP_Qap_t eQEP_Qap);

void eqepSetBPolarity (eqepBASE_t *eqep, eQEP_Qbp_t eQEP_Qbp);

void eqepSetQEPSource (eqepBASE_t *eqep, eQEP_Qsrc_t eQEP_Qsrc);

void eqepWritePosnCompare (eqepBASE_t *eqep, uint32 posn);




 
void 	eqepNotification(eqepBASE_t *eqep,uint16 flags);

void eqep1GetConfigValue(eqep_config_reg_t *config_reg, config_value_type_t type);
void eqep2GetConfigValue(eqep_config_reg_t *config_reg, config_value_type_t type);
 
 

 











 

































 













 

































 




 
 

 




 




 
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
 


 

 
 





 
 
 
 
void QEPInit(void)
{

 
 

   
  ((eqepBASE_t *)0xFCF79900U)->QPOSCNT  =  0x00000000U;
  
    
  ((eqepBASE_t *)0xFCF79900U)->QPOSINIT =  0x00000000U;
  
    
  ((eqepBASE_t *)0xFCF79900U)->QPOSMAX  =  0x00000000U;
  
    
  ((eqepBASE_t *)0xFCF79900U)->QPOSCMP  =  0x00000000U;
  
    
  ((eqepBASE_t *)0xFCF79900U)->QUTMR    =  0x00000000U;
  
    
  ((eqepBASE_t *)0xFCF79900U)->QUPRD    =  (uint32) 0x00000000U;
  
    
  ((eqepBASE_t *)0xFCF79900U)->QWDTMR   = 	(uint16) 0x00000000U;
  
    
  ((eqepBASE_t *)0xFCF79900U)->QWDPRD   =  (uint16) 0x0000U;
  
 
 

  










 
  ((eqepBASE_t *)0xFCF79900U)->QDECCTL  = (uint16)((uint16)((uint16)0x01U << 14U)
                       | (uint16)((uint16)0U << 13U) 
					   | (uint16)((uint16)0x00U << 12U) 
					   | (uint16)((uint16)0x01U << 11U)
					   | (uint16)((uint16)0U << 10U)
					   | (uint16)((uint16)0U << 9U)
					   | (uint16)((uint16)0U << 8U)
					   | (uint16)((uint16)0U << 7U)					   
					   | (uint16)((uint16)0U << 6U)				   
					   | (uint16)((uint16)0U << 5U)
					   | (uint16)0x0000U);

  







 				   
  ((eqepBASE_t *)0xFCF79900U)->QEPCTL   = (uint16)((uint16)((uint16)0x01U << 12U)
                       | (uint16)((uint16)0U << 11U )
					   | (uint16)((uint16)0x01U << 10U)
                       | (uint16)((uint16)0U << 9U)
					   | (uint16)((uint16)0x00U << 8U)
					   | (uint16)((uint16)0U << 7U)
					   | (uint16)((uint16)0x00U << 6U)
					   | (uint16)((uint16)0x01U << 4U)
					   | (uint16)((uint16)0x00U << 2U)
					   | (uint16)0x0000U);
					   
  




 			   
  ((eqepBASE_t *)0xFCF79900U)->QPOSCTL  = (uint16)((uint16)((uint16)0U << 15U)
					   | (uint16)((uint16)0x01U << 14U)
					   | (uint16)((uint16)0x00U << 13U)
					   | (uint16)((uint16)0x000U)					   
					   | (uint16)0x0000U);

  


 					   
  ((eqepBASE_t *)0xFCF79900U)->QCAPCTL  = (uint16)((uint16)((uint16)0x03U << 4U)
					   | (uint16)((uint16)0x09U)
					   | (uint16)0x0000U);

 
 

   					   
  ((eqepBASE_t *)0xFCF79900U)->QCLR     = (uint16) 0xFFFFU;

  











   
  ((eqepBASE_t *)0xFCF79900U)->QEINT    = (uint16)((uint16)((uint16)0U << 11U)
					   | (uint16)((uint16)0U << 10U)
					   | (uint16)((uint16)0U << 9U)
					   | (uint16)((uint16)0U << 8U)
					   | (uint16)((uint16)0U << 7U)
					   | (uint16)((uint16)0U << 6U)
					   | (uint16)((uint16)0U << 5U)
					   | (uint16)((uint16)0U << 4U)
					   | (uint16)((uint16)0U << 3U)       
					   | (uint16)((uint16)0U << 2U)
					   | (uint16)((uint16)0U << 1U));

   
  ((eqepBASE_t *)0xFCF79900U)->QCTMR    = (uint16)0x0000U;	

     
  ((eqepBASE_t *)0xFCF79900U)->QCPRD    = (uint16)0x0000U;	
  
   					   
  ((eqepBASE_t *)0xFCF79900U)->QCPRDLAT = (uint16)0x0000U;
  
 
 

   
  ((eqepBASE_t *)0xFCF79A00U)->QPOSCNT  =  0x00000000U;
  
    
  ((eqepBASE_t *)0xFCF79A00U)->QPOSINIT =  0x00000000U;
  
    
  ((eqepBASE_t *)0xFCF79A00U)->QPOSMAX  =  0x00000000U;
  
    
  ((eqepBASE_t *)0xFCF79A00U)->QPOSCMP  =  0U;
  
    
  ((eqepBASE_t *)0xFCF79A00U)->QUTMR    =  0x00000000U;
  
    
  ((eqepBASE_t *)0xFCF79A00U)->QUPRD    =  (uint32) 0U;
  
    
  ((eqepBASE_t *)0xFCF79A00U)->QWDTMR   = 	(uint16) 0x00000000U;
  
    
  ((eqepBASE_t *)0xFCF79A00U)->QWDPRD   =  (uint16) 0U;
  
 
 

  










 
  ((eqepBASE_t *)0xFCF79A00U)->QDECCTL  = (uint16)((uint16)((uint16)0x01U << 14U)
                       | (uint16)((uint16)0U << 13U) 
					   | (uint16)((uint16)0x00U << 12U) 
					   | (uint16)((uint16)0x01U << 11U)
					   | (uint16)((uint16)0U << 10U)
					   | (uint16)((uint16)0U << 9U)
					   | (uint16)((uint16)0U << 8U)
					   | (uint16)((uint16)0U << 7U)					   
					   | (uint16)((uint16)0U << 6U)					   
					   | (uint16)((uint16)0U << 5U)
					   | (uint16)0x0000U);

  







 				   
  ((eqepBASE_t *)0xFCF79A00U)->QEPCTL   = (uint16)((uint16)((uint16)0x01U << 12U)
                       | (uint16)((uint16)0U << 11U) 
					   | (uint16)((uint16)0x01U << 10U)
                       | (uint16)((uint16)0U << 9U)
					   | (uint16)((uint16)0x00U << 8U)
					   | (uint16)((uint16)0U << 7U)
					   | (uint16)((uint16)0x00U << 6U)
					   | (uint16)((uint16)0x01U << 4U)
					   | (uint16)((uint16)0x00U << 2U)
					   | (uint16)0x0000U);
					   
  




 			   
  ((eqepBASE_t *)0xFCF79A00U)->QPOSCTL  = (uint16)((uint16)((uint16)0U << 15U)
					   | (uint16)((uint16)0x01U << 14U)
					   | (uint16)((uint16)0x00U << 13U)
					   | (uint16)((uint16)0U)					   
					   | (uint16)0x0000U);

  


 					   
  ((eqepBASE_t *)0xFCF79A00U)->QCAPCTL  = (uint16)((uint16)((uint16)0x03U << 4U)
					   | (uint16)((uint16)0x09U)
					   | (uint16)0x0000U);

 
 

   					   
  ((eqepBASE_t *)0xFCF79A00U)->QCLR     = (uint16) 0xFFFFU;

  











   
  ((eqepBASE_t *)0xFCF79A00U)->QEINT    = (uint16)((uint16)((uint16)0U << 11U)
					   | (uint16)((uint16)0U << 10U)
					   | (uint16)((uint16)0U << 9U)
					   | (uint16)((uint16)0U << 8U)
					   | (uint16)((uint16)0U << 7U)
					   | (uint16)((uint16)0U << 6U)
					   | (uint16)((uint16)0U << 5U)
					   | (uint16)((uint16)0U << 4U)
					   | (uint16)((uint16)0U << 3U)
					   | (uint16)((uint16)0U << 2U)
					   | (uint16)((uint16)0U << 1U));

   
  ((eqepBASE_t *)0xFCF79A00U)->QCTMR    = (uint16)0x0000U;	

     
  ((eqepBASE_t *)0xFCF79A00U)->QCPRD    = (uint16)0x0000U;	
  
   					   
  ((eqepBASE_t *)0xFCF79A00U)->QCPRDLAT = (uint16)0x0000U;
  
 
 
  
}



 
 
 
 
void eqepClearAllInterruptFlags (eqepBASE_t *eqep)
{
  
  eqep->QCLR = 0xfffU;
  
  return;	
}  




 
 
 
 
void eqepClearInterruptFlag (eqepBASE_t *eqep, QEINT_t QEINT_type)
{
  
  eqep->QCLR |= (uint16)QEINT_type;
  
  return;	
}  



 
 
 
 
void eqepClearPosnCounter (eqepBASE_t *eqep)
{
  
  eqep->QPOSCNT = 0U;	
  
  return;
}  



 
 
 
 
void eqepDisableAllInterrupts (eqepBASE_t *eqep)
{
  
  eqep->QEINT = 0U;
  
  return;
}  



 
 
 
 
void eqepDisableCapture (eqepBASE_t *eqep)
{
  
  eqep->QCAPCTL &= (uint16)~((uint16)((uint16)1U << 15U));
  
  return;	
}  



 
 
 
 
void eqepDisableGateIndex (eqepBASE_t *eqep)
{
  
  eqep->QDECCTL &= (uint16)~((uint16)((uint16)1U << 9U));	
  
  return;
}  




 
 
 
 
void eqepDisableInterrupt (eqepBASE_t *eqep, QEINT_t QEINT_type)
{
  
  eqep->QEINT &= (uint16)~(uint16)QEINT_type;
  
  return;
}  



 
 
 
 
void eqepDisablePosnCompare (eqepBASE_t *eqep)
{
  
  eqep->QPOSCTL &= (uint16)~((uint16)((uint16)1U << 12U));
  
  return;	
}  



 
 
 
 
void eqepDisablePosnCompareShadow (eqepBASE_t *eqep)
{
  
  eqep->QPOSCTL &= (uint16)~((uint16)((uint16)1U << 15U));
  
  return;	
}  



 
 
 
 
void eqepDisableSyncOut (eqepBASE_t *eqep)
{
  
  eqep->QDECCTL &= (uint16)~((uint16)((uint16)1U << 13U));
  
  return;
}  



 
 
 
 
void eqepDisableUnitTimer (eqepBASE_t *eqep)
{
  
  eqep->QEPCTL &= (uint16)~((uint16)((uint16)1U << 1U));
  
  return; 	
}  



 
 
 
 
void eqepDisableWatchdog (eqepBASE_t *eqep)
{
  
  eqep->QEPCTL &= (uint16)~((uint16)((uint16)1U << 0U)); 	
  
  return;
}  



 
 
 
 
void eqepEnableCapture (eqepBASE_t *eqep)
{
  
  eqep->QCAPCTL |= ((uint16)((uint16)1U << 15U));	
  
  return;
}  



 
 
 
 
void eqepEnableCounter (eqepBASE_t *eqep)
{
  
  eqep->QEPCTL |= ((uint16)((uint16)1U << 3U));	
  
  return;
}  



 
 
 
 
void eqepEnableGateIndex (eqepBASE_t *eqep)
{
  
  eqep->QDECCTL |= (uint16)eQEP_Igate_Enable;	
  
  return;
}  




 
 
 
 
void eqepEnableInterrupt (eqepBASE_t *eqep, QEINT_t QEINT_type)
{
  
  eqep->QEINT |= (uint16)QEINT_type;	
  
  return;
}  



 
 
 
 
void eqepEnablePosnCompare (eqepBASE_t *eqep)
{
  
  eqep->QPOSCTL |= ((uint16)((uint16)1U << 12U));	
  
  return;
}  



 
 
 
 
void eqepEnablePosnCompareShadow (eqepBASE_t *eqep)
{
  
  eqep->QPOSCTL |= ((uint16)((uint16)1U << 15U));	
  
  return;
}  



 
 
 
 
void eqepEnableSyncOut (eqepBASE_t *eqep)
{
  
  eqep->QDECCTL |= ((uint16)((uint16)1U << 13U));
  
  return;
}  



 
 
 
 
void eqepEnableUnitTimer (eqepBASE_t *eqep)
{
  
  eqep->QEPCTL |= ((uint16)((uint16)1U << 1U));
  
  return; 	
}  



 
 
 
 
void eqepEnableWatchdog (eqepBASE_t *eqep)
{
  
  eqep->QEPCTL |= ((uint16)((uint16)1U << 0U)); 	
  
  return;
}  




 
 
 
 
void eqepForceInterrupt (eqepBASE_t *eqep, QEINT_t QEINT_type)
{
  
  eqep->QFRC |= (uint16)QEINT_type;
  
  return;	
}  





 
 
 
 
uint16 eqepReadCapturePeriodLatch (eqepBASE_t *eqep)
{
  return eqep->QCPRDLAT;	
}  




 
 
 
 
uint16 eqepReadCaptureTimerLatch (eqepBASE_t *eqep)
{
  return eqep->QCTMRLAT;	
}  





 
 
 
 
uint16 eqepReadInterruptFlag (eqepBASE_t *eqep, QEINT_t QEINT_type)
{
	return (uint16) (eqep->QFLG & (uint16)QEINT_type); 
}  




 
 
 
 
uint32 eqepReadPosnCompare (eqepBASE_t *eqep)
{
  
  return eqep->QPOSCMP;	
}  




 
 
 
 
uint32 eqepReadPosnCount (eqepBASE_t *eqep)
{
   
  return eqep->QPOSCNT;	
}  




 
 
 
 
uint32 eqepReadPosnIndexLatch (eqepBASE_t *eqep)
{
  
  return eqep->QPOSILAT;	
}  




 
 
 
 
uint32 eqepReadPosnLatch (eqepBASE_t *eqep)
{
  
  return eqep->QPOSLAT;	
}  




 
 
 
 
uint32 eqepReadPosnStrobeLatch (eqepBASE_t *eqep)
{
  
  return eqep->QPOSSLAT;	
}  




 
 
 
 
uint16 eqepReadStatus (eqepBASE_t *eqep)
{
  
  return eqep->QEPSTS;	
}  



 
 
 
 
void eqepResetCounter (eqepBASE_t *eqep)
{
  
  eqep->QEPCTL &= (uint16)~((uint16)((uint16)1U << 3U));
  
  return;	
}  




 
 
 
 
void eqepSetCaptureLatchMode (eqepBASE_t *eqep, QEPCTL_Qclm_t QEPCTL_Qclm)
{
  
  eqep->QEPCTL &= (uint16)~((uint16)((uint16)1U << 2U));
  eqep->QEPCTL |= QEPCTL_Qclm;
  
  return;
}  




 
 
 
 
void eqepSetCapturePeriod (eqepBASE_t *eqep, uint16 period)
{
  
  eqep->QCPRD = period;	
  
  return;
}  




 
 
 
 
void eqepSetCapturePrescale (eqepBASE_t *eqep, QCAPCTL_Ccps_t QCAPCTL_Ccps)
{
  
  eqep->QCAPCTL &= (uint16)~((uint16)((uint16)7U << 4U));
  eqep->QCAPCTL |= QCAPCTL_Ccps;
}  




 
 
 
 
void eqepSetEmuControl (eqepBASE_t *eqep, QEPCTL_Freesoft_t QEPCTL_Freesoft)
{
  
  eqep->QEPCTL &= (uint16)~((uint16)((uint16)3U << 14U));
  eqep->QEPCTL |= QEPCTL_Freesoft; 	
  
  return;
}  




 
 
 
 
void eqepSetExtClockRate (eqepBASE_t *eqep, eQEP_Xcr_t eQEP_Xcr)
{
  
  eqep->QDECCTL &= (uint16)~((uint16)((uint16)1U << 11U));
  eqep->QDECCTL |= (uint16)eQEP_Xcr;	
  
  return;
}  




 
 
 
 
void eqepSetIndexEventInit (eqepBASE_t *eqep, QEPCTL_Iei_t QEPCTL_Iei)
{
  
  eqep->QEPCTL &= (uint16)~((uint16)((uint16)3U << 8U));
  eqep->QEPCTL |= (uint16)QEPCTL_Iei;
  
  return;	
}  




 
 
 
 
void eqepSetIndexEventLatch (eqepBASE_t *eqep, QEPCTL_Iel_t QEPCTL_Iel)
{
  
  eqep->QEPCTL &= (uint16)~((uint16)((uint16)3U << 4U));
  eqep->QEPCTL |= QEPCTL_Iel;
  
  return;
}  




 
 
 
 
void eqepSetIndexPolarity (eqepBASE_t *eqep, eQEP_Qip_t eQEP_Qip)
{
  
  eqep->QDECCTL &= (uint16)~((uint16)((uint16)1U << 6U));
  eqep->QDECCTL |= eQEP_Qip;
  
  return;
}  




 
 
 
 
void eqepSetMaxPosnCount (eqepBASE_t *eqep, uint32 max_count)
{
  
  eqep->QPOSMAX = max_count;	
  
  return;
}  




 
 
 
 
void eqepSetPosnComparePulseWidth (eqepBASE_t *eqep, uint16 pulse_width)
{
  
  uint16 pulse_width_masked;

  pulse_width_masked = pulse_width & 4095U;
  eqep->QPOSCTL &= (uint16)~((uint16)((uint16)4095U << 0U));
  eqep->QPOSCTL |= pulse_width_masked;
  
  return;
}  




 
 
 
 
void eqepSetPosnCompareShadowLoad (eqepBASE_t *eqep, QPOSCTL_Pcload_t QPOSCTL_Pcload)
{
  
  eqep->QPOSCTL &= (uint16)~((uint16)((uint16)1U << 14U));
  eqep->QPOSCTL |= (uint16)QPOSCTL_Pcload;
  
  return;
}  




 
 
 
 
void eqepSetPosnCountResetMode (eqepBASE_t *eqep, QEPCTL_Pcrm_t QEPCTL_Pcrm)
{
  
  eqep->QEPCTL &= (uint16)~((uint16)((uint16)3U << 12U));
  eqep->QEPCTL |= (uint16)QEPCTL_Pcrm;
  
  return; 	
}  




 
 
 
 
void eqepSetPosnInitCount (eqepBASE_t *eqep, uint32 init_count)
{
  
  eqep->QPOSINIT = init_count;
  
  return;
}  




 
 
 
 
void eqepSetSelectSyncPin (eqepBASE_t *eqep, eQEP_Spsel_t eQEP_SPsel)
{
  
  eqep->QDECCTL &= (uint16)~((uint16)((uint16)1U << 12U));
  eqep->QDECCTL |= (uint16)eQEP_SPsel;
  
  return;
}  




 
 
 
 
void eqepSetSoftInit (eqepBASE_t *eqep, QEPCTL_Swi_t QEPCTL_Swi)
{

  eqep->QEPCTL &= (uint16)~((uint16)((uint16)1U << 7U));
  eqep->QEPCTL |= (uint16)QEPCTL_Swi;
  
  return;
}  




 
 
 
 
void eqepSetStrobeEventInit (eqepBASE_t *eqep, QEPCTL_Sei_t QEPCTL_Sei)
{
  
  eqep->QEPCTL &= (uint16)~((uint16)((uint16)3U << 10U));
  eqep->QEPCTL |= (uint16)QEPCTL_Sei;
  
  return;
}  




 
 
 
 
void eqepSetStrobeEventLatch (eqepBASE_t *eqep, QEPCTL_Sel_t QEPCTL_Sel)
{
  
  eqep->QEPCTL &= (uint16)~((uint16)((uint16)1U << 6U));
  eqep->QEPCTL |= QEPCTL_Sel;
  
  return;	
}  




 
 
 
 
void eqepSetStrobePolarity (eqepBASE_t *eqep, eQEP_Qsp_t eQEP_Qsp)
{
  
  eqep->QDECCTL &= (uint16)~((uint16)((uint16)1U << 5U));
  eqep->QDECCTL |= eQEP_Qsp;
  
  return;
}  




 
 
 
 
void eqepSetSwapQuadInputs (eqepBASE_t *eqep, eQEP_Swap_t eQEP_Swap)
{
  
  eqep->QDECCTL &= (uint16)~((uint16)((uint16)1U << 10U));
  eqep->QDECCTL |= (uint16)eQEP_Swap;
  
  return;
}  




 
 
 
 
void eqepSetSynchOutputComparePolarity (eqepBASE_t *eqep, QPOSCTL_Pcpol_t QPOSCTL_Pcpol)
{
  
  eqep->QPOSCTL &= (uint16)~((uint16)((uint16)1U << 13U));
  eqep->QPOSCTL |= (uint16)QPOSCTL_Pcpol;
  
  return;
}  




 
 
 
 
void eqepSetUnitPeriod (eqepBASE_t *eqep, uint32 unit_period)
{
  
  eqep->QUPRD = unit_period;
  
  return;	
}  




 
 
 
 
void eqepSetUnitPosnPrescale (eqepBASE_t *eqep, QCAPCTL_Upps_t QCAPCTL_Upps)
{
  
  eqep->QCAPCTL &= (uint16)~((uint16)((uint16)15U << 0U));
  eqep->QCAPCTL |= (uint16)QCAPCTL_Upps;
  
  return;
}  




 
 
 
 
void eqepSetWatchdogPeriod (eqepBASE_t *eqep, uint16 watchdog_period)
{
  
  eqep->QWDPRD = watchdog_period;
  
  return;	
}  




 
 
 
 
void eqepSetupStrobeEventLatch (eqepBASE_t *eqep, QEPCTL_Sel_t QEPCTL_Sel)
{
  
  eqep->QEPCTL &= (uint16)~((uint16)((uint16)1U << 6U));
  eqep->QEPCTL |= (uint16)QEPCTL_Sel;
  
  return;
}  




 
 
 
 
void eqepSetAPolarity (eqepBASE_t *eqep, eQEP_Qap_t eQEP_Qap)
{
  
  eqep->QDECCTL &= (uint16)~((uint16)((uint16)1U << 8U));
  eqep->QDECCTL |= (uint16)eQEP_Qap;
  
  return;
}  




 
 
 
 
void eqepSetBPolarity (eqepBASE_t *eqep, eQEP_Qbp_t eQEP_Qbp)
{
  
  eqep->QDECCTL &= (uint16)~((uint16)((uint16)1U << 7U));
  eqep->QDECCTL |= (uint16)eQEP_Qbp;
  
  return;
}  




 
 
 
 
void eqepSetQEPSource (eqepBASE_t *eqep, eQEP_Qsrc_t eQEP_Qsrc)
{
    
   
  eqep->QDECCTL &= (uint16)~((uint16)((uint16)3U << 14U));
  eqep->QDECCTL |= (uint16)eQEP_Qsrc;
  
  return;
}  




 
 
 
 
void eqepWritePosnCompare (eqepBASE_t *eqep, uint32 posn)
{
  
  eqep->QPOSCMP = posn;
  
  return;
}  















 
 
 
 
void eqep1GetConfigValue(eqep_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    {
        config_reg->CONFIG_QPOSINIT		= ((uint32)0x00000000U);
        config_reg->CONFIG_QPOSMAX		= ((uint32)0x00000000U);
        config_reg->CONFIG_QPOSCMP      = ((uint32)0x00000000U);
        config_reg->CONFIG_QUPRD      	= ((uint32)0x00000000U);
        config_reg->CONFIG_QWDPRD      	= ((uint16) 0x0000U);
        config_reg->CONFIG_QDECCTL      = ((uint16)((uint16)((uint16)0x01U << 14U) | (uint16)((uint16)0U << 13U) | (uint16)((uint16)0x00U << 12U) | (uint16)((uint16)0x01U << 11U) | (uint16)((uint16)0U << 10U) | (uint16)((uint16)0U << 9U) | (uint16)((uint16)0U << 8U) | (uint16)((uint16)0U << 7U) | (uint16)((uint16)0U << 6U) | (uint16)((uint16)0U << 5U) | (uint16)0x0000U));
        config_reg->CONFIG_QEPCTL      	= ((uint16)((uint16)((uint16)0x01U << 12U) | (uint16)((uint16)0U << 11U) | (uint16)((uint16)0x01U << 10U) | (uint16)((uint16)0U << 9U) | (uint16)((uint16)0x00U << 8U) | (uint16)((uint16)0U << 7U) | (uint16)((uint16)0x00U << 6U) | (uint16)((uint16)0x01U << 4U) | (uint16)((uint16)0x00U << 2U) | (uint16)0x0000U));
        config_reg->CONFIG_QCAPCTL      = ((uint16)((uint16)((uint16)0x03U << 4U) | (uint16)((uint16)0x09U) | (uint16)0x0000U));
        config_reg->CONFIG_QPOSCTL      = ((uint16)((uint16)((uint16)0U << 15U) | (uint16)((uint16)0x01U << 14U) | (uint16)((uint16)0x00U << 13U) | (uint16)((uint16)0x000U) | (uint16)0x0000U));
        config_reg->CONFIG_QEINT       	= ((uint16)((uint16)((uint16)0U << 11U) | (uint16)((uint16)0U << 10U) | (uint16)((uint16)0U << 9U) | (uint16)((uint16)0U << 8U) | (uint16)((uint16)0U << 7U) | (uint16)((uint16)0U << 6U) | (uint16)((uint16)0U << 5U) | (uint16)((uint16)0U << 4U) | (uint16)((uint16)0U << 3U) | (uint16)((uint16)0U << 2U) | (uint16)((uint16)0U << 1U)));
    }
    else
    {
     
        config_reg->CONFIG_QPOSINIT		= ((eqepBASE_t *)0xFCF79900U)->QPOSINIT;
        config_reg->CONFIG_QPOSMAX		= ((eqepBASE_t *)0xFCF79900U)->QPOSMAX;
        config_reg->CONFIG_QPOSCMP      = ((eqepBASE_t *)0xFCF79900U)->QPOSCMP;
        config_reg->CONFIG_QUPRD      	= ((eqepBASE_t *)0xFCF79900U)->QUPRD;
        config_reg->CONFIG_QWDPRD      	= ((eqepBASE_t *)0xFCF79900U)->QWDPRD;
        config_reg->CONFIG_QDECCTL      = ((eqepBASE_t *)0xFCF79900U)->QDECCTL;
        config_reg->CONFIG_QEPCTL      	= ((eqepBASE_t *)0xFCF79900U)->QEPCTL;
        config_reg->CONFIG_QCAPCTL      = ((eqepBASE_t *)0xFCF79900U)->QCAPCTL;
        config_reg->CONFIG_QPOSCTL      = ((eqepBASE_t *)0xFCF79900U)->QPOSCTL;
        config_reg->CONFIG_QEINT       	= ((eqepBASE_t *)0xFCF79900U)->QEINT;
    }
}















 
 
 
 
void eqep2GetConfigValue(eqep_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    {
        config_reg->CONFIG_QPOSINIT		= ((uint32)0x00000000U);
        config_reg->CONFIG_QPOSMAX		= ((uint32)0x00000000U);
        config_reg->CONFIG_QPOSCMP      = ((uint32)0U);
        config_reg->CONFIG_QUPRD      	= ((uint32) 0U);
        config_reg->CONFIG_QWDPRD      	= ((uint16) 0U);
        config_reg->CONFIG_QDECCTL      = ((uint16)((uint16)((uint16)0x01U << 14U) | (uint16)((uint16)0U << 13U) | (uint16)((uint16)0x00U << 12U) | (uint16)((uint16)0x01U << 11U) | (uint16)((uint16)0U << 10U) | (uint16)((uint16)0U << 9U) | (uint16)((uint16)0U << 8U) | (uint16)((uint16)0U << 7U) | (uint16)((uint16)0U << 6U) | (uint16)((uint16)0U << 5U) | (uint16)0x0000U));
        config_reg->CONFIG_QEPCTL      	= ((uint16)((uint16)((uint16)0x01U << 12U) | (uint16)((uint16)0U << 11U) | (uint16)((uint16)0x01U << 10U) | (uint16)((uint16)0U << 9U) | (uint16)((uint16)0x00U << 8U) | (uint16)((uint16)0U << 7U) | (uint16)((uint16)0x00U << 6U) | (uint16)((uint16)0x01U << 4U) | (uint16)((uint16)0x00U << 2U) | (uint16)0x0000U));
        config_reg->CONFIG_QCAPCTL      = ((uint16)((uint16)((uint16)0x03U << 4U) | ((uint16)0x09U) | (uint16)0x0000U));
        config_reg->CONFIG_QPOSCTL      = ((uint16)((uint16)((uint16)0U << 15U) | (uint16)((uint16)0x01U << 14U) | (uint16)((uint16)0x00U << 13U) | (uint16)((uint16)0U) | (uint16)0x0000U));
        config_reg->CONFIG_QEINT       	= ((uint16)((uint16)((uint16)0U << 11U) | (uint16)((uint16)0U << 10U) | (uint16)((uint16)0U << 9U) | (uint16)((uint16)0U << 8U) | (uint16)((uint16)0U << 7U) | (uint16)((uint16)0U << 6U) | (uint16)((uint16)0U << 5U) | (uint16)((uint16)0U << 4U) | (uint16)((uint16)0U << 3U) | (uint16)((uint16)0U << 2U) | (uint16)((uint16)0U << 1U)));
    }
    else
    {
     
        config_reg->CONFIG_QPOSINIT		= ((eqepBASE_t *)0xFCF79A00U)->QPOSINIT;
        config_reg->CONFIG_QPOSMAX		= ((eqepBASE_t *)0xFCF79A00U)->QPOSMAX;
        config_reg->CONFIG_QPOSCMP      = ((eqepBASE_t *)0xFCF79A00U)->QPOSCMP;
        config_reg->CONFIG_QUPRD      	= ((eqepBASE_t *)0xFCF79A00U)->QUPRD;
        config_reg->CONFIG_QWDPRD      	= ((eqepBASE_t *)0xFCF79A00U)->QWDPRD;
        config_reg->CONFIG_QDECCTL      = ((eqepBASE_t *)0xFCF79A00U)->QDECCTL;
        config_reg->CONFIG_QEPCTL      	= ((eqepBASE_t *)0xFCF79A00U)->QEPCTL;
        config_reg->CONFIG_QCAPCTL      = ((eqepBASE_t *)0xFCF79A00U)->QCAPCTL;
        config_reg->CONFIG_QPOSCTL      = ((eqepBASE_t *)0xFCF79A00U)->QPOSCTL;
        config_reg->CONFIG_QEINT       	= ((eqepBASE_t *)0xFCF79A00U)->QEINT;
    }
}



 

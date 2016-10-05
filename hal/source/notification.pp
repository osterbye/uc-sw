










 

































 


 











 

































 














 

































 












 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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

 
 
 











 

































 













 

































 




 
 

 




 




 
typedef volatile struct pbistBase
{
    uint32 RAMT;             
    uint32 DLR;              
    uint32   rsvd1[6U];      
    uint32 PACT;             
    uint32 PBISTID;          
    uint32 OVER;             
    uint32   rsvd2;          
    uint32 FSRF0;            
    uint32 rsvd5;            
    uint32 FSRC0;            
    uint32 FSRC1;            
    uint32 FSRA0;            
    uint32 FSRA1;            
    uint32 FSRDL0;           
    uint32   rsvd3;          
    uint32 FSRDL1;           
    uint32   rsvd4[3U];      
    uint32 ROM;              
    uint32 ALGO;             
    uint32 RINFOL;           
    uint32 RINFOU;           
} pbistBASE_t;


 
 












 

































 




 
 

 




 




 
typedef volatile struct stcBase
{
    uint32 STCGCR0;		 
    uint32 STCGCR1;		 
    uint32 STCTPR;		 
    uint32 STCCADDR;		 
    uint32 STCCICR;		 
    uint32 STCGSTAT;		 
	uint32 STCFSTAT;		 
    uint32 CPU1_CURMISR3;	 
    uint32 CPU1_CURMISR2;	 
    uint32 CPU1_CURMISR1;	 
    uint32 CPU1_CURMISR0;	 
    uint32 CPU2_CURMISR3;	 
    uint32 CPU2_CURMISR2;	 
    uint32 CPU2_CURMISR1;	 
    uint32 CPU2_CURMISR0;	 
    uint32 STCSCSCR;		 
} stcBASE_t;


 
 












 

































 




 
 

 




 




 
typedef volatile struct efcBase
{
    uint32 INSTRUCTION;              
    uint32 ADDRESS;                  
    uint32 DATA_UPPER;               
    uint32 DATA_LOWER;               
    uint32 SYSTEM_CONFIG;            
    uint32 SYSTEM_STATUS;            
    uint32 ACCUMULATOR;              
    uint32 BOUNDARY;                 
    uint32 KEY_FLAG;                 
    uint32 KEY;                      
    uint32   rsvd1;                  
    uint32 PINS;                     
    uint32 CRA;                      
    uint32 READ;                     
    uint32 PROGRAMME;                
    uint32 ERROR;                    
    uint32 SINGLE_BIT;               
    uint32 TWO_BIT_ERROR;            
    uint32 SELF_TEST_CYCLES;         
    uint32 SELF_TEST_SIGN;           
} efcBASE_t;

 
 











 

































 





 
 


 



 
void _coreInitRegisters_(void);



 
void _coreInitStackPointer_(void);



 
uint32 _getCPSRValue_(void);



 
void _gotoCPUIdle_(void);



 
void _coreEnableIrqVicOffset_(void);



 
void _coreEnableVfp_(void);







 
void _coreEnableEventBusExport_(void);






 
void _coreDisableEventBusExport_(void);




 
void _coreEnableRamEcc_(void);



 
void _coreDisableRamEcc_(void);




 
void _coreEnableFlashEcc_(void);



 
void _coreDisableFlashEcc_(void);



















 
uint32 _coreGetDataFault_(void);



 
void _coreClearDataFault_(void);
















 
uint32 _coreGetInstructionFault_(void);



 
void _coreClearInstructionFault_(void);




 
uint32 _coreGetDataFaultAddress_(void);



 
void _coreClearDataFaultAddress_(void);




 
uint32 _coreGetInstructionFaultAddress_(void);



 
void _coreClearInstructionFaultAddress_(void);
















 
uint32 _coreGetAuxiliaryDataFault_(void);



 
void _coreClearAuxiliaryDataFault_(void);
















 
uint32 _coreGetAuxiliaryInstructionFault_(void);



 
void _coreClearAuxiliaryInstructionFault_(void);





 
void _disable_interrupt_(void);





 
void _disable_IRQ_interrupt_(void);





 
void _disable_FIQ_interrupt_(void);






 
void _enable_interrupt_(void);






 
void _esmCcmErrorsClear_(void);






 
void _errata_CORTEXR4_66_(void);






 
void _errata_CORTEXR4_57_(void);












 

































 













 

































 














 

































 






 
 

 




 




 
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






 





 





 

 
 




 




 




 
typedef volatile struct systemBase1
{
    uint32 SYSPC1;                  
    uint32 SYSPC2;                  
    uint32 SYSPC3;                  
    uint32 SYSPC4;                  
    uint32 SYSPC5;                  
    uint32 SYSPC6;                  
    uint32 SYSPC7;                  
    uint32 SYSPC8;                  
    uint32 SYSPC9;                  
    uint32 SSWPLL1;                 
    uint32 SSWPLL2;                 
    uint32 SSWPLL3;                 
    uint32 CSDIS;                   
    uint32 CSDISSET;                
    uint32 CSDISCLR;                
    uint32 CDDIS;                   
    uint32 CDDISSET;                
    uint32 CDDISCLR;                
    uint32 GHVSRC;                  
    uint32 VCLKASRC;                
    uint32 RCLKSRC;                 
    uint32 CSVSTAT;                 
    uint32 MSTGCR;                  
    uint32 MINITGCR;                
    uint32 MSINENA;                 
    uint32 MSTFAIL;                 
    uint32 MSTCGSTAT;               
    uint32 MINISTAT;                
    uint32 PLLCTL1;                 
    uint32 PLLCTL2;                 
    uint32 SYSPC10;                 
    uint32 DIEIDL;                  
    uint32 DIEIDH;                  
    uint32 VRCTL;                   
    uint32 LPOMONCTL;               
    uint32 CLKTEST;                 
    uint32 DFTCTRLREG1;             
    uint32 DFTCTRLREG2;             
    uint32   rsvd1;                 
    uint32   rsvd2;                 
    uint32 GPREG1;                  
    uint32 BTRMSEL;                 
    uint32 IMPFASTS;                
    uint32 IMPFTADD;                
    uint32 SSISR1;                  
    uint32 SSISR2;                  
    uint32 SSISR3;                  
    uint32 SSISR4;                  
    uint32 RAMGCR;                  
    uint32 BMMCR1;                  
    uint32 BMMCR2;                  
    uint32 CPURSTCR;                
	uint32 CLKCNTL;                 
    uint32 ECPCNTL;                 
    uint32 DSPGCR;                  
    uint32 DEVCR1;                  
    uint32 SYSECR;                  
    uint32 SYSESR;                  
    uint32 SYSTASR;                 
    uint32 GBLSTAT;                 
    uint32 DEV;                     
    uint32 SSIVEC;                  
    uint32 SSIF;                    
} systemBASE1_t;






 






 

 
 

 




 




 
typedef volatile struct systemBase2
{
    uint32 PLLCTL3;         
    uint32   rsvd1;         
    uint32 STCCLKDIV;       
    uint32   rsvd2[6U];      
    uint32 ECPCNTRL0;       
    uint32   rsvd3[5U];      
    uint32 CLK2CNTL;        	
    uint32 VCLKACON1;       
    uint32  rsvd4[11U];      
    uint32  CLKSLIP;        
    uint32  rsvd5[30U];   	  
    uint32  EFC_CTLEN;      
    uint32  DIEIDL_REG0;    
    uint32  DIEIDH_REG1;    
    uint32  DIEIDL_REG2;    
    uint32  DIEIDH_REG3;    
} systemBASE2_t;





 












 

































 



 
 


 
 

 




 




 
typedef volatile struct flashWBase
{
    uint32 FRDCNTL;        
    uint32   rsvd1;        
    uint32 FEDACCTRL1;     
    uint32 FEDACCTRL2;     
    uint32 FCORERRCNT;     
    uint32 FCORERRADD;     
    uint32 FCORERRPOS;     
    uint32 FEDACSTATUS;    
    uint32 FUNCERRADD;     
    uint32 FEDACSDIS;      
    uint32 FPRIMADDTAG;    
    uint32 FREDUADDTAG;    
    uint32 FBPROT;         
    uint32 FBSE;           
    uint32 FBBUSY;         
    uint32 FBAC;           
    uint32 FBFALLBACK;     
    uint32 FBPRDY;         
    uint32 FPAC1;          
    uint32 FPAC2;          
    uint32 FMAC;           
    uint32 FMSTAT;         
    uint32 FEMUDMSW;       
    uint32 FEMUDLSW;       
    uint32 FEMUECC;        
    uint32 FLOCK;          
    uint32 FEMUADDR;       
    uint32 FDIAGCTRL;      
    uint32 FRAWDATAH;      
    uint32 FRAWDATAL;      
    uint32 FRAWECC;        
    uint32 FPAROVR;        
    uint32   rsvd2[16U];   
    uint32 FEDACSDIS2;     
    uint32   rsvd3[15U];   
    uint32   rsvd4[13U];   
    uint32   rsvd5[85U];   
    uint32 FSMWRENA;       
    uint32   rsvd6[6U];    
    uint32 FSMSECTOR;      
    uint32   rsvd7[4U];    
    uint32 EEPROMCONFIG;   
    uint32   rsvd8[19U];   
    uint32 EECTRL1;        
    uint32 EECTRL2;        
    uint32 EECORRERRCNT;   
    uint32 EECORRERRADD;   
    uint32 EECORRERRPOS;   
    uint32 EESTATUS;       
    uint32 EEUNCERRADD;    
} flashWBASE_t;





 

 
 











 

































 



 
 


 
 

 




 




 

typedef volatile struct tcramBase
{
    uint32 RAMCTRL;		     
    uint32 RAMTHRESHOLD;       
    uint32 RAMOCCUR;			 
    uint32 RAMINTCTRL;		 
    uint32 RAMERRSTATUS;		 
    uint32 RAMSERRADDR;		 
    uint32   rsvd1;			 
    uint32 RAMUERRADDR;		 
    uint32   rsvd2[4U];		 
    uint32 RAMTEST;			 
    uint32   rsvd3;			 
    uint32 RAMADDRDECVECT;	 
    uint32 RAMPERADDR;         
} tcramBASE_t;


 
 



 
 


 













 
enum systemClockSource
{
    SYS_OSC             = 0U,   
    SYS_PLL1            = 1U,   
    SYS_EXTERNAL1       = 3U,   
    SYS_LPO_LOW         = 4U,   
    SYS_LPO_HIGH        = 5U,   
    SYS_PLL2            = 6U,   
    SYS_EXTERNAL2       = 7U,   
    SYS_VCLK            = 9U    
};








 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 














 
 













 
 

 
typedef struct system_config_reg
{
    uint32 CONFIG_SYSPC1;
    uint32 CONFIG_SYSPC2;
    uint32 CONFIG_SYSPC7;
    uint32 CONFIG_SYSPC8;
    uint32 CONFIG_SYSPC9;
    uint32 CONFIG_CSDIS;
    uint32 CONFIG_CDDIS;
    uint32 CONFIG_GHVSRC;
    uint32 CONFIG_VCLKASRC;
    uint32 CONFIG_RCLKSRC;
    uint32 CONFIG_MSTGCR;
    uint32 CONFIG_MINITGCR;
    uint32 CONFIG_MSINENA;
    uint32 CONFIG_PLLCTL1;
    uint32 CONFIG_PLLCTL2;
    uint32 CONFIG_UERFLAG;
    uint32 CONFIG_LPOMONCTL;
    uint32 CONFIG_CLKTEST;
    uint32 CONFIG_DFTCTRLREG1;
    uint32 CONFIG_DFTCTRLREG2;
    uint32 CONFIG_GPREG1;
    uint32 CONFIG_RAMGCR;
    uint32 CONFIG_BMMCR1;
    uint32 CONFIG_MMUGCR;
    uint32 CONFIG_CLKCNTL;
    uint32 CONFIG_ECPCNTL;
    uint32 CONFIG_DEVCR1;
    uint32 CONFIG_SYSECR;
    uint32 CONFIG_PLLCTL3;
    uint32 CONFIG_STCCLKDIV;
    uint32 CONFIG_CLK2CNTL;
    uint32 CONFIG_VCLKACON1;
    uint32 CONFIG_CLKSLIP;
    uint32 CONFIG_EFC_CTLEN;
} system_config_reg_t;

 





                      
                      
                                
                                    
                                    



                                    
                                    
                                    





                                    
                                    
                                    

                                    
                                    
                                    
                                    
    
void systemGetConfigValue(system_config_reg_t *config_reg, config_value_type_t type);

 
 

 









 
enum flashWPowerModes
{
    SYS_SLEEP   = 0U,  
    SYS_STANDBY = 1U,  
    SYS_ACTIVE  = 3U   
};

 
 



 
typedef struct tcmflash_config_reg
{
    uint32 CONFIG_FRDCNTL;
    uint32 CONFIG_FEDACCTRL1;
    uint32 CONFIG_FEDACCTRL2;
    uint32 CONFIG_FEDACSDIS;
    uint32 CONFIG_FBPROT;
    uint32 CONFIG_FBSE;
    uint32 CONFIG_FBAC;
    uint32 CONFIG_FBFALLBACK;
    uint32 CONFIG_FPAC1;
    uint32 CONFIG_FPAC2;
    uint32 CONFIG_FMAC;
    uint32 CONFIG_FLOCK;
    uint32 CONFIG_FDIAGCTRL;
    uint32 CONFIG_FEDACSDIS2;
} tcmflash_config_reg_t;

 
                          

void tcmflashGetConfigValue(tcmflash_config_reg_t *config_reg, config_value_type_t type);

 
 


 
void setupPLL(void);
void trimLPO(void);
void setupFlash(void);
void periphInit(void);
void mapClocks(void);
void systemInit(void);
void systemPowerDown(uint32 mode);





 
typedef struct sram_config_reg
{
    uint32 CONFIG_RAMCTRL[2U];
    uint32 CONFIG_RAMTHRESHOLD[2U];
    uint32 CONFIG_RAMINTCTRL[2U];
    uint32 CONFIG_RAMTEST[2U];
    uint32 CONFIG_RAMADDRDECVECT[2U];
} sram_config_reg_t;

 

void sramGetConfigValue(sram_config_reg_t *config_reg, config_value_type_t type);










 

































 













 

































 




 
 

 




 




 
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
 











 

































 














 

































 






 
 

 




 




 
typedef volatile struct adcBase
{
    uint32 RSTCR;               
    uint32 OPMODECR;            
    uint32 CLOCKCR;             
    uint32 CALCR;               
    uint32 GxMODECR[3U];        
    uint32 EVSRC;               
    uint32 G1SRC;               
    uint32 G2SRC;               
    uint32 GxINTENA[3U];        
    uint32 GxINTFLG[3U];        
    uint32 GxINTCR[3U];         
    uint32 EVDMACR;             
    uint32 G1DMACR;             
    uint32 G2DMACR;             
    uint32 BNDCR;               
    uint32 BNDEND;              
    uint32 EVSAMP;              
    uint32 G1SAMP;              
    uint32 G2SAMP;              
    uint32 EVSR;                
    uint32 G1SR;                
    uint32 G2SR;                
    uint32 GxSEL[3U];           
    uint32 CALR;                
    uint32 SMSTATE;             
    uint32 LASTCONV;            
    struct
    {
        uint32 BUF0;            
        uint32 BUF1;            
        uint32 BUF2;            
        uint32 BUF3;            
        uint32 BUF4;            
        uint32 BUF5;            
        uint32 BUF6;            
        uint32 BUF7;            
    } GxBUF[3U];                                                                               
    uint32 EVEMUBUFFER;         
    uint32 G1EMUBUFFER;         
    uint32 G2EMUBUFFER;         
    uint32 EVTDIR;              
    uint32 EVTOUT;              
    uint32 EVTIN;               
    uint32 EVTSET;              
    uint32 EVTCLR;              
    uint32 EVTPDR;              
    uint32 EVTDIS;              
    uint32 EVTPSEL;             
    uint32 EVSAMPDISEN;         
    uint32 G1SAMPDISEN;         
    uint32 G2SAMPDISEN;         
    uint32 MAGINTCR1;           
    uint32 MAGINT1MASK;         
    uint32 MAGINTCR2;           
    uint32 MAGINT2MASK;         
    uint32 MAGINTCR3;           
    uint32 MAGINT3MASK;         
    uint32   rsvd1;             
    uint32   rsvd2;             
    uint32   rsvd3;             
    uint32   rsvd4;             
    uint32   rsvd5;             
    uint32   rsvd6;             
    uint32 MAGTHRINTENASET;     
    uint32 MAGTHRINTENACLR;     
    uint32 MAGTHRINTFLG;        
    uint32 MAGTHRINTOFFSET;     
    uint32 GxFIFORESETCR[3U];   
    uint32 EVRAMADDR;           
    uint32 G1RAMADDR;           
    uint32 G2RAMADDR;           
    uint32 PARCR;               
    uint32 PARADDR;             
    uint32 PWRUPDLYCTRL;        
    uint32   rsvd7;             
	uint32 ADEVCHNSELMODECTRL;  
    uint32 ADG1CHNSELMODECTRL;  
    uint32 ADG2CHNSELMODECTRL;  
    uint32 ADEVCURRCOUNT;       
    uint32 ADEVMAXCOUNT;        
    uint32 ADG1CURRCOUNT;       
    uint32 ADG1MAXCOUNT;        
    uint32 ADG2CURRCOUNT;       
    uint32 ADG2MAXCOUNT;        
} adcBASE_t;






 




 
typedef struct adcLUTEntry
{
    uint16 rsvd;
    uint8 EV_EXT_CHN_MUX_SEL;
    uint8 EV_INT_CHN_MUX_SEL;
}adcLUTEntry_t;






 




 
typedef volatile struct adcLUT
{
    adcLUTEntry_t eventGroup[32];
    adcLUTEntry_t Group1[32];
    adcLUTEntry_t Group2[32];
} adcLUT_t;






 





 





 





 





 





 





 





 

 
 




 
 

 





 





 





 



 







 
enum adcResolution
{
    ADC_12_BIT = 0x00000000U,  
    ADC_10_BIT = 0x00000100U,  
    ADC_8_BIT  = 0x00000200U   
};







 

enum adcFiFoStatus
{
    ADC_FIFO_IS_NOT_FULL = 0U,  
    ADC_FIFO_IS_FULL     = 1U,  
    ADC_FIFO_OVERFLOW    = 3U   
};






 

enum adcConversionStatus
{
    ADC_CONVERSION_IS_NOT_FINISHED = 0U,  
    ADC_CONVERSION_IS_FINISHED     = 8U   
};




 

enum adc1HwTriggerSource
{
	ADC1_EVENT = 0U,        
	ADC1_HET1_8 = 1U,       
	ADC1_HET1_10 = 2U,      
	ADC1_RTI_COMP0 = 3U,    
	ADC1_HET1_12 = 4U,      
	ADC1_HET1_14 = 5U,      
	ADC1_GIOB0 = 6U,        
	ADC1_GIOB1 = 7U,        

	ADC1_HET2_5 = 1U,       
	ADC1_HET1_27 = 2U,      
	ADC1_HET1_17 = 4U,      
	ADC1_HET1_19 = 5U,      
	ADC1_HET1_11 = 6U,      
	ADC1_HET2_13 = 7U,      

	ADC1_EPWM_B = 1U,       
	ADC1_EPWM_A1 = 3U,      	
	ADC1_HET2_1 = 5U,       
	ADC1_EPWM_A2 = 6U,      
	ADC1_EPWM_AB = 7U       	

};




 

enum adc2HwTriggerSource
{
	ADC2_EVENT = 0U,        
	ADC2_HET1_8 = 1U,       
	ADC2_HET1_10 = 2U,      
	ADC2_RTI_COMP0 = 3U,    
	ADC2_HET1_12 = 4U,      
	ADC2_HET1_14 = 5U,      
	ADC2_GIOB0 = 6U,        
	ADC2_GIOB1 = 7U,        
	ADC2_HET2_5 = 1U,       
	ADC2_HET1_27 = 2U,      
	ADC2_HET1_17 = 4U,      
	ADC2_HET1_19 = 5U,      
	ADC2_HET1_11 = 6U,      
	ADC2_HET2_13 = 7U,      
	
	ADC2_EPWM_B = 1U,       
	ADC2_EPWM_A1 = 3U,      	
	ADC2_HET2_1 = 5U,       
	ADC2_EPWM_A2 = 6U,      
	ADC2_EPWM_AB = 7U       	

};

 
 





 


 
typedef struct adcData
{
    uint32            id;      
    uint16 value;   
} adcData_t;


 
 

typedef struct adc_config_reg
{           
    uint32 CONFIG_OPMODECR;
    uint32 CONFIG_CLOCKCR;
    uint32 CONFIG_GxMODECR[3U];
    uint32 CONFIG_G0SRC;
    uint32 CONFIG_G1SRC;
    uint32 CONFIG_G2SRC;
    uint32 CONFIG_BNDCR;
    uint32 CONFIG_BNDEND;
    uint32 CONFIG_G0SAMP;
    uint32 CONFIG_G1SAMP;
    uint32 CONFIG_G2SAMP;
    uint32 CONFIG_G0SAMPDISEN;
    uint32 CONFIG_G1SAMPDISEN;
    uint32 CONFIG_G2SAMPDISEN;
    uint32 CONFIG_PARCR;
}adc_config_reg_t;



























 
 
 

void adcInit(void);
void adcStartConversion(adcBASE_t *adc, uint32 group);
void adcStopConversion(adcBASE_t *adc, uint32 group);
void adcResetFiFo(adcBASE_t *adc, uint32 group);
uint32  adcGetData(adcBASE_t *adc, uint32 group, adcData_t *data);
uint32  adcIsFifoFull(adcBASE_t *adc, uint32 group);
uint32  adcIsConversionComplete(adcBASE_t *adc, uint32 group);
void adcEnableNotification(adcBASE_t *adc, uint32 group);
void adcDisableNotification(adcBASE_t *adc, uint32 group);
void adcCalibration(adcBASE_t *adc);
uint32 adcMidPointCalibration(adcBASE_t *adc);
void adcSetEVTPin(adcBASE_t *adc, uint32 value);
uint32 adcGetEVTPin(adcBASE_t *adc);

void adc1GetConfigValue(adc_config_reg_t *config_reg, config_value_type_t type);
void adc2GetConfigValue(adc_config_reg_t *config_reg, config_value_type_t type);












 
void adcNotification(adcBASE_t *adc, uint32 group);

 
 

 











 

































 














 

































 






 
 

 




 




 
typedef volatile struct canBase
{
    uint32      CTL;           
    uint32      ES;            
    uint32      EERC;          
    uint32      BTR;           
    uint32      INT;           
    uint32      TEST;          
    uint32      rsvd1;         
    uint32      PERR;          
    uint32      rsvd2[24];     
    uint32      ABOTR;         
    uint32      TXRQX;         
    uint32      TXRQx[4U];     
    uint32      NWDATX;        
    uint32      NWDATx[4U];    
    uint32      INTPNDX;       
    uint32      INTPNDx[4U];   
    uint32      MSGVALX;       
    uint32      MSGVALx[4U];   
    uint32        rsvd3;       
    uint32      INTMUXx[4U];   
    uint32        rsvd4[6];    
    uint8   rsvd9;             
    uint8 IF1CMD;              
    uint8 IF1STAT;             
    uint8 IF1NO;               
    uint32      IF1MSK;        
    uint32      IF1ARB;        
    uint32      IF1MCTL;       
    uint8 IF1DATx[8U];         
    uint32        rsvd5[2];    
    uint8   rsvd10;             
    uint8 IF2CMD;              
    uint8 IF2STAT;             
    uint8 IF2NO;               
    uint32      IF2MSK;        
    uint32      IF2ARB;        
    uint32      IF2MCTL;       
    uint8 IF2DATx[8U];         
    uint32        rsvd6[2];    
    uint32      IF3OBS;        
    uint32      IF3MSK;        
    uint32      IF3ARB;        
    uint32      IF3MCTL;       
    uint8 IF3DATx[8U];         
    uint32        rsvd7[2];    
    uint32      IF3UEy[4U];    
    uint32        rsvd8[28];   
    uint32      TIOC;          
    uint32      RIOC;          
} canBASE_t;






 





 





 





 





 





 






 






 






 

 
 




 
 

 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 




 




 
typedef enum canloopBackType 
{
    Internal_Lbk = 0x00000010U, 
    External_Lbk = 0x00000100U,
	Internal_Silent_Lbk = 0x00000018U
}canloopBackType_t;

 
 

 
typedef struct can_config_reg
{
    uint32 CONFIG_CTL;
    uint32 CONFIG_ES;
    uint32 CONFIG_BTR;
    uint32 CONFIG_TEST;
    uint32 CONFIG_ABOTR;
    uint32 CONFIG_INTMUX0;
    uint32 CONFIG_INTMUX1;
    uint32 CONFIG_INTMUX2;
    uint32 CONFIG_INTMUX3;   
    uint32 CONFIG_TIOC;
    uint32 CONFIG_RIOC;
} can_config_reg_t;


 




 



 


								 














 
 
 

void   canInit(void);
uint32 canTransmit(canBASE_t *node, uint32 messageBox, const uint8 * data);
uint32 canGetData(canBASE_t *node, uint32 messageBox, uint8 * const data);
uint32 canSendRemoteFrame(canBASE_t *node, uint32 messageBox);
uint32 canFillMessageObjectData(canBASE_t *node, uint32 messageBox, const uint8 * data);
uint32 canIsTxMessagePending(canBASE_t *node, uint32 messageBox);
uint32 canIsRxMessageArrived(canBASE_t *node, uint32 messageBox);
uint32 canIsMessageBoxValid(canBASE_t *node, uint32 messageBox);
uint32 canGetLastError(canBASE_t *node);
uint32 canGetErrorLevel(canBASE_t *node);
void   canEnableErrorNotification(canBASE_t *node);
void   canDisableErrorNotification(canBASE_t *node);
void   canEnableStatusChangeNotification(canBASE_t *node);
void   canDisableStatusChangeNotification(canBASE_t *node);
void   canEnableloopback(canBASE_t *node, canloopBackType_t Loopbacktype);
void   canDisableloopback(canBASE_t *node);
void   canIoSetDirection(canBASE_t *node,uint32 TxDir,uint32 RxDir);
void   canIoSetPort(canBASE_t *node, uint32 TxValue, uint32 RxValue);
uint32 canIoTxGetBit(canBASE_t *node);
uint32 canIoRxGetBit(canBASE_t *node);
uint32 canGetID(canBASE_t *node, uint32 messageBox);
void canUpdateID(canBASE_t *node, uint32 messageBox, uint32 msgBoxArbitVal);
void can1GetConfigValue(can_config_reg_t *config_reg, config_value_type_t type);
void can2GetConfigValue(can_config_reg_t *config_reg, config_value_type_t type);
void can3GetConfigValue(can_config_reg_t *config_reg, config_value_type_t type);














 
void canErrorNotification(canBASE_t *node, uint32 notification);














 
void canStatusChangeNotification(canBASE_t *node, uint32 notification);













 
void canMessageNotification(canBASE_t *node, uint32 messageBox);

 
 

 






 

































 















 

































 






 
 

 




 




 
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

 
 

 






 

































 















 

































 




 
 

 




 




 

typedef volatile struct hetBase
{
    uint32 GCR;      
    uint32 PFR;      
    uint32 ADDR;     
    uint32 OFF1;     
    uint32 OFF2;     
    uint32 INTENAS;  
    uint32 INTENAC;  
    uint32 EXC1;     
    uint32 EXC2;     
    uint32 PRY;      
    uint32 FLG;      
    uint32 AND;      
    uint32   rsvd1;  
    uint32 HRSH;     
    uint32 XOR;      
    uint32 REQENS;   
    uint32 REQENC;   
    uint32 REQDS;    
    uint32   rsvd2;  
    uint32 DIR;      
    uint32 DIN;      
    uint32 DOUT;     
    uint32 DSET;     
    uint32 DCLR;     
    uint32 PDR;      
    uint32 PULDIS;   
    uint32 PSL;      
    uint32   rsvd3;  
    uint32   rsvd4;  
    uint32 PCR;    
    uint32 PAR;      
    uint32 PPR;      
    uint32 SFPRLD;   
    uint32 SFENA;    
    uint32   rsvd5;  
    uint32 LBPSEL;   
    uint32 LBPDIR;   
    uint32 PINDIS;   
} hetBASE_t;






 




 
typedef volatile struct hetInstructionBase
{
    uint32 Program;
    uint32 Control;
    uint32 Data;
    uint32   rsvd1;
} hetINSTRUCTION_t;






 




 
typedef volatile struct het1RamBase
{
    hetINSTRUCTION_t Instruction[160U];
} hetRAMBASE_t;






 







 





 






 






 





 


 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



#pragma diag_push
#pragma CHECK_MISRA("-6.3")  
#pragma CHECK_MISRA("-19.1")  
#pragma CHECK_MISRA("-20.1")  
#pragma CHECK_MISRA("-20.2")  

 

typedef unsigned size_t;

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


#pragma diag_push
#pragma CHECK_MISRA("-19.4")  

 


 
 
 

#pragma diag_pop


#pragma diag_push
#pragma CHECK_MISRA("-19.4")  


#pragma diag_pop

 size_t  strlen(const char *string);

 char *strcpy(char *dest, const char *src);
 char *strncpy(char *dest, const char *src, size_t n);
 char *strcat(char *string1, const char *string2);
 char *strncat(char *dest, const char *src, size_t n);
 char *strchr(const char *string, int c);
 char *strrchr(const char *string, int c);

 int  strcmp(const char *string1, const char *string2);
 int  strncmp(const char *string1, const char *string2, size_t n);

 int     strcoll(const char *string1, const char *_string2);
 size_t  strxfrm(char *to, const char *from, size_t n);
 char   *strpbrk(const char *string, const char *chs);
 size_t  strspn(const char *string, const char *chs);
 size_t  strcspn(const char *string, const char *chs);
 char   *strstr(const char *string1, const char *string2);
 char   *strtok(char *str1, const char *str2);
 char   *strerror(int _errno);
 char   *strdup(const char *string);


 void   *memmove(void *s1, const void *s2, size_t n);
#pragma diag_push
#pragma CHECK_MISRA("-16.4")  
 void   *memcpy(void *s1, const void *s2, size_t n);
#pragma diag_pop

 int     memcmp(const void *cs, const void *ct, size_t n);
 void   *memchr(const void *cs, int c, size_t n);

 void   *memset(void *mem, int ch, size_t length);




#pragma diag_pop


#pragma diag_push


 
 
#pragma CHECK_MISRA("-19.15")


#pragma diag_pop


 
 





 





 





 





 





 





 





 





 






 





 





 





 





 





 





 





 






 





 





 





 





 





 





 





 





 





 





 

 
 





 




 

enum hetPinSelect
{
    PIN_HET_0 = 0U,
    PIN_HET_1 = 1U,
    PIN_HET_2 = 2U,
    PIN_HET_3 = 3U,
    PIN_HET_4 = 4U,
    PIN_HET_5 = 5U,
    PIN_HET_6 = 6U,
    PIN_HET_7 = 7U,
    PIN_HET_8 = 8U,
    PIN_HET_9 = 9U,
    PIN_HET_10 = 10U,
    PIN_HET_11 = 11U,
    PIN_HET_12 = 12U,
    PIN_HET_13 = 13U,
    PIN_HET_14 = 14U,
    PIN_HET_15 = 15U,
    PIN_HET_16 = 16U,
    PIN_HET_17 = 17U,
    PIN_HET_18 = 18U,
    PIN_HET_19 = 19U,
    PIN_HET_20 = 20U,
    PIN_HET_21 = 21U,
    PIN_HET_22 = 22U,
    PIN_HET_23 = 23U,
    PIN_HET_24 = 24U,
    PIN_HET_25 = 25U,
    PIN_HET_26 = 26U,
    PIN_HET_27 = 27U,
    PIN_HET_28 = 28U,
    PIN_HET_29 = 29U,
    PIN_HET_30 = 30U,
    PIN_HET_31 = 31U
};






 




 
typedef struct hetSignal
{
	uint32 duty;    
	float64   period;  
} hetSIGNAL_t;


 
typedef struct het_config_reg
{
    uint32 CONFIG_GCR;
    uint32 CONFIG_PFR;
    uint32 CONFIG_INTENAS;
    uint32 CONFIG_INTENAC;
    uint32 CONFIG_PRY;
    uint32 CONFIG_AND;
    uint32 CONFIG_HRSH;
    uint32 CONFIG_XOR;
    uint32 CONFIG_DIR;
    uint32 CONFIG_PDR;	
	uint32 CONFIG_PULDIS;
	uint32 CONFIG_PSL;	
	uint32 CONFIG_PCR;	
} het_config_reg_t;

 

								
								
								

								
								


								
								



 

								
								
								

								
								


								
								




















 
 
 
void hetInit(void);

 
void   pwmStart(hetRAMBASE_t * hetRAM,uint32 pwm);
void   pwmStop(hetRAMBASE_t * hetRAM,uint32 pwm);
void   pwmSetDuty(hetRAMBASE_t * hetRAM,uint32 pwm, uint32 pwmDuty);
void   pwmSetSignal(hetRAMBASE_t * hetRAM,uint32 pwm, hetSIGNAL_t signal);
void   pwmGetSignal(hetRAMBASE_t * hetRAM,uint32 pwm, hetSIGNAL_t *signal);
void   pwmEnableNotification(hetBASE_t * hetREG,uint32 pwm, uint32 notification);
void   pwmDisableNotification(hetBASE_t * hetREG,uint32 pwm, uint32 notification);
void   pwmNotification(hetBASE_t * hetREG,uint32 pwm, uint32 notification);

 
void   edgeResetCounter(hetRAMBASE_t * hetRAM,uint32 edge);
uint32 edgeGetCounter(hetRAMBASE_t * hetRAM,uint32 edge);
void   edgeEnableNotification(hetBASE_t * hetREG,uint32 edge);
void   edgeDisableNotification(hetBASE_t * hetREG,uint32 edge);
void   edgeNotification(hetBASE_t * hetREG,uint32 edge);

 
void capGetSignal(hetRAMBASE_t * hetRAM, uint32 cap, hetSIGNAL_t *signal);

 
void   hetResetTimestamp(hetRAMBASE_t * hetRAM);
uint32 hetGetTimestamp(hetRAMBASE_t * hetRAM);
void het1GetConfigValue(het_config_reg_t *config_reg, config_value_type_t type);
void het2GetConfigValue(het_config_reg_t *config_reg, config_value_type_t type);













 
void hetNotification(hetBASE_t *het, uint32 offset);

 
 

 






 

































 















 

































 






 
 

 




 




 
typedef volatile struct htuBase
{
    uint32 GC;				  
    uint32 CPENA;			  
    uint32 BUSY0;			  
    uint32 BUSY1;			  
    uint32 BUSY2;			  
    uint32 BUSY3;			  
	uint32 ACPE;			  
    uint32 rsvd1;    		  
    uint32 RLBECTRL;		  
    uint32 BFINTS;			  
    uint32 BFINTC;			  
    uint32 INTMAP;			  
    uint32 rsvd2;  			  
    uint32 INTOFF0;			  
    uint32 INTOFF1;			  
    uint32 BIM;				  
    uint32 RLOSTFL;			  
    uint32 BFINTFL;			  
    uint32 BERINTFL;		  
    uint32 MP1S;			  
    uint32 MP1E;			  
    uint32 DCTRL;			  
    uint32 WPR;				  
    uint32 WMR;				  
    uint32 ID;				  
    uint32 PCR;				  
    uint32 PAR;				  
    uint32 rsvd3; 			  
    uint32 MPCS;			  
    uint32 MP0S;			  
    uint32 MP0E;			  
} htuBASE_t;                        

typedef volatile struct
{
     struct                                      
     {
        uint32 IFADDRA;			 
        uint32 IFADDRB;			
        uint32 IHADDRCT;		
        uint32 ITCOUNT; 
     }DCP[8U];

     struct                                      
     {
       uint32 res[32U];
     } RESERVED;

     struct                                      
     {
        uint32 CFADDRA;			
        uint32 CFADDRB;			
        uint32 CFCOUNT;			
        uint32 rsvd4; 	
     }CDCP[8U];

} htuRAMBASE_t;




 
 




 
 

 



 
 



 
 




















 
enum pbistPort
{
    PBIST_PORT0 = 0U,  
    PBIST_PORT1 = 1U   
};




 
enum pbistAlgo
{
    PBIST_TripleReadSlow     = 0x00000001U,   
    PBIST_TripleReadFast     = 0x00000002U,   
    PBIST_March13N_DP        = 0x00000004U,   
	PBIST_March13N_SP        = 0x00000008U,   
    PBIST_DOWN1a_DP          = 0x00000010U,   
	PBIST_DOWN1a_SP          = 0x00000020U,   
    PBIST_MapColumn_DP       = 0x00000040U,   
	PBIST_MapColumn_SP       = 0x00000080U,   
    PBIST_Precharge_DP       = 0x00000100U,   
	PBIST_Precharge_SP       = 0x00000200U,   
    PBIST_DTXN2a_DP          = 0x00000400U,   
	PBIST_DTXN2a_SP          = 0x00000800U,   
	PBIST_PMOSOpen_DP        = 0x00001000U,   
    PBIST_PMOSOpen_SP        = 0x00002000U,   
	PBIST_PPMOSOpenSlice1_DP = 0x00004000U,   
	PBIST_PPMOSOpenSlice2_DP = 0x00008000U,   
	PBIST_Flip10_DP          = 0x00010000U,   
	PBIST_Flip10_SP          = 0x00020000U,   
	PBIST_IDDQ_DP            = 0x00040000U,   
	PBIST_IDDQ_SP            = 0x00080000U,   
	PBIST_Retention_DP       = 0x00100000U,   
	PBIST_Retention_SP       = 0x00200000U,   
	PBIST_IDDQ2_DP           = 0x00400000U,   
	PBIST_IDDQ2_SP           = 0x00800000U,   
	PBIST_Retention2_DP      = 0x01000000U,   
	PBIST_Retention2_SP      = 0x02000000U,   
	PBIST_IDDQRowStripe_DP   = 0x04000000U,   
	PBIST_IDDQRowStripe_SP   = 0x08000000U,   
	PBIST_IDDQRowStripe2_DP  = 0x10000000U,   
	PBIST_IDDQRowStripe2_SP  = 0x20000000U    
};
 
typedef struct pbist_config_reg
{
    uint32 CONFIG_RAMT;
    uint32 CONFIG_DLR;
    uint32 CONFIG_PACT;
    uint32 CONFIG_PBISTID;
    uint32 CONFIG_OVER;
    uint32 CONFIG_FSRDL1;
    uint32 CONFIG_ROM;
    uint32 CONFIG_ALGO;
    uint32 CONFIG_RINFOL;
    uint32 CONFIG_RINFOU;
} pbist_config_reg_t;

 

 


 
 









 
void memoryPort0TestFailNotification(uint32 groupSelect, uint32 dataSelect, uint32 address, uint32 data);









 
void memoryPort1TestFailNotification(uint32 groupSelect, uint32 dataSelect, uint32 address, uint32 data);

void pbistGetConfigValue(pbist_config_reg_t *config_reg, config_value_type_t type);


 

 



 
typedef struct stc_config_reg
{
	uint32 CONFIG_STCGCR0;
    uint32 CONFIG_STCGCR1;
    uint32 CONFIG_STCTPR;
    uint32 CONFIG_STCSCSCR;
} stc_config_reg_t;

 

void stcGetConfigValue(stc_config_reg_t *config_reg, config_value_type_t type);












 





 



 



 


 
typedef struct efc_config_reg
{
	uint32 CONFIG_BOUNDARY;
	uint32 CONFIG_PINS;
	uint32 CONFIG_SELFTESTCYCLES;
	uint32 CONFIG_SELFTESTSIGN;
}efc_config_reg_t;

 

void efcGetConfigValue(efc_config_reg_t *config_reg, config_value_type_t type);


 
void ccmSelfCheck(void);

void stcSelfCheck(void);
void stcSelfCheckFail(void);
void cpuSelfTest(uint32 no_of_intervals, uint32 max_timeout, boolean restart_test);
void cpuSelfTestFail(void);

void memoryInit(uint32 ram);

void pbistSelfCheck(void);
void pbistRun(uint32 raminfoL, uint32 algomask);
void pbistStop(void);
boolean pbistIsTestCompleted(void);
boolean pbistIsTestPassed(void);
boolean pbistPortTestStatus(uint32 port);
void pbistFail(void);

uint32 efcCheck(void);
void efcSelfTest(void);
boolean efcStuckZeroTest(void);
boolean checkefcSelfTest(void);

void fmcBus2Check(void);
void fmcECCcheck(void);
void fmcBus1ParityCheck(void);

void checkB0RAMECC(void);
void checkB1RAMECC(void);

void checkFlashECC(void);

void vimParityCheck(void);
void dmaParityCheck(void);
void adc1ParityCheck(void);
void adc2ParityCheck(void);
void het1ParityCheck(void);
void htu1ParityCheck(void);
void het2ParityCheck(void);
void htu2ParityCheck(void);
void can1ParityCheck(void);
void can2ParityCheck(void);
void can3ParityCheck(void);
void mibspi1ParityCheck(void);
void mibspi3ParityCheck(void);
void mibspi5ParityCheck(void);

void checkRAMECC(void);
void checkClockMonitor(void);
void checkFlashEEPROMECC(void);
void checkPLL1Slip(void);
void checkPLL2Slip(void);
void checkRAMAddrParity(void);
void checkRAMUERRTest(void);

void enableParity(void);
void disableParity(void);

void custom_dabort(void);
void selftestFailNotification(uint32 flag);
void errata_PBIST_4(void);

 
 

 
typedef struct ccmr4_config_reg
{
	uint32 CONFIG_CCMKEYR;
}ccmr4_config_reg_t;

 

void ccmr4GetConfigValue(ccmr4_config_reg_t *config_reg, config_value_type_t type);





 

































 





 
 

typedef struct gio_config_reg
{
    uint32 CONFIG_INTDET;
    uint32 CONFIG_POL;
    uint32 CONFIG_INTENASET;
    uint32 CONFIG_LVLSET;

	uint32 CONFIG_PORTADIR;
	uint32 CONFIG_PORTAPDR;
	uint32 CONFIG_PORTAPSL;
	uint32 CONFIG_PORTAPULDIS;

	uint32 CONFIG_PORTBDIR;
	uint32 CONFIG_PORTBPDR;
	uint32 CONFIG_PORTBPSL;
	uint32 CONFIG_PORTBPULDIS;
}gio_config_reg_t;






















 

 
void gioInit(void);
void gioSetDirection(gioPORT_t *port, uint32 dir);
void gioSetBit(gioPORT_t *port, uint32 bit, uint32 value);
void gioSetPort(gioPORT_t *port, uint32 value);
uint32 gioGetBit(gioPORT_t *port, uint32 bit);
uint32 gioGetPort(gioPORT_t *port);
void gioToggleBit(gioPORT_t *port, uint32 bit);
void gioEnableNotification(gioPORT_t *port, uint32 bit);
void gioDisableNotification(gioPORT_t *port, uint32 bit);
void gioNotification(gioPORT_t *port, uint32 bit);
void gioGetConfigValue(gio_config_reg_t *config_reg, config_value_type_t type);

 
 

 






 

































 




 
 












 

































 






 
 

 




 




 

typedef volatile struct linBase
{
    uint32      GCR0;          
    uint32      GCR1;          
    uint32      GCR2;          
    uint32      SETINT;        
    uint32      CLEARINT;      
    uint32      SETINTLVL;     
    uint32      CLEARINTLVL;   
    uint32      FLR;           
    uint32      INTVECT0;      
    uint32      INTVECT1;      
    uint32      FORMAT;        	
    uint32      BRS;           
    uint32      ED;            
    uint32      RD;            
    uint32      TD;            
    uint32      PIO0;          
    uint32      PIO1;          
    uint32      PIO2;          
    uint32      PIO3;          
    uint32      PIO4;          
    uint32      PIO5;          
    uint32      PIO6;          
    uint32      PIO7;          
    uint32      PIO8;          
    uint32      COMP;          
    uint8       RDx[8U];       
    uint32      MASK;          
    uint32      ID;            	
    uint8       TDx[8U];       
    uint32      MBRSR;         
    uint32      rsvd1[4U];     
    uint32      IODFTCTRL;     
} linBASE_t;






 







 

 
 




 
 





 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 




 

enum linPinSelect
{
    PIN_LIN_TX = 4U,
    PIN_LIN_RX = 2U
};

 
typedef struct lin_config_reg
{
    uint32 CONFIG_GCR0;
    uint32 CONFIG_GCR1;
    uint32 CONFIG_GCR2;
    uint32 CONFIG_SETINT;
    uint32 CONFIG_SETINTLVL;
    uint32 CONFIG_FORMAT;
    uint32 CONFIG_BRSR;
    uint32 CONFIG_FUN;
    uint32 CONFIG_DIR;
    uint32 CONFIG_ODR;
    uint32 CONFIG_PD;	
	uint32 CONFIG_PSL;
	uint32 CONFIG_COMP;	
	uint32 CONFIG_MASK;
	uint32 CONFIG_MBRSR;
} lin_config_reg_t;

 


 














 
 
 
void     linInit(void);
void     linSetFunctional(linBASE_t *lin, uint32 port);
void     linSendHeader(linBASE_t *lin, uint8 identifier);
void     linSendWakupSignal(linBASE_t *lin);
void     linEnterSleep(linBASE_t *lin);
void     linSoftwareReset(linBASE_t *lin);
uint32   linIsTxReady(linBASE_t *lin);
void     linSetLength(linBASE_t *lin, uint32 length);
void     linSend(linBASE_t *lin, uint8 * data);
uint32   linIsRxReady(linBASE_t *lin);
uint32   linTxRxError(linBASE_t *lin);
uint32   linGetIdentifier(linBASE_t *lin);
void     linGetData(linBASE_t *lin, uint8 * const data);
void     linEnableNotification(linBASE_t *lin, uint32 flags);
void     linDisableNotification(linBASE_t *lin, uint32 flags);
void     linEnableLoopback(linBASE_t *lin, loopBackType_t Loopbacktype);
void     linDisableLoopback(linBASE_t *lin);
void     linGetConfigValue(lin_config_reg_t *config_reg, config_value_type_t type);
uint32   linGetStatusFlag(linBASE_t *lin);
void     linClearStatusFlag(linBASE_t *lin, uint32 flags);









 
void linNotification(linBASE_t *lin, uint32 flags);

 
 

 






 

































 















 

































 






 
 

 




 




 
typedef volatile struct sciBase
{
    uint32 GCR0;           
    uint32 GCR1;           
    uint32 GCR2;          
    uint32 SETINT;        
    uint32 CLEARINT;       
    uint32 SETINTLVL;     
    uint32 CLEARINTLVL;    
    uint32 FLR;            
    uint32 INTVECT0;       
    uint32 INTVECT1;       
    uint32 FORMAT;         
    uint32 BRS;            
    uint32 ED;             
    uint32 RD;             
    uint32 TD;             
    uint32 PIO0;           
    uint32 PIO1;           
    uint32 PIO2;           
    uint32 PIO3;           
    uint32 PIO4;           
    uint32 PIO5;           
    uint32 PIO6;           
    uint32 PIO7;           
    uint32 PIO8;           
    uint32 rsdv2[12U];     
    uint32 IODFTCTRL;      
} sciBASE_t;






 







 






 







 

 
 




 
 





 
enum sciIntFlags
{
    SCI_FE_INT    = 0x04000000U,   
    SCI_OE_INT    = 0x02000000U,   
    SCI_PE_INT    = 0x01000000U,   
    SCI_RX_INT    = 0x00000200U,   
    SCI_TX_INT    = 0x00000100U,   
    SCI_WAKE_INT  = 0x00000002U,   
    SCI_BREAK_INT = 0x00000001U    
};






 





 




 

enum sciPinSelect
{
    PIN_SCI_TX = 4U,
    PIN_SCI_RX = 2U
};


 
typedef struct sci_config_reg
{
    uint32 CONFIG_GCR0;
    uint32 CONFIG_GCR1;
    uint32 CONFIG_SETINT;
    uint32 CONFIG_SETINTLVL;
    uint32 CONFIG_FORMAT;
    uint32 CONFIG_BRS;
    uint32 CONFIG_PIO0;
    uint32 CONFIG_PIO1;
    uint32 CONFIG_PIO6;
    uint32 CONFIG_PIO7;	
	uint32 CONFIG_PIO8;
} sci_config_reg_t;


 
								   
                                   
                                   
 
















 
 
 
void sciInit(void);
void sciSetFunctional(sciBASE_t *sci, uint32 port);
void sciSetBaudrate(sciBASE_t *sci, uint32 baud);
uint32  sciIsTxReady(sciBASE_t *sci);
void sciSendByte(sciBASE_t *sci, uint8 byte);
void sciSend(sciBASE_t *sci, uint32 length, uint8 * data);
uint32  sciIsRxReady(sciBASE_t *sci);
uint32  sciIsIdleDetected(sciBASE_t *sci);
uint32  sciRxError(sciBASE_t *sci);
uint32  sciReceiveByte(sciBASE_t *sci);
void sciReceive(sciBASE_t *sci, uint32 length, uint8 * data);
void sciEnableNotification(sciBASE_t *sci, uint32 flags);
void sciDisableNotification(sciBASE_t *sci, uint32 flags);
void sciEnableLoopback(sciBASE_t *sci, loopBackType_t Loopbacktype);
void sciDisableLoopback(sciBASE_t *sci);
void sciGetConfigValue(sci_config_reg_t *config_reg, config_value_type_t type);








 
void sciNotification(sciBASE_t *sci, uint32 flags);

 
 
 






 

































 














 

































 






 
 

 




 




 
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

 
 
 






 

































 














 

































 





 
 

 




 




 
typedef volatile struct i2cBase
{

    uint32 OAR;            
    uint32 IMR;            
    uint32 STR;            
    uint32 CKL;           
    uint32 CKH;           
    uint32 CNT;            
    uint8 rsvd3;           
    uint8 rsvd2;           
    uint8 rsvd1;           
    uint8 DRR;             
    uint32 SAR;            
    uint8 rsvd6;           
    uint8 rsvd5;           
    uint8 rsvd4;           
    uint8 DXR;             
    uint32 MDR;            
    uint32 IVR;            
    uint32 EMDR;           
    uint32 PSC;            
    uint32 PID11;          
    uint32 PID12;          
    uint32 DMACR;          
    uint32 rsvd7;          
    uint32 rsvd8;          
    uint32 PFNC;           
    uint32 DIR;            
    uint32 DIN;            
    uint32 DOUT;           
    uint32 SET;            
    uint32 CLR;            
    uint32 PDR;            
    uint32 PDIS;           
    uint32 PSEL;           
    uint32 PSRS;           	
} i2cBASE_t;






 

 
 







 

 
 




 
 




 

enum i2cMode
{
    I2C_FD_FORMAT   = 0x0008U,   
    I2C_START_BYTE  = 0x0010U,
    I2C_RESET_OUT   = 0x0020U,  I2C_RESET_IN   = 0x0000U,
    I2C_DLOOPBACK   = 0x0040U,    
    I2C_REPEATMODE  = 0x0080U,    
    I2C_10BIT_AMODE = 0x0100U,  I2C_7BIT_AMODE = 0x0000U,
    I2C_TRANSMITTER = 0x0200U,  I2C_RECEIVER   = 0x0000U,        
    I2C_MASTER      = 0x0400U,  I2C_SLAVE      = 0x0000U,     
    I2C_STOP_COND   = 0x0800U,   
    I2C_START_COND  = 0x2000U,       
    I2C_FREE_RUN    = 0x4000U,
    I2C_NACK_MODE   = 0x8000U
};





 

enum i2cBitCount
{
    I2C_2_BIT   = 0x2U, 
    I2C_3_BIT   = 0x3U, 
    I2C_4_BIT   = 0x4U, 
    I2C_5_BIT   = 0x5U, 
    I2C_6_BIT   = 0x6U, 
    I2C_7_BIT   = 0x7U,     
    I2C_8_BIT   = 0x0U  
};







 
enum i2cIntFlags
{
    I2C_AL_INT     = 0x0001U,   
    I2C_NACK_INT   = 0x0002U,   
    I2C_ARDY_INT   = 0x0004U,   
    I2C_RX_INT     = 0x0008U,   
    I2C_TX_INT     = 0x0010U,   
    I2C_SCD_INT    = 0x0020U,   
    I2C_AAS_INT    = 0x0040U    
};





 
enum i2cStatFlags
{
    I2C_AL         = 0x0001U,   
    I2C_NACK       = 0x0002U,   
    I2C_ARDY       = 0x0004U,   
    I2C_RX         = 0x0008U,   
    I2C_TX         = 0x0010U,   
    I2C_SCD        = 0x0020U,   
    I2C_AD0        = 0x0100U,   
    I2C_AAS        = 0x0200U,   
    I2C_XSMT       = 0x0400U,   	
    I2C_RXFULL     = 0x0800U,   
    I2C_BUSBUSY    = 0x1000U,   
    I2C_NACKSNT    = 0x2000U,   
    I2C_SDIR       = 0x4000U    	
};






 
enum i2cDMA
{
    I2C_TXDMA   = 0x20U, 
    I2C_RXDMA   = 0x10U 
};

 
typedef struct i2c_config_reg
{
    uint32 CONFIG_OAR;
    uint32 CONFIG_IMR;
    uint32 CONFIG_CLKL;
    uint32 CONFIG_CLKH;
    uint32 CONFIG_CNT;
    uint32 CONFIG_SAR;
    uint32 CONFIG_MDR;
    uint32 CONFIG_EMDR;
    uint32 CONFIG_PSC;   
    uint32 CONFIG_DMAC;
    uint32 CONFIG_FUN;
    uint32 CONFIG_DIR;
    uint32 CONFIG_ODR;
    uint32 CONFIG_PD;	
	uint32 CONFIG_PSL;	
} i2c_config_reg_t;


 
  
  
 















 
 
 
void    i2cInit(void);
void    i2cSetOwnAdd(i2cBASE_t *i2c, uint32 oadd);
void    i2cSetSlaveAdd(i2cBASE_t *i2c, uint32 sadd);
void    i2cSetBaudrate(i2cBASE_t *i2c, uint32 baud);
uint32  i2cIsTxReady(i2cBASE_t *i2c);
void    i2cSendByte(i2cBASE_t *i2c, uint8 byte);
void    i2cSend(i2cBASE_t *i2c, uint32 length, uint8 * data);
uint32  i2cIsRxReady(i2cBASE_t *i2c);
uint32  i2cIsStopDetected(i2cBASE_t *i2c);
void    i2cClearSCD(i2cBASE_t *i2c);
uint32  i2cRxError(i2cBASE_t *i2c);
uint8   i2cReceiveByte(i2cBASE_t *i2c);
void    i2cReceive(i2cBASE_t *i2c, uint32 length, uint8 * data);
void    i2cEnableNotification(i2cBASE_t *i2c, uint32 flags);
void    i2cDisableNotification(i2cBASE_t *i2c, uint32 flags);
void    i2cSetStart(i2cBASE_t *i2c);
void    i2cSetStop(i2cBASE_t *i2c);
void    i2cSetCount(i2cBASE_t *i2c ,uint32 cnt);
void    i2cEnableLoopback(i2cBASE_t *i2c);
void    i2cDisableLoopback(i2cBASE_t *i2c);
void    i2cSetMode(i2cBASE_t *i2c, uint32 mode);
void    i2cGetConfigValue(i2c_config_reg_t *config_reg, config_value_type_t type);
void i2cSetDirection(i2cBASE_t *i2c, uint32 dir);
_Bool i2cIsMasterReady(i2cBASE_t *i2c);
_Bool i2cIsBusBusy(i2cBASE_t *i2c);









 
void i2cNotification(i2cBASE_t *i2c, uint32 flags);

 
 

 












 

































 














 

































 




 
 

 




 




 
typedef volatile struct crcBase
{
    uint32      CTRL0;                 
    uint32      rvd1;                  
    uint32      CTRL1;                 
    uint32      rvd2;                      
    uint32      CTRL2;                 
    uint32      rvd3;                          
    uint32      INTS;                  
    uint32      rvd4;                          
    uint32      INTR;                  
    uint32      rvd5;                      
    uint32      STATUS;                
    uint32      rvd6;                      
    uint32      INT_OFFSET_REG;        
    uint32      rvd7;                      
    uint32      BUSY;                  
    uint32      rvd8;                      
    uint32      PCOUNT_REG1;           
    uint32      SCOUNT_REG1;           
    uint32      CURSEC_REG1;           
    uint32      WDTOPLD1;              
    uint32      BCTOPLD1;              
    uint32      rvd9[3];               
    uint32      PSA_SIGREGL1;          
    uint32      PSA_SIGREGH1;          
    uint32      REGL1;                 
    uint32      REGH1;                 
    uint32      PSA_SECSIGREGL1;       
    uint32      PSA_SECSIGREGH1;       
    uint32      RAW_DATAREGL1;         
    uint32      RAW_DATAREGH1;         
    uint32      PCOUNT_REG2;           
    uint32      SCOUNT_REG2;           
    uint32      CURSEC_REG2;           
    uint32      WDTOPLD2;              
    uint32      BCTOPLD2;              
    uint32      rvd10[3];              
    uint32      PSA_SIGREGL2;          
    uint32      PSA_SIGREGH2;          
    uint32      REGL2;                 
    uint32      REGH2;                 
    uint32      PSA_SECSIGREGL2;       
    uint32      PSA_SECSIGREGH2;       
    uint32      RAW_DATAREGL2;         
    uint32      RAW_DATAREGH2;         
}crcBASE_t;
 




 

 
 



 
 

 



 




 




 




 




 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 




 



 



 



 



 



 



 





 


 
typedef struct crcModConfig
{
    uint32 mode;      
    uint32 crc_channel;      
    uint64 * src_data_pat;   
    uint32 data_length;   
} crcModConfig_t;





 


 
typedef struct crcConfig
{
    uint32 crc_channel;      
    uint32 mode;      
    uint32 pcount;      
    uint32 scount;      
    uint32 wdg_preload;   
    uint32 block_preload;   

} crcConfig_t;

 
 

typedef struct crc_config_reg
{
    uint32 CONFIG_CTRL0;
	uint32 CONFIG_CTRL1;
	uint32 CONFIG_CTRL2;
    uint32 CONFIG_INTS;
    uint32 CONFIG_PCOUNT_REG1;
    uint32 CONFIG_SCOUNT_REG1;
    uint32 CONFIG_WDTOPLD1;
    uint32 CONFIG_BCTOPLD1;
    uint32 CONFIG_PCOUNT_REG2;
    uint32 CONFIG_SCOUNT_REG2;
    uint32 CONFIG_WDTOPLD2;
    uint32 CONFIG_BCTOPLD2;
}crc_config_reg_t;
		


















 
 
 
void crcInit(void);
void crcSendPowerDown(crcBASE_t *crc);
void crcSignGen(crcBASE_t *crc,crcModConfig_t *param);
void crcSetConfig(crcBASE_t *crc,crcConfig_t *param);
uint64 crcGetPSASig(crcBASE_t *crc,uint32 channel);
uint64 crcGetSectorSig(crcBASE_t *crc,uint32 channel);
uint32 crcGetFailedSector(crcBASE_t *crc,uint32 channel);
uint32 crcGetIntrPend(crcBASE_t *crc,uint32 channel);
void crcChannelReset(crcBASE_t *crc,uint32 channel);
void crcEnableNotification(crcBASE_t *crc, uint32 flags);
void crcDisableNotification(crcBASE_t *crc, uint32 flags);
void crcGetConfigValue(crc_config_reg_t *config_reg, config_value_type_t type);









 
void crcNotification(crcBASE_t *crc, uint32 flags);

 
 

 






 

































 














 

































 






 
 

 




 




 

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

 
 

 


 
 
#pragma WEAK(esmGroup1Notification)
void esmGroup1Notification(uint32 channel)
{
 
 
 
}

 
 
#pragma WEAK(esmGroup2Notification)
void esmGroup2Notification(uint32 channel)
{
 
 
 
}

 
 
#pragma WEAK(memoryPort0TestFailNotification)
void memoryPort0TestFailNotification(uint32 groupSelect, uint32 dataSelect, uint32 address, uint32 data)
{
 
 
 
}

 
 
#pragma WEAK(memoryPort1TestFailNotification)
void memoryPort1TestFailNotification(uint32 groupSelect, uint32 dataSelect, uint32 address, uint32 data)
{
 
 
 
}

 
 
#pragma WEAK(adcNotification)
void adcNotification(adcBASE_t *adc, uint32 group)
{
 
 
 
}

 
 
#pragma WEAK(canErrorNotification)
void canErrorNotification(canBASE_t *node, uint32 notification)
{
 
 
 
}

#pragma WEAK(canStatusChangeNotification)
void canStatusChangeNotification(canBASE_t *node, uint32 notification)  
{
 
 
 
}

#pragma WEAK(canMessageNotification)
void canMessageNotification(canBASE_t *node, uint32 messageBox)  
{
 
 
 
}

 
 
#pragma WEAK(dccNotification)
void dccNotification(dccBASE_t  *dcc,uint32 flags)
{
 
 
 
}

 
 
#pragma WEAK(gioNotification)
void gioNotification(gioPORT_t *port, uint32 bit)
{
 
 
 
}

 
 
#pragma WEAK(i2cNotification)
void i2cNotification(i2cBASE_t *i2c, uint32 flags)      
{
 
 
 
}

 
 
#pragma WEAK(linNotification)
void linNotification(linBASE_t *lin, uint32 flags)      
{
 
 
 
}

 
 
#pragma WEAK(mibspiNotification)
void mibspiNotification(mibspiBASE_t *mibspi, uint32 flags)
{
 
 
 
}

 
 
#pragma WEAK(mibspiGroupNotification)
void mibspiGroupNotification(mibspiBASE_t *mibspi, uint32 group)
{
 
 
 
}
 
 

#pragma WEAK(sciNotification)
void sciNotification(sciBASE_t *sci, uint32 flags)     
{
 
 
 
}

 
 
#pragma WEAK(spiNotification)
void spiNotification(spiBASE_t *spi, uint32 flags)
{
 
 
 
}

 
 
#pragma WEAK(spiEndNotification)
void spiEndNotification(spiBASE_t *spi)
{
 
 
 
}

 
 

#pragma WEAK(pwmNotification)
void pwmNotification(hetBASE_t * hetREG,uint32 pwm, uint32 notification)
{
 
 
 
}

 
 
#pragma WEAK(edgeNotification)
void edgeNotification(hetBASE_t * hetREG,uint32 edge)
{
 
 
 
}

 
 
#pragma WEAK(hetNotification)
void hetNotification(hetBASE_t *het, uint32 offset)
{
 
 
 
}

 
 

#pragma WEAK(crcNotification)
void crcNotification(crcBASE_t *crc, uint32 flags)
{
 
 
 
}
 
 

 
 

#pragma WEAK(etpwmNotification)
void etpwmNotification(etpwmBASE_t *node)
{
 
 
 
}
#pragma WEAK(etpwmTripNotification)
void etpwmTripNotification(etpwmBASE_t *node,uint16 flags)
{
 
 
 
}

 
 

 
 

#pragma WEAK(eqepNotification)
void eqepNotification(eqepBASE_t *eqep,uint16 flags)
{
 
 
 
}
 
 

 
 

#pragma WEAK(ecapNotification)
void ecapNotification(ecapBASE_t *ecap,uint16 flags)
{
 
 
 
}
 
 

 
 

#pragma WEAK(dmaGroupANotification)
void dmaGroupANotification(dmaInterrupt_t inttype, uint32 channel)
{
 
 
 
}
 
 

 
 

 
 

 
 

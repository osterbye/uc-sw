






 

































 


 
 










 

































 













 

































 












 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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









 

































 





 
 







 







 







 







 





 
enum pmuEvent
{
    PMU_INST_CACHE_MISS                     = 0x01U,
    PMU_DATA_CACHE_MISS                     = 0x03U,
    PMU_DATA_CACHE_ACCESS                   = 0x04U,
    PMU_DATA_READ_ARCH_EXECUTED             = 0x06U,
    PMU_DATA_WRITE_ARCH_EXECUTED            = 0x07U,
    PMU_INST_ARCH_EXECUTED                  = 0x08U,
    PMU_EXCEPTION_TAKEN                     = 0x09U,
    PMU_EXCEPTION_RETURN_ARCH_EXECUTED      = 0x0AU,
    PMU_CHANGE_TO_CONTEXT_ID_EXECUTED       = 0x0BU,
    PMU_SW_CHANGE_OF_PC_ARCH_EXECUTED       = 0x0CU,
    PMU_BRANCH_IMM_INST_ARCH_EXECUTED       = 0x0DU,
    PMU_PROC_RETURN_ARCH_EXECUTED           = 0x0EU,
    PMU_UNALIGNED_ACCESS_ARCH_EXECUTED      = 0x0FU,
    PMU_BRANCH_MISSPREDICTED                = 0x10U,
    PMU_CYCLE_COUNT                         = 0x11U,
    PMU_PREDICTABLE_BRANCHES                = 0x12U,
    PMU_INST_BUFFER_STALL                   = 0x40U,
    PMU_DATA_DEPENDENCY_INST_STALL          = 0x41U,
    PMU_DATA_CACHE_WRITE_BACK               = 0x42U,
    PMU_EXT_MEMORY_REQUEST                  = 0x43U,
    PMU_LSU_BUSY_STALL                      = 0x44U,
    PMU_FORCED_DRAIN_OFSTORE_BUFFER         = 0x45U,
    PMU_FIQ_DISABLED_CYCLE_COUNT            = 0x46U,
    PMU_IRQ_DISABLED_CYCLE_COUNT            = 0x47U,
    PMU_ETMEXTOUT_0                         = 0x48U,
    PMU_ETMEXTOUT_1                         = 0x49U,
    PMU_INST_CACHE_TAG_ECC_ERROR            = 0x4AU,
    PMU_INST_CACHE_DATA_ECC_ERROR           = 0x4BU,
    PMU_DATA_CACHE_TAG_ECC_ERROR            = 0x4CU,
    PMU_DATA_CACHE_DATA_ECC_ERROR           = 0x4DU,
    PMU_TCM_FATAL_ECC_ERROR_PREFETCH        = 0x4EU,
    PMU_TCM_FATAL_ECC_ERROR_LOAD_STORE      = 0x4FU,
    PMU_STORE_BUFFER_MERGE                  = 0x50U,
    PMU_LSU_STALL_STORE_BUFFER_FULL         = 0x51U,
    PMU_LSU_STALL_STORE_QUEUE_FULL          = 0x52U,
    PMU_INTEGER_DIV_EXECUTED                = 0x53U,
    PMU_STALL_INTEGER_DIV                   = 0x54U,
    PMU_PLD_INST_LINE_FILL                  = 0x55U,
    PMU_PLD_INST_NO_LINE_FILL               = 0x56U,
    PMU_NON_CACHEABLE_ACCESS_AXI_MASTER     = 0x57U,
    PMU_INST_CACHE_ACCESS                   = 0x58U,
    PMU_DOUBLE_DATA_CACHE_ISSUE             = 0x59U,
    PMU_DUAL_ISSUE_CASE_A                   = 0x5AU,
    PMU_DUAL_ISSUE_CASE_B1_B2_F2_F2D        = 0x5BU,
    PMU_DUAL_ISSUE_OTHER                    = 0x5CU,
    PMU_DP_FLOAT_INST_EXCECUTED             = 0x5DU,
    PMU_DUAL_ISSUED_PAIR_INST_ARCH_EXECUTED = 0x5EU,
    PMU_DATA_CACHE_DATA_FATAL_ECC_ERROR     = 0x60U,
    PMU_DATA_CACHE_TAG_FATAL_ECC_ERROR      = 0x61U,
    PMU_PROCESSOR_LIVE_LOCK                 = 0x62U,
    PMU_ATCM_MULTI_BIT_ECC_ERROR            = 0x64U,
    PMU_B0TCM_MULTI_BIT_ECC_ERROR           = 0x65U,
    PMU_B1TCM_MULTI_BIT_ECC_ERROR           = 0x66U,
    PMU_ATCM_SINGLE_BIT_ECC_ERROR           = 0x67U,
    PMU_B0TCM_SINGLE_BIT_ECC_ERROR          = 0x68U,
    PMU_B1TCM_SINGLE_BIT_ECC_ERROR          = 0x69U,
    PMU_TCM_COR_ECC_ERROR_LOAD_STORE        = 0x6AU,
    PMU_TCM_COR_ECC_ERROR_PREFETCH          = 0x6BU,
    PMU_TCM_FATAL_ECC_ERROR_AXI_SLAVE       = 0x6CU,
    PMU_TCM_COR_ECC_ERROR_AXI_SLAVE         = 0x6DU
};



 
void _pmuInit_(void);



 
void _pmuEnableCountersGlobal_(void);



 
void _pmuDisableCountersGlobal_(void);



 
void _pmuResetCycleCounter_(void);



 
void _pmuResetEventCounters_(void);



 
void _pmuResetCounters_(void);




 
void _pmuStartCounters_(uint32 counters);




 
void _pmuStopCounters_(uint32 counters);





 
void _pmuSetCountEvent_(uint32 counter, uint32 event);





 
uint32 _pmuGetCycleCount_(void);






 
uint32 _pmuGetEventCount_(uint32 counter);





 
uint32 _pmuGetOverflow_(void);

 
 






 
#pragma WEAK(selftestFailNotification)
void selftestFailNotification(uint32 flag)
{

 
 

}

 
 





 
 
 
 
void ccmSelfCheck(void)
{
 
 

     
     

     
    (*(volatile uint32 *)(0xFFFFF604U)) = 0x6U;
     
     
    while (((*(volatile uint32 *)(0xFFFFF600U)) & 0x100U) != 0x100U)
    {
    } 

 
 

     
    if (((*(volatile uint32 *)(0xFFFFF600U)) & 0x1U) == 0x1U)
    {
         
        selftestFailNotification(1U);
    }
    else
    {
         
        if ((((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x80000000U) == 0x80000000U)
        {
             
            selftestFailNotification(2U);
        }
        else
        {
             
            (*(volatile uint32 *)(0xFFFFF604U)) = 0x9U;

             
             
            while ((*(volatile uint32 *)(0xFFFFF604U)) != 0U)
            {
            } 

             
            if ((((esmBASE_t *)0xFFFFF500U)->SR1[1U] & 0x4U) != 0x4U)
            {
                 
                selftestFailNotification(3U);
            }
            else
            {
                 
                if((((vimBASE_t *)0xFFFFFE00U)->FIQINDEX & 0x000000FFU) != 1U)
                {
                    
                   selftestFailNotification(4U);
                }

                 
                ((esmBASE_t *)0xFFFFF500U)->SR1[1U] = 0x4U;

                 
                ((esmBASE_t *)0xFFFFF500U)->SSR2 = 0x4U;

                 
                ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x80000000U;

                 
                ((esmBASE_t *)0xFFFFF500U)->EKR = 0x5U;

                 
                (*(volatile uint32 *)(0xFFFFF604U)) = 0xFU;

                 
                 
                while ((*(volatile uint32 *)(0xFFFFF604U)) != 0U)
                {
                } 

                if((((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x80000000U) != 0x80000000U)
                {
                     
                    selftestFailNotification(2U);
                }
                else
                {
                     
                    ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x80000000U;
                }
            }
        }
    }
}

 
 






 
 
 
 
void memoryInit(uint32 ram)
{
 
 

     
    ((systemBASE1_t *)0xFFFFFF00U)->MINITGCR = 0xAU;

     
    ((systemBASE1_t *)0xFFFFFF00U)->MSINENA  = ram;

     
     
    while((((systemBASE1_t *)0xFFFFFF00U)->MSTCGSTAT & 0x00000100U) != 0x00000100U)
    {
    } 

     
    ((systemBASE1_t *)0xFFFFFF00U)->MINITGCR = 0x5U;

 
 
}





 
 
 
 
void stcSelfCheck(void)
{
 
 
    volatile uint32 i = 0U;

     
     

     
    ((systemBASE2_t *)0xFFFFE100U)->STCCLKDIV = 0x01000000U;

     
    ((stcBASE_t *)0xFFFFE600U)->STCGCR0 = 0x00010001U;

     
    ((stcBASE_t *)0xFFFFE600U)->STCSCSCR = 0x1AU;

     
    ((stcBASE_t *)0xFFFFE600U)->STCTPR = 0xFFFFFFFFU;

     
	 
	 
    for (i=0U; i<(16U + (16U * 1U)); i++){   }

     
    ((stcBASE_t *)0xFFFFE600U)->STCGCR1 = 0xAU;

 
 

     
    _gotoCPUIdle_();

 
 
}








 
 
 
 
void cpuSelfTest(uint32 no_of_intervals, uint32 max_timeout, boolean restart_test)
{
    volatile uint32 i = 0U;

 
 

     
     
    ((stcBASE_t *)0xFFFFE600U)->STCGCR0 = no_of_intervals << 16U;
	if(restart_test)
	{
	    ((stcBASE_t *)0xFFFFE600U)->STCGCR0 |= 0x00000001U;
	}

     
    ((stcBASE_t *)0xFFFFE600U)->STCTPR = max_timeout;

     
	 
	 
    for (i=0U; i<(16U + (16U * 1U)); i++){   }

     
    ((stcBASE_t *)0xFFFFE600U)->STCGCR1 = 0xAU;

 
 
     

    _gotoCPUIdle_();

}





 
 
 
 
void pbistSelfCheck(void)
{
    volatile uint32 i = 0U;
    uint32 PBIST_wait_done_loop = 0U;
 
 
     
     

     
    ((pbistBASE_t *)0xFFFFE560U)->PACT = 0x0U;
    
     
     
    ((systemBASE1_t *)0xFFFFFF00U)->MSTGCR = 0x00000105U;                
    
     
    ((systemBASE1_t *)0xFFFFFF00U)->MINITGCR = 0x5U;

     
    ((systemBASE1_t *)0xFFFFFF00U)->MSTGCR = 0x0000010AU;                               

     
    ((systemBASE1_t *)0xFFFFFF00U)->MSTCGSTAT = 0x1U;
    
     
    ((systemBASE1_t *)0xFFFFFF00U)->MSINENA = 0x1U;

     
	 
	 
    for (i=0U; i<(32U + (32U * 1U)); i++){   }

 
 

     
    ((pbistBASE_t *)0xFFFFE560U)->PACT = 0x3U;

     
    ((pbistBASE_t *)0xFFFFE560U)->DLR = 0x10U;

     
    ((pbistBASE_t *)0xFFFFE560U)->RAMT         = 0x00002000U;
    *(volatile uint32 *)0xFFFFE400U = 0x4C000001U;
    *(volatile uint32 *)0xFFFFE440U = 0x00000075U;
    *(volatile uint32 *)0xFFFFE404U = 0x4C000002U;
    *(volatile uint32 *)0xFFFFE444U = 0x00000075U;
    *(volatile uint32 *)0xFFFFE408U = 0x4C000003U;
    *(volatile uint32 *)0xFFFFE448U = 0x00000075U;
    *(volatile uint32 *)0xFFFFE40CU = 0x4C000004U;
    *(volatile uint32 *)0xFFFFE44CU = 0x00000075U;
    *(volatile uint32 *)0xFFFFE410U = 0x4C000005U;
    *(volatile uint32 *)0xFFFFE450U = 0x00000075U;
    *(volatile uint32 *)0xFFFFE414U = 0x4C000006U;
    *(volatile uint32 *)0xFFFFE454U = 0x00000075U;
    *(volatile uint32 *)0xFFFFE418U = 0x00000000U;
    *(volatile uint32 *)0xFFFFE458U = 0x00000001U;

     
    ((pbistBASE_t *)0xFFFFE560U)->rsvd1[1U]    = 1U;

     
     
    while ((((systemBASE1_t *)0xFFFFFF00U)->MSTCGSTAT & 0x1U) != 0x1U) 
    {
        PBIST_wait_done_loop++;
    } 

     
    if ((((pbistBASE_t *)0xFFFFE560U)->FSRF0 & 0x1U) != 0x1U)
    {
         
        selftestFailNotification(5U);

 
 
    }
    else
    {
         
         
        if (PBIST_wait_done_loop >= 2U)
        {
            selftestFailNotification(41U);
        }
        
         
        ((pbistBASE_t *)0xFFFFE560U)->PACT = 0x0U;

         
        ((systemBASE1_t *)0xFFFFFF00U)->MSTGCR &= 0xFFFFFFF0U;
        ((systemBASE1_t *)0xFFFFFF00U)->MSTGCR |= 0x5U;

 
 
    }
}







 
 
 
 
void pbistRun(uint32 raminfoL, uint32 algomask)
{
    volatile uint32 i = 0U;

 
 

     
     
    ((systemBASE1_t *)0xFFFFFF00U)->MSTGCR = 0x00000105U;

     
    ((systemBASE1_t *)0xFFFFFF00U)->MINITGCR = 0x5U;

     
    ((systemBASE1_t *)0xFFFFFF00U)->MSINENA = 0x1U;

     
    ((systemBASE1_t *)0xFFFFFF00U)->MSTGCR = 0x0000010AU;

     
	 
	 
    for (i=0U; i<(32U + (32U * 1U)); i++){   }

 
 

     
    ((pbistBASE_t *)0xFFFFE560U)->PACT = 0x3U;

     
    ((pbistBASE_t *)0xFFFFE560U)->ALGO = algomask;

     
    ((pbistBASE_t *)0xFFFFE560U)->RINFOL = raminfoL;

     
    ((pbistBASE_t *)0xFFFFE560U)->RINFOU = 0x00000000U;

     
    ((pbistBASE_t *)0xFFFFE560U)->OVER = 0x0U;

     
    ((pbistBASE_t *)0xFFFFE560U)->ROM = 0x3U;

     
    ((pbistBASE_t *)0xFFFFE560U)->DLR = 0x14U;

 
 
}





 
 
 
 
void pbistStop(void)
{
 
 
     
    ((pbistBASE_t *)0xFFFFE560U)->PACT = 0x0U;
    ((systemBASE1_t *)0xFFFFFF00U)->MSTGCR &= 0xFFFFFFF0U;
    ((systemBASE1_t *)0xFFFFFF00U)->MSTGCR |= 0x5U;
 
 
}






 
 
 
 
boolean pbistIsTestCompleted(void)
{
 
 

    return ((((systemBASE1_t *)0xFFFFFF00U)->MSTCGSTAT & 0x1U) != 0U);
 
 
}






 
 
 
 
boolean pbistIsTestPassed(void)
{
 
 
	boolean status;

    if (((pbistBASE_t *)0xFFFFE560U)->FSRF0 == 0U)
	{
		status = 1;
	}
	else
	{
		status = 0;
	}
 
 
	return status;
}







 
 
 
 
boolean pbistPortTestStatus(uint32 port)
{
    boolean status;
 
 

    if(port == (uint32)PBIST_PORT0)
    {
      status =  (((pbistBASE_t *)0xFFFFE560U)->FSRF0 == 0U);
    }
    else
    {
       
      status =  0;
    }

    return  status;
}









 
 
 
 
uint32 efcCheck(void)
{
    uint32 efcStatus = 0U;
    uint32 status;
    
 
 

     
    efcStatus = ((efcBASE_t *)0xFFF8C000U)->ERROR;

 
 

    if (efcStatus == 0x0U)
    {
         
        if (efcStuckZeroTest()== 1)
        {
             
            efcSelfTest();
            status = 0U;
        }
        else
        {
             
            selftestFailNotification(6U);
            status = 1U;
        }
    }
     
    else
    {
         
        if (efcStatus == 0x15U)
        {
             
            efcSelfTest();
            status = 2U;
        }
        else
        {
             
            selftestFailNotification(6U);
            status = 3U;
        }
    }
    return status;
}






 
 
 
 
boolean efcStuckZeroTest(void)
{
 
 

    uint32 ESM_ESTATUS4, ESM_ESTATUS1;

    boolean result = 0;
    uint32 error_checks = 0x00100000U  |
                                  0x00080000U |
                                  0x00040000U      |
                                  0x00200000U   ;

    

 
    ((efcBASE_t *)0xFFF8C000U)->BOUNDARY = ((uint32)0x0003C000U | error_checks);

    

 
    if ((((efcBASE_t *)0xFFF8C000U)->PINS & 0x5C00U) == 0x5C00U)
    {
        ESM_ESTATUS4 = ((esmBASE_t *)0xFFFFF500U)->SR4[0U];
        ESM_ESTATUS1 = ((esmBASE_t *)0xFFFFF500U)->SR1[2U];
         
        if (((ESM_ESTATUS4 & 0x200U) == 0x200U) && ((ESM_ESTATUS1 & 0x2U) == 0x2U))
        {
            
           result = 1;
        }
    }

     
    ((efcBASE_t *)0xFFF8C000U)->BOUNDARY = 0x0003C000U;

     
    ((esmBASE_t *)0xFFFFF500U)->SR4[0U] = 0x200U;

     
    ((esmBASE_t *)0xFFFFF500U)->SR1[2U] = 0x2U;

     
    ((esmBASE_t *)0xFFFFF500U)->EKR = 0x5U;

    return result;
}





 
 
 
 
void efcSelfTest(void)
{
 
 
     
    ((efcBASE_t *)0xFFF8C000U)->SELF_TEST_CYCLES = 0x258U;

     
    ((efcBASE_t *)0xFFF8C000U)->SELF_TEST_SIGN = 0x5362F97FU;

     
    ((efcBASE_t *)0xFFF8C000U)->BOUNDARY = 0x0000200FU;
}







 
 
 
 
boolean checkefcSelfTest(void)
{
 
 
    boolean result = 0;

    uint32 EFC_PINS, EFC_ERROR;
	uint32 esmCh40Stat, esmCh41Stat = 0U;

     
     
    while((((efcBASE_t *)0xFFF8C000U)->PINS & 0x00008000U) == 0U)
    {
    } 

     
    EFC_PINS = ((efcBASE_t *)0xFFF8C000U)->PINS;
    EFC_ERROR = ((efcBASE_t *)0xFFF8C000U)->ERROR;
    if(((EFC_PINS & 0x00004000U) == 0U) && ((EFC_ERROR & 0x1FU) == 0U))
    {
         
		esmCh40Stat = ((esmBASE_t *)0xFFFFF500U)->SR4[0U] & 0x100U;
		esmCh41Stat = ((esmBASE_t *)0xFFFFF500U)->SR4[0U] & 0x200U;
        if ((esmCh40Stat == 0U) && (esmCh41Stat == 0U))
        {
            result = 1;
        }
    }
    return result;
}





 
 
 
 
void fmcBus2Check(void)
{
 
 
     
    ((flashWBASE_t *)(0xFFF87000U))->FEDACCTRL1 = 0x000A060AU;

    if ((((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x40U) == 0x40U)
    {
        
 

         
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x40U;

        fmcECCcheck();
    }

     
    else
    {
        fmcECCcheck();
    }
 
 
}





 
 
 
 
void fmcECCcheck(void)
{
    volatile uint32 otpread;
    volatile uint32 temp;

 
 

     
    otpread = (*(volatile uint32 *)(0xF00803F0U));
    if ((((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x40U) == 0x40U)
    {
         
        ((flashWBASE_t *)(0xFFF87000U))->FEDACSTATUS = 0x00010006U;

         
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x40U;

         
        otpread = (*(volatile uint32 *)(0xF00803F8U));
        if ((((esmBASE_t *)0xFFFFF500U)->SR1[2U] & 0x80U) == 0x80U)
        {
             
            temp = ((flashWBASE_t *)(0xFFF87000U))->FUNCERRADD;
            ((flashWBASE_t *)(0xFFF87000U))->FEDACSTATUS = 0x00020100U;

             
            ((esmBASE_t *)0xFFFFF500U)->SR1[2U] = 0x80U;

             
            ((esmBASE_t *)0xFFFFF500U)->EKR = 0x5U;

        }
        else
        {
             
            selftestFailNotification(8U);
        }
    }
    else
    {
         
        selftestFailNotification(8U);
    }
 
 
}





 
 
 
 
void checkB0RAMECC(void)
{
    volatile uint64 ramread = 0U;
	volatile uint32 regread = 0U;
	uint32 tcram1ErrStat, tcram2ErrStat = 0U;
	
    uint64 tcramA1_bk = (*(volatile uint64 *)(0x08000000U));
    uint64 tcramA2_bk = (*(volatile uint64 *)(0x08000010U));
    volatile uint32 i;
 
 

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMCTRL = 0x0005010AU;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMCTRL = 0x0005010AU;

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMTHRESHOLD = 0x1U;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMTHRESHOLD = 0x1U;

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMINTCTRL = 0x1U;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMINTCTRL = 0x1U;

     
    _coreDisableRamEcc_();
    (*(volatile uint32 *)(0x08400000U)) ^= 0x1U;
    _coreEnableRamEcc_();

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMCTRL = 0x0005000AU;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMCTRL = 0x0005000AU;

     
    ramread = (*(volatile uint64 *)(0x08000000U));

	 
	tcram1ErrStat = ((tcramBASE_t *)(0xFFFFF800U))->RAMERRSTATUS & 0x1U;
	tcram2ErrStat = ((tcramBASE_t *)(0xFFFFF900U))->RAMERRSTATUS & 0x1U;
	 
	 
    if((tcram1ErrStat == 0U) && (tcram2ErrStat == 0U))
    {
         
        selftestFailNotification(9U);
    }
    else
    {
         
        ((tcramBASE_t *)(0xFFFFF800U))->RAMERRSTATUS = 0x1U;
        ((tcramBASE_t *)(0xFFFFF900U))->RAMERRSTATUS = 0x1U;

         
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x14000000U;
    }

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMCTRL = 0x0005010AU;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMCTRL = 0x0005010AU;

     
    _coreDisableRamEcc_();
    (*(volatile uint32 *)(0x08400010U)) ^= 0x3U;
    _coreEnableRamEcc_();

     
    ramread = (*(volatile uint64 *)(0x08000010U));

     
	 
	 
    for(i=0U;i<10U;i++)
    {
    } 

    regread = ((tcramBASE_t *)(0xFFFFF800U))->RAMUERRADDR;
    regread = ((tcramBASE_t *)(0xFFFFF900U))->RAMUERRADDR;

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMCTRL = 0x0005000AU;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMCTRL = 0x0005000AU;

     
    (*(volatile uint64 *)(0x08000000U)) = tcramA1_bk;
    (*(volatile uint64 *)(0x08000010U)) = tcramA2_bk;

 
 
}





 
 
 
 
void checkB1RAMECC(void)
{
    volatile uint64 ramread = 0U;
	volatile uint32 regread = 0U;
	uint32 tcram1ErrStat, tcram2ErrStat = 0U;

    uint64 tcramB1_bk = (*(volatile uint64 *)(0x08000008U));
    uint64 tcramB2_bk = (*(volatile uint64 *)(0x08000018U));
    volatile uint32 i;
 
 

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMCTRL = 0x0005010AU;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMCTRL = 0x0005010AU;

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMTHRESHOLD = 0x1U;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMTHRESHOLD = 0x1U;

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMINTCTRL = 0x1U;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMINTCTRL = 0x1U;

     
    _coreDisableRamEcc_();
    (*(volatile uint32 *)(0x08400008U)) ^= 0x1U;
    _coreEnableRamEcc_();

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMCTRL = 0x0005000AU;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMCTRL = 0x0005000AU;

     
    ramread = (*(volatile uint64 *)(0x08000008U));

	 
	tcram1ErrStat = ((tcramBASE_t *)(0xFFFFF800U))->RAMERRSTATUS & 0x1U;
	tcram2ErrStat = ((tcramBASE_t *)(0xFFFFF900U))->RAMERRSTATUS & 0x1U;
	 
	 
    if((tcram1ErrStat == 0U) && (tcram2ErrStat == 0U))
    {
         
        selftestFailNotification(10U);
    }
    else
    {
         
        ((tcramBASE_t *)(0xFFFFF800U))->RAMERRSTATUS = 0x1U;
        ((tcramBASE_t *)(0xFFFFF900U))->RAMERRSTATUS = 0x1U;

         
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x14000000U;
    }

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMCTRL = 0x0005010AU;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMCTRL = 0x0005010AU;

     
    _coreDisableRamEcc_();
    (*(volatile uint32 *)(0x08400018U)) ^= 0x3U;
    _coreEnableRamEcc_();

     
    ramread = (*(volatile uint64 *)(0x08000018U));

     
     
	 
	for(i=0U;i<10U;i++)
    {
    } 

    regread = ((tcramBASE_t *)(0xFFFFF800U))->RAMUERRADDR;
    regread = ((tcramBASE_t *)(0xFFFFF900U))->RAMUERRADDR;

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMCTRL = 0x0005000AU;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMCTRL = 0x0005000AU;

     
    (*(volatile uint64 *)(0x08000008U)) = tcramB1_bk;
    (*(volatile uint64 *)(0x08000018U)) = tcramB2_bk;

 
 
}





 
 
 
 
void checkFlashECC(void)
{
     
    volatile uint32 flashread = 0U;

 
 

     
    ((flashWBASE_t *)(0xFFF87000U))->FEDACCTRL1 = 0x000A060AU;

     
    ((flashWBASE_t *)(0xFFF87000U))->FDIAGCTRL = 0x00050007U;

     
    ((flashWBASE_t *)(0xFFF87000U))->FPAROVR = 0x00005A01U;

     
    ((flashWBASE_t *)(0xFFF87000U))->FDIAGCTRL |= 0x01000000U;

     
    flashread = (*(volatile uint32 *)(0x20000000U));

     
    ((flashWBASE_t *)(0xFFF87000U))->FDIAGCTRL = 0x000A0007U;

     
     
     
    if ((((flashWBASE_t *)(0xFFF87000U))->FEDACSTATUS & 0x2U) == 0U)
    {
        selftestFailNotification(11U);
    }
    else
    {
         
        ((flashWBASE_t *)(0xFFF87000U))->FEDACSTATUS = 0x2U;

         
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x40U;

         
        ((flashWBASE_t *)(0xFFF87000U))->FDIAGCTRL = 0x00050007U;

         
        ((flashWBASE_t *)(0xFFF87000U))->FPAROVR = 0x00005A03U;

         
        ((flashWBASE_t *)(0xFFF87000U))->FDIAGCTRL |= 0x01000000U;

         
        flashread = (*(volatile uint32 *)(0x20000010U));

         
        flashread = ((flashWBASE_t *)(0xFFF87000U))->FUNCERRADD;

         
        ((flashWBASE_t *)(0xFFF87000U))->FDIAGCTRL = 0x000A0007U;
    }

 
 
}





 
void custom_dabort(void)
{
    

 
 
 
}





 
void stcSelfCheckFail(void)
{
 
 
    


 

    

 
 
 
     
     
     
    for(;;)
    {
    } 
 
 
}





 
void cpuSelfTestFail(void)
{
 
 
    

 
 
 
     
     
     
    for(;;)
    {
    } 
 
 
}






 
 
 
 
void vimParityCheck(void)
{
    volatile uint32 vimramread = 0U;
    uint32 vimparctl_bk = (*(volatile uint32 *)0xFFFFFDF0U);

 
 

     
    (*(volatile uint32 *)0xFFFFFDF0U) = 0x0000010AU;

     
    (*(volatile uint32 *)0xFFF82400U) ^= 0x1U;

     
    (*(volatile uint32 *)0xFFFFFDF0U) = 0x0000000AU;

     
    vimramread = (*(volatile uint32 *)0xFFF82000U);

     
    if ((((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x8000U) ==0U)
    {
         
        selftestFailNotification(12U);
    }
    else
    {
         
        (*(volatile uint32 *)0xFFFFFDECU) = 0x1U;

         
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x8000U;

         
        (*(volatile uint32 *)0xFFFFFDF0U) = 0x0000010AU;

         
        (*(volatile uint32 *)0xFFF82400U) ^= 0x1U;
    }

     
    (*(volatile uint32 *)0xFFFFFDF0U) = vimparctl_bk;

 
 
}






 
 
 
 
void dmaParityCheck(void)
{
    volatile uint32 dmaread = 0U;
    uint32 dmaparcr_bk = (*(volatile uint32 *)(0xFFFFF1A8U));

 
 

     
    (*(volatile uint32 *)(0xFFFFF1A8U)) = 0x0000010AU;

     
    (*(volatile uint32 *)(0xFFF80A00U)) ^= 0x1U;

     
    (*(volatile uint32 *)(0xFFFFF1A8U)) = 0x0000000AU;

     
    dmaread = (*(volatile uint32 *)(0xFFF80000U));

     
    if ((((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x8U) == 0U)
    {
         
        selftestFailNotification(13U);
    }
    else
    {
         
        (*(volatile uint32 *)(0xFFFFF1ACU)) = 0x01000000U;

         
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x8U;

         
        (*(volatile uint32 *)(0xFFFFF1A8U)) = 0x0000010AU;

         
        (*(volatile uint32 *)(0xFFF80A00U)) ^= 0x1U;
    }

     
    (*(volatile uint32 *)(0xFFFFF1A8U)) = dmaparcr_bk;

 
 
}






 
 
 
 
void het1ParityCheck(void)
{
    volatile uint32 nhetread = 0U;
    uint32 hetpcr_bk = ((hetBASE_t *)0xFFF7B800U)->PCR;

 
 

     
    ((hetBASE_t *)0xFFF7B800U)->PCR = 0x0000010AU;

     
    (*(volatile uint32 *)0xFF462000U) ^= 0x1U;

     
    ((hetBASE_t *)0xFFF7B800U)->PCR = 0x0000000AU;

     
    nhetread = (*(volatile uint32 *)0xFF460000U);

     
    if ((((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x80U) ==0U)
    {
         
        selftestFailNotification(14U);
    }
    else
    {
         
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x80U;

         
        ((hetBASE_t *)0xFFF7B800U)->PCR = 0x0000010AU;

         
        (*(volatile uint32 *)0xFF462000U) ^= 0x1U;
    }

     
    ((hetBASE_t *)0xFFF7B800U)->PCR = hetpcr_bk;

 
 
}






 
 
 
 
void htu1ParityCheck(void)
{
    volatile uint32 hturead = 0U;
    uint32 htupcr_bk = ((htuBASE_t *)0xFFF7A400U)->PCR;

 
 

     
    ((htuBASE_t *)0xFFF7A400U)->PCR = 0x0000010AU;

     
    (*(volatile uint32 *)0xFF4E0200U) ^= 0x1U;

     
    ((htuBASE_t *)0xFFF7A400U)->PCR = 0x0000000AU;

     
    hturead = (*(volatile uint32 *)0xFF4E0000U);

     
    if ((((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x100U) == 0U)
    {
         
        selftestFailNotification(15U);
    }
    else
    {
         
        ((htuBASE_t *)0xFFF7A400U)->PAR = 0x00010000U;
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x100U;

         
        ((htuBASE_t *)0xFFF7A400U)->PCR = 0x0000010AU;

         
        (*(volatile uint32 *)0xFF4E0200U) ^= 0x1U;
    }

     
    ((htuBASE_t *)0xFFF7A400U)->PCR = htupcr_bk;

 
 

}






 
 
 
 
void het2ParityCheck(void)
{
    volatile uint32 nhetread = 0U;
    uint32 hetpcr_bk = ((hetBASE_t *)0xFFF7B900U)->PCR;
	uint32 esmCh7Stat, esmCh34Stat = 0U;
	
 
 

     
    ((hetBASE_t *)0xFFF7B900U)->PCR = 0x0000010AU;

     
    (*(volatile uint32 *)0xFF442000U) ^= 0x1U;

     
    ((hetBASE_t *)0xFFF7B900U)->PCR = 0x0000000AU;

     
    nhetread = (*(volatile uint32 *)0xFF440000U);

     
	esmCh7Stat  = ((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x80U;
	esmCh34Stat = ((esmBASE_t *)0xFFFFF500U)->SR4[0U] & 0x4U;
    if ((esmCh7Stat == 0U) && (esmCh34Stat ==0U))
    {
         
        selftestFailNotification(16U);
    }
    else
    {
         
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x80U;

         
        ((esmBASE_t *)0xFFFFF500U)->SR4[0U] = 0x4U;

         
        ((hetBASE_t *)0xFFF7B900U)->PCR = 0x0000010AU;

         
        (*(volatile uint32 *)0xFF442000U) ^= 0x1U;
    }

     
    ((hetBASE_t *)0xFFF7B900U)->PCR = hetpcr_bk;

 
 
}






 
 
 
 
void htu2ParityCheck(void)
{
    volatile uint32 hturead = 0U;
    uint32 htupcr_bk = ((htuBASE_t *)0xFFF7A500U)->PCR;

 
 

     
    ((htuBASE_t *)0xFFF7A500U)->PCR = 0x0000010AU;

     
    (*(volatile uint32 *)0xFF4C0200U) ^= 0x1U;

     
    ((htuBASE_t *)0xFFF7A500U)->PCR = 0x0000000AU;

     
    hturead = (*(volatile uint32 *)0xFF4C0000U);

     
    if ((((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x100U) == 0U)
    {
         
        selftestFailNotification(17U);
    }
    else
    {
         
        ((htuBASE_t *)0xFFF7A500U)->PAR = 0x00010000U;
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x100U;

         
        ((htuBASE_t *)0xFFF7A500U)->PCR = 0x0000010AU;

         
        (*(volatile uint32 *)0xFF4C0200U) ^= 0x1U;
    }

     
    ((htuBASE_t *)0xFFF7A500U)->PCR = htupcr_bk;

 
 
}






 
 
 
 
void adc1ParityCheck(void)
{
    volatile uint32 adcramread = 0U;
    uint32 adcparcr_bk = ((adcBASE_t *)0xFFF7C000U)->PARCR;

 
 

     
    ((adcBASE_t *)0xFFF7C000U)->PARCR = 0x10AU;

     
    (*(volatile uint32 *)(0xFF3E0000U + 0x1000U)) = ~((*(volatile uint32 *)(0xFF3E0000U + 0x1000U)));

     
    ((adcBASE_t *)0xFFF7C000U)->PARCR = 0x00AU;

     
    adcramread = (*(volatile uint32 *)0xFF3E0000U);

     
    if ((((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x80000U) ==0U)
    {
         
        selftestFailNotification(18U);
    }
    else
    {
         
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x80000U;

         
        ((adcBASE_t *)0xFFF7C000U)->PARCR = 0x10AU;

         
        (*(volatile uint32 *)(0xFF3E0000U + 0x1000U)) = ~((*(volatile uint32 *)(0xFF3E0000U + 0x1000U)));
    }

     
    ((adcBASE_t *)0xFFF7C000U)->PARCR = adcparcr_bk;

 
 
}






 
 
 
 
void adc2ParityCheck(void)
{
    volatile uint32 adcramread = 0U;
    uint32 adcparcr_bk = ((adcBASE_t *)0xFFF7C200U)->PARCR;

 
 

     
    ((adcBASE_t *)0xFFF7C200U)->PARCR = 0x10AU;

     
    (*(volatile uint32 *)(0xFF3A0000U + 0x1000U)) = ~((*(volatile uint32 *)(0xFF3A0000U + 0x1000U)));

     
    ((adcBASE_t *)0xFFF7C200U)->PARCR = 0x00AU;

     
    adcramread = (*(volatile uint32 *)0xFF3A0000U);

     
    if ((((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x2U) == 0U)
    {
         
        selftestFailNotification(19U);
    }
    else
    {
         
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x2U;

         
        ((adcBASE_t *)0xFFF7C200U)->PARCR = 0x10AU;

         
        (*(volatile uint32 *)(0xFF3A0000U + 0x1000U)) = ~((*(volatile uint32 *)(0xFF3A0000U + 0x1000U)));
    }

     
    ((adcBASE_t *)0xFFF7C200U)->PARCR = adcparcr_bk;

 
 
}





 
 
 
 
void can1ParityCheck(void)
{
    volatile uint32 canread = 0U;
     
    uint32 canctl_bk =  ((canBASE_t *)0xFFF7DC00U)->CTL;

 
 

     
    ((canBASE_t *)0xFFF7DC00U)->CTL = 0x00001481U;

     
    ((canBASE_t *)0xFFF7DC00U)->TEST = 0x00000200U;

     
    (*(volatile uint32 *)(0xFF1E0000U + 0x10U)) ^= 0x00001000U;

     
    ((canBASE_t *)0xFFF7DC00U)->CTL = 0x00002880U;

     
    canread = (*(volatile uint32 *)0xFF1E0000U);

     
    if ((((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x00200000U) == 0U)
    {
         
        selftestFailNotification(20U);
    }
    else
    {
         
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x00200000U;

         
        ((canBASE_t *)0xFFF7DC00U)->CTL = 0x00001481U;

         
        (*(volatile uint32 *)(0xFF1E0000U + 0x10U)) ^= 0x00001000U;
    }

     
    ((canBASE_t *)0xFFF7DC00U)->TEST = 0x00000000U;

     
    ((canBASE_t *)0xFFF7DC00U)->CTL = canctl_bk;

     
    canread = ((canBASE_t *)0xFFF7DC00U)->ES;

 
 
}






 
 
 
 
void can2ParityCheck(void)
{
    volatile uint32 canread = 0U;
     
    uint32 canctl_bk = ((canBASE_t *)0xFFF7DE00U)->CTL;

 
 

     
    ((canBASE_t *)0xFFF7DE00U)->CTL = 0x00001481U;

     
    ((canBASE_t *)0xFFF7DE00U)->TEST = 0x00000200U;

     
    (*(volatile uint32 *)(0xFF1C0000U + 0x10U)) ^= 0x00001000U;

     
    ((canBASE_t *)0xFFF7DE00U)->CTL = 0x00002880U;

     
    canread = (*(volatile uint32 *)0xFF1C0000U);

     
    if ((((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x00800000U) == 0U)
    {
         
        selftestFailNotification(21U);
    }
    else
    {
         
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x00800000U;

         
        ((canBASE_t *)0xFFF7DE00U)->CTL = 0x00001481U;

         
        (*(volatile uint32 *)(0xFF1C0000U + 0x10U)) ^= 0x00001000U;
    }

     
    ((canBASE_t *)0xFFF7DE00U)->TEST = 0x00000000U;

     
    ((canBASE_t *)0xFFF7DE00U)->CTL = canctl_bk;

     
    canread = ((canBASE_t *)0xFFF7DE00U)->ES;

 
 
}






 
 
 
 
void can3ParityCheck(void)
{
    volatile uint32 canread = 0U;
     
    uint32 canctl_bk = ((canBASE_t *)0xFFF7E000U)->CTL;

 
 

     
    ((canBASE_t *)0xFFF7E000U)->CTL = 0x00001481U;

     
    ((canBASE_t *)0xFFF7E000U)->TEST = 0x00000200U;

     
    (*(volatile uint32 *)(0xFF1A0000U + 0x10U)) ^= 0x00001000U;

     
    ((canBASE_t *)0xFFF7E000U)->CTL = 0x00002880U;

     
    canread = (*(volatile uint32 *)0xFF1A0000U);

     
    if ((((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x00400000U) == 0U)
    {
         
        selftestFailNotification(22U);
    }
    else
    {
         
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x00400000U;

         
        ((canBASE_t *)0xFFF7E000U)->CTL = 0x00001481U;

         
        (*(volatile uint32 *)(0xFF1A0000U + 0x10U)) ^= 0x00001000U;
    }

     
    ((canBASE_t *)0xFFF7E000U)->TEST = 0x00000000U;

     
    ((canBASE_t *)0xFFF7E000U)->CTL = canctl_bk;

     
    canread = ((canBASE_t *)0xFFF7E000U)->ES;

 
 
}






 
 
 
 
void mibspi1ParityCheck(void)
{
    volatile uint32 spiread = 0U;
    uint32 mibspie_bk = ((mibspiBASE_t *)0xFFF7F400U)->MIBSPIE;
    uint32 mibspictl_bk = ((mibspiBASE_t *)0xFFF7F400U)->UERRCTRL;

 
 

     
    ((mibspiBASE_t *)0xFFF7F400U)->MIBSPIE = 0x1U;

     
    ((mibspiBASE_t *)0xFFF7F400U)->UERRCTRL = (((mibspiBASE_t *)0xFFF7F400U)->UERRCTRL & 0xFFFFFFF0U) | (0xAU);

     
    ((mibspiBASE_t *)0xFFF7F400U)->UERRCTRL |= 0x00000100U;

     
    (*(volatile uint32 *)(0xFF0E0000U + 0x00000400U)) ^= 0x1U;

     
    ((mibspiBASE_t *)0xFFF7F400U)->UERRCTRL &= 0xFFFFFEFFU;

     
    spiread = (*(volatile uint32 *)(0xFF0E0000U));

     
    if ((((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x20000U) == 0U)
    {
         
        selftestFailNotification(23U);
    }
    else
    {
         
        ((mibspiBASE_t *)0xFFF7F400U)->UERRSTAT = 0x3U;

         
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x20000U;

         
        ((mibspiBASE_t *)0xFFF7F400U)->UERRCTRL |= 0x00000100U;

         
        (*(volatile uint32 *)(0xFF0E0000U + 0x00000400U)) ^= 0x1U;
    }

     
    ((mibspiBASE_t *)0xFFF7F400U)->UERRCTRL = mibspictl_bk;
    ((mibspiBASE_t *)0xFFF7F400U)->MIBSPIE = mibspie_bk;

 
 
}





 
 
 
 
void mibspi3ParityCheck(void)
{
    volatile uint32 spiread = 0U;
    uint32 mibspie_bk = ((mibspiBASE_t *)0xFFF7F800U)->MIBSPIE;
    uint32 mibspictl_bk = ((mibspiBASE_t *)0xFFF7F800U)->UERRCTRL;

 
 

     
    ((mibspiBASE_t *)0xFFF7F800U)->MIBSPIE = 0x1U;

     
    ((mibspiBASE_t *)0xFFF7F800U)->UERRCTRL |= 0x00000100U;

     
    (*(volatile uint32 *)(0xFF0C0000U + 0x00000400U)) ^= 0x1U;

     
    ((mibspiBASE_t *)0xFFF7F800U)->UERRCTRL = (((mibspiBASE_t *)0xFFF7F800U)->UERRCTRL & 0xFFFFFFF0U) | (0xAU);

     
    ((mibspiBASE_t *)0xFFF7F800U)->UERRCTRL &= 0xFFFFFEFFU;

     
    spiread = (*(volatile uint32 *)(0xFF0C0000U));

     
    if ((((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x40000U) == 0U)
    {
         
        selftestFailNotification(24U);
    }
    else
    {
         
        ((mibspiBASE_t *)0xFFF7F800U)->UERRSTAT = 0x3U;

         
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x40000U;

         
        ((mibspiBASE_t *)0xFFF7F800U)->UERRCTRL |= 0x00000100U;

         
        (*(volatile uint32 *)(0xFF0C0000U + 0x00000400U)) ^= 0x1U;
    }

     
    ((mibspiBASE_t *)0xFFF7F800U)->UERRCTRL = mibspictl_bk;
    ((mibspiBASE_t *)0xFFF7F800U)->MIBSPIE = mibspie_bk;

 
 
}





 
 
 
 
void mibspi5ParityCheck(void)
{
    volatile uint32 spiread = 0U;
    uint32 mibspie_bk = ((mibspiBASE_t *)0xFFF7FC00U)->MIBSPIE;
    uint32 mibspictl_bk = ((mibspiBASE_t *)0xFFF7FC00U)->UERRCTRL;

 
 

     
    ((mibspiBASE_t *)0xFFF7FC00U)->MIBSPIE = 0x1U;

     
    ((mibspiBASE_t *)0xFFF7FC00U)->UERRCTRL |= 0x00000100U;

     
    (*(volatile uint32 *)(0xFF0A0000U + 0x00000400U)) ^= 0x1U;

     
    ((mibspiBASE_t *)0xFFF7FC00U)->UERRCTRL = (((mibspiBASE_t *)0xFFF7FC00U)->UERRCTRL & 0xFFFFFFF0U) | (0xAU);

     
    ((mibspiBASE_t *)0xFFF7FC00U)->UERRCTRL &= 0xFFFFFEFFU;

     
    spiread = (*(volatile uint32 *)(0xFF0A0000U));

     
    if ((((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x01000000U) == 0U)
    {
         
        selftestFailNotification(25U);
    }
    else
    {
         
        ((mibspiBASE_t *)0xFFF7FC00U)->UERRSTAT = 0x3U;

         
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x01000000U;

         
        ((mibspiBASE_t *)0xFFF7FC00U)->UERRCTRL |= 0x00000100U;

         
        (*(volatile uint32 *)(0xFF0A0000U + 0x00000400U)) ^= 0x1U;
    }

     
    ((mibspiBASE_t *)0xFFF7FC00U)->UERRCTRL = mibspictl_bk;
    ((mibspiBASE_t *)0xFFF7FC00U)->MIBSPIE = mibspie_bk;

 
 
}





 
 
 
 
void checkRAMECC(void)
{
    volatile uint64 ramread = 0U;
	volatile uint32 regread = 0U;
	uint32 tcram1ErrStat, tcram2ErrStat = 0U;
	
    uint64 tcramA1_bk = (*(volatile uint64 *)(0x08000000U));
    uint64 tcramB1_bk = (*(volatile uint64 *)(0x08000008U));
    uint64 tcramA2_bk = (*(volatile uint64 *)(0x08000010U));
    uint64 tcramB2_bk = (*(volatile uint64 *)(0x08000018U));

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMOCCUR = 0U;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMOCCUR = 0U;

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMTHRESHOLD = 1U;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMTHRESHOLD = 1U;

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMINTCTRL = 1U;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMINTCTRL = 1U;

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMCTRL = 0x0005010AU;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMCTRL = 0x0005010AU;

     
    _coreDisableRamEcc_();
    (*(volatile uint32 *)(0x08400000U)) ^= 1U;
    (*(volatile uint32 *)(0x08400008U)) ^= 1U;
    _coreEnableRamEcc_();

     
    ramread = (*(volatile uint64 *)(0x08000000U));
    ramread = (*(volatile uint64 *)(0x08000008U));

	 
	tcram1ErrStat = ((tcramBASE_t *)(0xFFFFF800U))->RAMERRSTATUS & 0x1U;
	tcram2ErrStat = ((tcramBASE_t *)(0xFFFFF900U))->RAMERRSTATUS & 0x1U;
	 
	 
    if((tcram1ErrStat == 0U) || (tcram2ErrStat == 0U))
    {
         
        selftestFailNotification(26U);
    }
    else
    {
        if((((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x14000000U) != 0x14000000U)
        {
             
            selftestFailNotification(27U);
        }
        else
        {
             
            ((tcramBASE_t *)(0xFFFFF800U))->RAMERRSTATUS = 0x1U;
            ((tcramBASE_t *)(0xFFFFF900U))->RAMERRSTATUS = 0x1U;

             
            ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x14000000U;
        }
    }

     
    _coreDisableRamEcc_();
    (*(volatile uint32 *)(0x08400010U)) ^= 3U;
    (*(volatile uint32 *)(0x08400018U)) ^= 3U;
    _coreEnableRamEcc_();

     
    ramread = (*(volatile uint64 *)(0x08000010U));
    ramread = (*(volatile uint64 *)(0x08000018U));

    regread = ((tcramBASE_t *)(0xFFFFF800U))->RAMUERRADDR;
    regread = ((tcramBASE_t *)(0xFFFFF900U))->RAMUERRADDR;

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMCTRL = 0x0005000AU;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMCTRL = 0x0005000AU;

     
    (*(volatile uint64 *)(0x08000000U)) = tcramA1_bk;
    (*(volatile uint64 *)(0x08000008U)) = tcramB1_bk;
    (*(volatile uint64 *)(0x08000010U)) = tcramA2_bk;
    (*(volatile uint64 *)(0x08000018U)) = tcramB2_bk;
}





 
 
 
 
void checkClockMonitor(void)
{
    uint32 ghvsrc_bk;

     
    ((systemBASE1_t *)0xFFFFFF00U)->CLKTEST |= 0x03000000U;

     
    ghvsrc_bk = ((systemBASE1_t *)0xFFFFFF00U)->GHVSRC;

     
    ((systemBASE1_t *)0xFFFFFF00U)->GHVSRC = 0x05050005U;

     
    ((systemBASE1_t *)0xFFFFFF00U)->CSDISSET = 0x1U;

     
     
    while((((systemBASE1_t *)0xFFFFFF00U)->GBLSTAT & 0x1U) == 0U)
    {
    }  

    if((((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x800U) != 0x800U)
    {
        selftestFailNotification(28U);
    }
    else
    {
         
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x800U;

         
        ((systemBASE1_t *)0xFFFFFF00U)->CLKTEST &= ~(0x03000000U);

         
        ((systemBASE1_t *)0xFFFFFF00U)->CSDISCLR = 0x1U;

         
         
        while((((systemBASE1_t *)0xFFFFFF00U)->CSVSTAT & 0x3U) == 0U)
        {
        }  

         
        ((systemBASE1_t *)0xFFFFFF00U)->GBLSTAT = 0x301U;

         
        ((systemBASE1_t *)0xFFFFFF00U)->GHVSRC = ghvsrc_bk;
    }
}





 
 
 
 
void checkFlashEEPROMECC(void)
{
    uint32 ecc;
    volatile uint32 regread;

     
    ((flashWBASE_t *)(0xFFF87000U))->EECTRL2 |= 1U;

     
    ((flashWBASE_t *)(0xFFF87000U))->EECTRL1 |= 0x00000100U;

     
    ((flashWBASE_t *)(0xFFF87000U))->FEMUADDR = 0xF0200000U;
    ((flashWBASE_t *)(0xFFF87000U))->FEMUDMSW = 0U;
    ((flashWBASE_t *)(0xFFF87000U))->FEMUDLSW = 0U;

     
    ecc = ((flashWBASE_t *)(0xFFF87000U))->FEMUECC;

     
    ((flashWBASE_t *)(0xFFF87000U))->FEMUDMSW = 0U;
    ((flashWBASE_t *)(0xFFF87000U))->FEMUDLSW = 1U;

     
    ((flashWBASE_t *)(0xFFF87000U))->FDIAGCTRL = 0x00055001U;

    ((flashWBASE_t *)(0xFFF87000U))->FEMUECC = ecc;

     
    ((flashWBASE_t *)(0xFFF87000U))->FDIAGCTRL |= 0x01000000U;

     
    if((((flashWBASE_t *)(0xFFF87000U))->EESTATUS & 0x1U) != 0x1U)
    {
         
        selftestFailNotification(29U);
    }
    else
    {
        if((((esmBASE_t *)0xFFFFF500U)->SR4[0U] & 0x8U) != 0x8U)
        {
             
            selftestFailNotification(31U);
        }
        else
        {
             
            ((flashWBASE_t *)(0xFFF87000U))->EESTATUS = 0xFU;

             
            ((esmBASE_t *)0xFFFFF500U)->SR4[0U] = 0x8U;
        }
    }

     
    ((flashWBASE_t *)(0xFFF87000U))->FEMUDMSW = 0U;
    ((flashWBASE_t *)(0xFFF87000U))->FEMUDLSW = 3U;

     
    ((flashWBASE_t *)(0xFFF87000U))->FDIAGCTRL = 0x00055001U;

    ((flashWBASE_t *)(0xFFF87000U))->FEMUECC = ecc;

     
    ((flashWBASE_t *)(0xFFF87000U))->FDIAGCTRL |= 0x01000000U;

     
    if((((flashWBASE_t *)(0xFFF87000U))->EESTATUS & 0x100U) != 0x100U)
    {
         
        selftestFailNotification(32U);
    }
    else
    {
        if((((esmBASE_t *)0xFFFFF500U)->SR4[0U] & 0x10U) != 0x10U)
        {
             
            selftestFailNotification(33U);
        }
        else
        {
             
            ((flashWBASE_t *)(0xFFF87000U))->EESTATUS = 0x1100U;

             
            regread = ((flashWBASE_t *)(0xFFF87000U))->EEUNCERRADD;

             
            ((esmBASE_t *)0xFFFFF500U)->SR4[0U] = 0x10U;


        }
    }
}





 
 
 
 
void checkPLL1Slip(void)
{
    uint32 ghvsrc_bk, pllctl1_bk;

     
    ghvsrc_bk = ((systemBASE1_t *)0xFFFFFF00U)->GHVSRC;
    pllctl1_bk = ((systemBASE1_t *)0xFFFFFF00U)->PLLCTL1;

     
    ((systemBASE1_t *)0xFFFFFF00U)->GHVSRC = 0x00000000U;

     
    ((systemBASE1_t *)0xFFFFFF00U)->PLLCTL1 &= 0x1FFFFFFFU;

     
    ((systemBASE1_t *)0xFFFFFF00U)->PLLCTL1 ^= 0x8000U;

     
     
    while((((systemBASE1_t *)0xFFFFFF00U)->GBLSTAT & 0x300U) == 0U)
    {
    }  

    if((((esmBASE_t *)0xFFFFF500U)->SR1[0U] & 0x400U) != 0x400U)
    {
         
        selftestFailNotification(34U);
    }
    else
    {
         
        ((systemBASE1_t *)0xFFFFFF00U)->CSDISSET = 0x2U;

         
         
        while((((systemBASE1_t *)0xFFFFFF00U)->CSDIS & 0x2U) == 0U)
        {
        }  

         
        ((systemBASE1_t *)0xFFFFFF00U)->PLLCTL1 ^= 0x8000U;

         
        ((systemBASE1_t *)0xFFFFFF00U)->CSDISCLR = 0x2U;

         
         
        while((((systemBASE1_t *)0xFFFFFF00U)->CSDIS & 0x2U) != 0U)
        {
        }  

         
        ((systemBASE1_t *)0xFFFFFF00U)->GHVSRC = ghvsrc_bk;

         
        ((systemBASE1_t *)0xFFFFFF00U)->GBLSTAT = 0x300U;

         
        ((esmBASE_t *)0xFFFFF500U)->SR1[0U] = 0x400U;

         
        ((systemBASE1_t *)0xFFFFFF00U)->PLLCTL1 = pllctl1_bk;
    }
}





 
 
 
 
void checkPLL2Slip(void)
{
    uint32 ghvsrc_bk;

     
    ghvsrc_bk = ((systemBASE1_t *)0xFFFFFF00U)->GHVSRC;

     
    ((systemBASE1_t *)0xFFFFFF00U)->GHVSRC = 0x00000000U;
	
     
    ((systemBASE2_t *)0xFFFFE100U)->PLLCTL3 ^= 0x8000U;

     
    while((((esmBASE_t *)0xFFFFF500U)->SR4[0U] & 0x400U) != 0x400U)
    {
         
    }

     
    ((systemBASE1_t *)0xFFFFFF00U)->CSDISSET = 0x40U;

     
     
    while((((systemBASE1_t *)0xFFFFFF00U)->CSDIS & 0x40U) == 0U)
    {
    }  

     
    ((systemBASE2_t *)0xFFFFE100U)->PLLCTL3 ^= 0x8000U;

     
    ((systemBASE1_t *)0xFFFFFF00U)->CSDISCLR = 0x40U;

     
     
    while((((systemBASE1_t *)0xFFFFFF00U)->CSDIS & 0x40U) != 0U)
    {
    }  

     
    ((systemBASE1_t *)0xFFFFFF00U)->GHVSRC = ghvsrc_bk;

     
    ((systemBASE1_t *)0xFFFFFF00U)->GBLSTAT = 0x300U;

     
    ((esmBASE_t *)0xFFFFF500U)->SR4[0U] = 0x400U;
}






 
 
 
 
void checkRAMAddrParity(void)
{
    register uint64 ramread;
	volatile uint32 regread;
	uint32 tcram1ErrStat, tcram2ErrStat;
	
     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMCTRL = 0x0D05000AU;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMCTRL = 0x0D05000AU;

     
    ramread = (*(volatile uint64 *)(0x08000000U));
    ramread = ramread | (*(volatile uint64 *)(0x08000008U));  

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMCTRL = 0x0005000AU;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMCTRL = 0x0005000AU;

	 
	tcram1ErrStat = ((tcramBASE_t *)(0xFFFFF800U))->RAMERRSTATUS & 0x100U;
	tcram2ErrStat = ((tcramBASE_t *)(0xFFFFF900U))->RAMERRSTATUS & 0x100U;
	 
	 
    if((tcram1ErrStat == 0U) || (tcram2ErrStat == 0U))
    {
         
        selftestFailNotification(35U);
    }
    else
    {
        if((((esmBASE_t *)0xFFFFF500U)->SR1[1U] & 0x1400U) != 0x1400U)
        {
             
            selftestFailNotification(36U);
        }
        else
        {
             
            ((tcramBASE_t *)(0xFFFFF800U))->RAMERRSTATUS = 0x300U;
            ((tcramBASE_t *)(0xFFFFF900U))->RAMERRSTATUS = 0x300U;

             
            ((esmBASE_t *)0xFFFFF500U)->SR1[1U] = 0x1400U;

             
            ((esmBASE_t *)0xFFFFF500U)->EKR = 0x5U;

            regread = ((tcramBASE_t *)(0xFFFFF800U))->RAMPERADDR;
            regread = ((tcramBASE_t *)(0xFFFFF900U))->RAMPERADDR;
        }
    }
}





 
 
 
 
void checkRAMUERRTest(void)
{
    uint32 tcram1ErrStat, tcram2ErrStat = 0U;

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMTEST = 0x018AU;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMTEST = 0x018AU;

     
    while(((tcramBASE_t *)(0xFFFFF800U))->RAMTEST != 0x008AU)
    {
    }  
    while(((tcramBASE_t *)(0xFFFFF900U))->RAMTEST != 0x008AU)
    {
    }  

     
    tcram1ErrStat = ((tcramBASE_t *)(0xFFFFF800U))->RAMERRSTATUS & 0x10U;
    tcram2ErrStat = ((tcramBASE_t *)(0xFFFFF900U))->RAMERRSTATUS & 0x10U;
    if((tcram1ErrStat == 0x10U) || (tcram2ErrStat == 0x10U))
    {
         
        selftestFailNotification(37U);
    }

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMTEST = 0x014AU;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMTEST = 0x014AU;

     
    while(((tcramBASE_t *)(0xFFFFF800U))->RAMTEST != 0x004AU)
    {
    } 
    while(((tcramBASE_t *)(0xFFFFF900U))->RAMTEST != 0x004AU)
    {
    } 

    tcram1ErrStat = ((tcramBASE_t *)(0xFFFFF800U))->RAMERRSTATUS & 0x10U;
    tcram2ErrStat = ((tcramBASE_t *)(0xFFFFF900U))->RAMERRSTATUS & 0x10U;
    if((tcram1ErrStat == 0x10U) || (tcram2ErrStat == 0x10U))
    {
         
        selftestFailNotification(38U);
    }
    else
    {
        ((tcramBASE_t *)(0xFFFFF800U))->RAMERRSTATUS = 0x4U;
        ((tcramBASE_t *)(0xFFFFF900U))->RAMERRSTATUS = 0x4U;

         
        ((esmBASE_t *)0xFFFFF500U)->SR1[1U] = 0x140U;
        ((esmBASE_t *)0xFFFFF500U)->SSR2 = 0x140U;
        ((esmBASE_t *)0xFFFFF500U)->EKR = 0x5U;
    }

     
    ((tcramBASE_t *)(0xFFFFF800U))->RAMTEST = 0x5U;
    ((tcramBASE_t *)(0xFFFFF900U))->RAMTEST = 0x5U;
}

 
 
 
void fmcBus1ParityCheck(void)
{
    uint32 regBkupFparOvr,regBckupFdiagctrl;
    volatile uint32 flashread = 0U;

     
    regBkupFparOvr = ((flashWBASE_t *)(0xFFF87000U))->FPAROVR;
    regBckupFdiagctrl = ((flashWBASE_t *)(0xFFF87000U))->FDIAGCTRL;

     
    flashread = ((flashWBASE_t *)(0xFFF87000U))->FUNCERRADD;

     
    ((flashWBASE_t *)(0xFFF87000U))->FEDACSTATUS = 0x400U;

     
    ((flashWBASE_t *)(0xFFF87000U))->FPAROVR  = (uint32)((uint32)0x5U << 9U)
	                    | (uint32)((uint32)0x5U << 12U);

     
    ((flashWBASE_t *)(0xFFF87000U))->FDIAGCTRL = 0x00050000U | 0x00000007U;

     
    ((flashWBASE_t *)(0xFFF87000U))->FPAROVR |= 0x00000100U;

     
    ((flashWBASE_t *)(0xFFF87000U))->FDIAGCTRL |= 0x1000000U;

     
     
     
    while((((flashWBASE_t *)(0xFFF87000U))->FDIAGCTRL & 0x1000000U) == 0x1000000U)
    {
    } 

     
     
    if((((flashWBASE_t *)(0xFFF87000U))->FEDACSTATUS & 0x400U) != 0x400U)
    {
        selftestFailNotification(39U);
    }
    else
    {
         
        ((flashWBASE_t *)(0xFFF87000U))->FEDACSTATUS = 0x400U;

         
         
        if((((esmBASE_t *)0xFFFFF500U)->SR1[1U] & 0x0000010U) == 0U)
        {
            selftestFailNotification(40U);
        }
        else
        {
             
            ((esmBASE_t *)0xFFFFF500U)->SR1[1U] |= 0x0000010U;
            ((esmBASE_t *)0xFFFFF500U)->SSR2 |= 0x0000010U;
            ((esmBASE_t *)0xFFFFF500U)->EKR = 0x5U;

             
            ((flashWBASE_t *)(0xFFF87000U))->FDIAGCTRL = regBckupFdiagctrl;
            ((flashWBASE_t *)(0xFFF87000U))->FPAROVR     = regBkupFparOvr;
        }
    }

     
    flashread = ((flashWBASE_t *)(0xFFF87000U))->FUNCERRADD;
}

 
 
 
void pbistFail(void)
{
    uint32 PBIST_RAMT, PBIST_FSRA0, PBIST_FSRDL0;
     
    PBIST_RAMT = ((pbistBASE_t *)0xFFFFE560U)->RAMT;
    PBIST_FSRA0 = ((pbistBASE_t *)0xFFFFE560U)->FSRA0;
    PBIST_FSRDL0 = ((pbistBASE_t *)0xFFFFE560U)->FSRDL0;

    if(pbistPortTestStatus((uint32)PBIST_PORT0) != 1)
    {
        memoryPort0TestFailNotification((uint32)((PBIST_RAMT & 0xFF000000U) >> 24U), (uint32)((PBIST_RAMT & 0x00FF0000U) >> 16U),(uint32)PBIST_FSRA0, (uint32)PBIST_FSRDL0);
    }
    else
    {
 
 
 
 
 
        for(;;)
        {
        } 

 
 
    }
}











 
 
 
 
void pbistGetConfigValue(pbist_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    {
        config_reg->CONFIG_RAMT = 0U;
        config_reg->CONFIG_DLR = 0U;
        config_reg->CONFIG_PACT = 0U;
        config_reg->CONFIG_PBISTID = 0U;
        config_reg->CONFIG_OVER = 0U;
        config_reg->CONFIG_FSRDL1 = 0U;
        config_reg->CONFIG_ROM = 0U;
        config_reg->CONFIG_ALGO = 0U;
        config_reg->CONFIG_RINFOL = 0U;
        config_reg->CONFIG_RINFOU = 0U;
    }
    else
    {
     
        config_reg->CONFIG_RAMT = ((pbistBASE_t *)0xFFFFE560U)->RAMT;
        config_reg->CONFIG_DLR = ((pbistBASE_t *)0xFFFFE560U)->DLR;
        config_reg->CONFIG_PACT = ((pbistBASE_t *)0xFFFFE560U)->PACT;
        config_reg->CONFIG_PBISTID = ((pbistBASE_t *)0xFFFFE560U)->PBISTID;
        config_reg->CONFIG_OVER = ((pbistBASE_t *)0xFFFFE560U)->OVER;
        config_reg->CONFIG_FSRDL1 = ((pbistBASE_t *)0xFFFFE560U)->FSRDL1;
        config_reg->CONFIG_ROM = ((pbistBASE_t *)0xFFFFE560U)->ROM;
        config_reg->CONFIG_ALGO = ((pbistBASE_t *)0xFFFFE560U)->ALGO;
        config_reg->CONFIG_RINFOL = ((pbistBASE_t *)0xFFFFE560U)->RINFOL;
        config_reg->CONFIG_RINFOU = ((pbistBASE_t *)0xFFFFE560U)->RINFOU;
    }
}











 
 
 
 
void stcGetConfigValue(stc_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    {
        config_reg->CONFIG_STCGCR0 = 0xFFFF0000U;
        config_reg->CONFIG_STCGCR1 = 0x5U;
        config_reg->CONFIG_STCTPR = 0xFFFFFFFFU;
        config_reg->CONFIG_STCSCSCR = 0x5U;
    }
    else
    {
     
        config_reg->CONFIG_STCGCR0 = ((stcBASE_t *)0xFFFFE600U)->STCGCR0;
        config_reg->CONFIG_STCGCR1 = ((stcBASE_t *)0xFFFFE600U)->STCGCR1;
        config_reg->CONFIG_STCTPR = ((stcBASE_t *)0xFFFFE600U)->STCTPR;
        config_reg->CONFIG_STCSCSCR = ((stcBASE_t *)0xFFFFE600U)->STCSCSCR;
    }
}












 
 
 
 
void efcGetConfigValue(efc_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    {
        config_reg->CONFIG_BOUNDARY = 0x0000200FU;
        config_reg->CONFIG_PINS = 0x000082E0U;
        config_reg->CONFIG_SELFTESTCYCLES = 0x00000258U;
        config_reg->CONFIG_SELFTESTSIGN = 0x5362F97FU;
    }
    else
    {
     
        config_reg->CONFIG_BOUNDARY = ((efcBASE_t *)0xFFF8C000U)->BOUNDARY;
        config_reg->CONFIG_PINS = ((efcBASE_t *)0xFFF8C000U)->PINS;
        config_reg->CONFIG_SELFTESTCYCLES = ((efcBASE_t *)0xFFF8C000U)->SELF_TEST_CYCLES;
        config_reg->CONFIG_SELFTESTSIGN = ((efcBASE_t *)0xFFF8C000U)->SELF_TEST_SIGN;
    }
}












 
 
 
 
void ccmr4GetConfigValue(ccmr4_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    {
        config_reg->CONFIG_CCMKEYR = 0U;
    }
    else
    {
     
        config_reg->CONFIG_CCMKEYR = (*(volatile uint32 *)(0xFFFFF604U));
    }
}









 
void errata_PBIST_4(void)
{
    volatile uint32 i = 0U;
    uint8 ROM_count;
    sint32 PBIST_wait_done_loop;
    uint32 pmuCalibration, pmuCount;

     
    _pmuEnableCountersGlobal_();
    _pmuResetCounters_();
    _pmuStartCounters_(0x80000000U);
    _pmuStopCounters_(0x80000000U);
    pmuCalibration=_pmuGetCycleCount_();

     
     
    *(volatile uint32 *)0xFFFF0400U = 0x0000000AU;
    *(volatile uint32 *)0xFFFF040CU = 0x0000EE0AU;

     
    for (ROM_count = 0U; ROM_count < 2U; ROM_count++)
    {
        PBIST_wait_done_loop = 0;
    
         
        ((pbistBASE_t *)0xFFFFE560U)->PACT = 0x0U;
        
         
        if(((pbistBASE_t *)0xFFFFE560U)->PACT != 0x0U ) 
        {
            selftestFailNotification(42U);
        }
        else
        {
             
             
            ((systemBASE1_t *)0xFFFFFF00U)->MSTGCR = 0x00000105U;
            
             
            ((systemBASE1_t *)0xFFFFFF00U)->MINITGCR = 0x5U;

             
            ((systemBASE1_t *)0xFFFFFF00U)->MSTGCR = 0x0000010AU;                               

             
            ((systemBASE1_t *)0xFFFFFF00U)->MSTCGSTAT = 0x1U;
            
             
            ((systemBASE1_t *)0xFFFFFF00U)->MSINENA = 0x1U;

			 
	         	
             
            for (i=0U; i<(32U + (32U * 1U)); i++){   }

             
            ((pbistBASE_t *)0xFFFFE560U)->PACT = 0x3U;

             
            ((pbistBASE_t *)0xFFFFE560U)->DLR = 0x10U;

             
            *(volatile uint32 *)0xFFFFE400U = 0x00000001U;
            *(volatile uint32 *)0xFFFFE440U = 0x00000025U;
            *(volatile uint32 *)0xFFFFE404U = 0x62400001U;
            *(volatile uint32 *)0xFFFFE444U = 0x00000004U;
            *(volatile uint32 *)0xFFFFE408U = 0x00068003U;
            *(volatile uint32 *)0xFFFFE448U = 0x00000000U;
            *(volatile uint32 *)0xFFFFE40CU = 0x00000004U;
            *(volatile uint32 *)0xFFFFE44CU = 0x00006860U;
            *(volatile uint32 *)0xFFFFE410U = 0x00000000U;
            *(volatile uint32 *)0xFFFFE450U = 0x00000001U;
            *(volatile uint32 *)0xFFFFE540U = 0x000003E8U;
            *(volatile uint32 *)0xFFFFE550U = 0x00000001U;
            *(volatile uint32 *)0xFFFFE530U = 0x00000000U;
            
			 
            if (ROM_count == 1U)
            {   
                           
                *(volatile uint32 *)0xFFFFE520U = 0x00000002U;
                *(volatile uint32 *)0xFFFFE524U = 0x00000000U;
                ((pbistBASE_t *)0xFFFFE560U)->RAMT                  = 0x01002008U;
            } 
            else
            {               
                     
                *(volatile uint32 *)0xFFFFE520U = 0xFFF0007CU;
                *(volatile uint32 *)0xFFFFE524U = 0x0A63FFFFU;
                ((pbistBASE_t *)0xFFFFE560U)->RAMT                  = 0x02002008U;
            }

             
             
            ((pbistBASE_t *)0xFFFFE560U)->rsvd1[4U]    = 1U;
            ((pbistBASE_t *)0xFFFFE560U)->rsvd1[0U]    = 3U;

             
			_pmuResetCounters_();
            _pmuStartCounters_(0x80000000U);

             
            ((pbistBASE_t *)0xFFFFE560U)->rsvd1[1U]    = 1U;

             
             
            while ((((systemBASE1_t *)0xFFFFFF00U)->MSTCGSTAT & 0x1U) != 0x1U) 
            {
            } 

			 
            _pmuStopCounters_(0x80000000U);
			
			 
            pmuCount =_pmuGetCycleCount_();
			
			 
			 
			 
			pmuCount = pmuCount - pmuCalibration;
            PBIST_wait_done_loop = ((sint32)pmuCount/2) - 1000;

             
            if ((((pbistBASE_t *)0xFFFFE560U)->FSRA0 | ((pbistBASE_t *)0xFFFFE560U)->FSRA1 | ((pbistBASE_t *)0xFFFFE560U)->FSRDL0 | ((pbistBASE_t *)0xFFFFE560U)->rsvd3 |
                 ((pbistBASE_t *)0xFFFFE560U)->FSRDL1 | ((pbistBASE_t *)0xFFFFE560U)->rsvd4[0U] | ((pbistBASE_t *)0xFFFFE560U)->rsvd4[1U]) != 0U)
            {
                 
                selftestFailNotification(5U);
            }

             
             
            if ((PBIST_wait_done_loop <= 20) || (PBIST_wait_done_loop >= 200) )
            {
                selftestFailNotification(41U);
            }

             
            ((pbistBASE_t *)0xFFFFE560U)->PACT = 0x0U;

             
            ((systemBASE1_t *)0xFFFFFF00U)->MSTGCR &= 0xFFFFFFF0U;
            ((systemBASE1_t *)0xFFFFFF00U)->MSTGCR |= 0x5U;
        }
    }  

     
     
    *(volatile uint32 *)0xFFFF040CU = 0x0000AA0AU;
    *(volatile uint32 *)0xFFFF040CU = 0x0000AA05U;
	*(volatile uint32 *)0xFFFF0400U = 0x00000005U;

	_pmuDisableCountersGlobal_();
}








 
#pragma WEAK(enableParity)
void enableParity(void)
{
    (*(volatile uint32 *)(0xFFFFF1A8U)) = 0xAU;                       
    (*(volatile uint32 *)0xFFFFFDF0U) = 0xAU;                      
    ((canBASE_t *)0xFFF7DC00U)->CTL = ((uint32)0xAU << 10U) | 1U;     
    ((canBASE_t *)0xFFF7DE00U)->CTL = ((uint32)0xAU << 10U) | 1U;     
    ((canBASE_t *)0xFFF7E000U)->CTL = ((uint32)0xAU << 10U) | 1U;     
    ((adcBASE_t *)0xFFF7C000U)->PARCR = 0xAU;                  
    ((adcBASE_t *)0xFFF7C200U)->PARCR = 0xAU;                  
    ((hetBASE_t *)0xFFF7B800U)->PCR = 0xAU;                    
    ((htuBASE_t *)0xFFF7A400U)->PCR = 0xAU;                    
    ((hetBASE_t *)0xFFF7B900U)->PCR = 0xAU;                    
    ((htuBASE_t *)0xFFF7A500U)->PCR = 0xAU;                    
}







 
#pragma WEAK(disableParity)
void disableParity(void)
{
    (*(volatile uint32 *)(0xFFFFF1A8U)) = 0x5U;                       
    (*(volatile uint32 *)0xFFFFFDF0U) = 0x5U;                      
    ((canBASE_t *)0xFFF7DC00U)->CTL = ((uint32)0x5U << 10U) | 1U;     
    ((canBASE_t *)0xFFF7DE00U)->CTL = ((uint32)0x5U << 10U) | 1U;     
    ((canBASE_t *)0xFFF7E000U)->CTL = ((uint32)0x5U << 10U) | 1U;     
    ((adcBASE_t *)0xFFF7C000U)->PARCR = 0x5U;                  
    ((adcBASE_t *)0xFFF7C200U)->PARCR = 0x5U;                  
    ((hetBASE_t *)0xFFF7B800U)->PCR = 0x5U;                    
    ((htuBASE_t *)0xFFF7A400U)->PCR = 0x5U;                    
    ((hetBASE_t *)0xFFF7B900U)->PCR = 0x5U;                    
    ((htuBASE_t *)0xFFF7A500U)->PCR = 0x5U;                    
}














 

































 


 
 


 










 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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

 
 


 
 


 
 
extern void __TI_auto_init(void);
 
extern void main(void);
 
 
extern void exit(int _status);


 
 

 
void _c_int00(void);
 
 

#pragma CODE_STATE(_c_int00, 32)
#pragma INTERRUPT(_c_int00, RESET)
#pragma WEAK(_c_int00)

 
 
 
void _c_int00(void)
{
    
 
 

     
    _coreInitRegisters_();

 
 

     
    _coreInitStackPointer_();

 
 

     
    

 
    _coreEnableEventBusExport_();

 
 

         
        _errata_CORTEXR4_66_();
    
          
        _errata_CORTEXR4_57_();

    

 

     
     
    if (((*(volatile uint32 *)0xFFFFFFE4U) & 0x8000U) != 0U)
    {
 
 
        
         
        (*(volatile uint32 *)0xFFFFFFE4U) = 0xFFFFU;

 
 
 
 
 
 
       
    }
     
    else if (((*(volatile uint32 *)0xFFFFFFE4U) & 0x4000U) != 0U)
    {
        
 

 
 
    }
     
    else if (((*(volatile uint32 *)0xFFFFFFE4U) & 0x2000U) !=0U)
    {
        


 
         
        if((*(volatile uint32 *)0xFFFFFC98U) != 0U)
        {
              
 
 

              
            (*(volatile uint32 *)0xFFFFFFE4U) = 0x2000U;
        
 
 
        }
        else
        {
              
            (*(volatile uint32 *)0xFFFFFFE4U) = 0x2000U;
 
 
        }
    }
     
    else if (((*(volatile uint32 *)0xFFFFFFE4U) & 0x0020U) !=0U)
    {
        

 

 
 

         
        (*(volatile uint32 *)0xFFFFFFE4U) = 0x0020U;

 
 

    }
     
    else if (((*(volatile uint32 *)0xFFFFFFE4U) & 0x0010U) != 0U)
    {
        
 

 
 
    }
    else
    {
        
 

 
 
    }

    






 
    if ((((esmBASE_t *)0xFFFFF500U)->SR1[2]) != 0U)
    {
 
 
     
     
     
        for(;;)
        { 
        }                  
 
 
    }

 
 

     
    systemInit();
    
     
    errata_PBIST_4();
	
    



 
    pbistSelfCheck();	
	
	 
    pbistRun((uint32)2U,
             ((uint32)PBIST_TripleReadSlow | (uint32)PBIST_TripleReadFast));
    
     
     
    while(pbistIsTestCompleted() != 1)
    { 
    }  
    
     
    if( pbistIsTestPassed() != 1)
    {
        


 
         
        pbistFail();

    }   
	
     
    pbistStop();

	 
    pbistRun((uint32)1U,
             ((uint32)PBIST_TripleReadSlow | (uint32)PBIST_TripleReadFast));
    
     
     
    while(pbistIsTestCompleted() != 1)
    { 
    }  
    
     
    if( pbistIsTestPassed() != 1)
    {
        


 
         
        pbistFail();

    } 
	
     
    pbistStop();	
 
 

 
 

     
    _coreDisableRamEcc_();
    
    



 
    pbistRun(0x00300020U,  
             (uint32)PBIST_March13N_SP);

 
 

     
     
    while(pbistIsTestCompleted() != 1)
    { 
    }                  
    

 
 
    
     
    if( pbistIsTestPassed() != 1)
    {
        


 
 
 
         
        pbistFail();
        
 
 
    }

 
 

     
    pbistStop();

    
 
 


    




 
    memoryInit(0x1U);

 
 
    
    

 
    _coreEnableRamEcc_();

 
 

     
    

 
    pbistRun(  (uint32)0x00000000U     
             | (uint32)0x00000000U       
             | (uint32)0x00000800U     
             | (uint32)0x00000200U     
             | (uint32)0x00000040U     
             | (uint32)0x00000080U     
             | (uint32)0x00000100U     
             | (uint32)0x00000004U     
             | (uint32)0x00000008U     
             | (uint32)0x00000010U     
             | (uint32)0x00000400U     
             | (uint32)0x00020000U     
             | (uint32)0x00001000U     
             | (uint32)0x00040000U     
             | (uint32)0x00002000U     
             | (uint32)0x00080000U     
             | (uint32)0x00000000U     
             | (uint32)0x00000000U     
             ,(uint32) PBIST_March13N_DP);

 
 

    





 
    checkRAMECC();

 
 
 
 

     
     
    while(pbistIsTestCompleted() != 1)
    { 
    }                  
    

 
 

     
    if( pbistIsTestPassed() != 1)
    {

 
 

        


 
 
 
         
        pbistFail();
        
 
 
    }

 
 

     
    pbistStop();
    
 
 

    

 
     ((mibspiBASE_t *)0xFFF7F400U)->GCR0 = 0x1U;
     
    

 
    ((mibspiBASE_t *)0xFFF7F800U)->GCR0 = 0x1U;
    
    

 
    ((mibspiBASE_t *)0xFFF7FC00U)->GCR0 = 0x1U;
    
 
 

     
    enableParity();
    
    


 
    
 
    

 
    memoryInit( (uint32)((uint32)1U << 1U)     
              | (uint32)((uint32)1U << 2U)     
              | (uint32)((uint32)1U << 5U)     
              | (uint32)((uint32)1U << 6U)     
              | (uint32)((uint32)1U << 10U)    
              | (uint32)((uint32)1U << 8U)     
              | (uint32)((uint32)1U << 14U)    
              | (uint32)((uint32)1U << 3U)     
              | (uint32)((uint32)1U << 4U)     
              | (uint32)((uint32)1U << 15U)    
              | (uint32)((uint32)1U << 16U)    
              );

     
    disableParity();
    
    


 

 
 
     
    het1ParityCheck();
    
 
 

    htu1ParityCheck();
    
 
 

    het2ParityCheck();
    
 
 

    htu2ParityCheck();
    
 
 

    adc1ParityCheck();
    
 
 

    adc2ParityCheck();
    
 
 

    can1ParityCheck();
    
 
 

    can2ParityCheck();
    
 
 

    can3ParityCheck();
    
 
 

    vimParityCheck();
    
 
 

    dmaParityCheck();


 
 

 
    while ((((mibspiBASE_t *)0xFFF7F400U)->FLG & 0x01000000U) == 0x01000000U)
    { 
    }                  
     
 
    while ((((mibspiBASE_t *)0xFFF7F800U)->FLG & 0x01000000U) == 0x01000000U)
    { 
    }                  
      
 
    while ((((mibspiBASE_t *)0xFFF7FC00U)->FLG & 0x01000000U) == 0x01000000U)
    { 
    }                  
     

 
 

    mibspi1ParityCheck();
    
 
 

    mibspi3ParityCheck();
    
 
 
    
    mibspi5ParityCheck();
    

 
 
    
     
    _coreEnableIrqVicOffset_();
    

 
 

     
    vimInit();    

 
 

     
     
    esmInit();
     
    __TI_auto_init();
 
 
    
     
 
 
 
    main();

 
 
 
    exit(0);

 
 
}

 
 

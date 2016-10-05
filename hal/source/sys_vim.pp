




 

































 













 

































 













 

































 












 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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

 
 
 



 
 

 




 




 
typedef volatile struct vimRam
{
    t_isrFuncPTR ISR[128U];
} vimRAM_t;


static const t_isrFuncPTR s_vim_init[128U] =
{
    &phantomInterrupt,
    &esmHighInterrupt,             
    &phantomInterrupt,             
    &vPortPreemptiveTick,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &can1HighLevelInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &vPortYeildWithinAPI,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
    &phantomInterrupt,             
};
void vimParityErrorHandler(void);





 
 
 
 
void vimInit(void)
{
	 
	(*(volatile uint32 *)0xFFFFFDF0U) = 0xAU;
	
	 
    {
        uint32 i;

        for (i = 0U; i < 128U; i++)
        {
            ((vimRAM_t *)0xFFF82000U)->ISR[i] = s_vim_init[i];
        }
    }
    
     
	 
    (*(volatile uint32 *)0xFFFFFDF8U) = (uint32)&vimParityErrorHandler;

     
    ((vimBASE_t *)0xFFFFFE00U)->FIRQPR0 = (uint32)((uint32)SYS_FIQ << 0U)
                    | (uint32)((uint32)SYS_FIQ << 1U)
                    | (uint32)((uint32)SYS_IRQ << 2U)
                    | (uint32)((uint32)SYS_IRQ << 3U)
                    | (uint32)((uint32)SYS_IRQ << 4U)
                    | (uint32)((uint32)SYS_IRQ << 5U)
                    | (uint32)((uint32)SYS_IRQ << 6U)
                    | (uint32)((uint32)SYS_IRQ << 7U)
                    | (uint32)((uint32)SYS_IRQ << 8U)
                    | (uint32)((uint32)SYS_IRQ << 9U)
                    | (uint32)((uint32)SYS_IRQ << 10U)
                    | (uint32)((uint32)SYS_IRQ << 11U)
                    | (uint32)((uint32)SYS_IRQ << 12U)
                    | (uint32)((uint32)SYS_IRQ << 13U)
                    | (uint32)((uint32)SYS_IRQ << 14U)
                    | (uint32)((uint32)SYS_IRQ << 15U)
                    | (uint32)((uint32)SYS_IRQ << 16U)
                    | (uint32)((uint32)SYS_IRQ << 17U)
                    | (uint32)((uint32)SYS_IRQ << 18U)
                    | (uint32)((uint32)SYS_IRQ << 19U)
                    | (uint32)((uint32)SYS_IRQ << 20U)
                    | (uint32)((uint32)SYS_IRQ << 21U)
                    | (uint32)((uint32)SYS_IRQ << 22U)
                    | (uint32)((uint32)SYS_IRQ << 23U)
                    | (uint32)((uint32)SYS_IRQ << 24U)
                    | (uint32)((uint32)SYS_IRQ << 25U)
                    | (uint32)((uint32)SYS_IRQ << 26U)
                    | (uint32)((uint32)SYS_IRQ << 27U)
                    | (uint32)((uint32)SYS_IRQ << 28U)
                    | (uint32)((uint32)SYS_IRQ << 29U)
                    | (uint32)((uint32)SYS_IRQ << 30U)
                    | (uint32)((uint32)SYS_IRQ << 31U);

    ((vimBASE_t *)0xFFFFFE00U)->FIRQPR1 = (uint32)((uint32)SYS_IRQ << 0U)
                    | (uint32)((uint32)SYS_IRQ << 1U)
                    | (uint32)((uint32)SYS_IRQ << 2U)
                    | (uint32)((uint32)SYS_IRQ << 3U)
                    | (uint32)((uint32)SYS_IRQ << 4U)
                    | (uint32)((uint32)SYS_IRQ << 5U)
                    | (uint32)((uint32)SYS_IRQ << 6U)
                    | (uint32)((uint32)SYS_IRQ << 7U)
                    | (uint32)((uint32)SYS_IRQ << 8U)
                    | (uint32)((uint32)SYS_IRQ << 9U)
                    | (uint32)((uint32)SYS_IRQ << 10U)
                    | (uint32)((uint32)SYS_IRQ << 11U)
                    | (uint32)((uint32)SYS_IRQ << 12U)
                    | (uint32)((uint32)SYS_IRQ << 13U)
                    | (uint32)((uint32)SYS_IRQ << 14U)
                    | (uint32)((uint32)SYS_IRQ << 15U)
                    | (uint32)((uint32)SYS_IRQ << 16U)
                    | (uint32)((uint32)SYS_IRQ << 17U)
                    | (uint32)((uint32)SYS_IRQ << 18U)
                    | (uint32)((uint32)SYS_IRQ << 19U)
                    | (uint32)((uint32)SYS_IRQ << 20U)
                    | (uint32)((uint32)SYS_IRQ << 21U)
                    | (uint32)((uint32)SYS_IRQ << 22U)
                    | (uint32)((uint32)SYS_IRQ << 23U)
                    | (uint32)((uint32)SYS_IRQ << 24U)
                    | (uint32)((uint32)SYS_IRQ << 25U)
                    | (uint32)((uint32)SYS_IRQ << 26U)
                    | (uint32)((uint32)SYS_IRQ << 27U)
                    | (uint32)((uint32)SYS_IRQ << 28U)
                    | (uint32)((uint32)SYS_IRQ << 29U)
                    | (uint32)((uint32)SYS_IRQ << 30U)
                    | (uint32)((uint32)SYS_IRQ << 31U);


    ((vimBASE_t *)0xFFFFFE00U)->FIRQPR2 = (uint32)((uint32)SYS_IRQ << 0U)
                    | (uint32)((uint32)SYS_IRQ << 1U)
                    | (uint32)((uint32)SYS_IRQ << 2U)
                    | (uint32)((uint32)SYS_IRQ << 3U)
                    | (uint32)((uint32)SYS_IRQ << 4U)
                    | (uint32)((uint32)SYS_IRQ << 5U)
                    | (uint32)((uint32)SYS_IRQ << 6U)
                    | (uint32)((uint32)SYS_IRQ << 7U)
                    | (uint32)((uint32)SYS_IRQ << 8U)
                    | (uint32)((uint32)SYS_IRQ << 9U)
                    | (uint32)((uint32)SYS_IRQ << 10U)
                    | (uint32)((uint32)SYS_IRQ << 11U)
                    | (uint32)((uint32)SYS_IRQ << 12U)
                    | (uint32)((uint32)SYS_IRQ << 13U)
                    | (uint32)((uint32)SYS_IRQ << 14U)
                    | (uint32)((uint32)SYS_IRQ << 15U)
                    | (uint32)((uint32)SYS_IRQ << 16U)
                    | (uint32)((uint32)SYS_IRQ << 17U)
                    | (uint32)((uint32)SYS_IRQ << 18U)
                    | (uint32)((uint32)SYS_IRQ << 19U)
                    | (uint32)((uint32)SYS_IRQ << 20U)
                    | (uint32)((uint32)SYS_IRQ << 21U)
                    | (uint32)((uint32)SYS_IRQ << 22U)
                    | (uint32)((uint32)SYS_IRQ << 23U)
                    | (uint32)((uint32)SYS_IRQ << 24U)
                    | (uint32)((uint32)SYS_IRQ << 25U)
                    | (uint32)((uint32)SYS_IRQ << 26U)
                    | (uint32)((uint32)SYS_IRQ << 27U)
                    | (uint32)((uint32)SYS_IRQ << 28U)
                    | (uint32)((uint32)SYS_IRQ << 29U)
                    | (uint32)((uint32)SYS_IRQ << 30U)
                    | (uint32)((uint32)SYS_IRQ << 31U);

    ((vimBASE_t *)0xFFFFFE00U)->FIRQPR3 = (uint32)((uint32)SYS_IRQ << 0U)
                    | (uint32)((uint32)SYS_IRQ << 1U)
                    | (uint32)((uint32)SYS_IRQ << 2U)
                    | (uint32)((uint32)SYS_IRQ << 3U)
                    | (uint32)((uint32)SYS_IRQ << 4U)
                    | (uint32)((uint32)SYS_IRQ << 5U)
                    | (uint32)((uint32)SYS_IRQ << 6U)
                    | (uint32)((uint32)SYS_IRQ << 7U)
                    | (uint32)((uint32)SYS_IRQ << 8U)
                    | (uint32)((uint32)SYS_IRQ << 9U)
                    | (uint32)((uint32)SYS_IRQ << 10U)
                    | (uint32)((uint32)SYS_IRQ << 11U)
                    | (uint32)((uint32)SYS_IRQ << 12U)
                    | (uint32)((uint32)SYS_IRQ << 13U)
                    | (uint32)((uint32)SYS_IRQ << 14U)
                    | (uint32)((uint32)SYS_IRQ << 15U)
                    | (uint32)((uint32)SYS_IRQ << 16U)
                    | (uint32)((uint32)SYS_IRQ << 17U)
                    | (uint32)((uint32)SYS_IRQ << 18U)
                    | (uint32)((uint32)SYS_IRQ << 19U)
                    | (uint32)((uint32)SYS_IRQ << 20U)
                    | (uint32)((uint32)SYS_IRQ << 21U)
                    | (uint32)((uint32)SYS_IRQ << 22U)
                    | (uint32)((uint32)SYS_IRQ << 23U)
                    | (uint32)((uint32)SYS_IRQ << 24U)
                    | (uint32)((uint32)SYS_IRQ << 25U)
                    | (uint32)((uint32)SYS_IRQ << 26U)
                    | (uint32)((uint32)SYS_IRQ << 27U)
                    | (uint32)((uint32)SYS_IRQ << 28U)
                    | (uint32)((uint32)SYS_IRQ << 29U)
                    | (uint32)((uint32)SYS_IRQ << 30U)
                    | (uint32)((uint32)SYS_IRQ << 31U);

                    
     
    ((vimBASE_t *)0xFFFFFE00U)->REQMASKSET0 = (uint32)((uint32)1U << 0U)
                        | (uint32)((uint32)1U << 1U)
                        | (uint32)((uint32)1U << 2U)
                        | (uint32)((uint32)0U << 3U)
                        | (uint32)((uint32)0U << 4U)
                        | (uint32)((uint32)0U << 5U)
                        | (uint32)((uint32)0U << 6U)
                        | (uint32)((uint32)0U << 7U)
                        | (uint32)((uint32)0U << 8U)
                        | (uint32)((uint32)0U << 9U)
                        | (uint32)((uint32)0U << 10U)
                        | (uint32)((uint32)0U << 11U)
                        | (uint32)((uint32)0U << 12U)
                        | (uint32)((uint32)0U << 13U)
                        | (uint32)((uint32)0U << 14U)
                        | (uint32)((uint32)0U << 15U)
                        | (uint32)((uint32)1U << 16U)
                        | (uint32)((uint32)0U << 17U)
                        | (uint32)((uint32)0U << 18U)
                        | (uint32)((uint32)0U << 19U)
                        | (uint32)((uint32)0U << 20U)
                        | (uint32)((uint32)1U << 21U)
                        | (uint32)((uint32)0U << 22U)
                        | (uint32)((uint32)0U << 23U)
                        | (uint32)((uint32)0U << 24U)
                        | (uint32)((uint32)0U << 25U)
                        | (uint32)((uint32)0U << 26U)
                        | (uint32)((uint32)0U << 27U)
                        | (uint32)((uint32)0U << 28U)
                        | (uint32)((uint32)0U << 29U)
                        | (uint32)((uint32)0U << 30U)
                        | (uint32)((uint32)0U << 31U);

    ((vimBASE_t *)0xFFFFFE00U)->REQMASKSET1 = (uint32)((uint32)0U << 0U)
                        | (uint32)((uint32)0U << 1U)
                        | (uint32)((uint32)0U << 2U)
                        | (uint32)((uint32)0U << 3U)
                        | (uint32)((uint32)0U << 4U)
                        | (uint32)((uint32)0U << 5U)
                        | (uint32)((uint32)0U << 6U)
                        | (uint32)((uint32)0U << 7U)
                        | (uint32)((uint32)0U << 8U)
                        | (uint32)((uint32)0U << 9U)
                        | (uint32)((uint32)0U << 10U)
                        | (uint32)((uint32)0U << 11U)
                        | (uint32)((uint32)0U << 12U)
                        | (uint32)((uint32)0U << 13U)
                        | (uint32)((uint32)0U << 14U)
                        | (uint32)((uint32)0U << 15U)
                        | (uint32)((uint32)0U << 16U)
                        | (uint32)((uint32)0U << 17U)
                        | (uint32)((uint32)0U << 18U)
                        | (uint32)((uint32)0U << 19U)
                        | (uint32)((uint32)0U << 20U)
                        | (uint32)((uint32)0U << 21U)
                        | (uint32)((uint32)0U << 22U)
                        | (uint32)((uint32)0U << 23U)
                        | (uint32)((uint32)0U << 24U)
                        | (uint32)((uint32)0U << 25U)
                        | (uint32)((uint32)0U << 26U)
                        | (uint32)((uint32)0U << 27U)
                        | (uint32)((uint32)0U << 28U)
                        | (uint32)((uint32)0U << 29U)
                        | (uint32)((uint32)0U << 30U)
                        | (uint32)((uint32)0U << 31U);

    ((vimBASE_t *)0xFFFFFE00U)->REQMASKSET2 = (uint32)((uint32)0U << 0U)
                        | (uint32)((uint32)0U << 1U)
                        | (uint32)((uint32)0U << 2U)
                        | (uint32)((uint32)0U << 3U)
                        | (uint32)((uint32)0U << 4U)
                        | (uint32)((uint32)0U << 5U)
                        | (uint32)((uint32)0U << 6U)
                        | (uint32)((uint32)0U << 7U)
                        | (uint32)((uint32)0U << 8U)
                        | (uint32)((uint32)0U << 9U)
                        | (uint32)((uint32)0U << 10U)
                        | (uint32)((uint32)0U << 11U)
                        | (uint32)((uint32)0U << 12U)
                        | (uint32)((uint32)0U << 13U)
                        | (uint32)((uint32)0U << 14U)
                        | (uint32)((uint32)0U << 15U)
                        | (uint32)((uint32)0U << 16U)
                        | (uint32)((uint32)0U << 17U)
                        | (uint32)((uint32)0U << 18U)
                        | (uint32)((uint32)0U << 19U)
                        | (uint32)((uint32)0U << 20U)
                        | (uint32)((uint32)0U << 21U)
                        | (uint32)((uint32)0U << 22U)
                        | (uint32)((uint32)0U << 23U)
                        | (uint32)((uint32)0U << 24U)
                        | (uint32)((uint32)0U << 25U)
                        | (uint32)((uint32)0U << 26U)
                        | (uint32)((uint32)0U << 27U)
                        | (uint32)((uint32)0U << 28U)
                        | (uint32)((uint32)0U << 29U)
                        | (uint32)((uint32)0U << 30U)
                        | (uint32)((uint32)0U << 31U);
                        
    ((vimBASE_t *)0xFFFFFE00U)->REQMASKSET3 = (uint32)((uint32)0U << 0U)
                        | (uint32)((uint32)0U << 1U)
                        | (uint32)((uint32)0U << 2U)
                        | (uint32)((uint32)0U << 3U)
                        | (uint32)((uint32)0U << 4U)
                        | (uint32)((uint32)0U << 5U)
                        | (uint32)((uint32)0U << 6U)
                        | (uint32)((uint32)0U << 7U)
                        | (uint32)((uint32)0U << 8U)
                        | (uint32)((uint32)0U << 9U)
                        | (uint32)((uint32)0U << 10U)
                        | (uint32)((uint32)0U << 11U)
                        | (uint32)((uint32)0U << 12U)
                        | (uint32)((uint32)0U << 13U)
                        | (uint32)((uint32)0U << 14U)
                        | (uint32)((uint32)0U << 15U)
                        | (uint32)((uint32)0U << 16U)
                        | (uint32)((uint32)0U << 17U)
                        | (uint32)((uint32)0U << 18U)
                        | (uint32)((uint32)0U << 19U)
                        | (uint32)((uint32)0U << 20U)
                        | (uint32)((uint32)0U << 21U)
                        | (uint32)((uint32)0U << 22U)
                        | (uint32)((uint32)0U << 23U)
                        | (uint32)((uint32)0U << 24U)
                        | (uint32)((uint32)0U << 25U)
                        | (uint32)((uint32)0U << 26U)
                        | (uint32)((uint32)0U << 27U)
                        | (uint32)((uint32)0U << 28U)
                        | (uint32)((uint32)0U << 29U)
                        | (uint32)((uint32)0U << 30U)
                        | (uint32)((uint32)0U << 31U);    

     
	((vimBASE_t *)0xFFFFFE00U)->CAPEVT = ((uint32)((uint32)0U << 0U)
	                 |(uint32)((uint32)0U << 16U));
}










 
 
 
 
void vimChannelMap(uint32 request, uint32 channel, t_isrFuncPTR handler)
{
    uint32 i,j;
    i = channel >> 2U;               
    j = channel - (i << 2U);         
    j = 3U - j;                      
    j = j << 3U;                     

     
    ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[i] &= ~(uint32)((uint32)0xFFU << j);
    ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[i] |= (request << j);

     
    ((vimRAM_t *)0xFFF82000U)->ISR[channel + 1U] = handler;
}











 
 
 
 
void vimEnableInterrupt(uint32 channel, systemInterrupt_t inttype)
{
	if (channel >= 96U)
    {
        if(inttype == SYS_IRQ)
        {
            ((vimBASE_t *)0xFFFFFE00U)->FIRQPR3 &= ~(uint32)((uint32)1U << (channel-96U));
        }
        else
        {
            ((vimBASE_t *)0xFFFFFE00U)->FIRQPR3 |= ((uint32)1U << (channel-96U));
        }
        ((vimBASE_t *)0xFFFFFE00U)->REQMASKSET3 = (uint32)1U << (channel-96U);
    }
    else if (channel >= 64U)
    {
        if(inttype == SYS_IRQ)
        {
            ((vimBASE_t *)0xFFFFFE00U)->FIRQPR2 &= ~(uint32)((uint32)1U << (channel-64U));
        }
        else
        {
            ((vimBASE_t *)0xFFFFFE00U)->FIRQPR2 |= ((uint32)1U << (channel-64U));
        }
        ((vimBASE_t *)0xFFFFFE00U)->REQMASKSET2 = (uint32)1U << (channel-64U);
    }
    else if (channel >= 32U)
    {
        if(inttype == SYS_IRQ)
        {
            ((vimBASE_t *)0xFFFFFE00U)->FIRQPR1 &= ~(uint32)((uint32)1U << (channel-32U));
        }
        else
        {
            ((vimBASE_t *)0xFFFFFE00U)->FIRQPR1 |= ((uint32)1U << (channel-32U));
        }
        ((vimBASE_t *)0xFFFFFE00U)->REQMASKSET1 = (uint32)1U << (channel-32U);
    }
    else if (channel >= 2U)
    {
        if(inttype == SYS_IRQ)
        {
            ((vimBASE_t *)0xFFFFFE00U)->FIRQPR0 &= ~(uint32)((uint32)1U << channel);
        }
        else
        {
            ((vimBASE_t *)0xFFFFFE00U)->FIRQPR0 |= ((uint32)1U << channel);
        }
        ((vimBASE_t *)0xFFFFFE00U)->REQMASKSET0 = (uint32)1U << channel;
    }
    else
    {
		 
    }
}








 
 
 
 
void vimDisableInterrupt(uint32 channel)
{
    if (channel >= 96U)
    {
        ((vimBASE_t *)0xFFFFFE00U)->REQMASKCLR3 = (uint32)1U << (channel-96U);
    }
    else if (channel >= 64U)
    {
        ((vimBASE_t *)0xFFFFFE00U)->REQMASKCLR2 = (uint32)1U << (channel-64U);
    }
    else if (channel >=32U)
    {
        ((vimBASE_t *)0xFFFFFE00U)->REQMASKCLR1 = (uint32)1U << (channel-32U);
    }
    else if (channel >= 2U)
    {
        ((vimBASE_t *)0xFFFFFE00U)->REQMASKCLR0 = (uint32)1U << channel;
    }
    else
    {
		 
    }
}

 
 












 
 
 
 
void vimGetConfigValue(vim_config_reg_t *config_reg, config_value_type_t type)
{  
    if (type == InitialValue)
    {
        config_reg->CONFIG_FIRQPR0 = ( (uint32)((uint32)SYS_FIQ << 0U) | (uint32)((uint32)SYS_FIQ << 1U) | (uint32)((uint32)SYS_IRQ << 2U) | (uint32)((uint32)SYS_IRQ << 3U) | (uint32)((uint32)SYS_IRQ << 4U) | (uint32)((uint32)SYS_IRQ << 5U) | (uint32)((uint32)SYS_IRQ << 6U) | (uint32)((uint32)SYS_IRQ << 7U) | (uint32)((uint32)SYS_IRQ << 8U) | (uint32)((uint32)SYS_IRQ << 9U) | (uint32)((uint32)SYS_IRQ << 10U) | (uint32)((uint32)SYS_IRQ << 11U) | (uint32)((uint32)SYS_IRQ << 12U) | (uint32)((uint32)SYS_IRQ << 13U) | (uint32)((uint32)SYS_IRQ << 14U) | (uint32)((uint32)SYS_IRQ << 15U) | (uint32)((uint32)SYS_IRQ << 16U) | (uint32)((uint32)SYS_IRQ << 17U) | (uint32)((uint32)SYS_IRQ << 18U) | (uint32)((uint32)SYS_IRQ << 19U) | (uint32)((uint32)SYS_IRQ << 20U) | (uint32)((uint32)SYS_IRQ << 21U) | (uint32)((uint32)SYS_IRQ << 22U) | (uint32)((uint32)SYS_IRQ << 23U) | (uint32)((uint32)SYS_IRQ << 24U) | (uint32)((uint32)SYS_IRQ << 25U) | (uint32)((uint32)SYS_IRQ << 26U) | (uint32)((uint32)SYS_IRQ << 27U) | (uint32)((uint32)SYS_IRQ << 28U) | (uint32)((uint32)SYS_IRQ << 29U) | (uint32)((uint32)SYS_IRQ << 30U) | (uint32)((uint32)SYS_IRQ << 31U));
        config_reg->CONFIG_FIRQPR1 = ( (uint32)((uint32)SYS_IRQ << 0U) | (uint32)((uint32)SYS_IRQ << 1U) | (uint32)((uint32)SYS_IRQ << 2U) | (uint32)((uint32)SYS_IRQ << 3U) | (uint32)((uint32)SYS_IRQ << 4U) | (uint32)((uint32)SYS_IRQ << 5U) | (uint32)((uint32)SYS_IRQ << 6U) | (uint32)((uint32)SYS_IRQ << 7U) | (uint32)((uint32)SYS_IRQ << 8U) | (uint32)((uint32)SYS_IRQ << 9U) | (uint32)((uint32)SYS_IRQ << 10U) | (uint32)((uint32)SYS_IRQ << 11U) | (uint32)((uint32)SYS_IRQ << 12U) | (uint32)((uint32)SYS_IRQ << 13U) | (uint32)((uint32)SYS_IRQ << 14U) | (uint32)((uint32)SYS_IRQ << 15U) | (uint32)((uint32)SYS_IRQ << 16U) | (uint32)((uint32)SYS_IRQ << 17U) | (uint32)((uint32)SYS_IRQ << 18U) | (uint32)((uint32)SYS_IRQ << 19U) | (uint32)((uint32)SYS_IRQ << 20U) | (uint32)((uint32)SYS_IRQ << 21U) | (uint32)((uint32)SYS_IRQ << 22U) | (uint32)((uint32)SYS_IRQ << 23U) | (uint32)((uint32)SYS_IRQ << 24U) | (uint32)((uint32)SYS_IRQ << 25U) | (uint32)((uint32)SYS_IRQ << 26U) | (uint32)((uint32)SYS_IRQ << 27U) | (uint32)((uint32)SYS_IRQ << 28U) | (uint32)((uint32)SYS_IRQ << 29U) | (uint32)((uint32)SYS_IRQ << 30U) | (uint32)((uint32)SYS_IRQ << 31U));
        config_reg->CONFIG_FIRQPR2 = ( (uint32)((uint32)SYS_IRQ << 0U) | (uint32)((uint32)SYS_IRQ << 1U) | (uint32)((uint32)SYS_IRQ << 2U) | (uint32)((uint32)SYS_IRQ << 3U) | (uint32)((uint32)SYS_IRQ << 4U) | (uint32)((uint32)SYS_IRQ << 5U) | (uint32)((uint32)SYS_IRQ << 6U) | (uint32)((uint32)SYS_IRQ << 7U) | (uint32)((uint32)SYS_IRQ << 8U) | (uint32)((uint32)SYS_IRQ << 9U) | (uint32)((uint32)SYS_IRQ << 10U) | (uint32)((uint32)SYS_IRQ << 11U) | (uint32)((uint32)SYS_IRQ << 12U) | (uint32)((uint32)SYS_IRQ << 13U) | (uint32)((uint32)SYS_IRQ << 14U) | (uint32)((uint32)SYS_IRQ << 15U) | (uint32)((uint32)SYS_IRQ << 16U) | (uint32)((uint32)SYS_IRQ << 17U) | (uint32)((uint32)SYS_IRQ << 18U) | (uint32)((uint32)SYS_IRQ << 19U) | (uint32)((uint32)SYS_IRQ << 20U) | (uint32)((uint32)SYS_IRQ << 21U) | (uint32)((uint32)SYS_IRQ << 22U) | (uint32)((uint32)SYS_IRQ << 23U) | (uint32)((uint32)SYS_IRQ << 24U) | (uint32)((uint32)SYS_IRQ << 25U) | (uint32)((uint32)SYS_IRQ << 26U) | (uint32)((uint32)SYS_IRQ << 27U) | (uint32)((uint32)SYS_IRQ << 28U) | (uint32)((uint32)SYS_IRQ << 29U) | (uint32)((uint32)SYS_IRQ << 30U) | (uint32)((uint32)SYS_IRQ << 31U));
        config_reg->CONFIG_FIRQPR3 = ( (uint32)((uint32)SYS_IRQ << 0U) | (uint32)((uint32)SYS_IRQ << 1U) | (uint32)((uint32)SYS_IRQ << 2U) | (uint32)((uint32)SYS_IRQ << 3U) | (uint32)((uint32)SYS_IRQ << 4U) | (uint32)((uint32)SYS_IRQ << 5U) | (uint32)((uint32)SYS_IRQ << 6U) | (uint32)((uint32)SYS_IRQ << 7U) | (uint32)((uint32)SYS_IRQ << 8U) | (uint32)((uint32)SYS_IRQ << 9U) | (uint32)((uint32)SYS_IRQ << 10U) | (uint32)((uint32)SYS_IRQ << 11U) | (uint32)((uint32)SYS_IRQ << 12U) | (uint32)((uint32)SYS_IRQ << 13U) | (uint32)((uint32)SYS_IRQ << 14U) | (uint32)((uint32)SYS_IRQ << 15U) | (uint32)((uint32)SYS_IRQ << 16U) | (uint32)((uint32)SYS_IRQ << 17U) | (uint32)((uint32)SYS_IRQ << 18U) | (uint32)((uint32)SYS_IRQ << 19U) | (uint32)((uint32)SYS_IRQ << 20U) | (uint32)((uint32)SYS_IRQ << 21U) | (uint32)((uint32)SYS_IRQ << 22U) | (uint32)((uint32)SYS_IRQ << 23U) | (uint32)((uint32)SYS_IRQ << 24U) | (uint32)((uint32)SYS_IRQ << 25U) | (uint32)((uint32)SYS_IRQ << 26U) | (uint32)((uint32)SYS_IRQ << 27U) | (uint32)((uint32)SYS_IRQ << 28U) | (uint32)((uint32)SYS_IRQ << 29U) | (uint32)((uint32)SYS_IRQ << 30U) | (uint32)((uint32)SYS_IRQ << 31U));
        config_reg->CONFIG_REQMASKSET0 = ( (uint32)((uint32)1U << 0U) | (uint32)((uint32)1U << 1U) | (uint32)((uint32)1U << 2U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 5U) | (uint32)((uint32)0U << 6U) | (uint32)((uint32)0U << 7U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 10U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 12U) | (uint32)((uint32)0U << 13U) | (uint32)((uint32)0U << 14U) | (uint32)((uint32)0U << 15U) | (uint32)((uint32)1U << 16U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 18U) | (uint32)((uint32)0U << 19U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)1U << 21U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 25U) | (uint32)((uint32)0U << 26U) | (uint32)((uint32)0U << 27U) | (uint32)((uint32)0U << 28U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)0U << 30U) | (uint32)((uint32)0U << 31U));
        config_reg->CONFIG_REQMASKSET1 = ( (uint32)((uint32)0U << 0U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 5U) | (uint32)((uint32)0U << 6U) | (uint32)((uint32)0U << 7U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 10U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 12U) | (uint32)((uint32)0U << 13U) | (uint32)((uint32)0U << 14U) | (uint32)((uint32)0U << 15U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 18U) | (uint32)((uint32)0U << 19U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 25U) | (uint32)((uint32)0U << 26U) | (uint32)((uint32)0U << 27U) | (uint32)((uint32)0U << 28U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)0U << 30U) | (uint32)((uint32)0U << 31U));
        config_reg->CONFIG_REQMASKSET2 = ( (uint32)((uint32)0U << 0U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 5U) | (uint32)((uint32)0U << 6U) | (uint32)((uint32)0U << 7U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 10U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 12U) | (uint32)((uint32)0U << 13U) | (uint32)((uint32)0U << 14U) | (uint32)((uint32)0U << 15U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 18U) | (uint32)((uint32)0U << 19U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 25U) | (uint32)((uint32)0U << 26U) | (uint32)((uint32)0U << 27U) | (uint32)((uint32)0U << 28U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)0U << 30U) | (uint32)((uint32)0U << 31U));
        config_reg->CONFIG_REQMASKSET3 = ( (uint32)((uint32)0U << 0U) | (uint32)((uint32)0U << 1U) | (uint32)((uint32)0U << 2U) | (uint32)((uint32)0U << 3U) | (uint32)((uint32)0U << 4U) | (uint32)((uint32)0U << 5U) | (uint32)((uint32)0U << 6U) | (uint32)((uint32)0U << 7U) | (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 9U) | (uint32)((uint32)0U << 10U) | (uint32)((uint32)0U << 11U) | (uint32)((uint32)0U << 12U) | (uint32)((uint32)0U << 13U) | (uint32)((uint32)0U << 14U) | (uint32)((uint32)0U << 15U) | (uint32)((uint32)0U << 16U) | (uint32)((uint32)0U << 17U) | (uint32)((uint32)0U << 18U) | (uint32)((uint32)0U << 19U) | (uint32)((uint32)0U << 20U) | (uint32)((uint32)0U << 21U) | (uint32)((uint32)0U << 22U) | (uint32)((uint32)0U << 23U) | (uint32)((uint32)0U << 24U) | (uint32)((uint32)0U << 25U) | (uint32)((uint32)0U << 26U) | (uint32)((uint32)0U << 27U) | (uint32)((uint32)0U << 28U) | (uint32)((uint32)0U << 29U) | (uint32)((uint32)0U << 30U) | (uint32)((uint32)0U << 31U));
        config_reg->CONFIG_WAKEMASKSET0 = 0xFFFFFFFFU;
        config_reg->CONFIG_WAKEMASKSET1 = 0xFFFFFFFFU;
        config_reg->CONFIG_WAKEMASKSET2 = 0xFFFFFFFFU;
        config_reg->CONFIG_WAKEMASKSET3 = 0xFFFFFFFFU;
        config_reg->CONFIG_CAPEVT = ((uint32)((uint32)0U << 0U)|(uint32)((uint32)0U << 16U));
		config_reg->CONFIG_CHANCTRL[0U] = 0x00010203U;
		config_reg->CONFIG_CHANCTRL[1U] = 0x04050607U;
		config_reg->CONFIG_CHANCTRL[2U] = 0x08090A0BU;
		config_reg->CONFIG_CHANCTRL[3U] = 0x0C0D0E0FU;
		config_reg->CONFIG_CHANCTRL[4U] = 0x10111213U;
		config_reg->CONFIG_CHANCTRL[5U] = 0x14151617U;
		config_reg->CONFIG_CHANCTRL[6U] = 0x18191A1BU;
		config_reg->CONFIG_CHANCTRL[7U] = 0x1C1D1E1FU;
		config_reg->CONFIG_CHANCTRL[8U] = 0x20212223U;
		config_reg->CONFIG_CHANCTRL[9U] = 0x24252627U;
		config_reg->CONFIG_CHANCTRL[10U] = 0x28292A2BU;
		config_reg->CONFIG_CHANCTRL[11U] = 0x2C2D2E2FU;
		config_reg->CONFIG_CHANCTRL[12U] = 0x30313233U;
		config_reg->CONFIG_CHANCTRL[13U] = 0x34353637U;
		config_reg->CONFIG_CHANCTRL[14U] = 0x38393A3BU;
		config_reg->CONFIG_CHANCTRL[15U] = 0x3C3D3E3FU;
		config_reg->CONFIG_CHANCTRL[16U] = 0x40414243U;
		config_reg->CONFIG_CHANCTRL[17U] = 0x44454647U;
		config_reg->CONFIG_CHANCTRL[18U] = 0x48494A4BU;
		config_reg->CONFIG_CHANCTRL[19U] = 0x4C4D4E4FU;
		config_reg->CONFIG_CHANCTRL[20U] = 0x50515253U;
		config_reg->CONFIG_CHANCTRL[21U] = 0x54555657U;
		config_reg->CONFIG_CHANCTRL[22U] = 0x58595A5BU;
		config_reg->CONFIG_CHANCTRL[23U] = 0x5C5D5E5FU;
		config_reg->CONFIG_CHANCTRL[24U] = 0x60616263U;
		config_reg->CONFIG_CHANCTRL[25U] = 0x64656667U;
		config_reg->CONFIG_CHANCTRL[26U] = 0x68696A6BU;
		config_reg->CONFIG_CHANCTRL[27U] = 0x6C6D6E6FU;
		config_reg->CONFIG_CHANCTRL[28U] = 0x70717273U;
		config_reg->CONFIG_CHANCTRL[29U] = 0x74757677U;
		config_reg->CONFIG_CHANCTRL[30U] = 0x78797A7BU;
		config_reg->CONFIG_CHANCTRL[31U] = 0x7C7D7E7FU;
    }
    else
    {
	 
        config_reg->CONFIG_FIRQPR0 = ((vimBASE_t *)0xFFFFFE00U)->FIRQPR0;
        config_reg->CONFIG_FIRQPR1 = ((vimBASE_t *)0xFFFFFE00U)->FIRQPR1;
        config_reg->CONFIG_FIRQPR2 = ((vimBASE_t *)0xFFFFFE00U)->FIRQPR2;
        config_reg->CONFIG_FIRQPR3 = ((vimBASE_t *)0xFFFFFE00U)->FIRQPR3;
        config_reg->CONFIG_REQMASKSET0 = ((vimBASE_t *)0xFFFFFE00U)->REQMASKSET0;
        config_reg->CONFIG_REQMASKSET1 = ((vimBASE_t *)0xFFFFFE00U)->REQMASKSET1;
        config_reg->CONFIG_REQMASKSET2 = ((vimBASE_t *)0xFFFFFE00U)->REQMASKSET2;
        config_reg->CONFIG_REQMASKSET3 = ((vimBASE_t *)0xFFFFFE00U)->REQMASKSET3;
        config_reg->CONFIG_WAKEMASKSET0 = ((vimBASE_t *)0xFFFFFE00U)->WAKEMASKSET0;
        config_reg->CONFIG_WAKEMASKSET1 = ((vimBASE_t *)0xFFFFFE00U)->WAKEMASKSET1;
        config_reg->CONFIG_WAKEMASKSET2 = ((vimBASE_t *)0xFFFFFE00U)->WAKEMASKSET2;
        config_reg->CONFIG_WAKEMASKSET3 = ((vimBASE_t *)0xFFFFFE00U)->WAKEMASKSET3;
        config_reg->CONFIG_CAPEVT = ((vimBASE_t *)0xFFFFFE00U)->CAPEVT;
		config_reg->CONFIG_CHANCTRL[0U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[0U];
		config_reg->CONFIG_CHANCTRL[1U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[1U];
		config_reg->CONFIG_CHANCTRL[2U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[2U];
		config_reg->CONFIG_CHANCTRL[3U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[3U];
		config_reg->CONFIG_CHANCTRL[4U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[4U];
		config_reg->CONFIG_CHANCTRL[5U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[5U];
		config_reg->CONFIG_CHANCTRL[6U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[6U];
		config_reg->CONFIG_CHANCTRL[7U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[7U];
		config_reg->CONFIG_CHANCTRL[8U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[8U];
		config_reg->CONFIG_CHANCTRL[9U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[9U];
		config_reg->CONFIG_CHANCTRL[10U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[10U];
		config_reg->CONFIG_CHANCTRL[11U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[11U];
		config_reg->CONFIG_CHANCTRL[12U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[12U];
		config_reg->CONFIG_CHANCTRL[13U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[13U];
		config_reg->CONFIG_CHANCTRL[14U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[14U];
		config_reg->CONFIG_CHANCTRL[15U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[15U];
		config_reg->CONFIG_CHANCTRL[16U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[16U];
		config_reg->CONFIG_CHANCTRL[17U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[17U];
		config_reg->CONFIG_CHANCTRL[18U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[18U];
		config_reg->CONFIG_CHANCTRL[19U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[19U];
		config_reg->CONFIG_CHANCTRL[20U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[20U];
		config_reg->CONFIG_CHANCTRL[21U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[21U];
		config_reg->CONFIG_CHANCTRL[22U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[22U];
		config_reg->CONFIG_CHANCTRL[23U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[23U];
		config_reg->CONFIG_CHANCTRL[24U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[24U];
		config_reg->CONFIG_CHANCTRL[25U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[25U];
		config_reg->CONFIG_CHANCTRL[26U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[26U];
		config_reg->CONFIG_CHANCTRL[27U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[27U];
		config_reg->CONFIG_CHANCTRL[28U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[28U];
		config_reg->CONFIG_CHANCTRL[29U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[29U];
		config_reg->CONFIG_CHANCTRL[30U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[30U];
		config_reg->CONFIG_CHANCTRL[31U] = ((vimBASE_t *)0xFFFFFE00U)->CHANCTRL[31U];
    }
}


#pragma CODE_STATE(vimParityErrorHandler, 32)
#pragma INTERRUPT(vimParityErrorHandler, IRQ)
#pragma WEAK(vimParityErrorHandler)

 
 
 
void vimParityErrorHandler(void)
{
    uint32 vec;
    
     
    uint32 error_addr = (*(volatile uint32 *)0xFFFFFDF4U);

     
    uint32 error_channel = ((error_addr & 0x1FFU) >> 2U) - 1U;

     
    ((vimRAM_t *)0xFFF82000U)->ISR[error_channel + 1U] = s_vim_init[error_channel + 1U];

     
    (*(volatile uint32 *)0xFFFFFDECU) = 1U;

     
    if (((vimBASE_t *)0xFFFFFE00U)->FIQINDEX != 0U)
    {
        vec = ((vimBASE_t *)0xFFFFFE00U)->FIQINDEX - 1U;
    }
    else 
    {
	    
        vec = ((vimBASE_t *)0xFFFFFE00U)->IRQINDEX - 1U;
    }
    if(vec == 0U)
    {
        ((vimBASE_t *)0xFFFFFE00U)->INTREQ0 = 1U;
	    vec = ((esmBASE_t *)0xFFFFF500U)->IOFFHR - 1U;
		
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
            ((esmBASE_t *)0xFFFFF500U)->SR4[1U] = (uint32)1U << (vec-96U);
            esmGroup2Notification(vec-64U);
        }
    }
    else if (vec < 32U)
    {
        ((vimBASE_t *)0xFFFFFE00U)->REQMASKCLR0 = (uint32)1U << vec;
        ((vimBASE_t *)0xFFFFFE00U)->REQMASKSET0 = (uint32)1U << vec;
    }
    else if (vec < 64U)
    {
        ((vimBASE_t *)0xFFFFFE00U)->REQMASKCLR1 = (uint32)1U << (vec-32U);
        ((vimBASE_t *)0xFFFFFE00U)->REQMASKSET1 = (uint32)1U << (vec-32U);
    }
    else if(vec < 96U)
    {
        ((vimBASE_t *)0xFFFFFE00U)->REQMASKCLR2 = (uint32)1U << (vec-64U);
        ((vimBASE_t *)0xFFFFFE00U)->REQMASKSET2 = (uint32)1U << (vec-64U);
    }
	else
	{
	    ((vimBASE_t *)0xFFFFFE00U)->REQMASKCLR3 = (uint32)1U << (vec-96U);
        ((vimBASE_t *)0xFFFFFE00U)->REQMASKSET3 = (uint32)1U << (vec-96U);
	}
}

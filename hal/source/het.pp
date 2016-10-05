




 

































 







 

































 















 

































 












 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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
 
 
 

 
 

static const uint32 s_het1pwmPolarity[8U] =
{
    3U,
    3U,
    3U,
    3U,
    3U,
    3U,
    3U,
    3U,
};

static const uint32 s_het2pwmPolarity[8U] =
{
    3U,
    3U,
    3U,
    3U,
    3U,
    3U,
    3U,
    3U,
};

 
 





 

static const hetINSTRUCTION_t het1PROGRAM[58U] =
{
    






 
    {
         
        0x00002C80U,
         
        0x01FFFFFFU,
         
        0xFFFFFF80U,
         
        0x00000000U
    },
    





 
    {
         
        0x000055C0U,
         
        (0x00004006U | (uint32)((uint32)8U << 8U) | (uint32)((uint32)3U << 3U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00007480U,
         
        0x00052006U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x000095C0U,
         
        (0x00008006U | (uint32)((uint32)10U << 8U) | (uint32)((uint32)3U << 3U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0000B480U,
         
        0x00056006U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0000D5C0U,
         
        (0x0000C006U | (uint32)((uint32)12U << 8U) | (uint32)((uint32)3U << 3U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0000F480U,
         
        0x0005A006U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x000115C0U,
         
        (0x00010006U | (uint32)((uint32)14U << 8U) | (uint32)((uint32)3U << 3U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00013480U,
         
        0x0005E006U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x000155C0U,
         
        (0x00014006U | (uint32)((uint32)16U << 8U) | (uint32)((uint32)3U << 3U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00017480U,
         
        0x00062006U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x000195C0U,
         
        (0x00018006U | (uint32)((uint32)17U << 8U) | (uint32)((uint32)3U << 3U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0001B480U,
         
        0x00066006U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0001D5C0U,
         
        (0x0001C006U | (uint32)((uint32)18U << 8U) | (uint32)((uint32)3U << 3U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0001F480U,
         
        0x0006A006U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x000215C0U,
         
        (0x00020006U | (uint32)((uint32)19U << 8U) | (uint32)((uint32)3U << 3U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00023480U,
         
        0x0006E006U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00025440U,
         
        (0x00024007U | (uint32)((uint32)9U << 8U) | (uint32)((uint32)1U << 4U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00027440U,
         
        (0x00026007U | (uint32)((uint32)11U << 8U) | (uint32)((uint32)1U << 4U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00029440U,
         
        (0x00028007U | (uint32)((uint32)13U << 8U) | (uint32)((uint32)1U << 4U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0002B440U,
         
        (0x0002A007U | (uint32)((uint32)15U << 8U) | (uint32)((uint32)1U << 4U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0002D440U,
         
        (0x0002C007U | (uint32)((uint32)20U << 8U) | (uint32)((uint32)1U << 4U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0002F440U,
         
        (0x0002E007U | (uint32)((uint32)21U << 8U) | (uint32)((uint32)1U << 4U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00031440U,
         
        (0x00030007U | (uint32)((uint32)22U << 8U) | (uint32)((uint32)1U << 4U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00033440U,
         
        (0x00032007U | (uint32)((uint32)23U << 8U) | (uint32)((uint32)1U << 4U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00034E00U | (uint32)((uint32)0U << 6U)  | (uint32)(0U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00036E80U | (uint32)((uint32)0U << 6U)  | (uint32)((0U) + 1U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00038E00U | (uint32)((uint32)0U << 6U)  | (uint32)(2U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0003AE80U | (uint32)((uint32)0U << 6U)  | (uint32)((2U) + 1U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0003CE00U | (uint32)((uint32)0U << 6U)  | (uint32)(4U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0003EE80U | (uint32)((uint32)0U << 6U)  | (uint32)((4U) + 1U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00040E00U | (uint32)((uint32)0U << 6U)  | (uint32)(6U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00042E80U | (uint32)((uint32)0U << 6U)  | (uint32)((6U) + 1U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00044E00U | (uint32)((uint32)0U << 6U)  | (uint32)(24U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00046E80U | (uint32)((uint32)0U << 6U)  | (uint32)((24U) + 1U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00048E00U | (uint32)((uint32)0U << 6U)  | (uint32)(26U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0004AE80U | (uint32)((uint32)0U << 6U)  | (uint32)((26U) + 1U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0004CE00U | (uint32)((uint32)0U << 6U)  | (uint32)(28U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0004EE80U | (uint32)((uint32)0U << 6U)  | (uint32)((28U) + 1U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00050E00U | (uint32)((uint32)0U << 6U)  | (uint32)(30U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00072E80U | (uint32)((uint32)0U << 6U)  | (uint32)((30U) + 1U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00054201U,
         
        (0x00004007U | (uint32)((uint32)0U << 22U) | (uint32)((uint32)8U << 8U) | (uint32)((uint32)3U << 3U)),
         
        80128U,
         
        0x00000000U
    },
    





 
    {
         
        0x00006202U,
         
        (0x00052007U),
         
        159872U,
         
        0x00000000U
    },
    





 
    {
         
        0x00058203U,
         
        (0x00008007U | (uint32)((uint32)0U << 22U) | (uint32)((uint32)10U << 8U) | (uint32)((uint32)3U << 3U)),
         
        80128U,
         
        0x00000000U
    },
    





 
    {
         
        0x0000A204U,
         
        (0x00056007U),
         
        159872U,
         
        0x00000000U
    },
    





 
    {
         
        0x0005C205U,
         
        (0x0000C007U | (uint32)((uint32)0U << 22U) | (uint32)((uint32)12U << 8U) | (uint32)((uint32)3U << 3U)),
         
        80128U,
         
        0x00000000U
    },
    





 
    {
         
        0x0000E206U,
         
        (0x0005A007U),
         
        159872U,
         
        0x00000000U
    },
    





 
    {
         
        0x00060207U,
         
        (0x00010007U | (uint32)((uint32)0U << 22U) | (uint32)((uint32)14U << 8U) | (uint32)((uint32)3U << 3U)),
         
        80128U,
         
        0x00000000U
    },
    





 
    {
         
        0x00012208U,
         
        (0x0005E007U),
         
        159872U,
         
        0x00000000U
    },
    





 
    {
         
        0x00064209U,
         
        (0x00014007U | (uint32)((uint32)0U << 22U) | (uint32)((uint32)16U << 8U) | (uint32)((uint32)3U << 3U)),
         
        80128U,
         
        0x00000000U
    },
    





 
    {
         
        0x0001620AU,
         
        (0x00062007U),
         
        159872U,
         
        0x00000000U
    },
    





 
    {
         
        0x0006820BU,
         
        (0x00018007U | (uint32)((uint32)0U << 22U) | (uint32)((uint32)17U << 8U) | (uint32)((uint32)3U << 3U)),
         
        80128U,
         
        0x00000000U
    },
    





 
    {
         
        0x0001A20CU,
         
        (0x00066007U),
         
        159872U,
         
        0x00000000U
    },
    





 
    {
         
        0x0006C20DU,
         
        (0x0001C007U | (uint32)((uint32)0U << 22U) | (uint32)((uint32)18U << 8U) | (uint32)((uint32)3U << 3U)),
         
        80128U,
         
        0x00000000U
    },
    





 
    {
         
        0x0001E20EU,
         
        (0x0006A007U),
         
        159872U,
         
        0x00000000U
    },
    





 
    {
         
        0x0007020FU,
         
        (0x00020007U | (uint32)((uint32)0U << 22U) | (uint32)((uint32)19U << 8U) | (uint32)((uint32)3U << 3U)),
         
        80128U,
         
        0x00000000U
    },
    





 
    {
         
        0x00022210U,
         
        (0x0006E007U),
         
        159872U,
         
        0x00000000U
    },
    






 
    {
         
        0x00001600U,
         
        (0x00000004U),
         
        0x00000000U,
         
        0x00000000U
    },
};


 
 





 

static const hetINSTRUCTION_t het2PROGRAM[58U] =
{
    






 
    {
         
        0x00002C80U,
         
        0x01FFFFFFU,
         
        0xFFFFFF80U,
         
        0x00000000U
    },
    





 
    {
         
        0x000055C0U,
         
        (0x00004006U | (uint32)((uint32)8U << 8U) | (uint32)((uint32)3U << 3U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00007480U,
         
        0x00052006U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x000095C0U,
         
        (0x00008006U | (uint32)((uint32)2U << 8U) | (uint32)((uint32)3U << 3U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0000B480U,
         
        0x00056006U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0000D5C0U,
         
        (0x0000C006U | (uint32)((uint32)12U << 8U) | (uint32)((uint32)3U << 3U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0000F480U,
         
        0x0005A006U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x000115C0U,
         
        (0x00010006U | (uint32)((uint32)6U << 8U) | (uint32)((uint32)3U << 3U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00013480U,
         
        0x0005E006U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x000155C0U,
         
        (0x00014006U | (uint32)((uint32)16U << 8U) | (uint32)((uint32)3U << 3U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00017480U,
         
        0x00062006U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x000195C0U,
         
        (0x00018006U | (uint32)((uint32)17U << 8U) | (uint32)((uint32)3U << 3U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0001B480U,
         
        0x00066006U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0001D5C0U,
         
        (0x0001C006U | (uint32)((uint32)18U << 8U) | (uint32)((uint32)3U << 3U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0001F480U,
         
        0x0006A006U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x000215C0U,
         
        (0x00020006U | (uint32)((uint32)19U << 8U) | (uint32)((uint32)3U << 3U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00023480U,
         
        0x0006E006U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00025440U,
         
        (0x00024007U | (uint32)((uint32)0U << 8U) | (uint32)((uint32)1U << 4U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00027440U,
         
        (0x00026007U | (uint32)((uint32)2U << 8U) | (uint32)((uint32)1U << 4U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00029440U,
         
        (0x00028007U | (uint32)((uint32)4U << 8U) | (uint32)((uint32)1U << 4U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0002B440U,
         
        (0x0002A007U | (uint32)((uint32)6U << 8U) | (uint32)((uint32)1U << 4U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0002D440U,
         
        (0x0002C007U | (uint32)((uint32)8U << 8U) | (uint32)((uint32)1U << 4U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0002F440U,
         
        (0x0002E007U | (uint32)((uint32)10U << 8U) | (uint32)((uint32)1U << 4U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00031440U,
         
        (0x00030007U | (uint32)((uint32)12U << 8U) | (uint32)((uint32)1U << 4U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00033440U,
         
        (0x00032007U | (uint32)((uint32)14U << 8U) | (uint32)((uint32)1U << 4U)),
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00034E00U | (uint32)((uint32)0U << 6U)  | (uint32)(0U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00036E80U | (uint32)((uint32)0U << 6U)  | (uint32)((0U) + 1U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00038E00U | (uint32)((uint32)0U << 6U)  | (uint32)(2U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0003AE80U | (uint32)((uint32)0U << 6U)  | (uint32)((2U) + 1U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0003CE00U | (uint32)((uint32)0U << 6U)  | (uint32)(4U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0003EE80U | (uint32)((uint32)0U << 6U)  | (uint32)((4U) + 1U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00040E00U | (uint32)((uint32)0U << 6U)  | (uint32)(6U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00042E80U | (uint32)((uint32)0U << 6U)  | (uint32)((6U) + 1U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00044E00U | (uint32)((uint32)0U << 6U)  | (uint32)(0U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00046E80U | (uint32)((uint32)0U << 6U)  | (uint32)((0U) + 1U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00048E00U | (uint32)((uint32)0U << 6U)  | (uint32)(2U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0004AE80U | (uint32)((uint32)0U << 6U)  | (uint32)((2U) + 1U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0004CE00U | (uint32)((uint32)0U << 6U)  | (uint32)(4U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x0004EE80U | (uint32)((uint32)0U << 6U)  | (uint32)((4U) + 1U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00050E00U | (uint32)((uint32)0U << 6U)  | (uint32)(6U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00072E80U | (uint32)((uint32)0U << 6U)  | (uint32)((6U) + 1U),
         
        0x00000000U,
         
        0x00000000U,
         
        0x00000000U
    },
    





 
    {
         
        0x00054201U,
         
        (0x00004007U | (uint32)((uint32)0U << 22U) | (uint32)((uint32)8U << 8U) | (uint32)((uint32)3U << 3U)),
         
        80128U,
         
        0x00000000U
    },
    





 
    {
         
        0x00006202U,
         
        (0x00052007U),
         
        159872U,
         
        0x00000000U
    },
    





 
    {
         
        0x00058203U,
         
        (0x00008007U | (uint32)((uint32)0U << 22U) | (uint32)((uint32)2U << 8U) | (uint32)((uint32)3U << 3U)),
         
        80128U,
         
        0x00000000U
    },
    





 
    {
         
        0x0000A204U,
         
        (0x00056007U),
         
        159872U,
         
        0x00000000U
    },
    





 
    {
         
        0x0005C205U,
         
        (0x0000C007U | (uint32)((uint32)0U << 22U) | (uint32)((uint32)12U << 8U) | (uint32)((uint32)3U << 3U)),
         
        80128U,
         
        0x00000000U
    },
    





 
    {
         
        0x0000E206U,
         
        (0x0005A007U),
         
        159872U,
         
        0x00000000U
    },
    





 
    {
         
        0x00060207U,
         
        (0x00010007U | (uint32)((uint32)0U << 22U) | (uint32)((uint32)6U << 8U) | (uint32)((uint32)3U << 3U)),
         
        80128U,
         
        0x00000000U
    },
    





 
    {
         
        0x00012208U,
         
        (0x0005E007U),
         
        159872U,
         
        0x00000000U
    },
    





 
    {
         
        0x00064209U,
         
        (0x00014007U | (uint32)((uint32)0U << 22U) | (uint32)((uint32)16U << 8U) | (uint32)((uint32)3U << 3U)),
         
        80128U,
         
        0x00000000U
    },
    





 
    {
         
        0x0001620AU,
         
        (0x00062007U),
         
        159872U,
         
        0x00000000U
    },
    





 
    {
         
        0x0006820BU,
         
        (0x00018007U | (uint32)((uint32)0U << 22U) | (uint32)((uint32)17U << 8U) | (uint32)((uint32)3U << 3U)),
         
        80128U,
         
        0x00000000U
    },
    





 
    {
         
        0x0001A20CU,
         
        (0x00066007U),
         
        159872U,
         
        0x00000000U
    },
    





 
    {
         
        0x0006C20DU,
         
        (0x0001C007U | (uint32)((uint32)0U << 22U) | (uint32)((uint32)18U << 8U) | (uint32)((uint32)3U << 3U)),
         
        80128U,
         
        0x00000000U
    },
    





 
    {
         
        0x0001E20EU,
         
        (0x0006A007U),
         
        159872U,
         
        0x00000000U
    },
    





 
    {
         
        0x0007020FU,
         
        (0x00020007U | (uint32)((uint32)0U << 22U) | (uint32)((uint32)19U << 8U) | (uint32)((uint32)3U << 3U)),
         
        80128U,
         
        0x00000000U
    },
    





 
    {
         
        0x00022210U,
         
        (0x0006E007U),
         
        159872U,
         
        0x00000000U
    },
    






 
    {
         
        0x00001600U,
         
        (0x00000004U),
         
        0x00000000U,
         
        0x00000000U
    },
};






 
 
 
 
void hetInit(void)
{
     

     
    ((hetBASE_t *)0xFFF7B800U)->DOUT = (uint32)((uint32)0U << 31U)
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
                  | (uint32)((uint32)0U << 9U)
                  | (uint32)((uint32)0U << 8U)
                  | (uint32)((uint32)0U << 7U)
                  | (uint32)((uint32)0U << 6U)
                  | (uint32)((uint32)0U << 5U)
                  | (uint32)((uint32)0U << 4U)
                  | (uint32)((uint32)0U << 3U)
                  | (uint32)((uint32)0U << 2U)
                  | (uint32)((uint32)0U << 1U)
                  | (uint32)((uint32)0U << 0U);

     
    ((hetBASE_t *)0xFFF7B800U)->DIR = (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U;

     
    ((hetBASE_t *)0xFFF7B800U)->PDR = (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U;

     
    ((hetBASE_t *)0xFFF7B800U)->PULDIS = (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U;

     
    ((hetBASE_t *)0xFFF7B800U)->PSL = (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U;

     
    ((hetBASE_t *)0xFFF7B800U)->HRSH = (uint32) 0x00008000U
                  | (uint32) 0x00004000U
                  | (uint32) 0x00002000U
                  | (uint32) 0x00001000U
                  | (uint32) 0x00000000U
                  | (uint32) 0x00000000U
                  | (uint32) 0x00000000U
                  | (uint32) 0x00000000U
                  | (uint32) 0x00000000U
                  | (uint32) 0x00000000U
                  | (uint32) 0x00000000U
                  | (uint32) 0x00000000U
                  | (uint32) 0x00000008U
                  | (uint32) 0x00000004U
                  | (uint32) 0x00000002U
                  | (uint32) 0x00000001U;

     
    ((hetBASE_t *)0xFFF7B800U)->AND = (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U;

     
    ((hetBASE_t *)0xFFF7B800U)->XOR = (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U;

 
 

    


 
    ((hetBASE_t *)0xFFF7B800U)->PFR = (uint32)((uint32) 6U << 8U)
                | ((uint32) 0U);


   

 
    ((hetBASE_t *)0xFFF7B800U)->PCR = (uint32) 0x00000005U;

     
     
     
     
     
    (void)memcpy((void *)((hetRAMBASE_t *)0xFF460000U), (const void *)het1PROGRAM, sizeof(het1PROGRAM));

    

























 
    ((hetBASE_t *)0xFFF7B800U)->PRY = (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U;

    
























 
    ((hetBASE_t *)0xFFF7B800U)->INTENAC = 0xFFFFFFFFU;
    ((hetBASE_t *)0xFFF7B800U)->INTENAS = (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U;


   




 
    ((hetBASE_t *)0xFFF7B800U)->GCR = ( 0x00000001U 
                   | (uint32)((uint32)0U << 24U)
	               | (uint32)((uint32)1U << 16U)
                   | (0x00020000U));


   

     
    ((hetBASE_t *)0xFFF7B900U)->DOUT = (uint32)((uint32)0U << 18U)
                  | (uint32)((uint32)0U << 17U)
                  | (uint32)((uint32)0U << 16U)
                  | (uint32)((uint32)0U << 15U)
                  | (uint32)((uint32)0U << 14U)
                  | (uint32)((uint32)0U << 13U)
                  | (uint32)((uint32)0U << 12U)
                  | (uint32)((uint32)0U << 11U)
                  | (uint32)((uint32)0U << 10U)
                  | (uint32)((uint32)0U << 9U)
                  | (uint32)((uint32)0U << 8U)
                  | (uint32)((uint32)0U << 7U)
                  | (uint32)((uint32)0U << 6U)
                  | (uint32)((uint32)0U << 5U)
                  | (uint32)((uint32)0U << 4U)
                  | (uint32)((uint32)0U << 3U)
                  | (uint32)((uint32)0U << 2U)
                  | (uint32)((uint32)0U << 1U)
                  | (uint32)((uint32)0U << 0U);

     
    ((hetBASE_t *)0xFFF7B900U)->DIR = (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U;

     
    ((hetBASE_t *)0xFFF7B900U)->PDR = (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U;

     
    ((hetBASE_t *)0xFFF7B900U)->PULDIS = (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U
                    | (uint32) 0x00000000U;

     
    ((hetBASE_t *)0xFFF7B900U)->PSL = (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U;

     
    ((hetBASE_t *)0xFFF7B900U)->HRSH = (uint32) 0x00000000U
                  | (uint32) 0x00000000U
                  | (uint32) 0x00000000U
                  | (uint32) 0x00000000U
                  | (uint32) 0x00000000U
                  | (uint32) 0x00000008U
                  | (uint32) 0x00000004U
                  | (uint32) 0x00000002U
                  | (uint32) 0x00000001U;

     
    ((hetBASE_t *)0xFFF7B900U)->AND = (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U;

     
    ((hetBASE_t *)0xFFF7B900U)->XOR = (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U;

 
 

    


 
    ((hetBASE_t *)0xFFF7B900U)->PFR = (uint32)((uint32) 6U << 8U)
                | ((uint32) 0U);

   

 
    ((hetBASE_t *)0xFFF7B900U)->PCR = (uint32) 0x00000005U;

     

 
 

     
     
     
     
     
    (void)memcpy((void *)((hetRAMBASE_t *)0xFF440000U), (const void *)het2PROGRAM, sizeof(het2PROGRAM));

    


 
    ((hetBASE_t *)0xFFF7B900U)->PFR = (uint32)((uint32) 6U << 8U)
                | ((uint32) 0U);

    

























 
    ((hetBASE_t *)0xFFF7B900U)->PRY = (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U
                 | (uint32) 0x00000000U;

    
























 
    ((hetBASE_t *)0xFFF7B900U)->INTENAC = 0xFFFFFFFFU;
    ((hetBASE_t *)0xFFF7B900U)->INTENAS = (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U
                     | (uint32) 0x00000000U;



   




 
    ((hetBASE_t *)0xFFF7B900U)->GCR = ( 0x00000001U 
                   | (uint32)((uint32)0U << 24U)
	               | (uint32)((uint32)1U << 16U)
                   | (0x00020000U));
	
    

 


}
















 
 
 
 
void pwmStart( hetRAMBASE_t * hetRAM, uint32 pwm)
{

   hetRAM->Instruction[(pwm << 1U) + 41U].Control  |= 0x00400000U;
}


















 
 
 
 
void pwmStop( hetRAMBASE_t * hetRAM, uint32 pwm)
{
    hetRAM->Instruction[(pwm << 1U) + 41U].Control  &= ~(uint32)0x00400000U;
}



















 
 
 
 
void pwmSetDuty(hetRAMBASE_t * hetRAM, uint32 pwm, uint32 pwmDuty)
{
    uint32 action;
    uint32 pwmPolarity =0U;
    uint32 pwmPeriod = hetRAM->Instruction[(pwm << 1U) + 42U].Data + 128U;
    pwmPeriod = pwmPeriod >> 7U;

    if(hetRAM == ((hetRAMBASE_t *)0xFF460000U))
    {
        pwmPolarity = s_het1pwmPolarity[pwm];
    }
    else
    {
        pwmPolarity = s_het2pwmPolarity[pwm];
    }
    if (pwmDuty == 0U)
    {
        action = (pwmPolarity == 3U) ? 0U : 2U;
    }
    else if (pwmDuty >= 100U)
    {
        action = (pwmPolarity == 3U) ? 2U : 0U;
    }
    else
    {
        action = pwmPolarity;
    }

    hetRAM->Instruction[(pwm << 1U) + 41U].Control = ((hetRAM->Instruction[(pwm << 1U) + 41U].Control) & (~(uint32)(0x00000018U))) | (action << 3U);
    hetRAM->Instruction[(pwm << 1U) + 41U].Data = (((pwmPeriod * pwmDuty) / 100U) << 7U) + 128U;
}





















 
 
 
 
void pwmSetSignal(hetRAMBASE_t * hetRAM, uint32 pwm, hetSIGNAL_t signal)
{
    uint32 action;
    uint32 pwmPolarity = 0U;
    float64 pwmPeriod = 0.0F;

    if(hetRAM == ((hetRAMBASE_t *)0xFF460000U))
    {
        pwmPeriod = (signal.period * 1000.0F) / 800.000F;
        pwmPolarity = s_het1pwmPolarity[pwm];
    }
    else
    {
        pwmPeriod = (signal.period * 1000.0F) / 800.000F;
        pwmPolarity = s_het2pwmPolarity[pwm];
    }
    if (signal.duty == 0U)
    {
        action = (pwmPolarity == 3U) ? 0U : 2U;
    }
    else if (signal.duty >= 100U)
    {
        action = (pwmPolarity == 3U) ? 2U : 0U;
    }
    else
    {
        action = pwmPolarity;
    }

    hetRAM->Instruction[(pwm << 1U) + 41U].Control = ((hetRAM->Instruction[(pwm << 1U) + 41U].Control) & (~(uint32)(0x00000018U))) | (action << 3U);
    hetRAM->Instruction[(pwm << 1U) + 41U].Data = ((((uint32)pwmPeriod * signal.duty) / 100U) << 7U ) + 128U;
    hetRAM->Instruction[(pwm << 1U) + 42U].Data = ((uint32)pwmPeriod << 7U) - 128U;

}





















 
 
 
 
void pwmGetSignal(hetRAMBASE_t * hetRAM, uint32 pwm, hetSIGNAL_t* signal)
{
    uint32    pwmDuty   = (hetRAM->Instruction[(pwm << 1U) + 41U].Data - 128U) >> 7U;
    uint32    pwmPeriod = (hetRAM->Instruction[(pwm << 1U) + 42U].Data + 128U) >> 7U;

    signal->duty   = (pwmDuty * 100U) / pwmPeriod;

    if(hetRAM == ((hetRAMBASE_t *)0xFF460000U))
    {
        signal->period = ((float64)pwmPeriod * 800.000F) / 1000.0F;
    }
    else
    {
        signal->period = ((float64)pwmPeriod * 800.000F) / 1000.0F;
    }
}



















 
 
 
 
void pwmEnableNotification(hetBASE_t * hetREG, uint32 pwm, uint32 notification)
{
    hetREG->FLG     = notification << (pwm << 1U);
    hetREG->INTENAS = notification << (pwm << 1U);
}




















 
 
 
 
void pwmDisableNotification(hetBASE_t * hetREG, uint32 pwm, uint32 notification)
{
    hetREG->INTENAC = notification << (pwm << 1U);
}


















 
 
 
 
void edgeResetCounter(hetRAMBASE_t * hetRAM, uint32 edge)
{
    hetRAM->Instruction[edge + 17U].Data = 0U;
}


















 
 
 
 
uint32 edgeGetCounter(hetRAMBASE_t * hetRAM, uint32 edge)
{
    return hetRAM->Instruction[edge + 17U].Data >> 7U;
}
















 
 
 
 
void edgeEnableNotification(hetBASE_t * hetREG, uint32 edge)
{
    hetREG->FLG     = (uint32)0x20000U << edge;
    hetREG->INTENAS = (uint32)0x20000U << edge;
}
















 
 
 
 
void edgeDisableNotification(hetBASE_t * hetREG, uint32 edge)
{
    hetREG->INTENAC = (uint32)0x20000U << edge;
}





















 
 
 
 
void capGetSignal(hetRAMBASE_t * hetRAM, uint32 cap, hetSIGNAL_t *signal)
{
    uint32    pwmDuty   = (hetRAM->Instruction[(cap << 1U) + 25U].Data) >> 7U;
    uint32    pwmPeriod = (hetRAM->Instruction[(cap << 1U) + 26U].Data) >> 7U;

    signal->duty   = (pwmDuty * 100U) / pwmPeriod;

    if( hetRAM == ((hetRAMBASE_t *)0xFF460000U))
    {
        signal->period = ((float64)pwmPeriod * 800.000F) / 1000.0F;
    }
    else
    {
        signal->period = ((float64)pwmPeriod * 800.000F) / 1000.0F;
    }
}









 
 
 
 
void hetResetTimestamp(hetRAMBASE_t * hetRAM)
{
    hetRAM->Instruction[0U].Data = 0U;
}






 
 
 
 
uint32 hetGetTimestamp(hetRAMBASE_t * hetRAM)
{
    return hetRAM->Instruction[57U].Data;
}

 
 
















 
 
 
 
void het1GetConfigValue(het_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    {
        config_reg->CONFIG_GCR     = 0x00030001U;
        config_reg->CONFIG_PFR     = (((uint32)6U << 8U) | (uint32)0U);
        config_reg->CONFIG_INTENAS = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_INTENAC = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_PRY     = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_AND     = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_HRSH    = ((uint32)0x00008000U | (uint32)0x00004000U | (uint32)0x00002000U | (uint32)0x00001000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000008U | (uint32)0x00000004U | (uint32)0x00000002U | (uint32)0x00000001U);
        config_reg->CONFIG_XOR     = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_DIR     = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_PDR     = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_PULDIS  = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_PSL     = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_PCR     = ((uint32)0x00000005U);
    }
    else
    {
     
        config_reg->CONFIG_GCR     = ((hetBASE_t *)0xFFF7B800U)->GCR;
        config_reg->CONFIG_PFR     = ((hetBASE_t *)0xFFF7B800U)->PFR;
        config_reg->CONFIG_INTENAS = ((hetBASE_t *)0xFFF7B800U)->INTENAS;
        config_reg->CONFIG_INTENAC = ((hetBASE_t *)0xFFF7B800U)->INTENAC;
        config_reg->CONFIG_PRY     = ((hetBASE_t *)0xFFF7B800U)->PRY;
        config_reg->CONFIG_AND     = ((hetBASE_t *)0xFFF7B800U)->AND;
        config_reg->CONFIG_HRSH    = ((hetBASE_t *)0xFFF7B800U)->HRSH;
        config_reg->CONFIG_XOR     = ((hetBASE_t *)0xFFF7B800U)->XOR;
        config_reg->CONFIG_DIR     = ((hetBASE_t *)0xFFF7B800U)->DIR;
        config_reg->CONFIG_PDR     = ((hetBASE_t *)0xFFF7B800U)->PDR;
        config_reg->CONFIG_PULDIS  = ((hetBASE_t *)0xFFF7B800U)->PULDIS;
        config_reg->CONFIG_PSL     = ((hetBASE_t *)0xFFF7B800U)->PSL;
        config_reg->CONFIG_PCR     = ((hetBASE_t *)0xFFF7B800U)->PCR;
    }
}















 
 
 
 
void het2GetConfigValue(het_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    {
        config_reg->CONFIG_GCR     = 0x00030001U;
        config_reg->CONFIG_PFR     = (((uint32)6U << 8U) | (uint32)0U);
        config_reg->CONFIG_INTENAS = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_INTENAC = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_PRY     = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_AND     = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_HRSH    = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000008U | (uint32)0x00000004U | (uint32)0x00000002U | (uint32)0x00000001U);
        config_reg->CONFIG_XOR     = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_DIR     = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_PDR     = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_PULDIS  = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_PSL     = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_PCR     = ((uint32)0x00000005U);
    }
    else
    {
     
        config_reg->CONFIG_GCR     = ((hetBASE_t *)0xFFF7B900U)->GCR;
        config_reg->CONFIG_PFR     = ((hetBASE_t *)0xFFF7B900U)->PFR;
        config_reg->CONFIG_INTENAS = ((hetBASE_t *)0xFFF7B900U)->INTENAS;
        config_reg->CONFIG_INTENAC = ((hetBASE_t *)0xFFF7B900U)->INTENAC;
        config_reg->CONFIG_PRY     = ((hetBASE_t *)0xFFF7B900U)->PRY;
        config_reg->CONFIG_AND     = ((hetBASE_t *)0xFFF7B900U)->AND;
        config_reg->CONFIG_HRSH    = ((hetBASE_t *)0xFFF7B900U)->HRSH;
        config_reg->CONFIG_XOR     = ((hetBASE_t *)0xFFF7B900U)->XOR;
        config_reg->CONFIG_DIR     = ((hetBASE_t *)0xFFF7B900U)->DIR;
        config_reg->CONFIG_PDR     = ((hetBASE_t *)0xFFF7B900U)->PDR;
        config_reg->CONFIG_PULDIS  = ((hetBASE_t *)0xFFF7B900U)->PULDIS;
        config_reg->CONFIG_PSL     = ((hetBASE_t *)0xFFF7B900U)->PSL;
        config_reg->CONFIG_PCR     = ((hetBASE_t *)0xFFF7B900U)->PCR;
    }
}






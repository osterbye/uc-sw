




 
































 












 

































 













 

































 












 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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


 
 

 
 
 
 

 
 

 
 



 
 

 




 




 
typedef volatile struct pmmBase
{
	uint32 LOGICPDPWRCTRL0;		 	
    uint32   rsvd1[3U];			 
	uint32 MEMPDPWRCTRL0;		 
    uint32   rsvd2[3U];			 
    uint32 PDCLKDISREG;			 
    uint32 PDCLKDISSETREG;		 
    uint32 PDCLKDISCLRREG;		 
    uint32   rsvd3[5U];			 
    uint32 LOGICPDPWRSTAT[4U]; 	



 
    uint32   rsvd4[12U];		 
    uint32 MEMPDPWRSTAT[3U];	


 
    uint32   rsvd5[5U];			 
    uint32 GLOBALCTRL1;			 
    uint32   rsvd6;				 
    uint32 GLOBALSTAT;			 
    uint32 PRCKEYREG;			 
    uint32 LPDDCSTAT1;			 
    uint32 LPDDCSTAT2;			 
    uint32 MPDDCSTAT1;			 
    uint32 MPDDCSTAT2;			 
    uint32 ISODIAGSTAT;			 
}pmmBase_t;






 

 
 




 
 

 



 








 
typedef enum pmmLogicPDTag
{
	PMM_LOGICPD1	= 4U,	 
	PMM_LOGICPD2	= 0U,
	PMM_LOGICPD3	= 1U,
	PMM_LOGICPD4	= 2U,
	PMM_LOGICPD5	= 3U
}pmm_LogicPD_t;






 
typedef enum pmmMemPDTag
{
	PMM_MEMPD1 = 0U,
	PMM_MEMPD2 = 1U,
	PMM_MEMPD3 = 2U
}pmm_MemPD_t;






 
typedef enum pmmModeTag
{
	LockStep				= 0x0U,
	SelfTest				= 0x6U,
	ErrorForcing			= 0x9U,
	SelfTestErrorForcing	= 0xFU
}pmm_Mode_t;


typedef struct pmm_config_reg
{
	uint32 CONFIG_LOGICPDPWRCTRL0;
	uint32 CONFIG_MEMPDPWRCTRL0;
	uint32 CONFIG_PDCLKDISREG;
	uint32 CONFIG_GLOBALCTRL1;
}pmm_config_reg_t;
















 
 
 
void pmmInit(void);
void pmmTurnONLogicPowerDomain(pmm_LogicPD_t logicPD);
void pmmTurnONMemPowerDomain(pmm_MemPD_t memPD);
void pmmTurnOFFLogicPowerDomain(pmm_LogicPD_t logicPD);
void pmmTurnOFFMemPowerDomain(pmm_MemPD_t memPD);
boolean pmmIsLogicPowerDomainActive(pmm_LogicPD_t logicPD);
boolean pmmIsMemPowerDomainActive(pmm_MemPD_t memPD);
void pmmGetConfigValue(pmm_config_reg_t *config_reg, config_value_type_t type);
void pmmSetMode(pmm_Mode_t mode);
boolean pmmPerformSelfTest(void);

 
 
 




 
 





 
 
 
 
void pmmInit(void)
{
     
    ((pmmBase_t *)0xFFFF0000U)->PDCLKDISREG = 0xFU;
     
    ((pmmBase_t *)0xFFFF0000U)->GLOBALCTRL1 = (uint32)((uint32)0U << 8U) | (uint32)0U;  
     
    ((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRCTRL0 = ( (uint32)((uint32)0x5U << 24U) | (uint32)((uint32)0x5U << 16U) | (uint32)((uint32)0x5U << 8U) | (uint32)((uint32)0x5U << 0U) );
     
    ((pmmBase_t *)0xFFFF0000U)->MEMPDPWRCTRL0 = ( (uint32)((uint32)0x5U << 24U) | (uint32)((uint32)0x5U << 16U) );

     
     
	while((((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRSTAT[PMM_LOGICPD2] & 0x00000100U) == 0U)
    { 
    }   
     
     
	while((((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRSTAT[PMM_LOGICPD3] & 0x00000100U) == 0U)
    { 
    }   
     
     
	while((((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRSTAT[PMM_LOGICPD4] & 0x00000100U) == 0U)
    { 
    }   
     
     
	while((((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRSTAT[PMM_LOGICPD5] & 0x00000100U) == 0U)
    { 
    }   

     
     
	while((((pmmBase_t *)0xFFFF0000U)->MEMPDPWRSTAT[PMM_MEMPD1] & 0x00000100U) == 0U)
    { 
    }   
     
     
	while((((pmmBase_t *)0xFFFF0000U)->MEMPDPWRSTAT[PMM_MEMPD2] & 0x00000100U) == 0U)
    { 
    }   
    if ((((pmmBase_t *)0xFFFF0000U)->GLOBALCTRL1 & 0x00000001U) == 0U)
    {
         
        ((pmmBase_t *)0xFFFF0000U)->PDCLKDISREG = ( (uint32)((uint32)(1U-1U) << 0U) | (uint32)((uint32)(1U-1U) << 1U) | (uint32)((uint32)(1U-1U) << 2U) | (uint32)((uint32)(1U-1U) << 3U) );
    }

}












 
 
 
 
void pmmTurnONLogicPowerDomain(pmm_LogicPD_t logicPD)
{
    if (logicPD != PMM_LOGICPD1)
    {
         
        if (logicPD == PMM_LOGICPD2)
        {
		     
            ((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRCTRL0 = (((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRCTRL0 & 0xF0FFFFFFU) | 0x05000000U;
        }
        else if (logicPD == PMM_LOGICPD3)
        {
		    
            ((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRCTRL0 = (((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRCTRL0 & 0xFFF0FFFFU) | 0x00050000U;
        }
        else if (logicPD == PMM_LOGICPD4)
        {
		    
            ((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRCTRL0 = (((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRCTRL0 & 0xFFFFF0FFU) | 0x00000500U;
        }
        else
        {
		    
            ((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRCTRL0 = (((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRCTRL0 & 0xFFFFFFF0U) | 0x00000005U;
        }
         
         
		while((((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRSTAT[logicPD] & 0x00000100U) == 0U)
        { 
        }   
        if ((((pmmBase_t *)0xFFFF0000U)->GLOBALCTRL1 & 0x00000001U) == 0U)
        {
             
            ((pmmBase_t *)0xFFFF0000U)->PDCLKDISCLRREG = (uint32)1U << (uint32)logicPD;
        }
    }
}










 
 
 
 
void pmmTurnONMemPowerDomain(pmm_MemPD_t memPD)
{
     
    if (memPD == PMM_MEMPD1)
    {
        ((pmmBase_t *)0xFFFF0000U)->MEMPDPWRCTRL0 = (((pmmBase_t *)0xFFFF0000U)->MEMPDPWRCTRL0 & 0xF0FFFFFFU) | 0x05000000U;
    }
    else if (memPD == PMM_MEMPD2)
    {
        ((pmmBase_t *)0xFFFF0000U)->MEMPDPWRCTRL0 = (((pmmBase_t *)0xFFFF0000U)->MEMPDPWRCTRL0 & 0xFFF0FFFFU) | 0x00050000U;
    }
    else
    {
        ((pmmBase_t *)0xFFFF0000U)->MEMPDPWRCTRL0 = (((pmmBase_t *)0xFFFF0000U)->MEMPDPWRCTRL0 & 0xFFFFF0FFU) | 0x00000500U;
    }
     
     
	while((((pmmBase_t *)0xFFFF0000U)->MEMPDPWRSTAT[memPD] & 0x00000100U) == 0U)
    { 
    }   
}











 
 
 
 
void pmmTurnOFFLogicPowerDomain(pmm_LogicPD_t logicPD)
{
    if (logicPD != PMM_LOGICPD1)
    {
         
        ((pmmBase_t *)0xFFFF0000U)->PDCLKDISSETREG = (uint32)1U << (uint32)logicPD;
        
         
        if (logicPD == PMM_LOGICPD2)
        {
		     
            ((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRCTRL0 = (((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRCTRL0 & 0xF0FFFFFFU) | 0x0A000000U;
        }
        else if (logicPD == PMM_LOGICPD3)
        {
		     
            ((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRCTRL0 = (((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRCTRL0 & 0xFFF0FFFFU) | 0x000A0000U;
        }
        else if (logicPD == PMM_LOGICPD4)
        {
		     
            ((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRCTRL0 = (((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRCTRL0 & 0xFFFFF0FFU) | 0x00000A00U;
        }
        else
        {
		     
            ((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRCTRL0 = (((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRCTRL0 & 0xFFFFFFF0U) | 0x0000000AU;
        }
         
         
		while((((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRSTAT[logicPD] & 0x00000003U) != 0U)
        { 
        }   
    }
}










 
 
 
 
void pmmTurnOFFMemPowerDomain(pmm_MemPD_t memPD)
{
     
    if (memPD == PMM_MEMPD1)
    {
        ((pmmBase_t *)0xFFFF0000U)->MEMPDPWRCTRL0 = (((pmmBase_t *)0xFFFF0000U)->MEMPDPWRCTRL0 & 0xF0FFFFFFU) | 0x0A000000U;
    }
    else if (memPD == PMM_MEMPD2)
    {
        ((pmmBase_t *)0xFFFF0000U)->MEMPDPWRCTRL0 = (((pmmBase_t *)0xFFFF0000U)->MEMPDPWRCTRL0 & 0xFFF0FFFFU) | 0x000A0000U;
    }
    else
    {
        ((pmmBase_t *)0xFFFF0000U)->MEMPDPWRCTRL0 = (((pmmBase_t *)0xFFFF0000U)->MEMPDPWRCTRL0 & 0xFFFFF0FFU) | 0x00000A00U;
    }
     
     
	while((((pmmBase_t *)0xFFFF0000U)->MEMPDPWRSTAT[memPD] & 0x00000003U) != 0U)
    { 
    }   
}














 
 
 
 
boolean pmmIsLogicPowerDomainActive(pmm_LogicPD_t logicPD)
{
    boolean status;
    if ((((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRSTAT[logicPD] & 0x00000100U) == 0U)
    {
        status = 0;
    }
    else
    {
        status = 1;
    }
    return status;
}













 
 
 
 
boolean pmmIsMemPowerDomainActive(pmm_MemPD_t memPD)
{
    boolean status;
    if ((((pmmBase_t *)0xFFFF0000U)->MEMPDPWRSTAT[memPD] & 0x00000100U) == 0U)
    {
        status = 0;
    }
    else
    {
        status = 1;
    }
    return status;
}








 
 
 
 
void pmmGetConfigValue(pmm_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    {
        config_reg->CONFIG_LOGICPDPWRCTRL0 = ( (uint32)((uint32)0x5U << 24U) | (uint32)((uint32)0x5U << 16U) | (uint32)((uint32)0x5U << 8U) | (uint32)((uint32)0x5U << 0U) );
        config_reg->CONFIG_MEMPDPWRCTRL0 = ( (uint32)((uint32)0x5U << 24U) | (uint32)((uint32)0x5U << 16U) );
        config_reg->CONFIG_PDCLKDISREG = ( (uint32)((uint32)(1U-1U) << 0U) | (uint32)((uint32)(1U-1U) << 1U) | (uint32)((uint32)(1U-1U) << 2U) | (uint32)((uint32)(1U-1U) << 3U) );
        config_reg->CONFIG_GLOBALCTRL1 = ( (uint32)((uint32)0U << 8U) | (uint32)((uint32)0U << 0U));
    }
    else
    {
	 
        config_reg->CONFIG_LOGICPDPWRCTRL0 = ((pmmBase_t *)0xFFFF0000U)->LOGICPDPWRCTRL0;
        config_reg->CONFIG_MEMPDPWRCTRL0 = ((pmmBase_t *)0xFFFF0000U)->MEMPDPWRCTRL0;
        config_reg->CONFIG_PDCLKDISREG = ((pmmBase_t *)0xFFFF0000U)->PDCLKDISREG;
        config_reg->CONFIG_GLOBALCTRL1 = ((pmmBase_t *)0xFFFF0000U)->GLOBALCTRL1;
    }
}











 
 
 
 
void pmmSetMode(pmm_Mode_t mode)
{
     
    ((pmmBase_t *)0xFFFF0000U)->PRCKEYREG = mode;
}










 
 
 
 
boolean pmmPerformSelfTest(void)
{
    boolean status = 1;
     
    ((pmmBase_t *)0xFFFF0000U)->PRCKEYREG = (uint32)SelfTest;
     
	 
    while ((((pmmBase_t *)0xFFFF0000U)->LPDDCSTAT1 & 0xFU) != 0xFU)
    { 
    }                  
    
	 
    while ((((pmmBase_t *)0xFFFF0000U)->MPDDCSTAT1 & 0x3U) != 0x3U)
    { 
    }    

     
    if ((((pmmBase_t *)0xFFFF0000U)->LPDDCSTAT2 & 0xFU) != 0U)
    {
        status = 0;
    }
    if ((((pmmBase_t *)0xFFFF0000U)->MPDDCSTAT2 & 0x7U) != 0U)
    {
        status = 0;
    }
     
    ((pmmBase_t *)0xFFFF0000U)->PRCKEYREG = (uint32)LockStep;

    return status;
}

 
 

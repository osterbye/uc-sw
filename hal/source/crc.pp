









 

































 



 
 












 

































 














 

































 












 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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
 
 
 





 
 
 
 
void crcInit(void)
{
 
 
     

     
    ((crcBASE_t *)0xFE000000U)->CTRL0 =   (uint32)((uint32)1U << 0U)
                    | (uint32)((uint32)1U << 8U);

     
    ((crcBASE_t *)0xFE000000U)->CTRL0=0x00000000U;
	
    
    ((crcBASE_t *)0xFE000000U)->CTRL2 |= (uint32)0U << 4U;

    





 
     ((crcBASE_t *)0xFE000000U)->INTS= 0x00000000U
                    | 0x00000000U
                    | 0x00000000U
                    | 0x00000000U
                    | 0x00000000U
                    | 0x00000000U
                    | 0x00000000U
                    | 0x00000000U
                    | 0x00000000U
                    | 0x00000000U;


    
    ((crcBASE_t *)0xFE000000U)->PCOUNT_REG1=0x00000000U;
    ((crcBASE_t *)0xFE000000U)->PCOUNT_REG2=0x00000000U;


    
    ((crcBASE_t *)0xFE000000U)->SCOUNT_REG1=0x00000000U;
    ((crcBASE_t *)0xFE000000U)->SCOUNT_REG2=0x00000000U;

    
    ((crcBASE_t *)0xFE000000U)->WDTOPLD1=0x00000000U;
    ((crcBASE_t *)0xFE000000U)->WDTOPLD2=0x00000000U;

    
    ((crcBASE_t *)0xFE000000U)->BCTOPLD1=0x00000000U;
    ((crcBASE_t *)0xFE000000U)->BCTOPLD2=0x00000000U;

    
    ((crcBASE_t *)0xFE000000U)->REGL1=0x00000000U;
    ((crcBASE_t *)0xFE000000U)->REGL2=0x00000000U;

    
    ((crcBASE_t *)0xFE000000U)->REGH1=0x00000000U;
    ((crcBASE_t *)0xFE000000U)->REGH2=0x00000000U;

    
    ((crcBASE_t *)0xFE000000U)->CTRL2 |= (uint32)(0x00000003U)  | (uint32)((uint32)0x00000003U << 8U);

 
 
}







 
 
 
 
void crcSendPowerDown(crcBASE_t *crc)
{
 
 

    crc->CTRL1 |= 0x00000001U;

 
 
}






 
 
 
 
void crcSignGen(crcBASE_t *crc,crcModConfig_t *param)
{
 
 
    uint32 i = 0U, psaSigx;
	volatile uint64 * ptr64, * psaSigx_ptr64;
    ptr64=param->src_data_pat;
	
	 
	 
	psaSigx = (uint32)(&crc->PSA_SIGREGL1) + ((uint32)(param->crc_channel) * 0x40U);
	psaSigx_ptr64 = (uint64 *) (psaSigx);

    if(param->mode==0x00000001U)
    {










 
    }
    else if(param->mode==0x00000002U)
    {
     
    }
    else if(param->mode==0x00000003U)
    {
        for(i=0U;i<param->data_length;i++)
        {
		     
            *psaSigx_ptr64 = *ptr64;
			 
			 
			ptr64++;
        }
 
 
    }
    else
	{
         
    }
}






 
 
 
 
void crcSetConfig(crcBASE_t *crc,crcConfig_t *param)
{
 
 

	switch (param->crc_channel)
	{
	case 0U:
		crc->CTRL2 &=0xFFFFFFFCU;
		crc->CTRL0 |=0x00000001U;
		crc->CTRL0 &=0xFFFFFFFEU;	
		crc->PCOUNT_REG1 = param->pcount;
		crc->SCOUNT_REG1 = param->scount;
		crc->WDTOPLD1= param->wdg_preload;
		crc->BCTOPLD1= param->block_preload;
		crc->CTRL2 |= param->mode;		
	    break;
	case 1U:
		crc->CTRL2 &=0xFFFFFCFFU;	
		crc->CTRL0 |=0x00000100U;
		crc->CTRL0 &=0xFFFFFEFFU;	
		crc->PCOUNT_REG2 = param->pcount;
		crc->SCOUNT_REG2= param->scount;
		crc->WDTOPLD2= param->wdg_preload;
		crc->BCTOPLD2= param->block_preload;
		crc->CTRL2 |= (uint32)((uint32)param->mode << 8U);		
        break;
	default :
		break;	
    }

 
 
}











 
 
 
 
uint64 crcGetSectorSig(crcBASE_t *crc,uint32 channel)
{
    uint64 status=0U;
	uint32 CRC_PSA_SECSIGREGH1 = ((crcBASE_t *)0xFE000000U)->PSA_SECSIGREGH1;
	uint32 CRC_PSA_SECSIGREGL1 = ((crcBASE_t *)0xFE000000U)->PSA_SECSIGREGL1;
	uint32 CRC_PSA_SECSIGREGH2 = ((crcBASE_t *)0xFE000000U)->PSA_SECSIGREGH2;
	uint32 CRC_PSA_SECSIGREGL2 = ((crcBASE_t *)0xFE000000U)->PSA_SECSIGREGL2;

 
 
    switch (channel)
      {
    case 0U:
		status = (((uint64)(CRC_PSA_SECSIGREGL1) << 32U) | (uint64)(CRC_PSA_SECSIGREGH1));
		break;
    case 1U:
		status = (((uint64)(CRC_PSA_SECSIGREGL2) << 32U) | (uint64)(CRC_PSA_SECSIGREGH2));
		break;
	default :
	    break;		
    }
    return status;

 
 
}












 
 
 
 
uint32 crcGetFailedSector(crcBASE_t *crc,uint32 channel)
{

    uint32 sector=0U;

 
 

    switch (channel)
    {
    case 0U:
        sector = crc->CURSEC_REG1;
         break;
    case 1U:
        sector = crc->CURSEC_REG2;
        break;
	default :
	    break;	
    }
    return sector;
 
 
}







 
 
 
 
uint32 crcGetIntrPend(crcBASE_t *crc,uint32 channel)
{
 
 
    return crc->INT_OFFSET_REG;
 
 
}












 
 
 
 
void crcChannelReset(crcBASE_t *crc,uint32 channel)
{
 
 

    if(channel == 0U)
    {
        crc->CTRL0 |= (uint32)((uint32)1U << 0U);  
        crc->CTRL0 &= ~(uint32)((uint32)1U << 0U);  
     }
     else if(channel == 1U)
     {
        crc->CTRL0 |= (uint32)((uint32)1U << 8U);  
        crc->CTRL0 &= ~(uint32)((uint32)1U << 8U);  
     }
     else
	 {
       
	 }
 
 
 }


















 
 
 
 
void crcEnableNotification(crcBASE_t *crc, uint32 flags)
{
 
 

    crc->INTS= flags;

 
 
}


















 
 
 
 
void crcDisableNotification(crcBASE_t *crc, uint32 flags)
{
 
 

     crc->INTR= flags;

 
 
}











 
 
 
 
uint64 crcGetPSASig(crcBASE_t *crc,uint32 channel)
{
    uint64 status = 0U;
	uint32 CRC_PSA_SIGREGH1 = ((crcBASE_t *)0xFE000000U)->PSA_SIGREGH1;
	uint32 CRC_PSA_SIGREGL1 = ((crcBASE_t *)0xFE000000U)->PSA_SIGREGL1;
	uint32 CRC_PSA_SIGREGH2 = ((crcBASE_t *)0xFE000000U)->PSA_SIGREGH2;
	uint32 CRC_PSA_SIGREGL2 = ((crcBASE_t *)0xFE000000U)->PSA_SIGREGL2;

 
 
    switch (channel)
      {
    case 0U:
		status = (((uint64)(CRC_PSA_SIGREGL1) << 32U) | (uint64)(CRC_PSA_SIGREGH1));
		break;
    case 1U:
		status = (((uint64)(CRC_PSA_SIGREGL2) << 32U) | (uint64)(CRC_PSA_SIGREGH2));
		break;
	default :
	    break;		
    }
    return status;

 
 
}
















 
 
 
 
void crcGetConfigValue(crc_config_reg_t *config_reg, config_value_type_t type)
{
	if (type == InitialValue)
	{
		config_reg->CONFIG_CTRL0        = 0x00000000U;
		config_reg->CONFIG_CTRL1        = 0x00000000U;
		config_reg->CONFIG_CTRL2        = ((uint32)((uint32)0U << 4U) | (uint32)(0x00000003U) | (uint32)((uint32)0x00000003U << 8U));
		config_reg->CONFIG_INTS         = (0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U);
		config_reg->CONFIG_PCOUNT_REG1  = (0x00000000U);
		config_reg->CONFIG_SCOUNT_REG1  = (0x00000000U);
		config_reg->CONFIG_WDTOPLD1     = (0x00000000U);
		config_reg->CONFIG_BCTOPLD1     = (0x00000000U);
		config_reg->CONFIG_PCOUNT_REG2  = (0x00000000U);
		config_reg->CONFIG_SCOUNT_REG2  = (0x00000000U);
		config_reg->CONFIG_WDTOPLD2     = (0x00000000U);
		config_reg->CONFIG_BCTOPLD2     = (0x00000000U);
	}
	else
	{
	 
		config_reg->CONFIG_CTRL0        = ((crcBASE_t *)0xFE000000U)->CTRL0;
		config_reg->CONFIG_CTRL1        = ((crcBASE_t *)0xFE000000U)->CTRL1;
		config_reg->CONFIG_CTRL2        = ((crcBASE_t *)0xFE000000U)->CTRL2;
		config_reg->CONFIG_INTS         = ((crcBASE_t *)0xFE000000U)->INTS;
		config_reg->CONFIG_PCOUNT_REG1  = ((crcBASE_t *)0xFE000000U)->PCOUNT_REG1;
		config_reg->CONFIG_SCOUNT_REG1  = ((crcBASE_t *)0xFE000000U)->SCOUNT_REG1;
		config_reg->CONFIG_WDTOPLD1     = ((crcBASE_t *)0xFE000000U)->WDTOPLD1;
		config_reg->CONFIG_BCTOPLD1     = ((crcBASE_t *)0xFE000000U)->BCTOPLD1;
		config_reg->CONFIG_PCOUNT_REG2  = ((crcBASE_t *)0xFE000000U)->PCOUNT_REG2;
		config_reg->CONFIG_SCOUNT_REG2  = ((crcBASE_t *)0xFE000000U)->SCOUNT_REG2;
		config_reg->CONFIG_WDTOPLD2     = ((crcBASE_t *)0xFE000000U)->WDTOPLD2;
		config_reg->CONFIG_BCTOPLD2     = ((crcBASE_t *)0xFE000000U)->BCTOPLD2; 
	}
}



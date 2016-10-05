




 

































 


 
 






 

































 




 
 












 

































 












 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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
 

 
 





 
 
 
 
void linInit(void)
{
 
 
     

     
    ((linBASE_t *)0xFFF7E400U)->GCR0 = 1U;

    

 
    ((linBASE_t *)0xFFF7E400U)->GCR1 = 0U;

	 
    ((linBASE_t *)0xFFF7E400U)->GCR1 = 0x40U;
	
    












 
    ((linBASE_t *)0xFFF7E400U)->GCR1 |= 0x03000C60U 
                 | (uint32)((uint32)1U << 12U)
                 | (uint32)((uint32)0U << 2U);
					
     
    ((linBASE_t *)0xFFF7E400U)->MBRSR = (uint32)3600U;

     
    ((linBASE_t *)0xFFF7E400U)->BRS = (uint32)249U;

     
    ((linBASE_t *)0xFFF7E400U)->MASK = ((uint32)((uint32)0xFFU << 16U) | (uint32)0xFFU);

    


 
    ((linBASE_t *)0xFFF7E400U)->COMP = ((uint32)((uint32)(1U - 1U) << 8U) | ((uint32)13U - 13U));

     
    ((linBASE_t *)0xFFF7E400U)->FORMAT = ((((linBASE_t *)0xFFF7E400U)->FORMAT & 0xFFF8FFFFU) | (uint32)(((uint32)8U - 1U) << 16U));

    



 
    ((linBASE_t *)0xFFF7E400U)->PIO0 = ((uint32)4U | (uint32)2U | (uint32)0U);

    



 
    ((linBASE_t *)0xFFF7E400U)->PIO3 = ((uint32)0U | (uint32)0U | (uint32)0U);

    



 
    ((linBASE_t *)0xFFF7E400U)->PIO1 = ((uint32)0U | (uint32)0U | (uint32)0U);

    



 
    ((linBASE_t *)0xFFF7E400U)->PIO6 = ((uint32)0U | (uint32)0U | (uint32)0U);

    



 
    ((linBASE_t *)0xFFF7E400U)->PIO7 = ((uint32)0U | (uint32)0U | (uint32)0U);

    



 
    ((linBASE_t *)0xFFF7E400U)->PIO8 = ((uint32)4U | (uint32)2U | (uint32)1U);

    
















 
    ((linBASE_t *)0xFFF7E400U)->SETINTLVL = ((uint32)0x00000000U
                       | (uint32)0x00000000U
                       | (uint32)0x00000000U
                       | (uint32)0x00000000U
                       | (uint32)0x00000000U
                       | (uint32)0x00000000U
                       | (uint32)0x00000000U
                       | (uint32)0x00000000U
                       | (uint32)0x00000000U
                       | (uint32)0x00000000U
                       | (uint32)0x00000000U
                       | (uint32)0x00000000U
                       | (uint32)0x00000000U
                       | (uint32)0x00000000U
                       | (uint32)0x00000000U
                       | (uint32)0x00000000U);

    
















 
    ((linBASE_t *)0xFFF7E400U)->SETINT = ((uint32)0x00000000U
                    | (uint32)0x00000000U
                    | (uint32)0x00000000U
                    | (uint32)0x00000000U
                    | (uint32)0x00000000U
                    | (uint32)0x00000000U
                    | (uint32)0x00000000U
                    | (uint32)0x00000000U
                    | (uint32)0x00000000U
                    | (uint32)0x00000000U
                    | (uint32)0x00000000U
                    | (uint32)0x00000000U
                    | (uint32)0x00000000U
                    | (uint32)0x00000000U
                    | (uint32)0x00000000U
                    | (uint32)0x00000000U);

     
    ((linBASE_t *)0xFFF7E400U)->GCR1 |= 0x00000080U;

 
 
}










 
 
 
 
void linSetFunctional(linBASE_t *lin, uint32 port)
{
 
 

    lin->PIO0 = port;

 
 
}








 
 
 
 
void linSendHeader(linBASE_t *lin, uint8 identifier)
{
 
 

    lin->ID = ((lin->ID & 0xFFFFFF00U) | (uint32)identifier);

 
 
}







 
 
 
 
void linSendWakupSignal(linBASE_t *lin)
{
 
 

    lin->TDx[0U] = 0xF0U;
    lin->GCR2  |= 0x00000100U;

 
 
}







 
 
 
 
void linEnterSleep(linBASE_t *lin)
{
 
 
      lin->GCR2  |= 0x00000001U;
 
 
}








 
 
 
 
void linSoftwareReset(linBASE_t *lin)
{
 
 

    lin->GCR1 &= ~(uint32)(0x00000080U);
    lin->GCR1 |=  0x00000080U;

 
 
}









 
 
 
 
uint32 linIsTxReady(linBASE_t *lin)
{
 
 

    return lin->FLR & 0x00000100U;
}







 
 
 
 
void linSetLength(linBASE_t *lin, uint32 length)
{
 
 

    lin->FORMAT = ((lin->FORMAT & 0xFFF8FFFFU) | ((length - 1U) << 16U));

 
 
}








 
 
 
 
void linSend(linBASE_t *lin, uint8 * data)
{
    uint32           i;
    uint32           length = (uint32)((uint32)(lin->FORMAT & 0x00070000U) >> 16U);
	 
     
	uint8 * pData = data + length;

 
 

    for (i=0U; i<=length; i++)
    {
	     
        lin->TDx[length-i] = *pData;
		 
		 
		pData--;
    }

 
 
}









 
 
 
 
uint32 linIsRxReady(linBASE_t *lin)
{
 
 

    return lin->FLR & 0x00000200U;
}











 
 
 
 
uint32 linTxRxError(linBASE_t *lin)
{
    uint32 status = lin->FLR & (0x80000000U 
                    | 0x40000000U 
                    | 0x20000000U 
                    | 0x10000000U 
                    | 0x08000000U 
                    | 0x04000000U 
                    | 0x02000000U 
                    | 0x01000000U     
                    | 0x00000080U 
                    | 0x00000040U 
                    | 0x00000010U);

    lin->FLR = 0x80000000U 
             | 0x40000000U 
             | 0x20000000U 
             | 0x10000000U 
             | 0x08000000U 
             | 0x04000000U 
             | 0x02000000U 
             | 0x01000000U     
             | 0x00000080U 
             | 0x00000040U 
             | 0x00000010U;

 
 

    return status;
}









 
 
 
 
uint32 linGetIdentifier(linBASE_t *lin)
{
 
 
    return (uint32)((uint32)(lin->ID & 0x00FF0000U) >> 16U);
}








 
 
 
 
void linGetData(linBASE_t *lin, uint8 * const data)
{
    uint32      i;
    uint32      length = (uint32)((uint32)(lin->FORMAT & 0x00070000U) >> 16U);
    uint8 * pData = data;

 
 

    for (i = 0U; i <= length; i++)
    {
	     
        *pData = lin->RDx[i];
		 
		 
		pData++;
    }

 
 
}








 
 
 
 
void linEnableLoopback(linBASE_t *lin, loopBackType_t Loopbacktype)
{
 
 
    
	 
	lin->IODFTCTRL = 0U;
	
	 
    lin->IODFTCTRL = ((uint32)(0x00000A00U)
                   | (uint32)((uint32)Loopbacktype << 1U));
	
 
 
}






 
 
 
 
void linDisableLoopback(linBASE_t *lin)
{
 
 
    
	 
    lin->IODFTCTRL = 0x00000500U;
	
 
 
}





















 
 
 
 
void linEnableNotification(linBASE_t *lin, uint32 flags)
{
 
 

    lin->SETINT = flags;

 
 
}





















 
 
 
 
void linDisableNotification(linBASE_t *lin, uint32 flags)
{
 
 

    lin->CLEARINT = flags;

 
 
}
















 
 
 
 
void linGetConfigValue(lin_config_reg_t *config_reg, config_value_type_t type)
{
	if (type == InitialValue)
	{
		config_reg->CONFIG_GCR0      = 0x00000001U;
		config_reg->CONFIG_GCR1      = (0x03000CE0U | (uint32)((uint32)1U << 12U) | (uint32)((uint32)0U << 2U));
		config_reg->CONFIG_GCR2      = 0x00000000U;
		config_reg->CONFIG_SETINT    = (0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U);
		config_reg->CONFIG_SETINTLVL = (0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U | 0x00000000U);
		config_reg->CONFIG_FORMAT    = ((uint32)((uint32)(8U - 1U) << 16U));
		config_reg->CONFIG_BRSR      = (249U);
		config_reg->CONFIG_FUN       = (4U | 2U | 0U);
		config_reg->CONFIG_DIR       = (0U | 0U | 0U);
		config_reg->CONFIG_ODR       = (0U | 0U | 0U);
		config_reg->CONFIG_PD	     = (0U | 0U | 0U);
		config_reg->CONFIG_PSL       = (4U | 2U | 1U);	
		config_reg->CONFIG_COMP	     = ((uint32)((uint32)(1U - 1U) << 8U) | (13U - 13U));		
		config_reg->CONFIG_MASK      = ((uint32)((uint32)0xFFU << 16U) | 0xFFU);	
		config_reg->CONFIG_MBRSR     = (3600U);	
	}
	else
	{
	 
		config_reg->CONFIG_GCR0      = ((linBASE_t *)0xFFF7E400U)->GCR0;
		config_reg->CONFIG_GCR1      = ((linBASE_t *)0xFFF7E400U)->GCR1; 
		config_reg->CONFIG_GCR2      = ((linBASE_t *)0xFFF7E400U)->GCR2; 
		config_reg->CONFIG_SETINT    = ((linBASE_t *)0xFFF7E400U)->SETINT; 
		config_reg->CONFIG_SETINTLVL = ((linBASE_t *)0xFFF7E400U)->SETINTLVL; 
		config_reg->CONFIG_FORMAT    = ((linBASE_t *)0xFFF7E400U)->FORMAT; 
		config_reg->CONFIG_BRSR      = ((linBASE_t *)0xFFF7E400U)->BRS; 
		config_reg->CONFIG_FUN       = ((linBASE_t *)0xFFF7E400U)->PIO0; 
		config_reg->CONFIG_DIR       = ((linBASE_t *)0xFFF7E400U)->PIO1; 
		config_reg->CONFIG_ODR       = ((linBASE_t *)0xFFF7E400U)->PIO6; 
		config_reg->CONFIG_PD	     = ((linBASE_t *)0xFFF7E400U)->PIO7;	 
		config_reg->CONFIG_PSL       = ((linBASE_t *)0xFFF7E400U)->PIO8; 
		config_reg->CONFIG_COMP	     = ((linBASE_t *)0xFFF7E400U)->COMP;	 
		config_reg->CONFIG_MASK      = ((linBASE_t *)0xFFF7E400U)->MASK;
		config_reg->CONFIG_MBRSR     = ((linBASE_t *)0xFFF7E400U)->MBRSR;
	}
}










 
 
 
 
uint32 linGetStatusFlag(linBASE_t *lin)
{
    return lin->FLR;
}
























 
 
 
 
void linClearStatusFlag(linBASE_t *lin, uint32 flags)
{
 
 
    lin->FLR = flags;
 
 
	
}


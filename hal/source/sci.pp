




 

































 


 
 






 

































 















 

































 












 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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
 

 
 



 
static volatile struct g_sciTransfer
{
    uint32   mode;            
    uint32   tx_length;     
	uint32   rx_length;       
    uint8    * tx_data;       	
    uint8    * rx_data;       
} g_sciTransfer_t[2U];






 
 
 
 
void sciInit(void)
{
 
 

     

     
    ((sciBASE_t *)0xFFF7E500U)->GCR0 = 0U;
    ((sciBASE_t *)0xFFF7E500U)->GCR0 = 1U;

     
    ((sciBASE_t *)0xFFF7E500U)->CLEARINT    = 0xFFFFFFFFU;
    ((sciBASE_t *)0xFFF7E500U)->CLEARINTLVL = 0xFFFFFFFFU;

     
    ((sciBASE_t *)0xFFF7E500U)->GCR1 =  (uint32)((uint32)1U << 25U)   
                  | (uint32)((uint32)1U << 24U)   
                  | (uint32)((uint32)1U << 5U)    
                  | (uint32)((uint32)(2U-1U) << 4U)   
                  | (uint32)((uint32)0U << 3U)   
                  | (uint32)((uint32)0U << 2U)   
                  | (uint32)((uint32)1U << 1U);   

     
    ((sciBASE_t *)0xFFF7E500U)->BRS = 520U;   

     
    ((sciBASE_t *)0xFFF7E500U)->FORMAT = 8U - 1U;   

     
    ((sciBASE_t *)0xFFF7E500U)->PIO0 = (uint32)((uint32)1U << 2U)   
                 | (uint32)((uint32)1U << 1U);  

     
    ((sciBASE_t *)0xFFF7E500U)->PIO3 = (uint32)((uint32)0U << 2U)   
                 | (uint32)((uint32)0U << 1U);  

     
    ((sciBASE_t *)0xFFF7E500U)->PIO1 = (uint32)((uint32)0U << 2U)   
                 | (uint32)((uint32)0U << 1U);  

     
    ((sciBASE_t *)0xFFF7E500U)->PIO6 = (uint32)((uint32)0U << 2U)   
                 | (uint32)((uint32)0U << 1U);  

     
    ((sciBASE_t *)0xFFF7E500U)->PIO7 = (uint32)((uint32)0U << 2U)   
                 | (uint32)((uint32)0U << 1U);  

     
    ((sciBASE_t *)0xFFF7E500U)->PIO8 = (uint32)((uint32)1U << 2U)   
                 | (uint32)((uint32)1U << 1U);   

     
    ((sciBASE_t *)0xFFF7E500U)->SETINTLVL = (uint32)((uint32)0U << 26U)   
                      | (uint32)((uint32)0U << 25U)   
                      | (uint32)((uint32)0U << 24U)   
                      | (uint32)((uint32)0U << 9U)   
                      | (uint32)((uint32)0U << 8U)   
                      | (uint32)((uint32)0U << 1U)   
                      | (uint32)((uint32)0U << 0U);   

     
    ((sciBASE_t *)0xFFF7E500U)->SETINT = (uint32)((uint32)0U << 26U)   
                   | (uint32)((uint32)0U << 25U)   
                   | (uint32)((uint32)0U << 24U)   
                   | (uint32)((uint32)0U << 9U)   
                   | (uint32)((uint32)0U << 1U)   
                   | (uint32)((uint32)0U << 0U);   

     
    g_sciTransfer_t[0U].mode   = (uint32)0U << 8U;
    g_sciTransfer_t[0U].tx_length = 0U;
	g_sciTransfer_t[0U].rx_length = 0U;

     
    ((sciBASE_t *)0xFFF7E500U)->GCR1 |= 0x80U;


 
 
}










 
 
 
 
void sciSetFunctional(sciBASE_t *sci, uint32 port)
{
 
 

    sci->PIO0 = port;

 
 
}








 
 
 
 
void sciSetBaudrate(sciBASE_t *sci, uint32 baud)
{
    float64 vclk = 80.000 * 1000000.0;
    uint32 f = ((sci->GCR1 & 2U) == 2U) ? 16U : 1U;
	uint32 temp;
	float64 temp2;
 
 

     
	temp = (f*(baud));
	temp2 = ((vclk)/((float64)temp))-1U;
	sci->BRS = (uint32)((uint32)temp2 & 0x00FFFFFFU);

 
 
}










 
 
 
 
uint32 sciIsTxReady(sciBASE_t *sci)
{
 
 

    return sci->FLR & (uint32)SCI_TX_INT;
}











 
 
 
 
void sciSendByte(sciBASE_t *sci, uint8 byte)
{
 
 

	 
    while ((sci->FLR & (uint32)SCI_TX_INT) == 0U) 
    { 
    }  
    sci->TD = byte;

 
 
}



















 
 
 
 
void sciSend(sciBASE_t *sci, uint32 length, uint8 * data)
{
    uint32 index = (sci == ((sciBASE_t *)0xFFF7E500U)) ? 0U : 1U;
    uint8 txdata;
	
 
 
 
    if ((g_sciTransfer_t[index].mode & (uint32)SCI_TX_INT) != 0U)
    {
         
        
        g_sciTransfer_t[index].tx_length = length;
         
        g_sciTransfer_t[index].tx_data   = data;

                 
         
		txdata = *g_sciTransfer_t[index].tx_data;
		sci->TD     = (uint32)(txdata);
		 
         
		g_sciTransfer_t[index].tx_data++;
        sci->SETINT = (uint32)SCI_TX_INT;
    }
    else
    {
         
        while (length > 0U)
        {
	         
            while ((sci->FLR & (uint32)SCI_TX_INT) == 0U)
            { 
            }  
			 
			txdata = *data;
            sci->TD = (uint32)(txdata);
			 
             
			data++;
			length--;
        }
    }

 
 
}










 
 
 
 
uint32 sciIsRxReady(sciBASE_t *sci)
{
 
 

    return sci->FLR & (uint32)SCI_RX_INT;
}









 
 
 
 
uint32 sciIsIdleDetected(sciBASE_t *sci)
{
 
 

    return sci->FLR & (uint32)0x00000004U;
}










 
 
 
 
uint32 sciRxError(sciBASE_t *sci)
{
    uint32 status = (sci->FLR & ((uint32)SCI_FE_INT | (uint32)SCI_OE_INT |(uint32)SCI_PE_INT));

 
 

    sci->FLR = ((uint32)SCI_FE_INT | (uint32)SCI_OE_INT | (uint32)SCI_PE_INT);
    return status;
}












 
 
 
 
uint32 sciReceiveByte(sciBASE_t *sci)
{
 
 

	 
    while ((sci->FLR & (uint32)SCI_RX_INT) == 0U) 
    { 
    }  

    return (sci->RD & (uint32)0x000000FFU);
}
















 
 
 
 
void sciReceive(sciBASE_t *sci, uint32 length, uint8 * data)
{
 
 

    if ((sci->SETINT & (uint32)SCI_RX_INT) == (uint32)SCI_RX_INT)
    {
         
        uint32 index = (sci == ((sciBASE_t *)0xFFF7E500U)) ? 0U : 1U;
        
         
        sci->FLR = ((uint32) SCI_FE_INT | (uint32) SCI_OE_INT | (uint32) SCI_PE_INT);

        g_sciTransfer_t[index].rx_length = length;
		 
        g_sciTransfer_t[index].rx_data   = data;
    }
    else
    {   
        while (length > 0U)
        {
	         
            while ((sci->FLR & (uint32)SCI_RX_INT) == 0U) 
            { 
            }  
			 
            *data = (uint8)(sci->RD & 0x000000FFU);
			 
             
			data++;
			length--;
        }
    }
 
 
}







 
 
 
 
void sciEnableLoopback(sciBASE_t *sci, loopBackType_t Loopbacktype)
{
 
 
    
     
    sci->IODFTCTRL = 0U;
    
     
    sci->IODFTCTRL = (uint32)0x00000A00U
                   | (uint32)((uint32)Loopbacktype << 1U);
    
 
 
}






 
 
 
 
void sciDisableLoopback(sciBASE_t *sci)
{
 
 
    
     
    sci->IODFTCTRL = 0x00000500U;
    
 
 
}












 
 
 
 
void sciEnableNotification(sciBASE_t *sci, uint32 flags)
{
    uint32 index = (sci == ((sciBASE_t *)0xFFF7E500U)) ? 0U : 1U;

 
 

    g_sciTransfer_t[index].mode |= (flags & (uint32)SCI_TX_INT);
    sci->SETINT                = (flags & (uint32)(~(uint32)(SCI_TX_INT)));

 
 
}













 
 
 
 
void sciDisableNotification(sciBASE_t *sci, uint32 flags)
{
    uint32 index = (sci == ((sciBASE_t *)0xFFF7E500U)) ? 0U : 1U;

 
 

    g_sciTransfer_t[index].mode &= (uint32)(~(flags & (uint32)SCI_TX_INT));
    sci->CLEARINT                = (flags & (uint32)(~(uint32)(SCI_TX_INT)));

 
 
}















 
 
 
 
void sciGetConfigValue(sci_config_reg_t *config_reg, config_value_type_t type)
{
	if (type == InitialValue)
	{
		config_reg->CONFIG_GCR0      = 0x00000001U;
		config_reg->CONFIG_GCR1      = ((uint32)((uint32)1U << 5U) |(uint32)((uint32)(2U-1U) << 4U) |(uint32)((uint32)0U << 3U) |(uint32)((uint32)0U << 2U) |(uint32)((uint32)1U << 1U) |(uint32)((uint32)0U << 2U) |(uint32)(0x03000080U));
		config_reg->CONFIG_SETINT    = ((uint32)((uint32)0U << 26U) |(uint32)((uint32)0U << 25U) |(uint32)((uint32)0U << 24U) |(uint32)((uint32)0U << 9U) |(uint32)((uint32)0U << 1U) |(uint32)((uint32)0U << 0U));
		config_reg->CONFIG_SETINTLVL = ((uint32)((uint32)0U << 26U) |(uint32)((uint32)0U << 25U) |(uint32)((uint32)0U << 24U) |(uint32)((uint32)0U << 9U) |(uint32)((uint32)0U << 8U) |(uint32)((uint32)0U << 1U) |(uint32)((uint32)0U << 0U));
		config_reg->CONFIG_FORMAT    = (8U - 1U);
		config_reg->CONFIG_BRS       = (520U);
		config_reg->CONFIG_PIO0      = ((uint32)((uint32)1U << 2U ) | (uint32)((uint32)1U << 1U));
		config_reg->CONFIG_PIO1      = ((uint32)((uint32)0U << 2U ) | (uint32)((uint32)0U << 1U));
		config_reg->CONFIG_PIO6      = ((uint32)((uint32)0U << 2U ) | (uint32)((uint32)0U << 1U));
		config_reg->CONFIG_PIO7	     = ((uint32)((uint32)0U << 2U ) | (uint32)((uint32)0U << 1U));
		config_reg->CONFIG_PIO8      = ((uint32)((uint32)1U << 2U ) | (uint32)((uint32)1U << 1U));	
	}
	else
	{
	 
		config_reg->CONFIG_GCR0      = ((sciBASE_t *)0xFFF7E500U)->GCR0;
		config_reg->CONFIG_GCR1      = ((sciBASE_t *)0xFFF7E500U)->GCR1; 
		config_reg->CONFIG_SETINT    = ((sciBASE_t *)0xFFF7E500U)->SETINT; 
		config_reg->CONFIG_SETINTLVL = ((sciBASE_t *)0xFFF7E500U)->SETINTLVL; 
		config_reg->CONFIG_FORMAT    = ((sciBASE_t *)0xFFF7E500U)->FORMAT; 
		config_reg->CONFIG_BRS       = ((sciBASE_t *)0xFFF7E500U)->BRS; 
		config_reg->CONFIG_PIO0      = ((sciBASE_t *)0xFFF7E500U)->PIO0; 
		config_reg->CONFIG_PIO1      = ((sciBASE_t *)0xFFF7E500U)->PIO1; 
		config_reg->CONFIG_PIO6      = ((sciBASE_t *)0xFFF7E500U)->PIO6; 
		config_reg->CONFIG_PIO7	     = ((sciBASE_t *)0xFFF7E500U)->PIO7;	 
		config_reg->CONFIG_PIO8      = ((sciBASE_t *)0xFFF7E500U)->PIO8; 
	}
}



 
 







 

































 


 
 






 

































 














 

































 












 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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
 

 
 




 
static struct g_i2cTransfer
{
    uint32  mode;
    uint32  length;
    uint8   * data;
} g_i2cTransfer_t;

 
 





 
 
 
 
void i2cInit(void)
{
 
 

     

     
    ((i2cBASE_t *)0xFFF7D400U)->MDR = (uint32)((uint32)0U << 5U);

     
    ((i2cBASE_t *)0xFFF7D400U)->MDR =   (uint32)((uint32)0U << 15U)      
                   | (uint32)((uint32)0U << 14U)      
                   | (uint32)(0U)               
                   | (uint32)((uint32)1U <<11U)       
                   | (uint32)((uint32)1U <<10U)       
                   | (uint32)((uint32)I2C_TRANSMITTER)      
                   | (uint32)((uint32)I2C_7BIT_AMODE)       
                   | (uint32)((uint32)0U << 7U)       
                   | (uint32)((uint32)0U << 6U)      
                   | (uint32)((uint32)0U << 4U)      
                   | (uint32)((uint32)0U << 3U)            
                   | (uint32)(I2C_8_BIT);    


     
    ((i2cBASE_t *)0xFFF7D400U)->EMDR = 0U;

     
    ((i2cBASE_t *)0xFFF7D400U)->DMACR = 0x00U;

     
    ((i2cBASE_t *)0xFFF7D400U)->CNT = 8U;

     
    ((i2cBASE_t *)0xFFF7D400U)->IMR = 0x00U;

     
    ((i2cBASE_t *)0xFFF7D400U)->PSC = 9U;

     
    ((i2cBASE_t *)0xFFF7D400U)->CKH = 35U;
    ((i2cBASE_t *)0xFFF7D400U)->CKL = 35U;

     
    ((i2cBASE_t *)0xFFF7D400U)->PFNC = (0U);

     
    ((i2cBASE_t *)0xFFF7D400U)->DOUT = (uint32)((uint32)0U << 1U)      
                  | (uint32)(0U);      

     
    ((i2cBASE_t *)0xFFF7D400U)->DIR  = (uint32)((uint32)0U << 1U)      
                  | (uint32)(0U);      

     
    ((i2cBASE_t *)0xFFF7D400U)->PDR  = (uint32)((uint32)0U << 1U)      
                  | (uint32)(0U);      

     
    ((i2cBASE_t *)0xFFF7D400U)->PDIS = (uint32)((uint32)0U << 1U)      
                  | (uint32)(0U);      

     
    ((i2cBASE_t *)0xFFF7D400U)->PSEL = (uint32)((uint32)1U << 1U)      
                  | (uint32)(1U);      

     
    ((i2cBASE_t *)0xFFF7D400U)->IMR  = (uint32)((uint32)0U << 6U)      
                  | (uint32)((uint32)0U << 5U)      
                  | (uint32)((uint32)0U << 4U)      
                  | (uint32)((uint32)0U << 3U)      
                  | (uint32)((uint32)0U << 2U)      
                  | (uint32)((uint32)0U << 1U)      
                  | (uint32)((uint32)0U);      

     
    ((i2cBASE_t *)0xFFF7D400U)->MDR |= (uint32)I2C_RESET_OUT;

     
    g_i2cTransfer_t.mode   = (uint32)0U << 4U;
    g_i2cTransfer_t.length = 0U;

 
 

}






 
 
 
 
void i2cSetOwnAdd(i2cBASE_t *i2c, uint32 oadd)
{
    i2c->OAR = oadd;   
}






 
 
 
 
void i2cSetSlaveAdd(i2cBASE_t *i2c, uint32 sadd)
{
    i2c->SAR = sadd;   
}







 
 
 
 
void i2cSetBaudrate(i2cBASE_t *i2c, uint32 baud)
{
    uint32 prescale;
    uint32 d;
    uint32 ck;
    float64 vclk = 80.000F * 1000000.0F;
    float64 divider= 0.0F;
    uint32 temp = 0U;

 
 

    divider = vclk / 8000000.0F;
    prescale = (uint32)divider - 1U;

    if(prescale>=2U)
    {
        d = 5U;
    }
    else
    {
        d = (prescale != 0U) ? 6U : 7U;
    }

    temp = 2U * baud * 1000U * (prescale + 1U);
    divider = vclk / ((float64)temp);
    ck = (uint32)divider - d;

    i2c->PSC = prescale;
    i2c->CKH = ck;
    i2c->CKL = ck;

 
 

}





 
 
 
 
void i2cSetStart(i2cBASE_t *i2c)
{
 
 

    i2c->MDR |= (uint32)I2C_START_COND;   

 
 
}





 
 
 
 
void i2cSetStop(i2cBASE_t *i2c)
{
 
 

    i2c->MDR |= (uint32)I2C_STOP_COND;   

 
 
}







 
 
 
 
void i2cSetCount(i2cBASE_t *i2c ,uint32 cnt)
{
 
 

    i2c->CNT = cnt;   

 
 
}









 
 
 
 
uint32 i2cIsTxReady(i2cBASE_t *i2c)
{
 
 

    return i2c->STR & (uint32)I2C_TX_INT;

 
 
}










 
 
 
 
void i2cSendByte(i2cBASE_t *i2c, uint8 byte)
{
 
 

     
    while ((i2c->STR & (uint32)I2C_TX_INT) == 0U)
    {
    }  
    i2c->DXR = (uint32)byte;

 
 
}


















 
 
 
 
void i2cSend(i2cBASE_t *i2c, uint32 length, uint8 * data)
{

 
 

    if ((g_i2cTransfer_t.mode & (uint32)I2C_TX_INT) != 0U)
    {
         
         
        g_i2cTransfer_t.data   = data;
         
         
        i2c->DXR = (uint32)(*g_i2cTransfer_t.data);
         
         
        g_i2cTransfer_t.data++;

         
        g_i2cTransfer_t.length = (length - 1U);

         
        i2c->IMR |= (uint32)I2C_TX_INT;
    }
    else
    {
         
        while (length > 0U)
        {
             
            while ((i2c->STR & (uint32)I2C_TX_INT) == 0U)
            {
            }  
             
            i2c->DXR = (uint32)(*data);
             
             
            data++;
            length--;
        }
    }
 
 
}









 
 
 
 
uint32 i2cIsRxReady(i2cBASE_t *i2c)
{
 
 

    return i2c->STR & (uint32)I2C_RX_INT;

 
 
}










 
 
 
 
uint32 i2cIsStopDetected(i2cBASE_t *i2c)
{
    return i2c->STR & (uint32)I2C_SCD_INT;
}









 
 
 
 
uint32 i2cRxError(i2cBASE_t *i2c)
{
    uint32 status = i2c->STR & ((uint32)I2C_AL_INT | (uint32)I2C_NACK_INT);

 
 

    i2c->STR = (uint32)((uint32)I2C_AL_INT | (uint32)I2C_NACK_INT);

 
 

    return status;

}






 
 
 
 
void i2cClearSCD(i2cBASE_t *i2c)
{
 
 

    i2c->STR = (uint32)I2C_SCD_INT;

 
 
}











 
 
 
 
uint8 i2cReceiveByte(i2cBASE_t *i2c)
{
     
    while ((i2c->STR & (uint32)I2C_RX_INT) == 0U)
    {
    }  
 
 

    return ((uint8)i2c->DRR);
}















 
 
 
 
void i2cReceive(i2cBASE_t *i2c, uint32 length, uint8 * data)
{

 
 
    if ((i2c->IMR & (uint32)I2C_RX_INT) != 0U)
    {
         
         
        i2c->STR = (uint32)I2C_AL_INT | (uint32)I2C_NACK_INT;

        g_i2cTransfer_t.length = length;
         
        g_i2cTransfer_t.data   = data;
    }
    else
    {
        while (length > 0U)
        {
             
            while ((i2c->STR & (uint32)I2C_RX_INT) == 0U)
            {
            }  
             
            *data = ((uint8)i2c->DRR);
             
             
            data++;
            length--;
        }
    }

 
 
}






 
 
 
 
void i2cEnableLoopback(i2cBASE_t *i2c)
{
 
 

     
    i2c->MDR |= ((uint32)1U << 6U);

 
 
}






 
 
 
 
void i2cDisableLoopback(i2cBASE_t *i2c)
{
 
 

     
    i2c->MDR &= 0xFFFFFFBFU;

 
 
}












 
 
 
 
void i2cEnableNotification(i2cBASE_t *i2c, uint32 flags)
{

 
 

    g_i2cTransfer_t.mode |= (flags & (uint32)I2C_TX_INT);
    i2c->IMR              = (flags & (uint32)(~(uint32)I2C_TX_INT));
}












 
 
 
 
void i2cDisableNotification(i2cBASE_t *i2c, uint32 flags)
{
    uint32 int_mask;

 
 

    g_i2cTransfer_t.mode &= (uint32)(~(flags & (uint32)I2C_TX_INT));
    int_mask              = i2c->IMR &(uint32)(~(uint32)(flags | (uint32)I2C_TX_INT));
    i2c->IMR              = int_mask;
}








 
 
 
 
void i2cSetMode(i2cBASE_t *i2c, uint32 mode)
{
	uint32  temp_mdr;
 
 
	
     
	temp_mdr  = (i2c->MDR & (~I2C_MASTER));
    i2c->MDR  = (temp_mdr | mode);

 
 
}
















 
 
 
 
void i2cGetConfigValue(i2c_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    {
        config_reg->CONFIG_OAR  = 0x00000000U;
        config_reg->CONFIG_IMR  = (((uint32)0U << 6U) | ((uint32)0U << 5U) | ((uint32)0U << 4U) | ((uint32)0U << 3U) | ((uint32)0U << 2U) | ((uint32)0U << 1U) | ((uint32)0U));
        config_reg->CONFIG_CLKL = 35U;
        config_reg->CONFIG_CLKH = 35U;
        config_reg->CONFIG_CNT  = 8U;
        config_reg->CONFIG_SAR  = 0x000003FFU;
        config_reg->CONFIG_MDR  = ((uint32)0x00000000U | (uint32)((uint32)1U <<11U) | (uint32)((uint32)1U <<10U) | (uint32)((uint32)I2C_TRANSMITTER) | (uint32)((uint32)I2C_7BIT_AMODE) | (uint32)((uint32)0U << 7U) | (uint32)((uint32)0U) | (uint32)((uint32)I2C_8_BIT) | (uint32)I2C_RESET_OUT);
        config_reg->CONFIG_EMDR = 0U;
        config_reg->CONFIG_PSC  = 9U;
        config_reg->CONFIG_DMAC = 0x00000000U;
        config_reg->CONFIG_FUN  = 0U;
        config_reg->CONFIG_DIR  = ((uint32)((uint32)0U << 1U) | (uint32)((uint32)0U));
        config_reg->CONFIG_ODR  = ((uint32)((uint32)0U << 1U) | (uint32)((uint32)0U));
        config_reg->CONFIG_PD   = ((uint32)((uint32)0U << 1U) | (uint32)((uint32)0U));
        config_reg->CONFIG_PSL  = ((uint32)((uint32)1U << 1U) | (uint32)((uint32)1U));
    }
    else
    {
     
        config_reg->CONFIG_OAR  = ((i2cBASE_t *)0xFFF7D400U)->OAR;
        config_reg->CONFIG_IMR  = ((i2cBASE_t *)0xFFF7D400U)->IMR;
        config_reg->CONFIG_CLKL = ((i2cBASE_t *)0xFFF7D400U)->CKL;
        config_reg->CONFIG_CLKH = ((i2cBASE_t *)0xFFF7D400U)->CKH;
        config_reg->CONFIG_CNT  = ((i2cBASE_t *)0xFFF7D400U)->CNT;
        config_reg->CONFIG_SAR  = ((i2cBASE_t *)0xFFF7D400U)->SAR;
        config_reg->CONFIG_MDR  = ((i2cBASE_t *)0xFFF7D400U)->MDR;
        config_reg->CONFIG_EMDR = ((i2cBASE_t *)0xFFF7D400U)->EMDR;
        config_reg->CONFIG_PSC  = ((i2cBASE_t *)0xFFF7D400U)->PSC;
        config_reg->CONFIG_DMAC = ((i2cBASE_t *)0xFFF7D400U)->DMACR;
        config_reg->CONFIG_FUN  = ((i2cBASE_t *)0xFFF7D400U)->PFNC;
        config_reg->CONFIG_DIR  = ((i2cBASE_t *)0xFFF7D400U)->DIR;
        config_reg->CONFIG_ODR  = ((i2cBASE_t *)0xFFF7D400U)->PDR;
        config_reg->CONFIG_PD   = ((i2cBASE_t *)0xFFF7D400U)->PDIS;
        config_reg->CONFIG_PSL  = ((i2cBASE_t *)0xFFF7D400U)->PSEL;
    }
}









 
 
 
 
void i2cSetDirection(i2cBASE_t *i2c, uint32 dir)
{
 
 

     
    i2c->MDR  &= ~I2C_TRANSMITTER;
    i2c->MDR  |= dir;

 
 
}









 
 
 
 
_Bool i2cIsMasterReady(i2cBASE_t *i2c)
{
    _Bool retVal = 0U;
 
 

     
    if((i2c->MDR & I2C_MASTER) == 0)
    {
        retVal = 1;
    }
    else
    {
        retVal = 0;
    }
    return retVal;

 
 
}







 
 
 
 
_Bool i2cIsBusBusy(i2cBASE_t *i2c)
{
    _Bool retVal = 0U;
 
 

     
    if((i2c->STR & I2C_BUSBUSY) == I2C_BUSBUSY)
    {
        retVal = 1;
    }
    else
    {
        retVal = 0;
    }
    return retVal;

 
 
}


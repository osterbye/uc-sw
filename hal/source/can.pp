









 

































 



 
 


 












 

































 














 

































 












 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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
 

 
 


 

    static const uint32 s_canByteOrder[8U] = {3U, 2U, 1U, 0U, 7U, 6U, 5U, 4U};

 
 







 
 
 
 
 
 
void canInit(void)
{
 
 
     

    















 
    ((canBASE_t *)0xFFF7DC00U)->CTL = (uint32)0x00000000U 
                 | (uint32)0x00000000U 
                 | (uint32)((uint32)0x00000005U  << 10U)
                 | (uint32)0x00020043U;

     
    ((canBASE_t *)0xFFF7DC00U)->ES |= 0xFFFFFFFFU;

     
    ((canBASE_t *)0xFFF7DC00U)->INTMUXx[0U] = (uint32)0x00000000U
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
                         | (uint32)0x00000000U
                         | (uint32)0x00000000U
                         | (uint32)0x00000000U;

    ((canBASE_t *)0xFFF7DC00U)->INTMUXx[1U] = (uint32)0x00000000U
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
                         | (uint32)0x00000000U
                         | (uint32)0x00000000U
                         | (uint32)0x00000000U;

     
    ((canBASE_t *)0xFFF7DC00U)->ABOTR = (uint32)0U;

    


 
     
    while ((((canBASE_t *)0xFFF7DC00U)->IF1STAT & 0x80U) ==0x80U)
    { 
    }  
    ((canBASE_t *)0xFFF7DC00U)->IF1CMD  = 0x87U;

    


 
     
    while ((((canBASE_t *)0xFFF7DC00U)->IF2STAT & 0x80U) ==0x80U)
    { 
    }  
    ((canBASE_t *)0xFFF7DC00U)->IF2CMD = 0x17U;

    





 
    ((canBASE_t *)0xFFF7DC00U)->BTR = (uint32)((uint32)0U << 16U) |
                   (uint32)((uint32)(2U - 1U) << 12U) |
                   (uint32)((uint32)((3U + 2U) - 1U) << 8U) |
                   (uint32)((uint32)(2U - 1U) << 6U) |
                   (uint32)19U;


      
    ((canBASE_t *)0xFFF7DC00U)->TIOC =  (uint32)((uint32)1U  << 18U )
                   | (uint32)((uint32)0U  << 17U )
                   | (uint32)((uint32)0U  << 16U )                
                   | (uint32)((uint32)1U  << 3U )  
                   | (uint32)((uint32)1U  << 2U )    
                   | (uint32)((uint32)1U << 1U );
                   
    ((canBASE_t *)0xFFF7DC00U)->RIOC =  (uint32)((uint32)1U  << 18U )    
                   | (uint32)((uint32)0U  << 17U )  
                   | (uint32)((uint32)0U  << 16U )   
                   | (uint32)((uint32)1U  << 3U )  
                   | (uint32)((uint32)0U  << 2U )
                   | (uint32)((uint32)0U <<1U );        

     
    ((canBASE_t *)0xFFF7DC00U)->CTL &= ~(uint32)(0x00000041U);


     

    















 
    ((canBASE_t *)0xFFF7DE00U)->CTL = (uint32)0x00000000U 
                 | (uint32)0x00000000U 
                 | (uint32)((uint32)0x00000005U << 10U)
                 | 0x00020043U;

     
    ((canBASE_t *)0xFFF7DE00U)->ES |= 0xFFFFFFFFU;

     
    ((canBASE_t *)0xFFF7DE00U)->INTMUXx[0U] = (uint32)0x00000000U
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
                         | (uint32)0x00000000U
                         | (uint32)0x00000000U
                         | (uint32)0x00000000U;

    ((canBASE_t *)0xFFF7DE00U)->INTMUXx[1U] = (uint32)0x00000000U
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
                         | (uint32)0x00000000U
                         | (uint32)0x00000000U
                         | (uint32)0x00000000U;


     
    ((canBASE_t *)0xFFF7DE00U)->ABOTR = (uint32)0U;


    


 
     
    while ((((canBASE_t *)0xFFF7DE00U)->IF1STAT & 0x80U) ==0x80U)
    { 
    }  
    ((canBASE_t *)0xFFF7DE00U)->IF1CMD  = 0x87U;

    


 
     
    while ((((canBASE_t *)0xFFF7DE00U)->IF2STAT & 0x80U) ==0x80U)
    { 
    }  
    ((canBASE_t *)0xFFF7DE00U)->IF2CMD = 0x17U;

    





 
    ((canBASE_t *)0xFFF7DE00U)->BTR = (uint32)((uint32)0U << 16U) |
                   (uint32)((uint32)(2U - 1U) << 12U) |
                   (uint32)((uint32)((3U + 2U) - 1U) << 8U) |
                   (uint32)((uint32)(2U - 1U) << 6U) |
                   (uint32)19U;		


    
    ((canBASE_t *)0xFFF7DE00U)->TIOC =  (uint32)((uint32)1U  << 18U )
                   | (uint32)((uint32)0U  << 17U )
                   | (uint32)((uint32)0U  << 16U )  
                   | (uint32)((uint32)1U  << 3U )  
                   | (uint32)((uint32)1U  << 2U )    
                   | (uint32)((uint32)1U << 1U );
                   
    ((canBASE_t *)0xFFF7DE00U)->RIOC =  (uint32)((uint32)1U  << 18U )    
                   | (uint32)((uint32)0U  << 17U )  
                   | (uint32)((uint32)0U  << 16U )   
                   | (uint32)((uint32)1U  << 3U )  
                   | (uint32)((uint32)0U  << 2U )
                   | (uint32)((uint32)0U <<1U );   

     
    ((canBASE_t *)0xFFF7DE00U)->CTL &= ~(uint32)(0x00000041U);

     

    















 
    ((canBASE_t *)0xFFF7E000U)->CTL = (uint32)0x00000000U 
                 | (uint32)0x00000000U 
                 | (uint32)((uint32)0x00000005U << 10U)
                 | 0x00020043U;

     
    ((canBASE_t *)0xFFF7E000U)->ES |= 0xFFFFFFFFU;

     
    ((canBASE_t *)0xFFF7E000U)->INTMUXx[0U] = (uint32)0x00000000U
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
                         | (uint32)0x00000000U
                         | (uint32)0x00000000U
                         | (uint32)0x00000000U;
  
	((canBASE_t *)0xFFF7E000U)->INTMUXx[1U] = (uint32)0x00000000U
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
                         | (uint32)0x00000000U
                         | (uint32)0x00000000U
                         | (uint32)0x00000000U;

     
    ((canBASE_t *)0xFFF7E000U)->ABOTR = (uint32)0U;

    


 
     
    while ((((canBASE_t *)0xFFF7E000U)->IF1STAT & 0x80U) ==0x80U)
    { 
    }  
    ((canBASE_t *)0xFFF7E000U)->IF1CMD  = 0x87U;

    


 
     
    while ((((canBASE_t *)0xFFF7E000U)->IF2STAT & 0x80U) ==0x80U)
    { 
    }  
    ((canBASE_t *)0xFFF7E000U)->IF2CMD = 0x17U;

    





 
    ((canBASE_t *)0xFFF7E000U)->BTR = (uint32)((uint32)0U << 16U) |
                   (uint32)((uint32)(2U - 1U) << 12U) |
                   (uint32)((uint32)((3U + 2U) - 1U) << 8U) |
                   (uint32)((uint32)(2U - 1U) << 6U) |
                   (uint32)(uint32)19U;


     
    ((canBASE_t *)0xFFF7E000U)->TIOC =  (uint32)((uint32)1U  << 18U )
                   | (uint32)((uint32)0U  << 17U )
                   | (uint32)((uint32)0U  << 16U )  
                   | (uint32)((uint32)1U  << 3U )  
                   | (uint32)((uint32)1U  << 2U )    
                   | (uint32)((uint32)1U << 1U );
                   
    ((canBASE_t *)0xFFF7E000U)->RIOC =  (uint32)((uint32)1U  << 18U )    
                   | (uint32)((uint32)0U  << 17U )  
                   | (uint32)((uint32)0U  << 16U )   
                   | (uint32)((uint32)1U  << 3U )  
                   | (uint32)((uint32)0U  << 2U )
                   | (uint32)((uint32)0U << 1U );       

     
    ((canBASE_t *)0xFFF7E000U)->CTL &= ~(uint32)(0x00000041U);

    

 

 
 
}

 
 




















 
 
 
 
uint32 canTransmit(canBASE_t *node, uint32 messageBox, const uint8 * data)
{
    uint32 i;
    uint32 success  = 0U;
    uint32 regIndex = (messageBox - 1U) >> 5U;
    uint32 bitIndex = 1U << ((messageBox - 1U) & 0x1FU);

 
 


    


 
    if ((node->TXRQx[regIndex] & bitIndex) != 0U)
    {
        success = 0U;
    }

    else
    {
     
     
    while ((node->IF1STAT & 0x80U) ==0x80U)
    { 
    }  

    



 	
	node->IF1CMD = 0x87U;
	
     
    for (i = 0U; i < 8U; i++)
    {
         
        node->IF1DATx[s_canByteOrder[i]] = *data;
         
         
		data++;
    }

     
     
    node->IF1NO = (uint8) messageBox;

    success = 1U; 
    }
    

 

 
 

    return success;
}

 
 



















 
 
 
 
uint32 canGetData(canBASE_t *node, uint32 messageBox, uint8 * const data)
{
    uint32       i;
    uint32       size;
    uint8 * pData    = data;
    uint32       success  = 0U;
    uint32       regIndex = (messageBox - 1U) >> 5U;
    uint32       bitIndex = 1U << ((messageBox - 1U) & 0x1FU);

 
 

    


 
    if ((node->NWDATx[regIndex] & bitIndex) == 0U)
    {
        success = 0U;
    }

    else
    {
		 
		 
		while ((node->IF2STAT & 0x80U) ==0x80U)
		{ 
		}  

		



 	
		node->IF2CMD = 0x17U;
		
		 
		 
        node->IF2NO = (uint8) messageBox;

		 
		 
		while ((node->IF2STAT & 0x80U) ==0x80U)
		{ 
		}  

		

 
		size = node->IF2MCTL & 0xFU;
		if(size > 0x8U)
		{
			size = 0x8U;
		}
		
		 
		for (i = 0U; i < size; i++)
		{
			 
			*pData = node->IF2DATx[s_canByteOrder[i]];
			 
			 
			pData++;
		}

		success = 1U;
	}
    


 
    if ((node->IF2MCTL & 0x4000U) == 0x4000U)
    {
        success = 3U;
    }

    

 

 
 

    return success;
}

















 
 
 
 
uint32 canGetID(canBASE_t *node, uint32 messageBox)
{
    uint32   msgBoxID  = 0U;

 
 

     
    while ((node->IF2STAT & 0x80U) ==0x80U)
    {
    }  

	



 
	node->IF2CMD = 0x20U;

     
     
    node->IF2NO = (uint8) messageBox;

     
    while ((node->IF2STAT & 0x80U) ==0x80U)
    {
    }  

     
    msgBoxID = (node->IF2ARB & 0x1FFFFFFFU);

    return msgBoxID;

}























 
 
 
 
void canUpdateID(canBASE_t *node, uint32 messageBox, uint32 msgBoxArbitVal)
{

     
    while ((node->IF2STAT & 0x80U) ==0x80U)
    {
    }  

	



 
	node->IF2CMD = 0xA0U;
	 
	node->IF2ARB &= 0x80000000U;
	node->IF2ARB |= (msgBoxArbitVal & 0x7FFFFFFFU);

     
     
    node->IF2NO = (uint8) messageBox;

     
    while ((node->IF2STAT & 0x80U) ==0x80U)
    {
    }  

}


 
 



















 
 
 
 
uint32 canSendRemoteFrame(canBASE_t *node, uint32 messageBox)
{

    uint32 success  = 0U;
    uint32 regIndex = (messageBox - 1U) >> 5U;
    uint32 bitIndex = 1U << ((messageBox - 1U) & 0x1FU);

    


 
    if ((node->TXRQx[regIndex] & bitIndex) != 0U)
    {
        success = 0U;
    }

    else
    {
		 
		 
		while ((node->IF1STAT & 0x80U) ==0x80U)
		{
		}  

		 
		node->IF1CMD  = (uint8) 0x84U;

		 
		 
        node->IF1NO = (uint8) messageBox;

		success = 1U;
    }
    

 
    return success;
}

















 
 
 
 
uint32 canFillMessageObjectData(canBASE_t *node, uint32 messageBox, const uint8 * data)
{
    uint32 i;
    uint32 success  = 0U;
    uint32 regIndex = (messageBox - 1U) >> 5U;
    uint32 bitIndex = 1U << ((messageBox - 1U) & 0x1FU);
    
    


 
    if ((node->TXRQx[regIndex] & bitIndex) != 0U)
    {
        success = 0U;
    }
    else
    {
		 
		 
		while ((node->IF1STAT & 0x80U) ==0x80U)
		{ 
		}  

		


 	
		node->IF1CMD = 0x83U;
		
		 
		for (i = 0U; i < 8U; i++)
		{
			 
			node->IF1DATx[s_canByteOrder[i]] = *data;
			 
			 
			data++;
		}

		 
		 
        node->IF1NO = (uint8) messageBox;

		success = 1U; 
    }
    
    return success;
    
}















 
 
 
 
uint32 canIsTxMessagePending(canBASE_t *node, uint32 messageBox)
{
    uint32 flag;
    uint32 regIndex = (messageBox - 1U) >> 5U;
    uint32 bitIndex = 1U << ((messageBox - 1U) & 0x1FU);

 
 

     
    flag = node->TXRQx[regIndex] & bitIndex;

 
 

    return flag;
}

 
 















 
 
 
 
uint32 canIsRxMessageArrived(canBASE_t *node, uint32 messageBox)
{
    uint32 flag;
    uint32 regIndex = (messageBox - 1U) >> 5U;
    uint32 bitIndex = 1U << ((messageBox - 1U) & 0x1FU);

 
 

     
    flag = node->NWDATx[regIndex] & bitIndex;

 
 

    return flag;
}

 
 















 
 
 
 
uint32 canIsMessageBoxValid(canBASE_t *node, uint32 messageBox)
{
    uint32 flag;
    uint32 regIndex = (messageBox - 1U) >> 5U;
    uint32 bitIndex = 1U << ((messageBox - 1U) & 0x1FU);

 
 

     
    flag = node->MSGVALx[regIndex] & bitIndex;

 
 

    return flag;
}

 
 




















 
 
 
 
uint32 canGetLastError(canBASE_t *node)
{
    uint32 errorCode;

 
 

     
    errorCode = node->ES & 7U;

     

 
 

    return errorCode;
}

 
 















 
 
 
 
uint32 canGetErrorLevel(canBASE_t *node)
{
    uint32 errorLevel;

 
 

     
    errorLevel = node->ES & 0xE0U;

     

 
 

    return errorLevel;
}

 
 









 
 
 
 
void canEnableErrorNotification(canBASE_t *node)
{
 
 

    node->CTL |= 8U;

     

 
 
}

 
 









 
 
 
 
void canEnableStatusChangeNotification(canBASE_t *node)
{

    node->CTL |= 4U;

     

}









 
 
 
 
void canDisableStatusChangeNotification(canBASE_t *node)
{
    node->CTL &= ~(uint32)(4U);

     
}

 
 









 
 
 
 
void canDisableErrorNotification(canBASE_t *node)
{
 
 

    node->CTL &= ~(uint32)(8U);

     

 
 
}













 
 
 
 
void canEnableloopback(canBASE_t *node, canloopBackType_t Loopbacktype)
{
     
    node->CTL |= (uint32)((uint32)1U << 7U);
    
     
    node->TEST |= (uint32)Loopbacktype;
    
     
}










 
 
 
 
void canDisableloopback(canBASE_t *node)
{

   
    node->TEST &= ~(uint32)(0x00000118U);
	
	 
    node->CTL &= ~(uint32)((uint32)1U << 7U);
    
     
}












 
 
 
 
void canIoSetDirection(canBASE_t *node,uint32 TxDir,uint32 RxDir)
{
 
 

    node->TIOC = ((node->TIOC & 0xFFFFFFFBU) | (TxDir << 2U));
    node->RIOC = ((node->RIOC & 0xFFFFFFFBU) | (RxDir << 2U));    

 
 
}











 
 
 
 
void canIoSetPort(canBASE_t *node, uint32 TxValue, uint32 RxValue)
{
 
 

    node->TIOC = ((node->TIOC & 0xFFFFFFFDU) | (TxValue << 1U));
    node->RIOC = ((node->RIOC & 0xFFFFFFFDU) | (RxValue << 1U));

 
 
}









 
 
 
 
uint32 canIoTxGetBit(canBASE_t *node)
{
 
 

    return (node->TIOC & 1U);
}









 
 
 
 
uint32 canIoRxGetBit(canBASE_t *node)
{
 
 

    return (node->RIOC & 1U);
}
















 
 
 
 
void can1GetConfigValue(can_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    {
        config_reg->CONFIG_CTL     = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)((uint32)0x00000005U << 10U) | 0x00020002U);    
        config_reg->CONFIG_ES      = 0x00000007U;     
        config_reg->CONFIG_BTR     = ((uint32)((uint32)0U << 16U) | (uint32)((uint32)(2U - 1U) << 12U) | (uint32)((uint32)((3U + 2U) - 1U) << 8U) | (uint32)((uint32)(2U - 1U) << 6U) | (uint32)19U);    
        config_reg->CONFIG_TEST    = 0x00000080U;   
        config_reg->CONFIG_ABOTR   = ((uint32)(0U));  
        config_reg->CONFIG_INTMUX0 = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_INTMUX1 = 0x00000000U;
        config_reg->CONFIG_INTMUX2 = 0x00000000U;
        config_reg->CONFIG_INTMUX3 = 0x00000000U;
        config_reg->CONFIG_TIOC    = ((uint32)((uint32)1U << 18U ) |(uint32)((uint32)0U << 17U ) |(uint32)((uint32)0U << 16U ) |(uint32)((uint32)1U << 3U ) |(uint32)((uint32)1U << 2U ) |(uint32)((uint32)1U << 1U ));   
        config_reg->CONFIG_RIOC    = ((uint32)((uint32)1U << 18U ) |(uint32)((uint32)0U << 17U ) |(uint32)((uint32)0U << 16U ) |(uint32)((uint32)1U << 3U ) |(uint32)((uint32)0U << 2U ) |(uint32)((uint32)0U << 1U ));    
    }
    else
    {
     
        config_reg->CONFIG_CTL     = ((canBASE_t *)0xFFF7DC00U)->CTL;   
        config_reg->CONFIG_ES      = ((canBASE_t *)0xFFF7DC00U)->ES;     
        config_reg->CONFIG_BTR     = ((canBASE_t *)0xFFF7DC00U)->BTR;    
        config_reg->CONFIG_TEST    = ((canBASE_t *)0xFFF7DC00U)->TEST;   
        config_reg->CONFIG_ABOTR   = ((canBASE_t *)0xFFF7DC00U)->ABOTR;  
        config_reg->CONFIG_INTMUX0 = ((canBASE_t *)0xFFF7DC00U)->INTMUXx[0];
        config_reg->CONFIG_INTMUX1 = ((canBASE_t *)0xFFF7DC00U)->INTMUXx[1];
        config_reg->CONFIG_INTMUX2 = ((canBASE_t *)0xFFF7DC00U)->INTMUXx[2];
        config_reg->CONFIG_INTMUX3 = ((canBASE_t *)0xFFF7DC00U)->INTMUXx[3];
        config_reg->CONFIG_TIOC    = ((canBASE_t *)0xFFF7DC00U)->TIOC;
        config_reg->CONFIG_RIOC    = ((canBASE_t *)0xFFF7DC00U)->RIOC;   
    }
}














 
 
 
 
void can2GetConfigValue(can_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    {
        config_reg->CONFIG_CTL     = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)((uint32)0x00000005U << 10U) | 0x00020002U);    
        config_reg->CONFIG_ES      = 0x00000007U;     
        config_reg->CONFIG_BTR     = ((uint32)((uint32)0U << 16U) | (uint32)((uint32)(2U - 1U) << 12U) | (uint32)((uint32)((3U + 2U) - 1U) << 8U) | (uint32)((uint32)(2U - 1U) << 6U) | (uint32)19U);    
        config_reg->CONFIG_TEST    = 0x00000080U;   
        config_reg->CONFIG_ABOTR   = ((uint32)(0U));  
        config_reg->CONFIG_INTMUX0 = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_INTMUX1 = 0x00000000U;
        config_reg->CONFIG_INTMUX2 = 0x00000000U;
        config_reg->CONFIG_INTMUX3 = 0x00000000U;
        config_reg->CONFIG_TIOC    = ((uint32)((uint32)1U << 18U ) |(uint32)((uint32)0U << 17U ) |(uint32)((uint32)0U << 16U ) |(uint32)((uint32)1U << 3U ) |(uint32)((uint32)1U << 2U ) |(uint32)((uint32)1U << 1U ));   
        config_reg->CONFIG_RIOC    = ((uint32)((uint32)1U << 18U ) |(uint32)((uint32)0U << 17U ) |(uint32)((uint32)0U << 16U ) |(uint32)((uint32)1U << 3U ) |(uint32)((uint32)0U << 2U ) |(uint32)((uint32)0U << 1U ));    
    }
    else
    {
     
        config_reg->CONFIG_CTL     = ((canBASE_t *)0xFFF7DE00U)->CTL;   
        config_reg->CONFIG_ES      = ((canBASE_t *)0xFFF7DE00U)->ES;     
        config_reg->CONFIG_BTR     = ((canBASE_t *)0xFFF7DE00U)->BTR;    
        config_reg->CONFIG_TEST    = ((canBASE_t *)0xFFF7DE00U)->TEST;   
        config_reg->CONFIG_ABOTR   = ((canBASE_t *)0xFFF7DE00U)->ABOTR;  
        config_reg->CONFIG_INTMUX0 = ((canBASE_t *)0xFFF7DE00U)->INTMUXx[0];
        config_reg->CONFIG_INTMUX1 = ((canBASE_t *)0xFFF7DE00U)->INTMUXx[1];
        config_reg->CONFIG_INTMUX2 = ((canBASE_t *)0xFFF7DE00U)->INTMUXx[2];
        config_reg->CONFIG_INTMUX3 = ((canBASE_t *)0xFFF7DE00U)->INTMUXx[3];
        config_reg->CONFIG_TIOC    = ((canBASE_t *)0xFFF7DE00U)->TIOC;
        config_reg->CONFIG_RIOC    = ((canBASE_t *)0xFFF7DE00U)->RIOC;   
    }
}














 
 
 
 
void can3GetConfigValue(can_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    {
        config_reg->CONFIG_CTL     = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)((uint32)0x00000005U << 10U) | 0x00020002U);    
        config_reg->CONFIG_ES      = 0x00000007U;     
        config_reg->CONFIG_BTR     = ((uint32)((uint32)0U << 16U) | (uint32)((uint32)(2U - 1U) << 12U) | (uint32)((uint32)((3U + 2U) - 1U) << 8U) | (uint32)((uint32)(2U - 1U) << 6U) | (uint32)19U);    
        config_reg->CONFIG_TEST    = 0x00000080U;   
        config_reg->CONFIG_ABOTR   = ((uint32)(0U));  
        config_reg->CONFIG_INTMUX0 = ((uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U | (uint32)0x00000000U);
        config_reg->CONFIG_INTMUX1 = 0x00000000U;
        config_reg->CONFIG_INTMUX2 = 0x00000000U;
        config_reg->CONFIG_INTMUX3 = 0x00000000U;
        config_reg->CONFIG_TIOC    = ((uint32)((uint32)1U << 18U ) |(uint32)((uint32)0U << 17U ) |(uint32)((uint32)0U << 16U ) |(uint32)((uint32)1U << 3U ) |(uint32)((uint32)1U << 2U ) |(uint32)((uint32)1U << 1U ));   
        config_reg->CONFIG_RIOC    = ((uint32)((uint32)1U << 18U ) |(uint32)((uint32)0U << 17U ) |(uint32)((uint32)0U << 16U ) |(uint32)((uint32)1U << 3U ) |(uint32)((uint32)0U << 2U ) |(uint32)((uint32)0U << 1U ));    
    }
    else
    {
     
        config_reg->CONFIG_CTL     = ((canBASE_t *)0xFFF7E000U)->CTL;   
        config_reg->CONFIG_ES      = ((canBASE_t *)0xFFF7E000U)->ES;     
        config_reg->CONFIG_BTR     = ((canBASE_t *)0xFFF7E000U)->BTR;    
        config_reg->CONFIG_TEST    = ((canBASE_t *)0xFFF7E000U)->TEST;   
        config_reg->CONFIG_ABOTR   = ((canBASE_t *)0xFFF7E000U)->ABOTR;  
        config_reg->CONFIG_INTMUX0 = ((canBASE_t *)0xFFF7E000U)->INTMUXx[0];
        config_reg->CONFIG_INTMUX1 = ((canBASE_t *)0xFFF7E000U)->INTMUXx[1];
        config_reg->CONFIG_INTMUX2 = ((canBASE_t *)0xFFF7E000U)->INTMUXx[2];
        config_reg->CONFIG_INTMUX3 = ((canBASE_t *)0xFFF7E000U)->INTMUXx[3];
        config_reg->CONFIG_TIOC    = ((canBASE_t *)0xFFF7E000U)->TIOC;
        config_reg->CONFIG_RIOC    = ((canBASE_t *)0xFFF7E000U)->RIOC;   
    }
}

 
 


 
#pragma CODE_STATE(can1HighLevelInterrupt, 32)
#pragma INTERRUPT(can1HighLevelInterrupt, IRQ)

 
 
 
void can1HighLevelInterrupt(void)
{
    uint32 value = ((canBASE_t *)0xFFF7DC00U)->INT;
	uint32 ES_value;

 
 

    if (value == 0x8000U)
    {
         
        ES_value = ((canBASE_t *)0xFFF7DC00U)->ES;
        
         
        if((ES_value & 0x1E0U) != 0U)
        {
            canErrorNotification(((canBASE_t *)0xFFF7DC00U), ES_value & 0x1E0U);
        }
        else
        {   
             
            canStatusChangeNotification(((canBASE_t *)0xFFF7DC00U), ES_value & 0x618U);
        }
    }
    else
    {
         
         
        while ((((canBASE_t *)0xFFF7DC00U)->IF1STAT & 0x80U) ==0x80U)
        { 
        }  

        ((canBASE_t *)0xFFF7DC00U)->IF1CMD = 0x08U;
		 
        ((canBASE_t *)0xFFF7DC00U)->IF1NO  = (uint8) value;
        
         
        while ((((canBASE_t *)0xFFF7DC00U)->IF1STAT & 0x80U) ==0x80U)
        { 
        }  
        ((canBASE_t *)0xFFF7DC00U)->IF1CMD = 0x87U;

        canMessageNotification(((canBASE_t *)0xFFF7DC00U), value);
    }
	
 
 

}







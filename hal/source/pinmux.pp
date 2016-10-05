




 

































 


 






 

































 














 

































 












 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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


 
 

 
 
 
 

 
 

 
 




 
 

 

 




 
typedef volatile struct iommErrFault
{
    uint32 ERR_RAW_STATUS_REG;           
    uint32 ERR_ENABLED_STATUS_REG;       
    uint32 ERR_ENABLE_REG;               
    uint32 ERR_ENABLE_CLR_REG;           
	uint32  rsvd;                        
    uint32 FAULT_ADDRESS_REG;            
    uint32 FAULT_STATUS_REG;             
    uint32 FAULT_CLEAR_REG;              	
} iommErrFault_t;
 




 
typedef volatile struct pinMuxKicker
{
    uint32 KICKER0;        
    uint32 KICKER1;        
} pinMuxKICKER_t;





 




 
typedef volatile struct pinMuxBase
{
    uint32 PINMMR0;		 
    uint32 PINMMR1;		 
    uint32 PINMMR2;		 
    uint32 PINMMR3;		 
    uint32 PINMMR4;		 
    uint32 PINMMR5;		 
    uint32 PINMMR6;		 
    uint32 PINMMR7;		 
    uint32 PINMMR8;		 
    uint32 PINMMR9;		 
    uint32 PINMMR10;		 
    uint32 PINMMR11;		 
    uint32 PINMMR12;		 
    uint32 PINMMR13;		 
    uint32 PINMMR14;		 
    uint32 PINMMR15;		 
    uint32 PINMMR16;		 
    uint32 PINMMR17;		 
    uint32 PINMMR18;		 
    uint32 PINMMR19;		 
    uint32 PINMMR20;		 
    uint32 PINMMR21;		 
    uint32 PINMMR22;		 
    uint32 PINMMR23;		 
    uint32 PINMMR24;		 
    uint32 PINMMR25;		 
    uint32 PINMMR26;		 
    uint32 PINMMR27;		 
    uint32 PINMMR28;		 
    uint32 PINMMR29;		 
    uint32 PINMMR30;		 
    uint32 PINMMR31;		 
    uint32 PINMMR32;		 
    uint32 PINMMR33;		 
    uint32 PINMMR34;		 
    uint32 PINMMR35;		 
    uint32 PINMMR36;           
    uint32 PINMMR37;           
    uint32 PINMMR38;           
    uint32 PINMMR39;           
    uint32 PINMMR40;           
    uint32 PINMMR41;           
    uint32 PINMMR42;           
    uint32 PINMMR43;           
    uint32 PINMMR44;           
    uint32 PINMMR45;           
    uint32 PINMMR46;           
    uint32 PINMMR47;           
}pinMuxBASE_t;






       
        




 	





 	

 
 

































































typedef struct pinmux_config_reg
{
    uint32 CONFIG_PINMMR0;
    uint32 CONFIG_PINMMR1;
    uint32 CONFIG_PINMMR2;
    uint32 CONFIG_PINMMR3;
    uint32 CONFIG_PINMMR4;
    uint32 CONFIG_PINMMR5;
    uint32 CONFIG_PINMMR6;
    uint32 CONFIG_PINMMR7;
    uint32 CONFIG_PINMMR8;
    uint32 CONFIG_PINMMR9;
    uint32 CONFIG_PINMMR10;
    uint32 CONFIG_PINMMR11;
    uint32 CONFIG_PINMMR12;
    uint32 CONFIG_PINMMR13;
    uint32 CONFIG_PINMMR14;
    uint32 CONFIG_PINMMR15;
    uint32 CONFIG_PINMMR16;
    uint32 CONFIG_PINMMR17;
    uint32 CONFIG_PINMMR18;
    uint32 CONFIG_PINMMR19;
    uint32 CONFIG_PINMMR20;
    uint32 CONFIG_PINMMR21;
    uint32 CONFIG_PINMMR22;
    uint32 CONFIG_PINMMR23;
    uint32 CONFIG_PINMMR24;
    uint32 CONFIG_PINMMR25;
    uint32 CONFIG_PINMMR26;
    uint32 CONFIG_PINMMR27;
    uint32 CONFIG_PINMMR28;
    uint32 CONFIG_PINMMR29;
    uint32 CONFIG_PINMMR30;
    uint32 CONFIG_PINMMR31;
    uint32 CONFIG_PINMMR32;
    uint32 CONFIG_PINMMR33;
    uint32 CONFIG_PINMMR34;
    uint32 CONFIG_PINMMR35;
    uint32 CONFIG_PINMMR36;
    uint32 CONFIG_PINMMR37;
    uint32 CONFIG_PINMMR38;
    uint32 CONFIG_PINMMR39;
    uint32 CONFIG_PINMMR40;
    uint32 CONFIG_PINMMR41;
    uint32 CONFIG_PINMMR42;
    uint32 CONFIG_PINMMR43;
    uint32 CONFIG_PINMMR44;
    uint32 CONFIG_PINMMR45;
    uint32 CONFIG_PINMMR46;
    uint32 CONFIG_PINMMR47;
}pinmux_config_reg_t;

















 






 
void muxInit(void);
void pinmuxGetConfigValue(pinmux_config_reg_t *config_reg, config_value_type_t type);
 
 

 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 

 
 

 
  

 
  

 
  

 
  

 
  

 
  

 
  

 
  

 
  

 
  

 
  

 
  

 
  

 
  

 
  




 
 

 
 
 
void muxInit(void){

 
 

     
    ((pinMuxKICKER_t *) 0xFFFFEA38U)->KICKER0 = 0x83E70B13U;
    ((pinMuxKICKER_t *) 0xFFFFEA38U)->KICKER1 = 0x95A4F1E0U;
    
 
 

    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR0 =    ((uint32)((uint32)0x1U << 0U)) | ((uint32)((uint32)0x1U << 8U)) | ((uint32)((uint32)0x1U << 16U)) | ((uint32)((uint32)0x1U << 24U));
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR1 =    ((uint32)((uint32)0x1U << 0U)) | ((uint32)((uint32)0x1U << 8U));
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR2 =    ((uint32)((uint32)0x1U << 0U)) | ((uint32)((uint32)0x1U << 24U));
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR3 =    ((uint32)((uint32)0x1U << 8U)) | ((uint32)((uint32)0x1U << 16U));
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR4 =    ((uint32)((uint32)0x1U << 0U)) | ((uint32)((uint32)0x1U << 16U)) | ((uint32)((uint32)0x1U << 24U));
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR5 =    ((uint32)((uint32)0x1U << 0U)) | ((uint32)((uint32)0x1U << 8U)) | ((uint32)((uint32)0x1U << 16U));
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR6 =    ((uint32)((uint32)0x1U << 0U)) | ((uint32)((uint32)0x1U << 16U));
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR7 =    ((uint32)((uint32)0x1U << 8U)) | ((uint32)((uint32)0x1U << 16U));
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR8 =    ((uint32)((uint32)0x1U << 0U)) | ((uint32)((uint32)0x1U << 8U)) | ((uint32)((uint32)0x1U << 16U));
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR9 = ((~(((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR9 >> 18U) & 0x00000001U ) << 18U) | ((uint32)((uint32)0x1U << 8U)) | ((uint32)((uint32)0x1U << 16U));
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR10 =   ((uint32)((uint32)0x1U << 0U));
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR11 =   ((uint32)((uint32)0x1U << 24U));
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR12 =   ((uint32)((uint32)0x1U << 0U)) | ((uint32)((uint32)0x1U << 16U)) | ((uint32)((uint32)0x1U << 24U));
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR13 =   ((uint32)((uint32)0x1U << 0U)) | ((uint32)((uint32)0x1U << 8U)) | ((uint32)((uint32)0x1U << 16U)) | ((uint32)((uint32)0x1U << 24U));
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR14 =   ((uint32)((uint32)0x1U << 0U)) | ((uint32)((uint32)0x1U << 8U));
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR15 =   0x01010101U;
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR16 =   0x01010101U;
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR17 =   ((uint32)((uint32)0x1U << 0U)) | ((uint32)((uint32)0x1U << 16U));
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR18 =   ((uint32)((uint32)0x1U << 8U)) | ((uint32)((uint32)0x1U << 24U));
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR19 =   ((uint32)((uint32)0x1U << 8U));
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR20 =   ((uint32)((uint32)0x1U << 16U));
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR21 =   ((uint32)((uint32)0x1U << 8U));
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR22 =   0x01010101U;
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR23 =   ((~(((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR5 >> 1U) & 0x00000001U ) << 8U) | ((~(((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR5 >> 9U) & 0x00000001U ) << 16U) | ((~(((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR5 >> 17U) & 0x00000001U ) << 24U);
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR24 =   ((~(((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR20 >> 17U) & 0x00000001U ) << 16U)  | ((~(((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR8 >> 9U) & 0x00000001U ) << 24U);
    
     
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR25 =   ((~(((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR12 >> 17U) & 0x00000001U ) << 8U) | ((~(((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR7 >> 9U) & 0x00000001U ) << 16U) | ((~(((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR0 >> 26U) & 0x00000001U ) << 24U);
    
     
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR26 =   ((~(((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR0 >> 18U) & 0x00000001U ) << 0U) | ((~(((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR9 >> 10U) & 0x00000001U ) << 8U);
    
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR27 =   ((uint32)((uint32)0x1U << 0U));
        
    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR29 =   0x01010101U;

    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR30 = 0x01010100U;

    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR31 = 0x01010101U;

    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR32 = 0x00010101U;    

    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR33 =   ((uint32)((uint32)0x1U << 0U)) | ((uint32)((uint32)0x1U << 8U)) | ((uint32)((uint32)0x1U << 16U)) | ((uint32)((uint32)0x1U << 24U));

    ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR34 =   ((uint32)((uint32)0x1U << 0U)) | ((uint32)((uint32)0x1U << 8U)) | ((uint32)((uint32)0x1U << 16U));

    
 
 

    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR29 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR29 & (~(uint32)((uint32)0xFFU << 8U))) | (((uint32)((uint32)0x1U << 8U))));
    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR29 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR29 & (~(uint32)((uint32)0xFFU << 16U))) | (((uint32)((uint32)0x0 << 16U))));
    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR30 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR30 & (~(uint32)((uint32)0xFFU << 0U))) | (((uint32)((uint32)0x1U << 0U))));
    
 
 

     
    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR0 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR0 & (~(uint32)((uint32)0xFFU << 0U))) | (((uint32)((uint32)0x1U << 0U))));
     
    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR0 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR0 & (~(uint32)((uint32)0xFFU << 8U))) | (((uint32)((uint32)0x1U << 8U))));
    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR1 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR1 & (~(uint32)((uint32)0xFFU << 0U))) | (((uint32)((uint32)0x1U << 0U))));
    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR3 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR3 & (~(uint32)((uint32)0xFFU << 8U))) | (((uint32)((uint32)0x1U << 8U))));
    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR18 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR18 & (~(uint32)((uint32)0xFFU << 8U))) | (((uint32)((uint32)0x1U << 8U))));
    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR18 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR18 & (~(uint32)((uint32)0xFFU << 24U))) | (((uint32)((uint32)0x1U << 24U))));
    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR21 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR21 & (~(uint32)((uint32)0xFFU << 8U))) | (((uint32)((uint32)0x1U << 8U))));
    
 
 

    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR41 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR41 & (~(uint32)((uint32)0xFFU << 0U))) | (((uint32)((uint32)0x1U << 0U))));
    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR41 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR41 & (~(uint32)((uint32)0xFFU << 8U))) | (((uint32)((uint32)0x1U << 8U))));
    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR41 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR41 & (~(uint32)((uint32)0xFFU << 16U))) | (((uint32)((uint32)0x1U << 16U))));
    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR41 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR41 & (~(uint32)((uint32)0xFFU << 24U))) | (((uint32)((uint32)0x1U << 24U))));
    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR42 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR42 & (~(uint32)((uint32)0xFFU << 0U))) | (((uint32)((uint32)0x1U << 0U))));
    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR42 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR42 & (~(uint32)((uint32)0xFFU << 8U))) | (((uint32)((uint32)0x1U << 8U))));
    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR42 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR42 & (~(uint32)((uint32)0xFFU << 16U))) | (((uint32)((uint32)0x1U << 16U))));
    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR36 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR36 & (~(uint32)((uint32)0xFFU << 24U))) | (((uint32)((uint32)0x0 << 24U))));
    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR46 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR46 & 16U) | (((uint32)((uint32)0x1U << 16U))));
    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR46 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR46 & 24U) | (((uint32)((uint32)0x1U << 24U))));
    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR47 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR47 & 0U) | (((uint32)((uint32)0x1U << 0U))));
    (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR47 = (((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR47 & 8U) | (((uint32)((uint32)0x1U << 8U))));

 
 
    
     
    ((pinMuxKICKER_t *) 0xFFFFEA38U)->KICKER0 = 0x00000000U;
    ((pinMuxKICKER_t *) 0xFFFFEA38U)->KICKER1 = 0x00000000U;
    
 
 
}















 
 
 
 
void pinmuxGetConfigValue(pinmux_config_reg_t *config_reg, config_value_type_t type)
{
    if (type == InitialValue)
    { 
    }
    else
    {
     
        config_reg->CONFIG_PINMMR0  = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR0;
        config_reg->CONFIG_PINMMR1  = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR1;
        config_reg->CONFIG_PINMMR2  = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR2;
        config_reg->CONFIG_PINMMR3  = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR3;
        config_reg->CONFIG_PINMMR4  = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR4;
        config_reg->CONFIG_PINMMR5  = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR5;
        config_reg->CONFIG_PINMMR6  = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR6;
        config_reg->CONFIG_PINMMR7  = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR7;
        config_reg->CONFIG_PINMMR8  = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR8;
        config_reg->CONFIG_PINMMR9  = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR9;
        config_reg->CONFIG_PINMMR10 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR10;
        config_reg->CONFIG_PINMMR11 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR11;
        config_reg->CONFIG_PINMMR12 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR12;
        config_reg->CONFIG_PINMMR13 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR13;
        config_reg->CONFIG_PINMMR14 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR14;
        config_reg->CONFIG_PINMMR15 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR15;
        config_reg->CONFIG_PINMMR16 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR16;
        config_reg->CONFIG_PINMMR17 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR17;
        config_reg->CONFIG_PINMMR18 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR18;
        config_reg->CONFIG_PINMMR19 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR19;
        config_reg->CONFIG_PINMMR20 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR20;
        config_reg->CONFIG_PINMMR21 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR21;
        config_reg->CONFIG_PINMMR22 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR22;
        config_reg->CONFIG_PINMMR23 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR23;
        config_reg->CONFIG_PINMMR24 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR24;
        config_reg->CONFIG_PINMMR25 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR25;
        config_reg->CONFIG_PINMMR26 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR26;
        config_reg->CONFIG_PINMMR27 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR27;
        config_reg->CONFIG_PINMMR28 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR28;
        config_reg->CONFIG_PINMMR29 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR29;
        config_reg->CONFIG_PINMMR30 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR30;
        config_reg->CONFIG_PINMMR31 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR31;
        config_reg->CONFIG_PINMMR32 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR32;
        config_reg->CONFIG_PINMMR33 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR33;
        config_reg->CONFIG_PINMMR34 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR34;
        config_reg->CONFIG_PINMMR35 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR35;
        config_reg->CONFIG_PINMMR36 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR36;
        config_reg->CONFIG_PINMMR37 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR37;
        config_reg->CONFIG_PINMMR38 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR38;
        config_reg->CONFIG_PINMMR39 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR39;
        config_reg->CONFIG_PINMMR40 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR40;
        config_reg->CONFIG_PINMMR41 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR41;
        config_reg->CONFIG_PINMMR42 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR42;
        config_reg->CONFIG_PINMMR43 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR43;
        config_reg->CONFIG_PINMMR44 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR44;
        config_reg->CONFIG_PINMMR45 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR45;
        config_reg->CONFIG_PINMMR46 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR46;
        config_reg->CONFIG_PINMMR47 = ((pinMuxBASE_t *) 0xFFFFEB10U)->PINMMR47;
    }
}

 
 

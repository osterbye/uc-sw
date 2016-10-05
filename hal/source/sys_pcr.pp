




 
































 












 

































 













 

































 












 

































 










 

































 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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


 
 

 
 
 
 

 
 

 
 



 
 

 




 




 
typedef volatile struct pcrBase
{
    uint32 PMPROTSET0;     
    uint32 PMPROTSET1;     
    uint32   rsvd1[2U];     
    uint32 PMPROTCLR0;     
    uint32 PMPROTCLR1;     
    uint32   rsvd2[2U];     
    uint32 PPROTSET0;      
    uint32 PPROTSET1;      
    uint32 PPROTSET2;      
    uint32 PPROTSET3;      
    uint32   rsvd3[4U];     
    uint32 PPROTCLR0;      
    uint32 PPROTCLR1;      
    uint32 PPROTCLR2;      
    uint32 PPROTCLR3;      
    uint32   rsvd4[4U];     
    uint32 PCSPWRDWNSET0;  
    uint32 PCSPWRDWNSET1;  
    uint32   rsvd5[2U];     
    uint32 PCSPWRDWNCLR0;  
    uint32 PCSPWRDWNCLR1;  
    uint32   rsvd6[2U];     
    uint32 PSPWRDWNSET0;   
    uint32 PSPWRDWNSET1;   
    uint32 PSPWRDWNSET2;   
    uint32 PSPWRDWNSET3;   
    uint32   rsvd7[4U];     
    uint32 PSPWRDWNCLR0;   
    uint32 PSPWRDWNCLR1;   
    uint32 PSPWRDWNCLR2;   
    uint32 PSPWRDWNCLR3;   
} pcrBASE_t;





 

 
 




 
 

 

typedef uint32 peripheralFrame_CS_t;


 
 


typedef uint32 quadrant_Select_t;

 
 





 
typedef struct peripheral_Frame_Select
{
	peripheralFrame_CS_t Peripheral_CS;
	quadrant_Select_t Peripheral_Quadrant;
}peripheral_Frame_Select_t;

 
 





 
typedef struct peripheral_Quad_ChipSelect
{
	uint32 Peripheral_Quad0_3_CS0_7;
	uint32 Peripheral_Quad4_7_CS8_15;
	uint32 Peripheral_Quad8_11_CS16_23;
	uint32 Peripheral_Quad12_15_CS24_31;
}peripheral_Quad_ChipSelect_t;

 
 





 
typedef struct peripheral_Memory_ChipSelect
{
	uint32 Peripheral_Mem_CS0_31;
	uint32 Peripheral_Mem_CS32_63;
}peripheral_Memory_ChipSelect_t;

 
 

typedef uint32 peripheral_MemoryFrame_CS_t;


 
 

typedef struct pcr_config_reg
{
    uint32 CONFIG_PMPROTSET0;
    uint32 CONFIG_PMPROTSET1;
    uint32 CONFIG_PPROTSET0;
    uint32 CONFIG_PPROTSET1;
    uint32 CONFIG_PPROTSET2;
    uint32 CONFIG_PPROTSET3;
    uint32 CONFIG_PCSPWRDWNSET0;
    uint32 CONFIG_PCSPWRDWNSET1;
    uint32 CONFIG_PSPWRDWNSET0;
    uint32 CONFIG_PSPWRDWNSET1;
    uint32 CONFIG_PSPWRDWNSET2;
    uint32 CONFIG_PSPWRDWNSET3;
} pcr_config_reg_t;




















 
 
 

void peripheral_Frame_Protection_Set(peripheral_Frame_Select_t peripheral_Frame);
void peripheral_Frame_Protection_Clr(peripheral_Frame_Select_t peripheral_Frame);
void peripheral_Frame_Powerdown_Set(peripheral_Frame_Select_t peripheral_Frame);
void peripheral_Frame_Powerdown_Clr(peripheral_Frame_Select_t peripheral_Frame);

void peripheral_Protection_Set(peripheral_Quad_ChipSelect_t peripheral_Quad_CS);
void peripheral_Protection_Clr(peripheral_Quad_ChipSelect_t peripheral_Quad_CS);
void peripheral_Protection_Status(peripheral_Quad_ChipSelect_t* peripheral_Quad_CS);
void peripheral_Powerdown_Set(peripheral_Quad_ChipSelect_t peripheral_Quad_CS);
void peripheral_Powerdown_Clr(peripheral_Quad_ChipSelect_t peripheral_Quad_CS);
void peripheral_Powerdown_Status(peripheral_Quad_ChipSelect_t* peripheral_Quad_CS);

void peripheral_Memory_Protection_Set(peripheral_Memory_ChipSelect_t peripheral_Memory_CS);
void peripheral_Memory_Protection_Clr(peripheral_Memory_ChipSelect_t peripheral_Memory_CS);
void peripheral_Memory_Protection_Status(peripheral_Memory_ChipSelect_t* peripheral_Memory_CS);
void peripheral_Memory_Powerdown_Set(peripheral_Memory_ChipSelect_t peripheral_Memory_CS);
void peripheral_Memory_Powerdown_Clr(peripheral_Memory_ChipSelect_t peripheral_Memory_CS);
void peripheral_Memory_Powerdown_Status(peripheral_Memory_ChipSelect_t* peripheral_Memory_CS);

void peripheral_Mem_Frame_Prot_Set(peripheral_MemoryFrame_CS_t peripheral_Memory_Frame_CS);
void peripheral_Mem_Frame_Prot_Clr(peripheral_MemoryFrame_CS_t peripheral_Memory_Frame_CS);
void peripheral_Mem_Frame_Pwrdwn_Set(peripheral_MemoryFrame_CS_t peripheral_Memory_Frame_CS);
void peripheral_Mem_Frame_Pwrdwn_Clr (peripheral_MemoryFrame_CS_t peripheral_Memory_Frame_CS);

void pcrGetConfigValue(pcr_config_reg_t *config_reg, config_value_type_t type);

 
 
 



 
 

 
 






 
 
 
 
void peripheral_Frame_Protection_Set(peripheral_Frame_Select_t peripheral_Frame)
{

 
 

	uint32 chip_select_grp;
	uint32 Quarant_selct;

	chip_select_grp = (peripheral_Frame.Peripheral_CS >> 3U);
	Quarant_selct  = (uint32)(peripheral_Frame.Peripheral_Quadrant << ((peripheral_Frame.Peripheral_CS & 7U) << 2U));

    if (chip_select_grp >= 3U)
    {
        ((pcrBASE_t *)0xFFFFE000U)->PPROTSET3 = Quarant_selct;
    }
    else if (chip_select_grp >= 2U)
    {
        ((pcrBASE_t *)0xFFFFE000U)->PPROTSET2 = Quarant_selct;
    }
    else if (chip_select_grp >= 1U)
    {
        ((pcrBASE_t *)0xFFFFE000U)->PPROTSET1 = Quarant_selct;
    }
	else
    {
        ((pcrBASE_t *)0xFFFFE000U)->PPROTSET0 = Quarant_selct;
    }
	
 
 
}

 
 






 
 
 
 
void peripheral_Frame_Protection_Clr(peripheral_Frame_Select_t peripheral_Frame)
{

 
 

	uint32 chip_select_grp;
	uint32 Quarant_selct;

	chip_select_grp = (peripheral_Frame.Peripheral_CS >> 3U);
	Quarant_selct  = (uint32)(peripheral_Frame.Peripheral_Quadrant << ((peripheral_Frame.Peripheral_CS & 7U) << 2U));

    if (chip_select_grp >= 3U)
    {
        ((pcrBASE_t *)0xFFFFE000U)->PPROTCLR3 = Quarant_selct;
    }
    else if (chip_select_grp >= 2U)
    {
        ((pcrBASE_t *)0xFFFFE000U)->PPROTCLR2 = Quarant_selct;
    }
    else if (chip_select_grp >= 1U)
    {
        ((pcrBASE_t *)0xFFFFE000U)->PPROTCLR1 = Quarant_selct;
    }
	else
    {
        ((pcrBASE_t *)0xFFFFE000U)->PPROTCLR0 = Quarant_selct;
    }
	
 
 
}

 
 






 
 
 
 
void peripheral_Frame_Powerdown_Set(peripheral_Frame_Select_t peripheral_Frame)
{

 
 

	uint32 chip_select_grp;
	uint32 Quarant_selct;

	chip_select_grp = (peripheral_Frame.Peripheral_CS >> 3U);
	Quarant_selct  = (uint32)(peripheral_Frame.Peripheral_Quadrant << ((peripheral_Frame.Peripheral_CS & 7U) << 2U));
	
    if (chip_select_grp >= 3U)
    {
        ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNSET3 = Quarant_selct;
    }
    else if (chip_select_grp >= 2U)
    {
        ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNSET2 = Quarant_selct;
    }
    else if (chip_select_grp >= 1U)
    {
        ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNSET1 = Quarant_selct;
    }
	else
    {
        ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNSET0 = Quarant_selct;
    }
	
 
 
}

 
 






 
 
 
 
void peripheral_Frame_Powerdown_Clr(peripheral_Frame_Select_t peripheral_Frame)
{

 
 

	uint32 chip_select_grp;
	uint32 Quarant_selct;

	chip_select_grp = (peripheral_Frame.Peripheral_CS >> 3U);
	Quarant_selct  = (uint32)(peripheral_Frame.Peripheral_Quadrant << ((peripheral_Frame.Peripheral_CS & 7U) << 2U));
	
    if (chip_select_grp >= 3U)
    {
        ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNCLR3 = Quarant_selct;
    }
    else if (chip_select_grp >= 2U)
    {
        ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNCLR2 = Quarant_selct;
    }
    else if (chip_select_grp >= 1U)
    {
        ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNCLR1 = Quarant_selct;
    }
	else
    {
        ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNCLR0 = Quarant_selct;
    }
 
 
}

 
 






 
 
 
 
void peripheral_Mem_Frame_Prot_Set(peripheral_MemoryFrame_CS_t peripheral_Memory_Frame_CS)
{

 
 

	uint32 chip_select_grp;

	chip_select_grp = (peripheral_Memory_Frame_CS >> 5U);

	if (chip_select_grp >= 1U)
    {
        ((pcrBASE_t *)0xFFFFE000U)->PMPROTSET1 = (uint32)1U << (peripheral_Memory_Frame_CS & 0xFU);
    }
	else
    {
        ((pcrBASE_t *)0xFFFFE000U)->PMPROTSET0 = (uint32)1U << peripheral_Memory_Frame_CS;
    }
	
 
 
}

 
 






 
 
 
 
void peripheral_Mem_Frame_Prot_Clr(peripheral_MemoryFrame_CS_t peripheral_Memory_Frame_CS)
{

 
 

	uint32 chip_select_grp;

	chip_select_grp = (peripheral_Memory_Frame_CS >> 5U);

	if (chip_select_grp >= 1U)
    {
        ((pcrBASE_t *)0xFFFFE000U)->PMPROTCLR1 = (uint32)1U << (peripheral_Memory_Frame_CS & 0xFU);
    }
	else
    {
        ((pcrBASE_t *)0xFFFFE000U)->PMPROTCLR0 = (uint32)1U << peripheral_Memory_Frame_CS;
    }

 
 
}

 
 






 
 
 
 
void peripheral_Mem_Frame_Pwrdwn_Set(peripheral_MemoryFrame_CS_t peripheral_Memory_Frame_CS)
{

 
 

	uint32 chip_select_grp;

	chip_select_grp = (peripheral_Memory_Frame_CS >> 5U);

	if (chip_select_grp >= 1U)
    {
        ((pcrBASE_t *)0xFFFFE000U)->PCSPWRDWNSET0 = (uint32)1U << (peripheral_Memory_Frame_CS & 0xFU);
    }
	else
    {
        ((pcrBASE_t *)0xFFFFE000U)->PCSPWRDWNSET1 = (uint32)1U << peripheral_Memory_Frame_CS;
    }
	
 
 
}

 
 






 
 
 
 
void peripheral_Mem_Frame_Pwrdwn_Clr (peripheral_MemoryFrame_CS_t peripheral_Memory_Frame_CS)
{

 
 

	uint32 chip_select_grp;

	chip_select_grp = (peripheral_Memory_Frame_CS >> 5U);

	if (chip_select_grp >= 1U)
    {
        ((pcrBASE_t *)0xFFFFE000U)->PCSPWRDWNCLR0 = (uint32)1U << (peripheral_Memory_Frame_CS & 0xFU);
    }
	else
    {
        ((pcrBASE_t *)0xFFFFE000U)->PCSPWRDWNCLR1 = (uint32)1U << peripheral_Memory_Frame_CS;
    }
	
 
 
}

 
 






 
 
 
 
void peripheral_Protection_Set(peripheral_Quad_ChipSelect_t peripheral_Quad_CS)
{

 
 

    ((pcrBASE_t *)0xFFFFE000U)->PPROTSET0 = peripheral_Quad_CS.Peripheral_Quad0_3_CS0_7;
    ((pcrBASE_t *)0xFFFFE000U)->PPROTSET1 = peripheral_Quad_CS.Peripheral_Quad4_7_CS8_15;
    ((pcrBASE_t *)0xFFFFE000U)->PPROTSET2 = peripheral_Quad_CS.Peripheral_Quad8_11_CS16_23;
    ((pcrBASE_t *)0xFFFFE000U)->PPROTSET3 = peripheral_Quad_CS.Peripheral_Quad12_15_CS24_31;
	
 
 
}

 
 






 
 
 
 
void peripheral_Protection_Clr(peripheral_Quad_ChipSelect_t peripheral_Quad_CS)
{

 
 

    ((pcrBASE_t *)0xFFFFE000U)->PPROTCLR0 = peripheral_Quad_CS.Peripheral_Quad0_3_CS0_7;
    ((pcrBASE_t *)0xFFFFE000U)->PPROTCLR1 = peripheral_Quad_CS.Peripheral_Quad4_7_CS8_15;
    ((pcrBASE_t *)0xFFFFE000U)->PPROTCLR2 = peripheral_Quad_CS.Peripheral_Quad8_11_CS16_23;
    ((pcrBASE_t *)0xFFFFE000U)->PPROTCLR3 = peripheral_Quad_CS.Peripheral_Quad12_15_CS24_31;

 
 
}

 
 






 
 
 
 
void peripheral_Powerdown_Set(peripheral_Quad_ChipSelect_t peripheral_Quad_CS)
{

 
 

    ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNSET0 = peripheral_Quad_CS.Peripheral_Quad0_3_CS0_7;
    ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNSET1 = peripheral_Quad_CS.Peripheral_Quad4_7_CS8_15;
    ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNSET2 = peripheral_Quad_CS.Peripheral_Quad8_11_CS16_23;
    ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNSET3 = peripheral_Quad_CS.Peripheral_Quad12_15_CS24_31;

 
 
}

 
 






 
 
 
 
void peripheral_Powerdown_Clr(peripheral_Quad_ChipSelect_t peripheral_Quad_CS)
{

 
 

    ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNCLR0 = peripheral_Quad_CS.Peripheral_Quad0_3_CS0_7;
    ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNCLR1 = peripheral_Quad_CS.Peripheral_Quad4_7_CS8_15;
    ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNCLR2 = peripheral_Quad_CS.Peripheral_Quad8_11_CS16_23;
    ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNCLR3 = peripheral_Quad_CS.Peripheral_Quad12_15_CS24_31;

 
 
}

 
 






 
 
 
 
void peripheral_Memory_Protection_Set(peripheral_Memory_ChipSelect_t peripheral_Memory_CS)
{

 
 

    ((pcrBASE_t *)0xFFFFE000U)->PMPROTSET0 = peripheral_Memory_CS.Peripheral_Mem_CS0_31;
    ((pcrBASE_t *)0xFFFFE000U)->PMPROTSET1 = peripheral_Memory_CS.Peripheral_Mem_CS32_63;

 
 
}

 
 






 
 
 
 
void peripheral_Memory_Protection_Clr(peripheral_Memory_ChipSelect_t peripheral_Memory_CS)
{

 
 

    ((pcrBASE_t *)0xFFFFE000U)->PMPROTCLR0 = peripheral_Memory_CS.Peripheral_Mem_CS0_31;
    ((pcrBASE_t *)0xFFFFE000U)->PMPROTCLR1 = peripheral_Memory_CS.Peripheral_Mem_CS32_63;

 
 
}

 
 






 
 
 
 
void peripheral_Memory_Powerdown_Set(peripheral_Memory_ChipSelect_t peripheral_Memory_CS)
{

 
 

    ((pcrBASE_t *)0xFFFFE000U)->PCSPWRDWNSET0 = peripheral_Memory_CS.Peripheral_Mem_CS0_31;
    ((pcrBASE_t *)0xFFFFE000U)->PCSPWRDWNSET1 = peripheral_Memory_CS.Peripheral_Mem_CS32_63;
	
 
 
}

 
 






 
 
 
 
void peripheral_Memory_Powerdown_Clr(peripheral_Memory_ChipSelect_t peripheral_Memory_CS)
{

 
 

    ((pcrBASE_t *)0xFFFFE000U)->PCSPWRDWNSET0 = peripheral_Memory_CS.Peripheral_Mem_CS0_31;
    ((pcrBASE_t *)0xFFFFE000U)->PCSPWRDWNCLR0 = peripheral_Memory_CS.Peripheral_Mem_CS32_63;

 
 
}

 
 






 
 
 
 
void peripheral_Powerdown_Status(peripheral_Quad_ChipSelect_t* peripheral_Quad_CS)
{

 
 

    peripheral_Quad_CS->Peripheral_Quad0_3_CS0_7      = ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNSET0;
    peripheral_Quad_CS->Peripheral_Quad4_7_CS8_15     = ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNSET1; 
    peripheral_Quad_CS->Peripheral_Quad8_11_CS16_23   = ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNSET2; 
    peripheral_Quad_CS->Peripheral_Quad12_15_CS24_31  = ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNSET3; 

 
 

}

 
 






 
 
 
 
void peripheral_Protection_Status(peripheral_Quad_ChipSelect_t* peripheral_Quad_CS)
{

 
 

    peripheral_Quad_CS->Peripheral_Quad0_3_CS0_7     = ((pcrBASE_t *)0xFFFFE000U)->PPROTSET0; 
    peripheral_Quad_CS->Peripheral_Quad4_7_CS8_15    = ((pcrBASE_t *)0xFFFFE000U)->PPROTSET1; 
    peripheral_Quad_CS->Peripheral_Quad8_11_CS16_23  = ((pcrBASE_t *)0xFFFFE000U)->PPROTSET2; 
    peripheral_Quad_CS->Peripheral_Quad12_15_CS24_31 = ((pcrBASE_t *)0xFFFFE000U)->PPROTSET3;

 
 

}

 
 






 
 
 
 
void peripheral_Memory_Protection_Status(peripheral_Memory_ChipSelect_t* peripheral_Memory_CS)
{

 
 

	 
    peripheral_Memory_CS->Peripheral_Mem_CS0_31 = ((pcrBASE_t *)0xFFFFE000U)->PMPROTSET0;
    peripheral_Memory_CS->Peripheral_Mem_CS32_63 = ((pcrBASE_t *)0xFFFFE000U)->PMPROTSET1;

 
 

}

 
 






 
 
 
 
void peripheral_Memory_Powerdown_Status(peripheral_Memory_ChipSelect_t* peripheral_Memory_CS)
{

 
 

    peripheral_Memory_CS->Peripheral_Mem_CS0_31 = ((pcrBASE_t *)0xFFFFE000U)->PCSPWRDWNSET0;
    peripheral_Memory_CS->Peripheral_Mem_CS32_63 = ((pcrBASE_t *)0xFFFFE000U)->PCSPWRDWNSET1;

 
 

}

 
 















 
 
 
 
void pcrGetConfigValue(pcr_config_reg_t *config_reg, config_value_type_t type)
{
	if (type == InitialValue)
	{ 
	}
	else
	{
	 
        config_reg->CONFIG_PMPROTSET0    = ((pcrBASE_t *)0xFFFFE000U)->PMPROTSET0;
        config_reg->CONFIG_PMPROTSET1    = ((pcrBASE_t *)0xFFFFE000U)->PMPROTSET1;
        config_reg->CONFIG_PPROTSET0     = ((pcrBASE_t *)0xFFFFE000U)->PPROTSET0;
        config_reg->CONFIG_PPROTSET1     = ((pcrBASE_t *)0xFFFFE000U)->PPROTSET1;
        config_reg->CONFIG_PPROTSET2     = ((pcrBASE_t *)0xFFFFE000U)->PPROTSET2;
        config_reg->CONFIG_PPROTSET3     = ((pcrBASE_t *)0xFFFFE000U)->PPROTSET3;
        config_reg->CONFIG_PCSPWRDWNSET0 = ((pcrBASE_t *)0xFFFFE000U)->PCSPWRDWNSET0;
        config_reg->CONFIG_PCSPWRDWNSET1 = ((pcrBASE_t *)0xFFFFE000U)->PCSPWRDWNSET1;
        config_reg->CONFIG_PSPWRDWNSET0  = ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNSET0;
        config_reg->CONFIG_PSPWRDWNSET1  = ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNSET1;
        config_reg->CONFIG_PSPWRDWNSET2  = ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNSET2;
        config_reg->CONFIG_PSPWRDWNSET3  = ((pcrBASE_t *)0xFFFFE000U)->PSPWRDWNSET3;
	}
}

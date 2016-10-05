


































































 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



#pragma diag_push
#pragma CHECK_MISRA("-6.3")  
#pragma CHECK_MISRA("-8.5")  
#pragma CHECK_MISRA("-19.1")  
#pragma CHECK_MISRA("-19.7")  
#pragma CHECK_MISRA("-20.1")  
#pragma CHECK_MISRA("-20.2")  

 
 
 

 
 
 
 

 
 
 


#pragma diag_push
#pragma CHECK_MISRA("-5.7")  

typedef struct { int quot, rem; } div_t;

typedef struct { int quot, rem; } ldiv_t;

typedef struct { long long quot, rem; } lldiv_t;

#pragma diag_pop



typedef unsigned size_t;

typedef unsigned short wchar_t;



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


#pragma diag_push
#pragma CHECK_MISRA("-19.4")  

 


 
 
 

#pragma diag_pop


 
 
 
 
 
 
 
#pragma diag_push
#pragma CHECK_MISRA("-16.4")  
      int       abs(int _val); 
      long      labs(long _val);
      long long llabs(long long _val);
#pragma diag_pop

     int       atoi(const char *_st);
     long      atol(const char *_st);
     long long atoll(const char *_st);
     int       ltoa(long val, char *buffer);
          extern  double    atof(const char *_st);

     long      strtol(const char *_st, char **_endptr, int _base);
     unsigned long strtoul(const char *_st, char **_endptr,
    					  int _base);
     long long strtoll(const char *_st, char **_endptr, int _base);
     unsigned long long strtoull(const char *_st, char **_endptr,
					     int _base);
     float     strtof(const char * _st, 
                                  char ** _endptr);
     double    strtod(const char * _st, 
                                  char ** _endptr);
     long double strtold(const char * _st, 
                                     char ** _endptr);
    
     int    rand(void);
     void   srand(unsigned _seed);
    
     void  *calloc(size_t _num, size_t _size)
               __attribute__((malloc));
     void  *malloc(size_t _size)
               __attribute__((malloc));
     void  *realloc(void *_ptr, size_t _size)
               __attribute__((malloc));
     void   free(void *_ptr);
     void  *memalign(size_t _aln, size_t _size)
               __attribute__((malloc));
    
     void   abort(void); 

    typedef void (*__TI_atexit_fn)(void);
     int    atexit(__TI_atexit_fn _func);

    typedef int (*__TI_compar_fn)(const void *_a,const void *_b);
     void  *bsearch(const void *_key, const void *_base,
                                size_t _nmemb, size_t _size, 
                                __TI_compar_fn compar);
     void   qsort(void *_base, size_t _nmemb, size_t _size, 
                              __TI_compar_fn compar);

     void   exit(int _status);
    
     div_t  div(int _numer, int _denom);
     ldiv_t ldiv(long _numer, long _denom);
     lldiv_t lldiv(long long _numer, long long _denom);

     char  *getenv(const char *_string);
     int    system(const char *_name);

     int    mblen(const char *_s, size_t _n);
     size_t mbstowcs(wchar_t *_dest, const char *_src, size_t _n);
     int    mbtowc(wchar_t *_dest, const char *_src, size_t _n);

     size_t wcstombs(char *_dest, const wchar_t *_src, size_t _n);
     int    wctomb(char *_s, wchar_t _wc);





#pragma diag_pop


#pragma diag_push


 
 
#pragma CHECK_MISRA("-19.15")


#pragma diag_pop

#pragma diag_push

 
#pragma CHECK_MISRA("-19.1")
#pragma CHECK_MISRA("-19.15")


#pragma diag_pop



































































 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


#pragma diag_push
#pragma CHECK_MISRA("-19.7")  
#pragma CHECK_MISRA("-20.1")  
#pragma CHECK_MISRA("-20.2")  



typedef int ptrdiff_t;



#pragma diag_push
#pragma CHECK_MISRA("-19.10")  



#pragma diag_pop



#pragma diag_push
#pragma CHECK_MISRA("-19.15")  

 
 
 
 
 
 
 

#pragma diag_pop













 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

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





 

 
















 







 







 




 





 








































































 













 



 

 

 

 

 


 


 



































































 





 
typedef void (*TaskFunction_t)( void * );

 



 

 






 



































































 



 


 



































































 










 

 

typedef uint32_t StackType_t;
typedef long BaseType_t;
typedef unsigned long UBaseType_t;

    typedef uint32_t TickType_t;

	
 


 

 
#pragma SWI_ALIAS(vPortEnterCritical, 2)
extern void vPortEnterCritical( void );

#pragma SWI_ALIAS(vPortExitCritical, 3)
extern void vPortExitCritical( void );

#pragma SWI_ALIAS(vPortDisableInterrupts, 5)
extern void vPortDisableInterrupts( void );


#pragma SWI_ALIAS(vPortEnableInterrupts, 6)
extern void vPortEnableInterrupts( void );


 
#pragma SWI_ALIAS(vPortYield, 0)
extern void vPortYield( void );




 
#pragma SWI_ALIAS(vPortTaskUsesFPU, 4)
extern void vPortTaskUsesFPU(void);

 

	 
	unsigned long ulPortCountLeadingZeros( unsigned long ulBitmap );

	 

	 

	 




 


 







 

 

 



typedef struct MPU_REGION_REGISTERS
{
	unsigned ulRegionBaseAddress;
	unsigned ulRegionSize;
	unsigned ulRegionAttribute;
} xMPU_REGION_REGISTERS;


 
typedef struct MPU_SETTINGS
{
	xMPU_REGION_REGISTERS xRegion[ ( ( ( ( ( 12UL ) - 2 ) - ( 6UL - 1UL ) ) + 1 ) + 1 ) ];
} xMPU_SETTINGS;







 











































































 



 

	

 





		 











 
	StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters, BaseType_t xRunPrivileged ) ;

 
typedef struct HeapRegion
{
	uint8_t *pucStartAddress;
	size_t xSizeInBytes;
} HeapRegion_t;











 
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions );




 
void *MPU_pvPortMalloc( size_t xSize ) ;
void MPU_vPortFree( void *pv ) ;
void MPU_vPortInitialiseBlocks( void ) ;
size_t MPU_xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;




 
BaseType_t xPortStartScheduler( void ) ;





 
void vPortEndScheduler( void ) ;







 
	struct xMEMORY_REGION;
	void vPortStoreTaskMPUSettings( xMPU_SETTINGS *xMPUSettings, const struct xMEMORY_REGION * const xRegions, StackType_t *pxBottomOfStack, uint16_t usStackDepth ) ;








 





































 












 
	
 

	
 

	
 

	
 

	 

	 

	
 

	



 

	


 

	


 

	


 


 



















































































	
 


 


	
 






































































 



























 






























 






 
	 




 
struct xLIST_ITEM
{
					 
	 TickType_t xItemValue;			 
	struct xLIST_ITEM *  pxNext;		 
	struct xLIST_ITEM *  pxPrevious;	 
	void * pvOwner;										 
	void *  pvContainer;				 
					 
};
typedef struct xLIST_ITEM ListItem_t;					 

struct xMINI_LIST_ITEM
{
					 
	 TickType_t xItemValue;
	struct xLIST_ITEM *  pxNext;
	struct xLIST_ITEM *  pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;



 
typedef struct xLIST
{
					 
	 UBaseType_t uxNumberOfItems;
	ListItem_t *  pxIndex;		 
	MiniListItem_t xListEnd;						 
					 
} List_t;







 







 







 








 







 






 






 






 







 



 




















 

















 









 






 





 










 
void vListInitialise( List_t * const pxList );









 
void vListInitialiseItem( ListItem_t * const pxItem );











 
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem );



















 
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem );













 
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove );






 

void vListInitialise( List_t * const pxList )
{
	

 
	pxList->pxIndex = ( ListItem_t * ) &( pxList->xListEnd );			 

	
 
	pxList->xListEnd.xItemValue = (TickType_t) 0xFFFFFFFFF;

	
 
	pxList->xListEnd.pxNext = ( ListItem_t * ) &( pxList->xListEnd );	 
	pxList->xListEnd.pxPrevious = ( ListItem_t * ) &( pxList->xListEnd ); 

	pxList->uxNumberOfItems = ( UBaseType_t ) 0U;

	
 
	;
	;
}
 

void vListInitialiseItem( ListItem_t * const pxItem )
{
	 
	pxItem->pvContainer = 0;

	
 
	;
	;
}
 

void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem )
{
ListItem_t * const pxIndex = pxList->pxIndex;

	

 
	;
	;

	

 
	pxNewListItem->pxNext = pxIndex;
	pxNewListItem->pxPrevious = pxIndex->pxPrevious;
	pxIndex->pxPrevious->pxNext = pxNewListItem;
	pxIndex->pxPrevious = pxNewListItem;

	 
	pxNewListItem->pvContainer = ( void * ) pxList;

	( pxList->uxNumberOfItems )++;
}
 

void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem )
{
ListItem_t *pxIterator;
const TickType_t xValueOfInsertion = pxNewListItem->xItemValue;

	

 
	;
	;

	






 
	if( xValueOfInsertion == (TickType_t) 0xFFFFFFFFF )
	{
		pxIterator = pxList->xListEnd.pxPrevious;
	}
	else
	{
		



















 

		for( pxIterator = ( ListItem_t * ) &( pxList->xListEnd ); pxIterator->pxNext->xItemValue <= xValueOfInsertion; pxIterator = pxIterator->pxNext )  
		{
			
 
		}
	}

	pxNewListItem->pxNext = pxIterator->pxNext;
	pxNewListItem->pxNext->pxPrevious = pxNewListItem;
	pxNewListItem->pxPrevious = pxIterator;
	pxIterator->pxNext = pxNewListItem;

	
 
	pxNewListItem->pvContainer = ( void * ) pxList;

	( pxList->uxNumberOfItems )++;
}
 

UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove )
{

 
List_t * const pxList = ( List_t * ) pxItemToRemove->pvContainer;

	pxItemToRemove->pxNext->pxPrevious = pxItemToRemove->pxPrevious;
	pxItemToRemove->pxPrevious->pxNext = pxItemToRemove->pxNext;

	 
	if( pxList->pxIndex == pxItemToRemove )
	{
		pxList->pxIndex = pxItemToRemove->pxPrevious;
	}
	else
	{
		;
	}

	pxItemToRemove->pvContainer = 0;
	( pxList->uxNumberOfItems )--;

	return pxList->uxNumberOfItems;
}
 


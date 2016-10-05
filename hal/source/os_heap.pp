






























































 








 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



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







 











































































 



 

	

 

         











 
	StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters, BaseType_t xRunPrivileged ) __attribute__ ((section(".kernelTEXT")));

 
typedef struct HeapRegion
{
	uint8_t *pucStartAddress;
	size_t xSizeInBytes;
} HeapRegion_t;











 
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions );




 
void *pvPortMalloc( size_t xSize ) __attribute__ ((section(".kernelTEXT")));
void vPortFree( void *pv ) __attribute__ ((section(".kernelTEXT")));
void vPortInitialiseBlocks( void ) __attribute__ ((section(".kernelTEXT")));
size_t xPortGetFreeHeapSize( void ) __attribute__ ((section(".kernelTEXT")));
size_t xPortGetMinimumEverFreeHeapSize( void ) __attribute__ ((section(".kernelTEXT")));




 
BaseType_t xPortStartScheduler( void ) __attribute__ ((section(".kernelTEXT")));





 
void vPortEndScheduler( void ) __attribute__ ((section(".kernelTEXT")));







 
	struct xMEMORY_REGION;
	void vPortStoreTaskMPUSettings( xMPU_SETTINGS *xMPUSettings, const struct xMEMORY_REGION * const xRegions, StackType_t *pxBottomOfStack, uint16_t usStackDepth ) __attribute__ ((section(".kernelTEXT")));








 





































 












 
	
 

	
 

	
 

	
 

	 

	 

	
 

	



 

	


 

	


 

	


 


 



















































































	
 


 


	
 






































































 







































































 



























 






























 






 
	 




 
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







 











 
typedef void * TaskHandle_t;




 
typedef BaseType_t (*TaskHookFunction_t)( void * );

 
typedef enum
{
	eRunning = 0,	 
	eReady,			 
	eBlocked,		 
	eSuspended,		 
	eDeleted		 
} eTaskState;

 
typedef enum
{
	eNoAction = 0,				 
	eSetBits,					 
	eIncrement,					 
	eSetValueWithOverwrite,		 
	eSetValueWithoutOverwrite	 
} eNotifyAction;



 
typedef struct xTIME_OUT
{
	BaseType_t xOverflowCount;
	TickType_t xTimeOnEntering;
} TimeOut_t;



 
typedef struct xMEMORY_REGION
{
	void *pvBaseAddress;
	uint32_t ulLengthInBytes;
	uint32_t ulParameters;
} MemoryRegion_t;



 
typedef struct xTASK_PARAMETERS
{
	TaskFunction_t pvTaskCode;
	const char * const pcName;	 
	uint16_t usStackDepth;
	void *pvParameters;
	UBaseType_t uxPriority;
	StackType_t *puxStackBuffer;
	MemoryRegion_t xRegions[ ( ( ( ( 12UL ) - 2 ) - ( 6UL - 1UL ) ) + 1 ) ];
} TaskParameters_t;


 
typedef struct xTASK_STATUS
{
	TaskHandle_t xHandle;			 
	const char *pcTaskName;			   
	UBaseType_t xTaskNumber;		 
	eTaskState eCurrentState;		 
	UBaseType_t uxCurrentPriority;	 
	UBaseType_t uxBasePriority;		 
	uint32_t ulRunTimeCounter;		 
	uint16_t usStackHighWaterMark;	 
} TaskStatus_t;

 
typedef enum
{
	eAbortSleep = 0,		 
	eStandardSleep,			 
	eNoTasksWaitingTimeout	 
} eSleepModeStatus;






 








 












 












 








 








 



 




 
















































































 



































































 














































 
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) __attribute__ ((section(".kernelTEXT")));







































 
void vTaskDelete( TaskHandle_t xTaskToDelete ) __attribute__ ((section(".kernelTEXT")));



 














































 
void vTaskDelay( const TickType_t xTicksToDelay ) __attribute__ ((section(".kernelTEXT")));

























































 
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) __attribute__ ((section(".kernelTEXT")));













































 
UBaseType_t uxTaskPriorityGet( TaskHandle_t xTask ) __attribute__ ((section(".kernelTEXT")));






 
UBaseType_t uxTaskPriorityGetFromISR( TaskHandle_t xTask ) __attribute__ ((section(".kernelTEXT")));
















 
eTaskState eTaskGetState( TaskHandle_t xTask ) __attribute__ ((section(".kernelTEXT")));








































 
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) __attribute__ ((section(".kernelTEXT")));

















































 
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) __attribute__ ((section(".kernelTEXT")));















































 
void vTaskResume( TaskHandle_t xTaskToResume ) __attribute__ ((section(".kernelTEXT")));



























 
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) __attribute__ ((section(".kernelTEXT")));



 



























 
void vTaskStartScheduler( void ) __attribute__ ((section(".kernelTEXT")));






















































 
void vTaskEndScheduler( void ) __attribute__ ((section(".kernelTEXT")));

















































 
void vTaskSuspendAll( void ) __attribute__ ((section(".kernelTEXT")));




















































 
BaseType_t xTaskResumeAll( void ) __attribute__ ((section(".kernelTEXT")));



 









 
TickType_t xTaskGetTickCount( void ) __attribute__ ((section(".kernelTEXT")));














 
TickType_t xTaskGetTickCountFromISR( void ) __attribute__ ((section(".kernelTEXT")));












 
UBaseType_t uxTaskGetNumberOfTasks( void ) __attribute__ ((section(".kernelTEXT")));












 
char *pcTaskGetTaskName( TaskHandle_t xTaskToQuery ) __attribute__ ((section(".kernelTEXT")));  



















 
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) __attribute__ ((section(".kernelTEXT")));






 











 
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) __attribute__ ((section(".kernelTEXT")));







 
TaskHandle_t xTaskGetIdleTaskHandle( void );

































































































 
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime );













































 
void vTaskList( char * pcWriteBuffer ) __attribute__ ((section(".kernelTEXT")));  




















































 
void vTaskGetRunTimeStats( char *pcWriteBuffer ) __attribute__ ((section(".kernelTEXT")));  











































































 
BaseType_t xTaskNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction );























































































 
BaseType_t xTaskNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, BaseType_t *pxHigherPriorityTaskWoken );









































































 
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait );












































 





















































 
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken );



































































 
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait );



 















 
BaseType_t xTaskIncrementTick( void ) __attribute__ ((section(".kernelTEXT")));































 
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) __attribute__ ((section(".kernelTEXT")));
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) __attribute__ ((section(".kernelTEXT")));











 
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, const TickType_t xTicksToWait ) __attribute__ ((section(".kernelTEXT")));
























 
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) __attribute__ ((section(".kernelTEXT")));
BaseType_t xTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) __attribute__ ((section(".kernelTEXT")));








 
void vTaskSwitchContext( void ) __attribute__ ((section(".kernelTEXT")));




 
TickType_t uxTaskResetEventItemValue( void ) __attribute__ ((section(".kernelTEXT")));



 
TaskHandle_t xTaskGetCurrentTaskHandle( void ) __attribute__ ((section(".kernelTEXT")));



 
void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) __attribute__ ((section(".kernelTEXT")));




 
BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) __attribute__ ((section(".kernelTEXT")));




 
void vTaskMissedYield( void ) __attribute__ ((section(".kernelTEXT")));




 
BaseType_t xTaskGetSchedulerState( void ) __attribute__ ((section(".kernelTEXT")));




 
void vTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) __attribute__ ((section(".kernelTEXT")));




 
BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) __attribute__ ((section(".kernelTEXT")));




 
BaseType_t xTaskGenericCreate( TaskFunction_t pxTaskCode, const char * const pcName, const uint16_t usStackDepth, void * const pvParameters, UBaseType_t uxPriority, TaskHandle_t * const pxCreatedTask, StackType_t * const puxStackBuffer, const MemoryRegion_t * const xRegions ) __attribute__ ((section(".kernelTEXT")));  



 
UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) __attribute__ ((section(".kernelTEXT")));




 
void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) __attribute__ ((section(".kernelTEXT")));








 
void vTaskStepTick( const TickType_t xTicksToJump ) __attribute__ ((section(".kernelTEXT")));














 
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) __attribute__ ((section(".kernelTEXT")));




 
void *pvTaskIncrementMutexHeldCount( void );






 

 

#pragma DATA_SECTION(ucHeap, ".kernelHEAP")


 
static uint8_t ucHeap[ ( ( size_t ) 8192 ) ];


 
typedef struct A_BLOCK_LINK
{
	struct A_BLOCK_LINK *pxNextFreeBlock;	 
	size_t xBlockSize;						 
} BlockLink_t;

 






 
static void prvInsertBlockIntoFreeList( BlockLink_t *pxBlockToInsert );




 
static void prvHeapInit( void );

 



 
static const size_t xHeapStructSize	= ( ( sizeof( BlockLink_t ) + ( 8 - 1 ) ) & ~( 0x0007U ) );

 
static BlockLink_t xStart, *pxEnd = 0;


 
static size_t xFreeBytesRemaining = 0U;
static size_t xMinimumEverFreeBytesRemaining = 0U;




 
static size_t xBlockAllocatedBit = 0;

 


void *pvPortMalloc( size_t xWantedSize )
{
BlockLink_t *pxBlock, *pxPreviousBlock, *pxNewBlockLink;
void *pvReturn = 0;

	vTaskSuspendAll();
	{
		
 
		if( pxEnd == 0 )
		{
			prvHeapInit();
		}
		else
		{
			;
		}

		


 
		if( ( xWantedSize & xBlockAllocatedBit ) == 0 )
		{
			
 
			if( xWantedSize > 0 )
			{
				xWantedSize += xHeapStructSize;

				
 
				if( ( xWantedSize & ( 0x0007U ) ) != 0x00 )
				{
					 
					xWantedSize += ( 8 - ( xWantedSize & ( 0x0007U ) ) );
					if( ( ( xWantedSize & ( 0x0007U ) ) == 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
				}
				else
				{
					;
				}
			}
			else
			{
				;
			}

			if( ( xWantedSize > 0 ) && ( xWantedSize <= xFreeBytesRemaining ) )
			{
				
 
				pxPreviousBlock = &xStart;
				pxBlock = xStart.pxNextFreeBlock;
				while( ( pxBlock->xBlockSize < xWantedSize ) && ( pxBlock->pxNextFreeBlock != 0 ) )
				{
					pxPreviousBlock = pxBlock;
					pxBlock = pxBlock->pxNextFreeBlock;
				}

				
 
				if( pxBlock != pxEnd )
				{
					
 
					pvReturn = ( void * ) ( ( ( uint8_t * ) pxPreviousBlock->pxNextFreeBlock ) + xHeapStructSize );

					
 
					pxPreviousBlock->pxNextFreeBlock = pxBlock->pxNextFreeBlock;

					
 
					if( ( pxBlock->xBlockSize - xWantedSize ) > ( ( size_t ) ( xHeapStructSize * 2 ) ) )
					{
						


 
						pxNewBlockLink = ( void * ) ( ( ( uint8_t * ) pxBlock ) + xWantedSize );
						if( ( ( ( ( uint32_t ) pxNewBlockLink ) & ( 0x0007U ) ) == 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

						
 
						pxNewBlockLink->xBlockSize = pxBlock->xBlockSize - xWantedSize;
						pxBlock->xBlockSize = xWantedSize;

						 
						prvInsertBlockIntoFreeList( ( pxNewBlockLink ) );
					}
					else
					{
						;
					}

					xFreeBytesRemaining -= pxBlock->xBlockSize;

					if( xFreeBytesRemaining < xMinimumEverFreeBytesRemaining )
					{
						xMinimumEverFreeBytesRemaining = xFreeBytesRemaining;
					}
					else
					{
						;
					}

					
 
					pxBlock->xBlockSize |= xBlockAllocatedBit;
					pxBlock->pxNextFreeBlock = 0;
				}
				else
				{
					;
				}
			}
			else
			{
				;
			}
		}
		else
		{
			;
		}

		;
	}
	( void ) xTaskResumeAll();


	if( ( ( ( ( uint32_t ) pvReturn ) & ( 0x0007U ) ) == 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	return pvReturn;
}
 

void vPortFree( void *pv )
{
uint8_t *puc = ( uint8_t * ) pv;
BlockLink_t *pxLink;

	if( pv != 0 )
	{
		
 
		puc -= xHeapStructSize;

		 
		pxLink = ( void * ) puc;

		 
		if( ( ( pxLink->xBlockSize & xBlockAllocatedBit ) != 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
		if( ( pxLink->pxNextFreeBlock == 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

		if( ( pxLink->xBlockSize & xBlockAllocatedBit ) != 0 )
		{
			if( pxLink->pxNextFreeBlock == 0 )
			{
				
 
				pxLink->xBlockSize &= ~xBlockAllocatedBit;

				vTaskSuspendAll();
				{
					 
					xFreeBytesRemaining += pxLink->xBlockSize;
					;
					prvInsertBlockIntoFreeList( ( ( BlockLink_t * ) pxLink ) );
				}
				( void ) xTaskResumeAll();
			}
			else
			{
				;
			}
		}
		else
		{
			;
		}
	}
}
 

size_t xPortGetFreeHeapSize( void )
{
	return xFreeBytesRemaining;
}
 

size_t xPortGetMinimumEverFreeHeapSize( void )
{
	return xMinimumEverFreeBytesRemaining;
}
 

void vPortInitialiseBlocks( void )
{
	 
}
 

static void prvHeapInit( void )
{
BlockLink_t *pxFirstFreeBlock;
uint8_t *pucAlignedHeap;
uint32_t ulAddress;
size_t xTotalHeapSize = ( ( size_t ) 8192 );

	 
	ulAddress = ( uint32_t ) ucHeap;

	if( ( ulAddress & ( 0x0007U ) ) != 0 )
	{
		ulAddress += ( 8 - 1 );
		ulAddress &= ~( 0x0007U );
		xTotalHeapSize -= ulAddress - ( uint32_t ) ucHeap;
	}

	pucAlignedHeap = ( uint8_t * ) ulAddress;

	
 
	xStart.pxNextFreeBlock = ( void * ) pucAlignedHeap;
	xStart.xBlockSize = ( size_t ) 0;

	
 
	ulAddress = ( ( uint32_t ) pucAlignedHeap ) + xTotalHeapSize;
	ulAddress -= xHeapStructSize;
	ulAddress &= ~( 0x0007U );
	pxEnd = ( void * ) ulAddress;
	pxEnd->xBlockSize = 0;
	pxEnd->pxNextFreeBlock = 0;

	
 
	pxFirstFreeBlock = ( void * ) pucAlignedHeap;
	pxFirstFreeBlock->xBlockSize = ulAddress - ( uint32_t ) pxFirstFreeBlock;
	pxFirstFreeBlock->pxNextFreeBlock = pxEnd;

	 
	xMinimumEverFreeBytesRemaining = pxFirstFreeBlock->xBlockSize;
	xFreeBytesRemaining = pxFirstFreeBlock->xBlockSize;

	 
	xBlockAllocatedBit = ( ( size_t ) 1 ) << ( ( sizeof( size_t ) * ( ( size_t ) 8 ) ) - 1 );
}
 

static void prvInsertBlockIntoFreeList( BlockLink_t *pxBlockToInsert )
{
BlockLink_t *pxIterator;
uint8_t *puc;

	
 
	for( pxIterator = &xStart; pxIterator->pxNextFreeBlock < pxBlockToInsert; pxIterator = pxIterator->pxNextFreeBlock )
	{
		 
	}

	
 
	puc = ( uint8_t * ) pxIterator;
	if( ( puc + pxIterator->xBlockSize ) == ( uint8_t * ) pxBlockToInsert )
	{
		pxIterator->xBlockSize += pxBlockToInsert->xBlockSize;
		pxBlockToInsert = pxIterator;
	}
	else
	{
		;
	}

	
 
	puc = ( uint8_t * ) pxBlockToInsert;
	if( ( puc + pxBlockToInsert->xBlockSize ) == ( uint8_t * ) pxIterator->pxNextFreeBlock )
	{
		if( pxIterator->pxNextFreeBlock != pxEnd )
		{
			 
			pxBlockToInsert->xBlockSize += pxIterator->pxNextFreeBlock->xBlockSize;
			pxBlockToInsert->pxNextFreeBlock = pxIterator->pxNextFreeBlock->pxNextFreeBlock;
		}
		else
		{
			pxBlockToInsert->pxNextFreeBlock = pxEnd;
		}
	}
	else
	{
		pxBlockToInsert->pxNextFreeBlock = pxIterator->pxNextFreeBlock;
	}

	


 
	if( pxIterator != pxBlockToInsert )
	{
		pxIterator->pxNextFreeBlock = pxBlockToInsert;
	}
	else
	{
		;
	}
}


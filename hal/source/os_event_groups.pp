


































































 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



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







































































 





 



































































 



























 



 




 





 








 
typedef void * TimerHandle_t;



 
typedef void (*TimerCallbackFunction_t)( TimerHandle_t xTimer );




 
typedef void (*PendedFunction_t)( void *, uint32_t );

































































































































 
TimerHandle_t xTimerCreate( const char * const pcTimerName, const TickType_t xTimerPeriodInTicks, const UBaseType_t uxAutoReload, void * const pvTimerID, TimerCallbackFunction_t pxCallbackFunction ) __attribute__ ((section(".kernelTEXT")));  




















 
void *pvTimerGetTimerID( TimerHandle_t xTimer ) __attribute__ ((section(".kernelTEXT")));



































 
BaseType_t xTimerIsTimerActive( TimerHandle_t xTimer ) __attribute__ ((section(".kernelTEXT")));









 
TaskHandle_t xTimerGetTimerDaemonTaskHandle( void );


















































 








































 














































































 




































 


























































































































 




















































































 





























































 







































































 




















































































 

























































































 
BaseType_t xTimerPendFunctionCallFromISR( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, BaseType_t *pxHigherPriorityTaskWoken );

 






























 
BaseType_t xTimerPendFunctionCall( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, TickType_t xTicksToWait );









 
const char * pcTimerGetTimerName( TimerHandle_t xTimer );  




 
BaseType_t xTimerCreateTimerTask( void ) __attribute__ ((section(".kernelTEXT")));
BaseType_t xTimerGenericCommand( TimerHandle_t xTimer, const BaseType_t xCommandID, const TickType_t xOptionalValue, BaseType_t * const pxHigherPriorityTaskWoken, const TickType_t xTicksToWait ) __attribute__ ((section(".kernelTEXT")));







































































 






























 












 
typedef void * EventGroupHandle_t;








 
typedef TickType_t EventBits_t;










































 
EventGroupHandle_t xEventGroupCreate( void ) __attribute__ ((section(".kernelTEXT")));




























































































 
EventBits_t xEventGroupWaitBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToWaitFor, const BaseType_t xClearOnExit, const BaseType_t xWaitForAllBits, TickType_t xTicksToWait ) __attribute__ ((section(".kernelTEXT")));























































 
EventBits_t xEventGroupClearBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToClear ) __attribute__ ((section(".kernelTEXT")));





















































 








































































 
EventBits_t xEventGroupSetBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet ) __attribute__ ((section(".kernelTEXT")));








































































 




























































































































 
EventBits_t xEventGroupSync( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet, const EventBits_t uxBitsToWaitFor, TickType_t xTicksToWait ) __attribute__ ((section(".kernelTEXT")));

















 















 
EventBits_t xEventGroupGetBitsFromISR( EventGroupHandle_t xEventGroup );












 
void vEventGroupDelete( EventGroupHandle_t xEventGroup );

 
void vEventGroupSetBitsCallback( void *pvEventGroup, const uint32_t ulBitsToSet );
void vEventGroupClearBitsCallback( void *pvEventGroup, const uint32_t ulBitsToClear );









 





 

typedef struct xEventGroupDefinition
{
	EventBits_t uxEventBits;
	List_t xTasksWaitingForBits;		 


} EventGroup_t;

 








 
static BaseType_t prvTestWaitCondition( const EventBits_t uxCurrentEventBits, const EventBits_t uxBitsToWaitFor, const BaseType_t xWaitForAllBits );

 

EventGroupHandle_t xEventGroupCreate( void )
{
EventGroup_t *pxEventBits;

	pxEventBits = pvPortMalloc( sizeof( EventGroup_t ) );
	if( pxEventBits != 0 )
	{
		pxEventBits->uxEventBits = 0;
		vListInitialise( &( pxEventBits->xTasksWaitingForBits ) );
		;
	}
	else
	{
		;
	}

	return ( EventGroupHandle_t ) pxEventBits;
}
 

EventBits_t xEventGroupSync( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet, const EventBits_t uxBitsToWaitFor, TickType_t xTicksToWait )
{
EventBits_t uxOriginalBitValue, uxReturn;
EventGroup_t *pxEventBits = ( EventGroup_t * ) xEventGroup;
BaseType_t xAlreadyYielded;
BaseType_t xTimeoutOccurred = ( ( BaseType_t ) 0 );

	if( ( ( uxBitsToWaitFor & 0xff000000UL ) == 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	if( ( uxBitsToWaitFor != 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	{
		if( ( !( ( xTaskGetSchedulerState() == ( ( BaseType_t ) 0 ) ) && ( xTicksToWait != 0 ) ) ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	}

	vTaskSuspendAll();
	{
		uxOriginalBitValue = pxEventBits->uxEventBits;

		( void ) xEventGroupSetBits( xEventGroup, uxBitsToSet );

		if( ( ( uxOriginalBitValue | uxBitsToSet ) & uxBitsToWaitFor ) == uxBitsToWaitFor )
		{
			 
			uxReturn = ( uxOriginalBitValue | uxBitsToSet );

			
 
			pxEventBits->uxEventBits &= ~uxBitsToWaitFor;

			xTicksToWait = 0;
		}
		else
		{
			if( xTicksToWait != ( TickType_t ) 0 )
			{
				;

				

 
				vTaskPlaceOnUnorderedEventList( &( pxEventBits->xTasksWaitingForBits ), ( uxBitsToWaitFor | 0x01000000UL | 0x04000000UL ), xTicksToWait );

				


 
				uxReturn = 0;
			}
			else
			{
				
 
				uxReturn = pxEventBits->uxEventBits;
			}
		}
	}
	xAlreadyYielded = xTaskResumeAll();

	if( xTicksToWait != ( TickType_t ) 0 )
	{
		if( xAlreadyYielded == ( ( BaseType_t ) 0 ) )
		{
			{ ( * ( ( volatile uint32_t * ) 0xFFFFFFB0 ) ) = ( 0x7500UL ); asm( " DSB " ); asm( " ISB " ); };
		}
		else
		{
			;
		}

		


 
		uxReturn = uxTaskResetEventItemValue();

		if( ( uxReturn & 0x02000000UL ) == ( EventBits_t ) 0 )
		{
			 
			vPortEnterCritical();
			{
				uxReturn = pxEventBits->uxEventBits;

				


 
				if( ( uxReturn & uxBitsToWaitFor ) == uxBitsToWaitFor )
				{
					pxEventBits->uxEventBits &= ~uxBitsToWaitFor;
				}
				else
				{
					;
				}
			}
			vPortExitCritical();

			xTimeoutOccurred = ( ( BaseType_t ) 1 );
		}
		else
		{
			 
		}

		
 
		uxReturn &= ~0xff000000UL;
	}

	( void ) xTimeoutOccurred;

	return uxReturn;
}
 

EventBits_t xEventGroupWaitBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToWaitFor, const BaseType_t xClearOnExit, const BaseType_t xWaitForAllBits, TickType_t xTicksToWait )
{
EventGroup_t *pxEventBits = ( EventGroup_t * ) xEventGroup;
EventBits_t uxReturn, uxControlBits = 0;
BaseType_t xWaitConditionMet, xAlreadyYielded;
BaseType_t xTimeoutOccurred = ( ( BaseType_t ) 0 );

	
 
	if( ( xEventGroup ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	if( ( ( uxBitsToWaitFor & 0xff000000UL ) == 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	if( ( uxBitsToWaitFor != 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	{
		if( ( !( ( xTaskGetSchedulerState() == ( ( BaseType_t ) 0 ) ) && ( xTicksToWait != 0 ) ) ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	}

	vTaskSuspendAll();
	{
		const EventBits_t uxCurrentEventBits = pxEventBits->uxEventBits;

		 
		xWaitConditionMet = prvTestWaitCondition( uxCurrentEventBits, uxBitsToWaitFor, xWaitForAllBits );

		if( xWaitConditionMet != ( ( BaseType_t ) 0 ) )
		{
			
 
			uxReturn = uxCurrentEventBits;
			xTicksToWait = ( TickType_t ) 0;

			 
			if( xClearOnExit != ( ( BaseType_t ) 0 ) )
			{
				pxEventBits->uxEventBits &= ~uxBitsToWaitFor;
			}
			else
			{
				;
			}
		}
		else if( xTicksToWait == ( TickType_t ) 0 )
		{
			
 
			uxReturn = uxCurrentEventBits;
		}
		else
		{
			


 
			if( xClearOnExit != ( ( BaseType_t ) 0 ) )
			{
				uxControlBits |= 0x01000000UL;
			}
			else
			{
				;
			}

			if( xWaitForAllBits != ( ( BaseType_t ) 0 ) )
			{
				uxControlBits |= 0x04000000UL;
			}
			else
			{
				;
			}

			

 
			vTaskPlaceOnUnorderedEventList( &( pxEventBits->xTasksWaitingForBits ), ( uxBitsToWaitFor | uxControlBits ), xTicksToWait );

			

 
			uxReturn = 0;

			;
		}
	}
	xAlreadyYielded = xTaskResumeAll();

	if( xTicksToWait != ( TickType_t ) 0 )
	{
		if( xAlreadyYielded == ( ( BaseType_t ) 0 ) )
		{
			{ ( * ( ( volatile uint32_t * ) 0xFFFFFFB0 ) ) = ( 0x7500UL ); asm( " DSB " ); asm( " ISB " ); };
		}
		else
		{
			;
		}

		


 
		uxReturn = uxTaskResetEventItemValue();

		if( ( uxReturn & 0x02000000UL ) == ( EventBits_t ) 0 )
		{
			vPortEnterCritical();
			{
				 
				uxReturn = pxEventBits->uxEventBits;

				
 
				if( prvTestWaitCondition( uxReturn, uxBitsToWaitFor, xWaitForAllBits ) != ( ( BaseType_t ) 0 ) )
				{
					if( xClearOnExit != ( ( BaseType_t ) 0 ) )
					{
						pxEventBits->uxEventBits &= ~uxBitsToWaitFor;
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
			vPortExitCritical();

			 
			xTimeoutOccurred = ( ( BaseType_t ) 0 );
		}
		else
		{
			 
		}

		 
		uxReturn &= ~0xff000000UL;
	}
	( void ) xTimeoutOccurred;

	return uxReturn;
}
 

EventBits_t xEventGroupClearBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToClear )
{
EventGroup_t *pxEventBits = ( EventGroup_t * ) xEventGroup;
EventBits_t uxReturn;

	
 
	if( ( xEventGroup ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	if( ( ( uxBitsToClear & 0xff000000UL ) == 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

	vPortEnterCritical();
	{
		;

		
 
		uxReturn = pxEventBits->uxEventBits;

		 
		pxEventBits->uxEventBits &= ~uxBitsToClear;
	}
	vPortExitCritical();

	return uxReturn;
}
 

 

EventBits_t xEventGroupGetBitsFromISR( EventGroupHandle_t xEventGroup )
{
UBaseType_t uxSavedInterruptStatus;
EventGroup_t *pxEventBits = ( EventGroup_t * ) xEventGroup;
EventBits_t uxReturn;

	uxSavedInterruptStatus = 0;
	{
		uxReturn = pxEventBits->uxEventBits;
	}
	( void ) uxSavedInterruptStatus;

	return uxReturn;
}
 

EventBits_t xEventGroupSetBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet )
{
ListItem_t *pxListItem, *pxNext;
ListItem_t const *pxListEnd;
List_t *pxList;
EventBits_t uxBitsToClear = 0, uxBitsWaitedFor, uxControlBits;
EventGroup_t *pxEventBits = ( EventGroup_t * ) xEventGroup;
BaseType_t xMatchFound = ( ( BaseType_t ) 0 );

	
 
	if( ( xEventGroup ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	if( ( ( uxBitsToSet & 0xff000000UL ) == 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

	pxList = &( pxEventBits->xTasksWaitingForBits );
	pxListEnd = ( ( ListItem_t const * ) ( &( ( pxList )->xListEnd ) ) );  
	vTaskSuspendAll();
	{
		;

		pxListItem = ( ( ( pxList )->xListEnd ). pxNext );

		 
		pxEventBits->uxEventBits |= uxBitsToSet;

		 
		while( pxListItem != pxListEnd )
		{
			pxNext = ( ( pxListItem )->pxNext );
			uxBitsWaitedFor = ( ( pxListItem )->xItemValue );
			xMatchFound = ( ( BaseType_t ) 0 );

			 
			uxControlBits = uxBitsWaitedFor & 0xff000000UL;
			uxBitsWaitedFor &= ~0xff000000UL;

			if( ( uxControlBits & 0x04000000UL ) == ( EventBits_t ) 0 )
			{
				 
				if( ( uxBitsWaitedFor & pxEventBits->uxEventBits ) != ( EventBits_t ) 0 )
				{
					xMatchFound = ( ( BaseType_t ) 1 );
				}
				else
				{
					;
				}
			}
			else if( ( uxBitsWaitedFor & pxEventBits->uxEventBits ) == uxBitsWaitedFor )
			{
				 
				xMatchFound = ( ( BaseType_t ) 1 );
			}
			else
			{
				 
			}

			if( xMatchFound != ( ( BaseType_t ) 0 ) )
			{
				 
				if( ( uxControlBits & 0x01000000UL ) != ( EventBits_t ) 0 )
				{
					uxBitsToClear |= uxBitsWaitedFor;
				}
				else
				{
					;
				}

				



 
				( void ) xTaskRemoveFromUnorderedEventList( pxListItem, pxEventBits->uxEventBits | 0x02000000UL );
			}

			

 
			pxListItem = pxNext;
		}

		
 
		pxEventBits->uxEventBits &= ~uxBitsToClear;
	}
	( void ) xTaskResumeAll();

	return pxEventBits->uxEventBits;
}
 

void vEventGroupDelete( EventGroupHandle_t xEventGroup )
{
EventGroup_t *pxEventBits = ( EventGroup_t * ) xEventGroup;
const List_t *pxTasksWaitingForBits = &( pxEventBits->xTasksWaitingForBits );

	vTaskSuspendAll();
	{
		;

		while( ( ( pxTasksWaitingForBits )->uxNumberOfItems ) > ( UBaseType_t ) 0 )
		{
			
 
			if( ( pxTasksWaitingForBits->xListEnd . pxNext != ( ListItem_t * ) &( pxTasksWaitingForBits->xListEnd ) ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
			( void ) xTaskRemoveFromUnorderedEventList( pxTasksWaitingForBits->xListEnd.pxNext, 0x02000000UL );
		}

		vPortFree( pxEventBits );
	}
	( void ) xTaskResumeAll();
}
 


 
void vEventGroupSetBitsCallback( void *pvEventGroup, const uint32_t ulBitsToSet )
{
	( void ) xEventGroupSetBits( pvEventGroup, ( EventBits_t ) ulBitsToSet );
}
 


 
void vEventGroupClearBitsCallback( void *pvEventGroup, const uint32_t ulBitsToClear )
{
	( void ) xEventGroupClearBits( pvEventGroup, ( EventBits_t ) ulBitsToClear );
}
 

static BaseType_t prvTestWaitCondition( const EventBits_t uxCurrentEventBits, const EventBits_t uxBitsToWaitFor, const BaseType_t xWaitForAllBits )
{
BaseType_t xWaitConditionMet = ( ( BaseType_t ) 0 );

	if( xWaitForAllBits == ( ( BaseType_t ) 0 ) )
	{
		
 
		if( ( uxCurrentEventBits & uxBitsToWaitFor ) != ( EventBits_t ) 0 )
		{
			xWaitConditionMet = ( ( BaseType_t ) 1 );
		}
		else
		{
			;
		}
	}
	else
	{
		
 
		if( ( uxCurrentEventBits & uxBitsToWaitFor ) == uxBitsToWaitFor )
		{
			xWaitConditionMet = ( ( BaseType_t ) 1 );
		}
		else
		{
			;
		}
	}

	return xWaitConditionMet;
}
 

 



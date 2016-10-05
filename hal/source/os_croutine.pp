


































































 




































































 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


#pragma diag_push
#pragma CHECK_MISRA("-19.7")  
#pragma CHECK_MISRA("-20.1")  
#pragma CHECK_MISRA("-20.2")  



typedef int ptrdiff_t;

typedef unsigned size_t;


typedef unsigned short wchar_t;


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






 








 












 












 








 








 



 




 
















































































 



































































 














































 
void MPU_vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;







































 
void MPU_vTaskDelete( TaskHandle_t xTaskToDelete ) ;



 














































 
void MPU_vTaskDelay( const TickType_t xTicksToDelay ) ;

























































 
void MPU_vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;













































 
UBaseType_t MPU_uxTaskPriorityGet( TaskHandle_t xTask ) ;






 
UBaseType_t uxTaskPriorityGetFromISR( TaskHandle_t xTask ) ;
















 
eTaskState MPU_eTaskGetState( TaskHandle_t xTask ) ;








































 
void MPU_vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;

















































 
void MPU_vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;















































 
void MPU_vTaskResume( TaskHandle_t xTaskToResume ) ;



























 
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;



 



























 
void vTaskStartScheduler( void ) ;






















































 
void vTaskEndScheduler( void ) ;

















































 
void MPU_vTaskSuspendAll( void ) ;




















































 
BaseType_t MPU_xTaskResumeAll( void ) ;



 









 
TickType_t MPU_xTaskGetTickCount( void ) ;














 
TickType_t xTaskGetTickCountFromISR( void ) ;












 
UBaseType_t MPU_uxTaskGetNumberOfTasks( void ) ;












 
char *pcTaskGetTaskName( TaskHandle_t xTaskToQuery ) ;  



















 
UBaseType_t MPU_uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;






 











 
BaseType_t MPU_xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;







 
TaskHandle_t MPU_xTaskGetIdleTaskHandle( void );

































































































 
UBaseType_t MPU_uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime );













































 
void MPU_vTaskList( char * pcWriteBuffer ) ;  




















































 
void MPU_vTaskGetRunTimeStats( char *pcWriteBuffer ) ;  











































































 
BaseType_t xTaskNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction );























































































 
BaseType_t xTaskNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, BaseType_t *pxHigherPriorityTaskWoken );









































































 
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait );












































 





















































 
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken );



































































 
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait );



 















 
BaseType_t xTaskIncrementTick( void ) ;































 
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;











 
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
























 
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
BaseType_t xTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;








 
void vTaskSwitchContext( void ) ;




 
TickType_t uxTaskResetEventItemValue( void ) ;



 
TaskHandle_t MPU_xTaskGetCurrentTaskHandle( void ) ;



 
void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;




 
BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;




 
void vTaskMissedYield( void ) ;




 
BaseType_t MPU_xTaskGetSchedulerState( void ) ;




 
void vTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;




 
BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;




 
BaseType_t MPU_xTaskGenericCreate( TaskFunction_t pxTaskCode, const char * const pcName, const uint16_t usStackDepth, void * const pvParameters, UBaseType_t uxPriority, TaskHandle_t * const pxCreatedTask, StackType_t * const puxStackBuffer, const MemoryRegion_t * const xRegions ) ;  



 
UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;




 
void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;








 
void vTaskStepTick( const TickType_t xTicksToJump ) ;














 
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;




 
void *pvTaskIncrementMutexHeldCount( void );







































































 






































































 



























 







 
typedef void * CoRoutineHandle_t;

 
typedef void (*crCOROUTINE_CODE)( CoRoutineHandle_t, UBaseType_t );

typedef struct corCoRoutineControlBlock
{
	crCOROUTINE_CODE 	pxCoRoutineFunction;
	ListItem_t			xGenericListItem;	 
	ListItem_t			xEventListItem;		 
	UBaseType_t 		uxPriority;			 
	UBaseType_t 		uxIndex;			 
	uint16_t 			uxState;			 
} CRCB_t;  








































































 
BaseType_t xCoRoutineCreate( crCOROUTINE_CODE pxCoRoutineCode, UBaseType_t uxPriority, UBaseType_t uxIndex );








































 
void vCoRoutineSchedule( void );





























 





























 




 














































 



















































































 













































































 






























































































 















































































































 









 
void vCoRoutineAddToDelayedList( TickType_t xTicksToDelay, List_t *pxEventList );







 
BaseType_t xCoRoutineRemoveFromEventList( const List_t *pxEventList );






 


 
static List_t pxReadyCoRoutineLists[ ( 2 ) ];	 
static List_t xDelayedCoRoutineList1;									 
static List_t xDelayedCoRoutineList2;									 
static List_t * pxDelayedCoRoutineList;									 
static List_t * pxOverflowDelayedCoRoutineList;							 
static List_t xPendingReadyCoRoutineList;								 

 
CRCB_t * pxCurrentCoRoutine = 0;
static UBaseType_t uxTopCoRoutineReadyPriority = 0;
static TickType_t xCoRoutineTickCount = 0, xLastTickCount = 0, xPassedTicks = 0;

 







 




 
static void prvInitialiseCoRoutineLists( void );






 
static void prvCheckPendingReadyList( void );








 
static void prvCheckDelayedList( void );

 

BaseType_t xCoRoutineCreate( crCOROUTINE_CODE pxCoRoutineCode, UBaseType_t uxPriority, UBaseType_t uxIndex )
{
BaseType_t xReturn;
CRCB_t *pxCoRoutine;

	 
	pxCoRoutine = ( CRCB_t * ) MPU_pvPortMalloc( sizeof( CRCB_t ) );
	if( pxCoRoutine )
	{
		
 
		if( pxCurrentCoRoutine == 0 )
		{
			pxCurrentCoRoutine = pxCoRoutine;
			prvInitialiseCoRoutineLists();
		}

		 
		if( uxPriority >= ( 2 ) )
		{
			uxPriority = ( 2 ) - 1;
		}

		 
		pxCoRoutine->uxState = ( 0 );
		pxCoRoutine->uxPriority = uxPriority;
		pxCoRoutine->uxIndex = uxIndex;
		pxCoRoutine->pxCoRoutineFunction = pxCoRoutineCode;

		 
		vListInitialiseItem( &( pxCoRoutine->xGenericListItem ) );
		vListInitialiseItem( &( pxCoRoutine->xEventListItem ) );

		

 
		( ( &( pxCoRoutine ->xGenericListItem ) )->pvOwner = ( void * ) ( pxCoRoutine ) );
		( ( &( pxCoRoutine ->xEventListItem ) )->pvOwner = ( void * ) ( pxCoRoutine ) );

		 
		( ( &( pxCoRoutine ->xEventListItem ) )->xItemValue = ( ( ( TickType_t ) ( 2 ) - ( TickType_t ) uxPriority ) ) );

		
 
		{ if( pxCoRoutine ->uxPriority > uxTopCoRoutineReadyPriority ) { uxTopCoRoutineReadyPriority = pxCoRoutine ->uxPriority; } vListInsertEnd( ( List_t * ) &( pxReadyCoRoutineLists[ pxCoRoutine ->uxPriority ] ), &( pxCoRoutine ->xGenericListItem ) ); };

		xReturn = ( ( ( BaseType_t ) 1 ) );
	}
	else
	{
		xReturn = ( -1 );
	}

	return xReturn;
}
 

void vCoRoutineAddToDelayedList( TickType_t xTicksToDelay, List_t *pxEventList )
{
TickType_t xTimeToWake;

	
 
	xTimeToWake = xCoRoutineTickCount + xTicksToDelay;

	

 
	( void ) uxListRemove( ( ListItem_t * ) &( pxCurrentCoRoutine->xGenericListItem ) );

	 
	( ( &( pxCurrentCoRoutine ->xGenericListItem ) )->xItemValue = ( xTimeToWake ) );

	if( xTimeToWake < xCoRoutineTickCount )
	{
		
 
		vListInsert( ( List_t * ) pxOverflowDelayedCoRoutineList, ( ListItem_t * ) &( pxCurrentCoRoutine->xGenericListItem ) );
	}
	else
	{
		
 
		vListInsert( ( List_t * ) pxDelayedCoRoutineList, ( ListItem_t * ) &( pxCurrentCoRoutine->xGenericListItem ) );
	}

	if( pxEventList )
	{
		
 
		vListInsert( pxEventList, &( pxCurrentCoRoutine->xEventListItem ) );
	}
}
 

static void prvCheckPendingReadyList( void )
{
	

 
	while( ( ( BaseType_t ) ( ( &xPendingReadyCoRoutineList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
	{
		CRCB_t *pxUnblockedCRCB;

		 
		vPortDisableInterrupts();
		{
			pxUnblockedCRCB = ( CRCB_t * ) ( (&( ( (&xPendingReadyCoRoutineList) )->xListEnd ))->pxNext->pvOwner );
			( void ) uxListRemove( &( pxUnblockedCRCB->xEventListItem ) );
		}
		vPortEnableInterrupts();

		( void ) uxListRemove( &( pxUnblockedCRCB->xGenericListItem ) );
		{ if( pxUnblockedCRCB->uxPriority > uxTopCoRoutineReadyPriority ) { uxTopCoRoutineReadyPriority = pxUnblockedCRCB->uxPriority; } vListInsertEnd( ( List_t * ) &( pxReadyCoRoutineLists[ pxUnblockedCRCB->uxPriority ] ), &( pxUnblockedCRCB->xGenericListItem ) ); };
	}
}
 

static void prvCheckDelayedList( void )
{
CRCB_t *pxCRCB;

	xPassedTicks = MPU_xTaskGetTickCount() - xLastTickCount;
	while( xPassedTicks )
	{
		xCoRoutineTickCount++;
		xPassedTicks--;

		 
		if( xCoRoutineTickCount == 0 )
		{
			List_t * pxTemp;

			
 
			pxTemp = pxDelayedCoRoutineList;
			pxDelayedCoRoutineList = pxOverflowDelayedCoRoutineList;
			pxOverflowDelayedCoRoutineList = pxTemp;
		}

		 
		while( ( ( BaseType_t ) ( ( pxDelayedCoRoutineList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
		{
			pxCRCB = ( CRCB_t * ) ( (&( ( pxDelayedCoRoutineList )->xListEnd ))->pxNext->pvOwner );

			if( xCoRoutineTickCount < ( ( &( pxCRCB->xGenericListItem ) )->xItemValue ) )
			{
				 
				break;
			}

			vPortDisableInterrupts();
			{
				



 
				( void ) uxListRemove( &( pxCRCB->xGenericListItem ) );

				 
				if( pxCRCB->xEventListItem.pvContainer )
				{
					( void ) uxListRemove( &( pxCRCB->xEventListItem ) );
				}
			}
			vPortEnableInterrupts();

			{ if( pxCRCB->uxPriority > uxTopCoRoutineReadyPriority ) { uxTopCoRoutineReadyPriority = pxCRCB->uxPriority; } vListInsertEnd( ( List_t * ) &( pxReadyCoRoutineLists[ pxCRCB->uxPriority ] ), &( pxCRCB->xGenericListItem ) ); };
		}
	}

	xLastTickCount = xCoRoutineTickCount;
}
 

void vCoRoutineSchedule( void )
{
	 
	prvCheckPendingReadyList();

	 
	prvCheckDelayedList();

	 
	while( ( ( BaseType_t ) ( ( &( pxReadyCoRoutineLists[ uxTopCoRoutineReadyPriority ] ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) )
	{
		if( uxTopCoRoutineReadyPriority == 0 )
		{
			 
			return;
		}
		--uxTopCoRoutineReadyPriority;
	}

	
 
	{ List_t * const pxConstList = ( &( pxReadyCoRoutineLists[ uxTopCoRoutineReadyPriority ] ) ); ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; if( ( void * ) ( pxConstList )->pxIndex == ( void * ) &( ( pxConstList )->xListEnd ) ) { ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; } ( pxCurrentCoRoutine ) = ( pxConstList )->pxIndex->pvOwner; };

	 
	( pxCurrentCoRoutine->pxCoRoutineFunction )( pxCurrentCoRoutine, pxCurrentCoRoutine->uxIndex );

	return;
}
 

static void prvInitialiseCoRoutineLists( void )
{
UBaseType_t uxPriority;

	for( uxPriority = 0; uxPriority < ( 2 ); uxPriority++ )
	{
		vListInitialise( ( List_t * ) &( pxReadyCoRoutineLists[ uxPriority ] ) );
	}

	vListInitialise( ( List_t * ) &xDelayedCoRoutineList1 );
	vListInitialise( ( List_t * ) &xDelayedCoRoutineList2 );
	vListInitialise( ( List_t * ) &xPendingReadyCoRoutineList );

	
 
	pxDelayedCoRoutineList = &xDelayedCoRoutineList1;
	pxOverflowDelayedCoRoutineList = &xDelayedCoRoutineList2;
}
 

BaseType_t xCoRoutineRemoveFromEventList( const List_t *pxEventList )
{
CRCB_t *pxUnblockedCRCB;
BaseType_t xReturn;

	

 
	pxUnblockedCRCB = ( CRCB_t * ) ( (&( ( pxEventList )->xListEnd ))->pxNext->pvOwner );
	( void ) uxListRemove( &( pxUnblockedCRCB->xEventListItem ) );
	vListInsertEnd( ( List_t * ) &( xPendingReadyCoRoutineList ), &( pxUnblockedCRCB->xEventListItem ) );

	if( pxUnblockedCRCB->uxPriority >= pxCurrentCoRoutine->uxPriority )
	{
		xReturn = ( ( BaseType_t ) 1 );
	}
	else
	{
		xReturn = ( ( BaseType_t ) 0 );
	}

	return xReturn;
}





































































 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



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
#pragma CHECK_MISRA("-6.3")  
#pragma CHECK_MISRA("-19.1")  
#pragma CHECK_MISRA("-20.1")  
#pragma CHECK_MISRA("-20.2")  

 



#pragma diag_push
#pragma CHECK_MISRA("-19.4")  


#pragma diag_pop

 size_t  strlen(const char *string);

 char *strcpy(char *dest, const char *src);
 char *strncpy(char *dest, const char *src, size_t n);
 char *strcat(char *string1, const char *string2);
 char *strncat(char *dest, const char *src, size_t n);
 char *strchr(const char *string, int c);
 char *strrchr(const char *string, int c);

 int  strcmp(const char *string1, const char *string2);
 int  strncmp(const char *string1, const char *string2, size_t n);

 int     strcoll(const char *string1, const char *_string2);
 size_t  strxfrm(char *to, const char *from, size_t n);
 char   *strpbrk(const char *string, const char *chs);
 size_t  strspn(const char *string, const char *chs);
 size_t  strcspn(const char *string, const char *chs);
 char   *strstr(const char *string1, const char *string2);
 char   *strtok(char *str1, const char *str2);
 char   *strerror(int _errno);
 char   *strdup(const char *string);


 void   *memmove(void *s1, const void *s2, size_t n);
#pragma diag_push
#pragma CHECK_MISRA("-16.4")  
 void   *memcpy(void *s1, const void *s2, size_t n);
#pragma diag_pop

 int     memcmp(const void *cs, const void *ct, size_t n);
 void   *memchr(const void *cs, int c, size_t n);

 void   *memset(void *mem, int ch, size_t length);




#pragma diag_pop


#pragma diag_push


 
 
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







































































 














 

 


	 

 

 

 

 

 

 






 


 

 



 


 
typedef enum
{
	eNotWaitingNotification = 0,
	eWaitingNotification,
	eNotified
} eNotifyValue;





 
typedef struct tskTaskControlBlock
{
	volatile StackType_t	*pxTopOfStack;	 

		xMPU_SETTINGS	xMPUSettings;		 
		BaseType_t		xUsingStaticallyAllocatedStack;  

	ListItem_t			xGenericListItem;	 
	ListItem_t			xEventListItem;		 
	UBaseType_t			uxPriority;			 
	StackType_t			*pxStack;			 
	char				pcTaskName[ ( 16 ) ];   




		UBaseType_t 	uxBasePriority;		 
		UBaseType_t 	uxMutexesHeld;




		volatile uint32_t ulNotifiedValue;
		volatile eNotifyValue eNotifyState;

} tskTCB;


 
typedef tskTCB TCB_t;




 


 

__attribute__ ((section(".kernelBSS"))) TCB_t * volatile pxCurrentTCB = 0;

 
__attribute__ ((section(".kernelBSS"))) static List_t pxReadyTasksLists[ ( 5 ) ]; 
__attribute__ ((section(".kernelBSS"))) static List_t xDelayedTaskList1;						 
__attribute__ ((section(".kernelBSS"))) static List_t xDelayedTaskList2;						 
__attribute__ ((section(".kernelBSS"))) static List_t * volatile pxDelayedTaskList;				 
__attribute__ ((section(".kernelBSS"))) static List_t * volatile pxOverflowDelayedTaskList;		 
__attribute__ ((section(".kernelBSS"))) static List_t xPendingReadyList;						 


	__attribute__ ((section(".kernelBSS"))) static List_t xTasksWaitingTermination;				 
	__attribute__ ((section(".kernelBSS"))) static volatile UBaseType_t uxTasksDeleted = ( UBaseType_t ) 0U;



	__attribute__ ((section(".kernelBSS"))) static List_t xSuspendedTaskList;					 



 
__attribute__ ((section(".kernelBSS"))) static volatile UBaseType_t uxCurrentNumberOfTasks 	= ( UBaseType_t ) 0U;
__attribute__ ((section(".kernelBSS"))) static volatile TickType_t xTickCount 				= ( TickType_t ) 0U;
__attribute__ ((section(".kernelBSS"))) static volatile UBaseType_t uxTopReadyPriority 		= ( ( UBaseType_t ) 0U );
__attribute__ ((section(".kernelBSS"))) static volatile BaseType_t xSchedulerRunning 		= ( ( BaseType_t ) 0 );
__attribute__ ((section(".kernelBSS"))) static volatile UBaseType_t uxPendedTicks 			= ( UBaseType_t ) 0U;
__attribute__ ((section(".kernelBSS"))) static volatile BaseType_t xYieldPending 			= ( ( BaseType_t ) 0 );
__attribute__ ((section(".kernelBSS"))) static volatile BaseType_t xNumOfOverflows 			= ( BaseType_t ) 0;
__attribute__ ((section(".kernelBSS"))) static UBaseType_t uxTaskNumber 					= ( UBaseType_t ) 0U;
__attribute__ ((section(".kernelBSS"))) static volatile TickType_t xNextTaskUnblockTime		= (TickType_t) 0xFFFFFFFFF;








 
__attribute__ ((section(".kernelBSS"))) static volatile UBaseType_t uxSchedulerSuspended	= ( UBaseType_t ) ( ( BaseType_t ) 0 );


 

 




 



 

 


	

 

	 

	 


	 

	

 


 


 

 




 
 






 








 

 


 




 
static void prvInitialiseTCBVariables( TCB_t * const pxTCB, const char * const pcName, UBaseType_t uxPriority, const MemoryRegion_t * const xRegions, const uint16_t usStackDepth ) __attribute__ ((section(".kernelTEXT")));  





 
	static BaseType_t prvTaskIsTaskSuspended( const TaskHandle_t xTask ) __attribute__ ((section(".kernelTEXT")));




 
static void prvInitialiseTaskLists( void ) __attribute__ ((section(".kernelTEXT")));











 
static void prvIdleTask(void *pvParameters);







 

	static void prvDeleteTCB( TCB_t *pxTCB ) __attribute__ ((section(".kernelTEXT")));






 
static void prvCheckTasksWaitingTermination( void ) __attribute__ ((section(".kernelTEXT")));




 
static void prvAddCurrentTaskToDelayedList( const TickType_t xTimeToWake ) __attribute__ ((section(".kernelTEXT")));




 
static TCB_t *prvAllocateTCBAndStack( const uint16_t usStackDepth, StackType_t * const puxStackBuffer ) __attribute__ ((section(".kernelTEXT")));








 





 

	static uint16_t prvTaskCheckFreeStackSpace( const uint8_t * pucStackByte ) __attribute__ ((section(".kernelTEXT")));










 




 
static void prvResetNextTaskUnblockTime( void );

 

BaseType_t xTaskGenericCreate( TaskFunction_t pxTaskCode, const char * const pcName, const uint16_t usStackDepth, void * const pvParameters, UBaseType_t uxPriority, TaskHandle_t * const pxCreatedTask, StackType_t * const puxStackBuffer, const MemoryRegion_t * const xRegions )  
{
BaseType_t xReturn;
TCB_t * pxNewTCB;
StackType_t *pxTopOfStack;

	if( ( pxTaskCode ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	if( ( ( ( uxPriority & ( ~( 0x80000000UL ) ) ) < ( 5 ) ) ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

	
 
	pxNewTCB = prvAllocateTCBAndStack( usStackDepth, puxStackBuffer );

	if( pxNewTCB != 0 )
	{
			 
			BaseType_t xRunPrivileged;
			if( ( uxPriority & ( 0x80000000UL ) ) != 0U )
			{
				xRunPrivileged = ( ( BaseType_t ) 1 );
			}
			else
			{
				xRunPrivileged = ( ( BaseType_t ) 0 );
			}
			uxPriority &= ~( 0x80000000UL );

			if( puxStackBuffer != 0 )
			{
				

 
				pxNewTCB->xUsingStaticallyAllocatedStack = ( ( BaseType_t ) 1 );
			}
			else
			{
				
 
				pxNewTCB->xUsingStaticallyAllocatedStack = ( ( BaseType_t ) 0 );
			}

		


 
		{
			pxTopOfStack = pxNewTCB->pxStack + ( usStackDepth - ( uint16_t ) 1 );
			pxTopOfStack = ( StackType_t * ) ( ( ( uint32_t ) pxTopOfStack ) & ( ( uint32_t ) ~( 0x0007U )  ) );  

			 
			if( ( ( ( ( uint32_t ) pxTopOfStack & ( uint32_t ) ( 0x0007U ) ) == 0UL ) ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
		}

		 
		prvInitialiseTCBVariables( pxNewTCB, pcName, uxPriority, xRegions, usStackDepth );

		


 
		{
			pxNewTCB->pxTopOfStack = pxPortInitialiseStack( pxTopOfStack, pxTaskCode, pvParameters, xRunPrivileged );
		}

		if( ( void * ) pxCreatedTask != 0 )
		{
			

 
			*pxCreatedTask = ( TaskHandle_t ) pxNewTCB;
		}
		else
		{
			;
		}

		
 
		vPortEnterCritical();
		{
			uxCurrentNumberOfTasks++;
			if( pxCurrentTCB == 0 )
			{
				
 
				pxCurrentTCB =  pxNewTCB;

				if( uxCurrentNumberOfTasks == ( UBaseType_t ) 1 )
				{
					

 
					prvInitialiseTaskLists();
				}
				else
				{
					;
				}
			}
			else
			{
				

 
				if( xSchedulerRunning == ( ( BaseType_t ) 0 ) )
				{
					if( pxCurrentTCB->uxPriority <= uxPriority )
					{
						pxCurrentTCB = pxNewTCB;
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

			uxTaskNumber++;

			;

			 ( uxTopReadyPriority ) |= ( 1UL << ( ( pxNewTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxNewTCB )->uxPriority ] ), &( ( pxNewTCB )->xGenericListItem ) );

			xReturn = ( ( ( BaseType_t ) 1 ) );
			( void ) pxNewTCB;
		}
		vPortExitCritical();
	}
	else
	{
		xReturn = ( -1 );
		;
	}

	if( xReturn == ( ( ( BaseType_t ) 1 ) ) )
	{
		if( xSchedulerRunning != ( ( BaseType_t ) 0 ) )
		{
			
 
			if( pxCurrentTCB->uxPriority < uxPriority )
			{
				{ ( * ( ( volatile uint32_t * ) 0xFFFFFFB0 ) ) = ( 0x7500UL ); asm( " DSB " ); asm( " ISB " ); };
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

	return xReturn;
}
 


	void vTaskDelete( TaskHandle_t xTaskToDelete )
	{
	TCB_t *pxTCB;

		vPortEnterCritical();
		{
			
 
			pxTCB = ( ( ( xTaskToDelete ) == 0 ) ? ( TCB_t * ) pxCurrentTCB : ( TCB_t * ) ( xTaskToDelete ) );

			


 
			if( uxListRemove( &( pxTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
			{
				{ if( ( ( &( pxReadyTasksLists[ ( pxTCB->uxPriority ) ] ) )->uxNumberOfItems ) == ( UBaseType_t ) 0 ) { ( ( uxTopReadyPriority ) ) &= ~( 1UL << ( ( pxTCB->uxPriority ) ) ); } };
			}
			else
			{
				;
			}

			 
			if( ( ( &( pxTCB->xEventListItem ) )->pvContainer ) != 0 )
			{
				( void ) uxListRemove( &( pxTCB->xEventListItem ) );
			}
			else
			{
				;
			}

			vListInsertEnd( &xTasksWaitingTermination, &( pxTCB->xGenericListItem ) );

			

 
			++uxTasksDeleted;

			
 
			uxTaskNumber++;

			;
		}
		vPortExitCritical();

		
 
		if( xSchedulerRunning != ( ( BaseType_t ) 0 ) )
		{
			if( pxTCB == pxCurrentTCB )
			{
				if( ( uxSchedulerSuspended == 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

				



 
				;
				{ ( * ( ( volatile uint32_t * ) 0xFFFFFFB0 ) ) = ( 0x7500UL ); asm( " DSB " ); asm( " ISB " ); };
			}
			else
			{
				
 
				vPortEnterCritical();
				{
					prvResetNextTaskUnblockTime();
				}
				vPortExitCritical();
			}
		}
	}

 


	void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement )
	{
	TickType_t xTimeToWake;
	BaseType_t xAlreadyYielded, xShouldDelay = ( ( BaseType_t ) 0 );

		if( ( pxPreviousWakeTime ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
		if( ( ( xTimeIncrement > 0U ) ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
		if( ( uxSchedulerSuspended == 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

		vTaskSuspendAll();
		{
			
 
			const TickType_t xConstTickCount = xTickCount;

			 
			xTimeToWake = *pxPreviousWakeTime + xTimeIncrement;

			if( xConstTickCount < *pxPreviousWakeTime )
			{
				



 
				if( ( xTimeToWake < *pxPreviousWakeTime ) && ( xTimeToWake > xConstTickCount ) )
				{
					xShouldDelay = ( ( BaseType_t ) 1 );
				}
				else
				{
					;
				}
			}
			else
			{
				

 
				if( ( xTimeToWake < *pxPreviousWakeTime ) || ( xTimeToWake > xConstTickCount ) )
				{
					xShouldDelay = ( ( BaseType_t ) 1 );
				}
				else
				{
					;
				}
			}

			 
			*pxPreviousWakeTime = xTimeToWake;

			if( xShouldDelay != ( ( BaseType_t ) 0 ) )
			{
				;

				
 
				if( uxListRemove( &( pxCurrentTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
				{
					

 
					( uxTopReadyPriority ) &= ~( 1UL << ( pxCurrentTCB->uxPriority ) );
				}
				else
				{
					;
				}

				prvAddCurrentTaskToDelayedList( xTimeToWake );
			}
			else
			{
				;
			}
		}
		xAlreadyYielded = xTaskResumeAll();

		
 
		if( xAlreadyYielded == ( ( BaseType_t ) 0 ) )
		{
			{ ( * ( ( volatile uint32_t * ) 0xFFFFFFB0 ) ) = ( 0x7500UL ); asm( " DSB " ); asm( " ISB " ); };
		}
		else
		{
			;
		}
	}

 


	void vTaskDelay( const TickType_t xTicksToDelay )
	{
	TickType_t xTimeToWake;
	BaseType_t xAlreadyYielded = ( ( BaseType_t ) 0 );


		 
		if( xTicksToDelay > ( TickType_t ) 0U )
		{
			if( ( uxSchedulerSuspended == 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
			vTaskSuspendAll();
			{
				;

				





 

				
 
				xTimeToWake = xTickCount + xTicksToDelay;

				

 
				if( uxListRemove( &( pxCurrentTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
				{
					

 
					( uxTopReadyPriority ) &= ~( 1UL << ( pxCurrentTCB->uxPriority ) );
				}
				else
				{
					;
				}
				prvAddCurrentTaskToDelayedList( xTimeToWake );
			}
			xAlreadyYielded = xTaskResumeAll();
		}
		else
		{
			;
		}

		
 
		if( xAlreadyYielded == ( ( BaseType_t ) 0 ) )
		{
			{ ( * ( ( volatile uint32_t * ) 0xFFFFFFB0 ) ) = ( 0x7500UL ); asm( " DSB " ); asm( " ISB " ); };
		}
		else
		{
			;
		}
	}

 

 


	UBaseType_t uxTaskPriorityGet( TaskHandle_t xTask )
	{
	TCB_t *pxTCB;
	UBaseType_t uxReturn;

		vPortEnterCritical();
		{
			
 
			pxTCB = ( ( ( xTask ) == 0 ) ? ( TCB_t * ) pxCurrentTCB : ( TCB_t * ) ( xTask ) );
			uxReturn = pxTCB->uxPriority;
		}
		vPortExitCritical();

		return uxReturn;
	}

 


	UBaseType_t uxTaskPriorityGetFromISR( TaskHandle_t xTask )
	{
	TCB_t *pxTCB;
	UBaseType_t uxReturn, uxSavedInterruptState;

		














 
		;

		uxSavedInterruptState = 0;
		{
			
 
			pxTCB = ( ( ( xTask ) == 0 ) ? ( TCB_t * ) pxCurrentTCB : ( TCB_t * ) ( xTask ) );
			uxReturn = pxTCB->uxPriority;
		}
		( void ) uxSavedInterruptState;

		return uxReturn;
	}

 


	void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority )
	{
	TCB_t *pxTCB;
	UBaseType_t uxCurrentBasePriority, uxPriorityUsedOnEntry;
	BaseType_t xYieldRequired = ( ( BaseType_t ) 0 );

		if( ( ( uxNewPriority < ( 5 ) ) ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

		 
		if( uxNewPriority >= ( UBaseType_t ) ( 5 ) )
		{
			uxNewPriority = ( UBaseType_t ) ( 5 ) - ( UBaseType_t ) 1U;
		}
		else
		{
			;
		}

		vPortEnterCritical();
		{
			
 
			pxTCB = ( ( ( xTask ) == 0 ) ? ( TCB_t * ) pxCurrentTCB : ( TCB_t * ) ( xTask ) );

			;

			{
				uxCurrentBasePriority = pxTCB->uxBasePriority;
			}

			if( uxCurrentBasePriority != uxNewPriority )
			{
				
 
				if( uxNewPriority > uxCurrentBasePriority )
				{
					if( pxTCB != pxCurrentTCB )
					{
						

 
						if( uxNewPriority >= pxCurrentTCB->uxPriority )
						{
							xYieldRequired = ( ( BaseType_t ) 1 );
						}
						else
						{
							;
						}
					}
					else
					{
						

 
					}
				}
				else if( pxTCB == pxCurrentTCB )
				{
					

 
					xYieldRequired = ( ( BaseType_t ) 1 );
				}
				else
				{
					

 
				}

				

 
				uxPriorityUsedOnEntry = pxTCB->uxPriority;

				{
					
 
					if( pxTCB->uxBasePriority == pxTCB->uxPriority )
					{
						pxTCB->uxPriority = uxNewPriority;
					}
					else
					{
						;
					}

					 
					pxTCB->uxBasePriority = uxNewPriority;
				}

				
 
				if( ( ( ( &( pxTCB->xEventListItem ) )->xItemValue ) & 0x80000000UL ) == 0UL )
				{
					( ( &( pxTCB->xEventListItem ) )->xItemValue = ( ( ( TickType_t ) ( 5 ) - ( TickType_t ) uxNewPriority ) ) );  
				}
				else
				{
					;
				}

				


 
				if( ( ( BaseType_t ) ( ( &( pxTCB->xGenericListItem ) )->pvContainer == ( void * ) ( &( pxReadyTasksLists[ uxPriorityUsedOnEntry ] ) ) ) ) != ( ( BaseType_t ) 0 ) )
				{
					

 
					if( uxListRemove( &( pxTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
					{
						

 
						( uxTopReadyPriority ) &= ~( 1UL << ( uxPriorityUsedOnEntry ) );
					}
					else
					{
						;
					}
					 ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );
				}
				else
				{
					;
				}

				if( xYieldRequired == ( ( BaseType_t ) 1 ) )
				{
					{ ( * ( ( volatile uint32_t * ) 0xFFFFFFB0 ) ) = ( 0x7500UL ); asm( " DSB " ); asm( " ISB " ); };
				}
				else
				{
					;
				}

				
 
				( void ) uxPriorityUsedOnEntry;
			}
		}
		vPortExitCritical();
	}

 


	void vTaskSuspend( TaskHandle_t xTaskToSuspend )
	{
	TCB_t *pxTCB;

		vPortEnterCritical();
		{
			
 
			pxTCB = ( ( ( xTaskToSuspend ) == 0 ) ? ( TCB_t * ) pxCurrentTCB : ( TCB_t * ) ( xTaskToSuspend ) );

			;

			
 
			if( uxListRemove( &( pxTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
			{
				{ if( ( ( &( pxReadyTasksLists[ ( pxTCB->uxPriority ) ] ) )->uxNumberOfItems ) == ( UBaseType_t ) 0 ) { ( ( uxTopReadyPriority ) ) &= ~( 1UL << ( ( pxTCB->uxPriority ) ) ); } };
			}
			else
			{
				;
			}

			 
			if( ( ( &( pxTCB->xEventListItem ) )->pvContainer ) != 0 )
			{
				( void ) uxListRemove( &( pxTCB->xEventListItem ) );
			}
			else
			{
				;
			}

			vListInsertEnd( &xSuspendedTaskList, &( pxTCB->xGenericListItem ) );
		}
		vPortExitCritical();

		if( pxTCB == pxCurrentTCB )
		{
			if( xSchedulerRunning != ( ( BaseType_t ) 0 ) )
			{
				 
				if( ( uxSchedulerSuspended == 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
				{ ( * ( ( volatile uint32_t * ) 0xFFFFFFB0 ) ) = ( 0x7500UL ); asm( " DSB " ); asm( " ISB " ); };
			}
			else
			{
				

 
				if( ( ( &xSuspendedTaskList )->uxNumberOfItems ) == uxCurrentNumberOfTasks )
				{
					


 
					pxCurrentTCB = 0;
				}
				else
				{
					vTaskSwitchContext();
				}
			}
		}
		else
		{
			if( xSchedulerRunning != ( ( BaseType_t ) 0 ) )
			{
				

 
				vPortEnterCritical();
				{
					prvResetNextTaskUnblockTime();
				}
				vPortExitCritical();
			}
			else
			{
				;
			}
		}
	}

 


	static BaseType_t prvTaskIsTaskSuspended( const TaskHandle_t xTask )
	{
	BaseType_t xReturn = ( ( BaseType_t ) 0 );
	const TCB_t * const pxTCB = ( TCB_t * ) xTask;

		
 

		 
		if( ( xTask ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

		 
		if( ( ( BaseType_t ) ( ( &( pxTCB->xGenericListItem ) )->pvContainer == ( void * ) ( &xSuspendedTaskList ) ) ) != ( ( BaseType_t ) 0 ) )
		{
			 
			if( ( ( BaseType_t ) ( ( &( pxTCB->xEventListItem ) )->pvContainer == ( void * ) ( &xPendingReadyList ) ) ) == ( ( BaseType_t ) 0 ) )
			{
				
 
				if( ( ( BaseType_t ) ( ( &( pxTCB->xEventListItem ) )->pvContainer == ( void * ) ( 0 ) ) ) != ( ( BaseType_t ) 0 ) )
				{
					xReturn = ( ( BaseType_t ) 1 );
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

		return xReturn;
	}  

 


	void vTaskResume( TaskHandle_t xTaskToResume )
	{
	TCB_t * const pxTCB = ( TCB_t * ) xTaskToResume;

		 
		if( ( xTaskToResume ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

		
 
		if( ( pxTCB != 0 ) && ( pxTCB != pxCurrentTCB ) )
		{
			vPortEnterCritical();
			{
				if( prvTaskIsTaskSuspended( pxTCB ) == ( ( BaseType_t ) 1 ) )
				{
					;

					
 
					( void ) uxListRemove(  &( pxTCB->xGenericListItem ) );
					 ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );

					 
					if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
					{
						

 
						{ ( * ( ( volatile uint32_t * ) 0xFFFFFFB0 ) ) = ( 0x7500UL ); asm( " DSB " ); asm( " ISB " ); };
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
		}
		else
		{
			;
		}
	}


 


	BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume )
	{
	BaseType_t xYieldRequired = ( ( BaseType_t ) 0 );
	TCB_t * const pxTCB = ( TCB_t * ) xTaskToResume;
	UBaseType_t uxSavedInterruptStatus;

		if( ( xTaskToResume ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

		














 
		;

		uxSavedInterruptStatus = 0;
		{
			if( prvTaskIsTaskSuspended( pxTCB ) == ( ( BaseType_t ) 1 ) )
			{
				;

				 
				if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
				{
					
 
					if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
					{
						xYieldRequired = ( ( BaseType_t ) 1 );
					}
					else
					{
						;
					}

					( void ) uxListRemove(  &( pxTCB->xGenericListItem ) );
					 ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );
				}
				else
				{
					

 
					vListInsertEnd( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
				}
			}
			else
			{
				;
			}
		}
		( void ) uxSavedInterruptStatus;

		return xYieldRequired;
	}

 

void vTaskStartScheduler( void )
{
BaseType_t xReturn;

	 
	{
		 
		xReturn = xTaskGenericCreate( ( prvIdleTask ), ( "IDLE" ), ( ( ( unsigned short ) 128 ) ), ( ( void * ) 0 ), ( ( ( ( UBaseType_t ) 0U ) | ( 0x80000000UL ) ) ), ( 0 ), ( 0 ), ( 0 ) );   
	}


	if( xReturn == ( ( ( BaseType_t ) 1 ) ) )
	{
		



 
		vPortDisableInterrupts();


		xSchedulerRunning = ( ( BaseType_t ) 1 );
		xTickCount = ( TickType_t ) 0U;

		

 
		;

		
 
		if( xPortStartScheduler() != ( ( BaseType_t ) 0 ) )
		{
			
 
		}
		else
		{
			 
		}
	}
	else
	{
		

 
		if( ( xReturn ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	}
}
 

void vTaskEndScheduler( void )
{
	

 
	vPortDisableInterrupts();
	xSchedulerRunning = ( ( BaseType_t ) 0 );
	vPortEndScheduler();
}
 

void vTaskSuspendAll( void )
{
	


 
	++uxSchedulerSuspended;
}
 

 

BaseType_t xTaskResumeAll( void )
{
TCB_t *pxTCB;
BaseType_t xAlreadyYielded = ( ( BaseType_t ) 0 );

	
 
	if( ( uxSchedulerSuspended ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

	



 
	vPortEnterCritical();
	{
		--uxSchedulerSuspended;

		if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
		{
			if( uxCurrentNumberOfTasks > ( UBaseType_t ) 0U )
			{
				
 
				while( ( ( BaseType_t ) ( ( &xPendingReadyList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
				{
					pxTCB = ( TCB_t * ) ( (&( ( ( &xPendingReadyList ) )->xListEnd ))->pxNext->pvOwner );
					( void ) uxListRemove( &( pxTCB->xEventListItem ) );
					( void ) uxListRemove( &( pxTCB->xGenericListItem ) );
					 ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );

					
 
					if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
					{
						xYieldPending = ( ( BaseType_t ) 1 );
					}
					else
					{
						;
					}
				}

				


 
				if( uxPendedTicks > ( UBaseType_t ) 0U )
				{
					while( uxPendedTicks > ( UBaseType_t ) 0U )
					{
						if( xTaskIncrementTick() != ( ( BaseType_t ) 0 ) )
						{
							xYieldPending = ( ( BaseType_t ) 1 );
						}
						else
						{
							;
						}
						--uxPendedTicks;
					}
				}
				else
				{
					;
				}

				if( xYieldPending == ( ( BaseType_t ) 1 ) )
				{
					{
						xAlreadyYielded = ( ( BaseType_t ) 1 );
					}
					{ ( * ( ( volatile uint32_t * ) 0xFFFFFFB0 ) ) = ( 0x7500UL ); asm( " DSB " ); asm( " ISB " ); };
				}
				else
				{
					;
				}
			}
		}
		else
		{
			;
		}
	}
	vPortExitCritical();

	return xAlreadyYielded;
}
 

TickType_t xTaskGetTickCount( void )
{
TickType_t xTicks;

	 
	;
	{
		xTicks = xTickCount;
	}
	;

	return xTicks;
}
 

TickType_t xTaskGetTickCountFromISR( void )
{
TickType_t xReturn;
UBaseType_t uxSavedInterruptStatus;

	












 
	;

	uxSavedInterruptStatus = 0;
	{
		xReturn = xTickCount;
	}
	( void ) uxSavedInterruptStatus;

	return xReturn;
}
 

UBaseType_t uxTaskGetNumberOfTasks( void )
{
	
 
	return uxCurrentNumberOfTasks;
}
 

 

 

 




 
 

BaseType_t xTaskIncrementTick( void )
{
TCB_t * pxTCB;
TickType_t xItemValue;
BaseType_t xSwitchRequired = ( ( BaseType_t ) 0 );

	

 
	;
	if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
	{
		
 
		++xTickCount;

		{
			
 
			const TickType_t xConstTickCount = xTickCount;

			if( xConstTickCount == ( TickType_t ) 0U )
			{
				{ List_t *pxTemp; if( ( ( ( ( BaseType_t ) ( ( pxDelayedTaskList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) ) ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); }; pxTemp = pxDelayedTaskList; pxDelayedTaskList = pxOverflowDelayedTaskList; pxOverflowDelayedTaskList = pxTemp; xNumOfOverflows++; prvResetNextTaskUnblockTime(); };
			}
			else
			{
				;
			}

			


 
			if( xConstTickCount >= xNextTaskUnblockTime )
			{
				for( ;; )
				{
					if( ( ( BaseType_t ) ( ( pxDelayedTaskList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) != ( ( BaseType_t ) 0 ) )
					{
						



 
						xNextTaskUnblockTime = (TickType_t) 0xFFFFFFFFF;
						break;
					}
					else
					{
						


 
						pxTCB = ( TCB_t * ) ( (&( ( pxDelayedTaskList )->xListEnd ))->pxNext->pvOwner );
						xItemValue = ( ( &( pxTCB->xGenericListItem ) )->xItemValue );

						if( xConstTickCount < xItemValue )
						{
							



 
							xNextTaskUnblockTime = xItemValue;
							break;
						}
						else
						{
							;
						}

						 
						( void ) uxListRemove( &( pxTCB->xGenericListItem ) );

						
 
						if( ( ( &( pxTCB->xEventListItem ) )->pvContainer ) != 0 )
						{
							( void ) uxListRemove( &( pxTCB->xEventListItem ) );
						}
						else
						{
							;
						}

						
 
						 ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );

						
 
						{
							


 
							if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
							{
								xSwitchRequired = ( ( BaseType_t ) 1 );
							}
							else
							{
								;
							}
						}
					}
				}
			}
		}

		

 
		{
			if( ( ( &( pxReadyTasksLists[ pxCurrentTCB->uxPriority ] ) )->uxNumberOfItems ) > ( UBaseType_t ) 1 )
			{
				xSwitchRequired = ( ( BaseType_t ) 1 );
			}
			else
			{
				;
			}
		}

	}
	else
	{
		++uxPendedTicks;

		
 
	}

	{
		if( xYieldPending != ( ( BaseType_t ) 0 ) )
		{
			xSwitchRequired = ( ( BaseType_t ) 1 );
		}
		else
		{
			;
		}
	}

	return xSwitchRequired;
}
 

 

 

 

void vTaskSwitchContext( void )
{
	if( uxSchedulerSuspended != ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
	{
		
 
		xYieldPending = ( ( BaseType_t ) 1 );
	}
	else
	{
		xYieldPending = ( ( BaseType_t ) 0 );
		;


		 
		;
		;

		
 
		{ UBaseType_t uxTopPriority; uxTopPriority = ( 31 - ulPortCountLeadingZeros( ( uxTopReadyPriority ) ) ); if( ( ( ( &( pxReadyTasksLists[ uxTopPriority ] ) )->uxNumberOfItems ) > 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); }; { List_t * const pxConstList = ( &( pxReadyTasksLists[ uxTopPriority ] ) ); ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; if( ( void * ) ( pxConstList )->pxIndex == ( void * ) &( ( pxConstList )->xListEnd ) ) { ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; } ( pxCurrentTCB ) = ( pxConstList )->pxIndex->pvOwner; }; };
		;

	}
}
 

void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait )
{
TickType_t xTimeToWake;

	if( ( pxEventList ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

	
 

	


 
	vListInsert( pxEventList, &( pxCurrentTCB->xEventListItem ) );

	

 
	if( uxListRemove( &( pxCurrentTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
	{
		
 
		( uxTopReadyPriority ) &= ~( 1UL << ( pxCurrentTCB->uxPriority ) );
	}
	else
	{
		;
	}

	{
		if( xTicksToWait == (TickType_t) 0xFFFFFFFFF )
		{
			

 
			vListInsertEnd( &xSuspendedTaskList, &( pxCurrentTCB->xGenericListItem ) );
		}
		else
		{
			

 
			xTimeToWake = xTickCount + xTicksToWait;
			prvAddCurrentTaskToDelayedList( xTimeToWake );
		}
	}
}
 

void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait )
{
TickType_t xTimeToWake;

	if( ( pxEventList ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

	
 
	if( ( uxSchedulerSuspended != 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

	

 
	( ( &( pxCurrentTCB->xEventListItem ) )->xItemValue = ( xItemValue | 0x80000000UL ) );

	



 
	vListInsertEnd( pxEventList, &( pxCurrentTCB->xEventListItem ) );

	

 
	if( uxListRemove( &( pxCurrentTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
	{
		
 
		( uxTopReadyPriority ) &= ~( 1UL << ( pxCurrentTCB->uxPriority ) );
	}
	else
	{
		;
	}

	{
		if( xTicksToWait == (TickType_t) 0xFFFFFFFFF )
		{
			

 
			vListInsertEnd( &xSuspendedTaskList, &( pxCurrentTCB->xGenericListItem ) );
		}
		else
		{
			

 
			xTimeToWake = xTickCount + xTicksToWait;
			prvAddCurrentTaskToDelayedList( xTimeToWake );
		}
	}
}
 

 

BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList )
{
TCB_t *pxUnblockedTCB;
BaseType_t xReturn;

	
 

	








 
	pxUnblockedTCB = ( TCB_t * ) ( (&( ( pxEventList )->xListEnd ))->pxNext->pvOwner );
	if( ( pxUnblockedTCB ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	( void ) uxListRemove( &( pxUnblockedTCB->xEventListItem ) );

	if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
	{
		( void ) uxListRemove( &( pxUnblockedTCB->xGenericListItem ) );
		 ( uxTopReadyPriority ) |= ( 1UL << ( ( pxUnblockedTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxUnblockedTCB )->uxPriority ] ), &( ( pxUnblockedTCB )->xGenericListItem ) );
	}
	else
	{
		
 
		vListInsertEnd( &( xPendingReadyList ), &( pxUnblockedTCB->xEventListItem ) );
	}

	if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
	{
		

 
		xReturn = ( ( BaseType_t ) 1 );

		
 
		xYieldPending = ( ( BaseType_t ) 1 );
	}
	else
	{
		xReturn = ( ( BaseType_t ) 0 );
	}


	return xReturn;
}
 

BaseType_t xTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue )
{
TCB_t *pxUnblockedTCB;
BaseType_t xReturn;

	
 
	if( ( uxSchedulerSuspended != ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

	 
	( ( pxEventListItem )->xItemValue = ( xItemValue | 0x80000000UL ) );

	
 
	pxUnblockedTCB = ( TCB_t * ) ( ( pxEventListItem )->pvOwner );
	if( ( pxUnblockedTCB ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	( void ) uxListRemove( pxEventListItem );

	

 
	( void ) uxListRemove( &( pxUnblockedTCB->xGenericListItem ) );
	 ( uxTopReadyPriority ) |= ( 1UL << ( ( pxUnblockedTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxUnblockedTCB )->uxPriority ] ), &( ( pxUnblockedTCB )->xGenericListItem ) );

	if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
	{
		


 
		xReturn = ( ( BaseType_t ) 1 );

		
 
		xYieldPending = ( ( BaseType_t ) 1 );
	}
	else
	{
		xReturn = ( ( BaseType_t ) 0 );
	}

	return xReturn;
}
 

void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut )
{
	if( ( pxTimeOut ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	pxTimeOut->xOverflowCount = xNumOfOverflows;
	pxTimeOut->xTimeOnEntering = xTickCount;
}
 

BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait )
{
BaseType_t xReturn;

	if( ( pxTimeOut ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	if( ( pxTicksToWait ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

	vPortEnterCritical();
	{
		 
		const TickType_t xConstTickCount = xTickCount;

			

 
			if( *pxTicksToWait == (TickType_t) 0xFFFFFFFFF )
			{
				xReturn = ( ( BaseType_t ) 0 );
			}
			else  

		if( ( xNumOfOverflows != pxTimeOut->xOverflowCount ) && ( xConstTickCount >= pxTimeOut->xTimeOnEntering ) )  
		{
			


 
			xReturn = ( ( BaseType_t ) 1 );
		}
		else if( ( xConstTickCount - pxTimeOut->xTimeOnEntering ) < *pxTicksToWait )
		{
			 
			*pxTicksToWait -= ( xConstTickCount -  pxTimeOut->xTimeOnEntering );
			vTaskSetTimeOutState( pxTimeOut );
			xReturn = ( ( BaseType_t ) 0 );
		}
		else
		{
			xReturn = ( ( BaseType_t ) 1 );
		}
	}
	vPortExitCritical();

	return xReturn;
}
 

void vTaskMissedYield( void )
{
	xYieldPending = ( ( BaseType_t ) 1 );
}
 

 












 
static void prvIdleTask(void *pvParameters)
{
	 
	( void ) pvParameters;

	for( ;; )
	{
		 
		prvCheckTasksWaitingTermination();


		{
			







 
			if( ( ( &( pxReadyTasksLists[ ( ( UBaseType_t ) 0U ) ] ) )->uxNumberOfItems ) > ( UBaseType_t ) 1 )
			{
				vPortYield();
			}
			else
			{
				;
			}
		}


		


 
	}
}
 

 

static void prvInitialiseTCBVariables( TCB_t * const pxTCB, const char * const pcName, UBaseType_t uxPriority, const MemoryRegion_t * const xRegions, const uint16_t usStackDepth )  
{
UBaseType_t x;

	 
	for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) ( 16 ); x++ )
	{
		pxTCB->pcTaskName[ x ] = pcName[ x ];

		

 
		if( pcName[ x ] == 0x00 )
		{
			break;
		}
		else
		{
			;
		}
	}

	
 
	pxTCB->pcTaskName[ ( 16 ) - 1 ] = '\0';

	
 
	if( uxPriority >= ( UBaseType_t ) ( 5 ) )
	{
		uxPriority = ( UBaseType_t ) ( 5 ) - ( UBaseType_t ) 1U;
	}
	else
	{
		;
	}

	pxTCB->uxPriority = uxPriority;
	{
		pxTCB->uxBasePriority = uxPriority;
		pxTCB->uxMutexesHeld = 0;
	}

	vListInitialiseItem( &( pxTCB->xGenericListItem ) );
	vListInitialiseItem( &( pxTCB->xEventListItem ) );

	
 
	( ( &( pxTCB->xGenericListItem ) )->pvOwner = ( void * ) ( pxTCB ) );

	 
	( ( &( pxTCB->xEventListItem ) )->xItemValue = ( ( TickType_t ) ( 5 ) - ( TickType_t ) uxPriority ) );  
	( ( &( pxTCB->xEventListItem ) )->pvOwner = ( void * ) ( pxTCB ) );




	{
		vPortStoreTaskMPUSettings( &( pxTCB->xMPUSettings ), xRegions, pxTCB->pxStack, usStackDepth );
	}

	{
		pxTCB->ulNotifiedValue = 0;
		pxTCB->eNotifyState = eNotWaitingNotification;
	}

}
 


	void vTaskAllocateMPURegions( TaskHandle_t xTaskToModify, const MemoryRegion_t * const xRegions )
	{
	TCB_t *pxTCB;

		 
		pxTCB = ( ( ( xTaskToModify ) == 0 ) ? ( TCB_t * ) pxCurrentTCB : ( TCB_t * ) ( xTaskToModify ) );

        vPortStoreTaskMPUSettings( &( pxTCB->xMPUSettings ), xRegions, 0, 0 );
	}

 

static void prvInitialiseTaskLists( void )
{
UBaseType_t uxPriority;

	for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) ( 5 ); uxPriority++ )
	{
		vListInitialise( &( pxReadyTasksLists[ uxPriority ] ) );
	}

	vListInitialise( &xDelayedTaskList1 );
	vListInitialise( &xDelayedTaskList2 );
	vListInitialise( &xPendingReadyList );

	{
		vListInitialise( &xTasksWaitingTermination );
	}

	{
		vListInitialise( &xSuspendedTaskList );
	}

	
 
	pxDelayedTaskList = &xDelayedTaskList1;
	pxOverflowDelayedTaskList = &xDelayedTaskList2;
}
 

static void prvCheckTasksWaitingTermination( void )
{
	{
		BaseType_t xListIsEmpty;

		
 
		while( uxTasksDeleted > ( UBaseType_t ) 0U )
		{
			vTaskSuspendAll();
			{
				xListIsEmpty = ( ( BaseType_t ) ( ( &xTasksWaitingTermination )->uxNumberOfItems == ( UBaseType_t ) 0 ) );
			}
			( void ) xTaskResumeAll();

			if( xListIsEmpty == ( ( BaseType_t ) 0 ) )
			{
				TCB_t *pxTCB;

				vPortEnterCritical();
				{
					pxTCB = ( TCB_t * ) ( (&( ( ( &xTasksWaitingTermination ) )->xListEnd ))->pxNext->pvOwner );
					( void ) uxListRemove( &( pxTCB->xGenericListItem ) );
					--uxCurrentNumberOfTasks;
					--uxTasksDeleted;
				}
				vPortExitCritical();

				prvDeleteTCB( pxTCB );
			}
			else
			{
				;
			}
		}
	}
}
 

static void prvAddCurrentTaskToDelayedList( const TickType_t xTimeToWake )
{
	 
	( ( &( pxCurrentTCB->xGenericListItem ) )->xItemValue = ( xTimeToWake ) );

	if( xTimeToWake < xTickCount )
	{
		 
		vListInsert( pxOverflowDelayedTaskList, &( pxCurrentTCB->xGenericListItem ) );
	}
	else
	{
		 
		vListInsert( pxDelayedTaskList, &( pxCurrentTCB->xGenericListItem ) );

		

 
		if( xTimeToWake < xNextTaskUnblockTime )
		{
			xNextTaskUnblockTime = xTimeToWake;
		}
		else
		{
			;
		}
	}
}
 

static TCB_t *prvAllocateTCBAndStack( const uint16_t usStackDepth, StackType_t * const puxStackBuffer )
{
TCB_t *pxNewTCB;

	

 
	{
	StackType_t *pxStack;

		 
		pxStack = ( StackType_t * ) ( ( ( puxStackBuffer ) == 0 ) ? ( pvPortMalloc( ( ( ( ( size_t ) usStackDepth ) * sizeof( StackType_t ) ) ) ) ) : ( puxStackBuffer ) );  

		if( pxStack != 0 )
		{
			
 
			pxNewTCB = ( TCB_t * ) pvPortMalloc( sizeof( TCB_t ) );

			if( pxNewTCB != 0 )
			{
				 
				pxNewTCB->pxStack = pxStack;
			}
			else
			{
				
 
				vPortFree( pxStack );
			}
		}
		else
		{
			pxNewTCB = 0;
		}
	}

	if( pxNewTCB != 0 )
	{
		 
		{
			 
			( void ) memset( pxNewTCB->pxStack, ( int ) ( 0xa5U ), ( size_t ) usStackDepth * sizeof( StackType_t ) );
		}
	}

	return pxNewTCB;
}
 

 


	static uint16_t prvTaskCheckFreeStackSpace( const uint8_t * pucStackByte )
	{
	uint32_t ulCount = 0U;

		while( *pucStackByte == ( uint8_t ) ( 0xa5U ) )
		{
			pucStackByte -= (-1);
			ulCount++;
		}

		ulCount /= ( uint32_t ) sizeof( StackType_t );  

		return ( uint16_t ) ulCount;
	}

 


	UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask )
	{
	TCB_t *pxTCB;
	uint8_t *pucEndOfStack;
	UBaseType_t uxReturn;

		pxTCB = ( ( ( xTask ) == 0 ) ? ( TCB_t * ) pxCurrentTCB : ( TCB_t * ) ( xTask ) );

		{
			pucEndOfStack = ( uint8_t * ) pxTCB->pxStack;
		}

		uxReturn = ( UBaseType_t ) prvTaskCheckFreeStackSpace( pucEndOfStack );

		return uxReturn;
	}

 


	static void prvDeleteTCB( TCB_t *pxTCB )
	{
		

 
		( void ) pxTCB;

		
 

		{
			
 
			if( pxTCB->xUsingStaticallyAllocatedStack == ( ( BaseType_t ) 0 ) )
			{
				vPortFree( pxTCB->pxStack );
			}
		}

		vPortFree( pxTCB );
	}

 

static void prvResetNextTaskUnblockTime( void )
{
TCB_t *pxTCB;

	if( ( ( BaseType_t ) ( ( pxDelayedTaskList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) != ( ( BaseType_t ) 0 ) )
	{
		



 
		xNextTaskUnblockTime = (TickType_t) 0xFFFFFFFFF;
	}
	else
	{
		


 
		( pxTCB ) = ( TCB_t * ) ( (&( ( pxDelayedTaskList )->xListEnd ))->pxNext->pvOwner );
		xNextTaskUnblockTime = ( ( &( ( pxTCB )->xGenericListItem ) )->xItemValue );
	}
}
 


	TaskHandle_t xTaskGetCurrentTaskHandle( void )
	{
	TaskHandle_t xReturn;

		

 
		xReturn = pxCurrentTCB;

		return xReturn;
	}

 


	BaseType_t xTaskGetSchedulerState( void )
	{
	BaseType_t xReturn;

		if( xSchedulerRunning == ( ( BaseType_t ) 0 ) )
		{
			xReturn = ( ( BaseType_t ) 1 );
		}
		else
		{
			if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
			{
				xReturn = ( ( BaseType_t ) 2 );
			}
			else
			{
				xReturn = ( ( BaseType_t ) 0 );
			}
		}

		return xReturn;
	}

 


	void vTaskPriorityInherit( TaskHandle_t const pxMutexHolder )
	{
	TCB_t * const pxTCB = ( TCB_t * ) pxMutexHolder;

		
 
		if( pxMutexHolder != 0 )
		{
			if( pxTCB->uxPriority < pxCurrentTCB->uxPriority )
			{
				

 
				if( ( ( ( &( pxTCB->xEventListItem ) )->xItemValue ) & 0x80000000UL ) == 0UL )
				{
					( ( &( pxTCB->xEventListItem ) )->xItemValue = ( ( TickType_t ) ( 5 ) - ( TickType_t ) pxCurrentTCB->uxPriority ) );  
				}
				else
				{
					;
				}

				
 
				if( ( ( BaseType_t ) ( ( &( pxTCB->xGenericListItem ) )->pvContainer == ( void * ) ( &( pxReadyTasksLists[ pxTCB->uxPriority ] ) ) ) ) != ( ( BaseType_t ) 0 ) )
				{
					if( uxListRemove( &( pxTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
					{
						{ if( ( ( &( pxReadyTasksLists[ ( pxTCB->uxPriority ) ] ) )->uxNumberOfItems ) == ( UBaseType_t ) 0 ) { ( ( uxTopReadyPriority ) ) &= ~( 1UL << ( ( pxTCB->uxPriority ) ) ); } };
					}
					else
					{
						;
					}

					 
					pxTCB->uxPriority = pxCurrentTCB->uxPriority;
					 ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );
				}
				else
				{
					 
					pxTCB->uxPriority = pxCurrentTCB->uxPriority;
				}

				;
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

 


	BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder )
	{
	TCB_t * const pxTCB = ( TCB_t * ) pxMutexHolder;
	BaseType_t xReturn = ( ( BaseType_t ) 0 );

		if( pxMutexHolder != 0 )
		{
			if( ( pxTCB->uxMutexesHeld ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
			( pxTCB->uxMutexesHeld )--;

			if( pxTCB->uxPriority != pxTCB->uxBasePriority )
			{
				 
				if( pxTCB->uxMutexesHeld == ( UBaseType_t ) 0 )
				{
					



 
					if( uxListRemove( &( pxTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
					{
						{ if( ( ( &( pxReadyTasksLists[ ( pxTCB->uxPriority ) ] ) )->uxNumberOfItems ) == ( UBaseType_t ) 0 ) { ( ( uxTopReadyPriority ) ) &= ~( 1UL << ( ( pxTCB->uxPriority ) ) ); } };
					}
					else
					{
						;
					}

					
 
					;
					pxTCB->uxPriority = pxTCB->uxBasePriority;

					

 
					( ( &( pxTCB->xEventListItem ) )->xItemValue = ( ( TickType_t ) ( 5 ) - ( TickType_t ) pxTCB->uxPriority ) );  
					 ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );

					






 
					xReturn = ( ( BaseType_t ) 1 );
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

		return xReturn;
	}

 

 

 

 

 

 

TickType_t uxTaskResetEventItemValue( void )
{
TickType_t uxReturn;

	uxReturn = ( ( &( pxCurrentTCB->xEventListItem ) )->xItemValue );

	
 
	( ( &( pxCurrentTCB->xEventListItem ) )->xItemValue = ( ( ( TickType_t ) ( 5 ) - ( TickType_t ) pxCurrentTCB->uxPriority ) ) );  

	return uxReturn;
}
 


	void *pvTaskIncrementMutexHeldCount( void )
	{
		
 
		if( pxCurrentTCB != 0 )
		{
			( pxCurrentTCB->uxMutexesHeld )++;
		}

		return pxCurrentTCB;
	}

 


	uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait )
	{
	TickType_t xTimeToWake;
	uint32_t ulReturn;

		vPortEnterCritical();
		{
			 
			if( pxCurrentTCB->ulNotifiedValue == 0UL )
			{
				 
				pxCurrentTCB->eNotifyState = eWaitingNotification;

				if( xTicksToWait > ( TickType_t ) 0 )
				{
					
 
					if( uxListRemove( &( pxCurrentTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
					{
						

 
						( uxTopReadyPriority ) &= ~( 1UL << ( pxCurrentTCB->uxPriority ) );
					}
					else
					{
						;
					}

					{
						if( xTicksToWait == (TickType_t) 0xFFFFFFFFF )
						{
							


 
							vListInsertEnd( &xSuspendedTaskList, &( pxCurrentTCB->xGenericListItem ) );
						}
						else
						{
							


 
							xTimeToWake = xTickCount + xTicksToWait;
							prvAddCurrentTaskToDelayedList( xTimeToWake );
						}
					}

					


 
					{ ( * ( ( volatile uint32_t * ) 0xFFFFFFB0 ) ) = ( 0x7500UL ); asm( " DSB " ); asm( " ISB " ); };
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

		vPortEnterCritical();
		{
			ulReturn = pxCurrentTCB->ulNotifiedValue;

			if( ulReturn != 0UL )
			{
				if( xClearCountOnExit != ( ( BaseType_t ) 0 ) )
				{
					pxCurrentTCB->ulNotifiedValue = 0UL;
				}
				else
				{
					( pxCurrentTCB->ulNotifiedValue )--;
				}
			}
			else
			{
				;
			}

			pxCurrentTCB->eNotifyState = eNotWaitingNotification;
		}
		vPortExitCritical();

		return ulReturn;
	}

 


	BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait )
	{
	TickType_t xTimeToWake;
	BaseType_t xReturn;

		vPortEnterCritical();
		{
			 
			if( pxCurrentTCB->eNotifyState != eNotified )
			{
				

 
				pxCurrentTCB->ulNotifiedValue &= ~ulBitsToClearOnEntry;

				 
				pxCurrentTCB->eNotifyState = eWaitingNotification;

				if( xTicksToWait > ( TickType_t ) 0 )
				{
					
 
					if( uxListRemove( &( pxCurrentTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
					{
						

 
						( uxTopReadyPriority ) &= ~( 1UL << ( pxCurrentTCB->uxPriority ) );
					}
					else
					{
						;
					}

					{
						if( xTicksToWait == (TickType_t) 0xFFFFFFFFF )
						{
							


 
							vListInsertEnd( &xSuspendedTaskList, &( pxCurrentTCB->xGenericListItem ) );
						}
						else
						{
							


 
							xTimeToWake = xTickCount + xTicksToWait;
							prvAddCurrentTaskToDelayedList( xTimeToWake );
						}
					}

					


 
					{ ( * ( ( volatile uint32_t * ) 0xFFFFFFB0 ) ) = ( 0x7500UL ); asm( " DSB " ); asm( " ISB " ); };
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

		vPortEnterCritical();
		{
			if( pulNotificationValue != 0 )
			{
				
 
				*pulNotificationValue = pxCurrentTCB->ulNotifiedValue;
			}

			


 
			if( pxCurrentTCB->eNotifyState == eWaitingNotification )
			{
				 
				xReturn = ( ( BaseType_t ) 0 );
			}
			else
			{
				
 
				pxCurrentTCB->ulNotifiedValue &= ~ulBitsToClearOnExit;
				xReturn = ( ( BaseType_t ) 1 );
			}

			pxCurrentTCB->eNotifyState = eNotWaitingNotification;
		}
		vPortExitCritical();

		return xReturn;
	}

 


	BaseType_t xTaskNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction )
	{
	TCB_t * pxTCB;
	eNotifyValue eOriginalNotifyState;
	BaseType_t xReturn = ( ( ( BaseType_t ) 1 ) );

		if( ( xTaskToNotify ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
		pxTCB = ( TCB_t * ) xTaskToNotify;

		vPortEnterCritical();
		{
			eOriginalNotifyState = pxTCB->eNotifyState;

			pxTCB->eNotifyState = eNotified;

			switch( eAction )
			{
				case eSetBits	:
					pxTCB->ulNotifiedValue |= ulValue;
					break;

				case eIncrement	:
					( pxTCB->ulNotifiedValue )++;
					break;

				case eSetValueWithOverwrite	:
					pxTCB->ulNotifiedValue = ulValue;
					break;

				case eSetValueWithoutOverwrite :
					if( eOriginalNotifyState != eNotified )
					{
						pxTCB->ulNotifiedValue = ulValue;
					}
					else
					{
						 
						xReturn = ( ( ( BaseType_t ) 0 ) );
					}
					break;

				case eNoAction:
					
 
					break;
			}


			
 
			if( eOriginalNotifyState == eWaitingNotification )
			{
				( void ) uxListRemove( &( pxTCB->xGenericListItem ) );
				 ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );

				 
				if( ( ( ( &( pxTCB->xEventListItem ) )->pvContainer ) == 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

				if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
				{
					
 
					{ ( * ( ( volatile uint32_t * ) 0xFFFFFFB0 ) ) = ( 0x7500UL ); asm( " DSB " ); asm( " ISB " ); };
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

		return xReturn;
	}

 


	BaseType_t xTaskNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, BaseType_t *pxHigherPriorityTaskWoken )
	{
	TCB_t * pxTCB;
	eNotifyValue eOriginalNotifyState;
	BaseType_t xReturn = ( ( ( BaseType_t ) 1 ) );
	UBaseType_t uxSavedInterruptStatus;

		if( ( xTaskToNotify ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

		














 
		;

		pxTCB = ( TCB_t * ) xTaskToNotify;

		uxSavedInterruptStatus = 0;
		{
			eOriginalNotifyState = pxTCB->eNotifyState;

			pxTCB->eNotifyState = eNotified;

			switch( eAction )
			{
				case eSetBits	:
					pxTCB->ulNotifiedValue |= ulValue;
					break;

				case eIncrement	:
					( pxTCB->ulNotifiedValue )++;
					break;

				case eSetValueWithOverwrite	:
					pxTCB->ulNotifiedValue = ulValue;
					break;

				case eSetValueWithoutOverwrite :
					if( eOriginalNotifyState != eNotified )
					{
						pxTCB->ulNotifiedValue = ulValue;
					}
					else
					{
						 
						xReturn = ( ( ( BaseType_t ) 0 ) );
					}
					break;

				case eNoAction :
					
 
					break;
			}


			
 
			if( eOriginalNotifyState == eWaitingNotification )
			{
				 
				if( ( ( ( &( pxTCB->xEventListItem ) )->pvContainer ) == 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

				if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
				{
					( void ) uxListRemove( &( pxTCB->xGenericListItem ) );
					 ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );
				}
				else
				{
					
 
					vListInsertEnd( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
				}

				if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
				{
					
 
					if( pxHigherPriorityTaskWoken != 0 )
					{
						*pxHigherPriorityTaskWoken = ( ( BaseType_t ) 1 );
					}
				}
				else
				{
					;
				}
			}
		}
		( void ) uxSavedInterruptStatus;

		return xReturn;
	}

 


	void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken )
	{
	TCB_t * pxTCB;
	eNotifyValue eOriginalNotifyState;
	UBaseType_t uxSavedInterruptStatus;

		if( ( xTaskToNotify ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

		














 
		;

		pxTCB = ( TCB_t * ) xTaskToNotify;

		uxSavedInterruptStatus = 0;
		{
			eOriginalNotifyState = pxTCB->eNotifyState;
			pxTCB->eNotifyState = eNotified;

			
 
			( pxTCB->ulNotifiedValue )++;

			
 
			if( eOriginalNotifyState == eWaitingNotification )
			{
				 
				if( ( ( ( &( pxTCB->xEventListItem ) )->pvContainer ) == 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

				if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
				{
					( void ) uxListRemove( &( pxTCB->xGenericListItem ) );
					 ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );
				}
				else
				{
					
 
					vListInsertEnd( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
				}

				if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
				{
					
 
					if( pxHigherPriorityTaskWoken != 0 )
					{
						*pxHigherPriorityTaskWoken = ( ( BaseType_t ) 1 );
					}
				}
				else
				{
					;
				}
			}
		}
		( void ) uxSavedInterruptStatus;
	}


 







































































 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



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







































































 










 
typedef void * QueueHandle_t;





 
typedef void * QueueSetHandle_t;





 
typedef void * QueueSetMemberHandle_t;

 

 
























































 
















































































 
















































































 


















































































 

















































































 






















































































 
BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition ) __attribute__ ((section(".kernelTEXT")));






























































































 































 
BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue, void * const pvBuffer ) __attribute__ ((section(".kernelTEXT")));



























































































 

































































































 
BaseType_t xQueueGenericReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait, const BaseType_t xJustPeek ) __attribute__ ((section(".kernelTEXT")));













 
UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue ) __attribute__ ((section(".kernelTEXT")));















 
UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue ) __attribute__ ((section(".kernelTEXT")));












 
void vQueueDelete( QueueHandle_t xQueue ) __attribute__ ((section(".kernelTEXT")));




































































 





































































 





















































































 








































































 













































































 
BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition ) __attribute__ ((section(".kernelTEXT")));
BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue, BaseType_t * const pxHigherPriorityTaskWoken ) __attribute__ ((section(".kernelTEXT")));























































































 
BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken ) __attribute__ ((section(".kernelTEXT")));




 
BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue ) __attribute__ ((section(".kernelTEXT")));
BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue ) __attribute__ ((section(".kernelTEXT")));
UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue ) __attribute__ ((section(".kernelTEXT")));















 
BaseType_t xQueueAltGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, BaseType_t xCopyPosition );
BaseType_t xQueueAltGenericReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait, BaseType_t xJustPeeking );









 
BaseType_t xQueueCRSendFromISR( QueueHandle_t xQueue, const void *pvItemToQueue, BaseType_t xCoRoutinePreviouslyWoken );
BaseType_t xQueueCRReceiveFromISR( QueueHandle_t xQueue, void *pvBuffer, BaseType_t *pxTaskWoken );
BaseType_t xQueueCRSend( QueueHandle_t xQueue, const void *pvItemToQueue, TickType_t xTicksToWait );
BaseType_t xQueueCRReceive( QueueHandle_t xQueue, void *pvBuffer, TickType_t xTicksToWait );





 
QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType ) __attribute__ ((section(".kernelTEXT")));
QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount ) __attribute__ ((section(".kernelTEXT")));
void* xQueueGetMutexHolder( QueueHandle_t xSemaphore ) __attribute__ ((section(".kernelTEXT")));




 
BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex, TickType_t xTicksToWait ) __attribute__ ((section(".kernelTEXT")));
BaseType_t xQueueGiveMutexRecursive( QueueHandle_t pxMutex ) __attribute__ ((section(".kernelTEXT")));






 






















 










 




 
QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType ) __attribute__ ((section(".kernelTEXT")));
















































 
QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength ) __attribute__ ((section(".kernelTEXT")));






















 
BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) __attribute__ ((section(".kernelTEXT")));

















 
BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) __attribute__ ((section(".kernelTEXT")));


































 
QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet, const TickType_t xTicksToWait ) __attribute__ ((section(".kernelTEXT")));



 
QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet ) __attribute__ ((section(".kernelTEXT")));

 
void vQueueWaitForMessageRestricted( QueueHandle_t xQueue, TickType_t xTicksToWait ) __attribute__ ((section(".kernelTEXT")));
BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue ) __attribute__ ((section(".kernelTEXT")));
void vQueueSetQueueNumber( QueueHandle_t xQueue, UBaseType_t uxQueueNumber ) __attribute__ ((section(".kernelTEXT")));
UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue ) __attribute__ ((section(".kernelTEXT")));
uint8_t ucQueueGetQueueType( QueueHandle_t xQueue ) __attribute__ ((section(".kernelTEXT")));









 


 











 


 






 
typedef struct QueueDefinition
{
	int8_t *pcHead;					 
	int8_t *pcTail;					 
	int8_t *pcWriteTo;				 

	union							 
	{
		int8_t *pcReadFrom;			 
		UBaseType_t uxRecursiveCallCount; 
	} u;

	List_t xTasksWaitingToSend;		 
	List_t xTasksWaitingToReceive;	 

	volatile UBaseType_t uxMessagesWaiting; 
	UBaseType_t uxLength;			 
	UBaseType_t uxItemSize;			 

	volatile BaseType_t xRxLock;	 
	volatile BaseType_t xTxLock;	 



} xQUEUE;


 
typedef xQUEUE Queue_t;

 




 








 
static void prvUnlockQueue( Queue_t * const pxQueue ) __attribute__ ((section(".kernelTEXT")));





 
static BaseType_t prvIsQueueEmpty( const Queue_t *pxQueue ) __attribute__ ((section(".kernelTEXT")));





 
static BaseType_t prvIsQueueFull( const Queue_t *pxQueue ) __attribute__ ((section(".kernelTEXT")));




 
static BaseType_t prvCopyDataToQueue( Queue_t * const pxQueue, const void *pvItemToQueue, const BaseType_t xPosition ) __attribute__ ((section(".kernelTEXT")));



 
static void prvCopyDataFromQueue( Queue_t * const pxQueue, void * const pvBuffer ) __attribute__ ((section(".kernelTEXT")));


 




 
 

BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue )
{
Queue_t * const pxQueue = ( Queue_t * ) xQueue;

	if( ( pxQueue ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

	vPortEnterCritical();
	{
		pxQueue->pcTail = pxQueue->pcHead + ( pxQueue->uxLength * pxQueue->uxItemSize );
		pxQueue->uxMessagesWaiting = ( UBaseType_t ) 0U;
		pxQueue->pcWriteTo = pxQueue->pcHead;
		pxQueue->u.pcReadFrom = pxQueue->pcHead + ( ( pxQueue->uxLength - ( UBaseType_t ) 1U ) * pxQueue->uxItemSize );
		pxQueue->xRxLock = ( ( BaseType_t ) -1 );
		pxQueue->xTxLock = ( ( BaseType_t ) -1 );

		if( xNewQueue == ( ( BaseType_t ) 0 ) )
		{
			



 
			if( ( ( BaseType_t ) ( ( &( pxQueue ->xTasksWaitingToSend ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
			{
				if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) == ( ( BaseType_t ) 1 ) )
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
		else
		{
			 
			vListInitialise( &( pxQueue->xTasksWaitingToSend ) );
			vListInitialise( &( pxQueue->xTasksWaitingToReceive ) );
		}
	}
	vPortExitCritical();

	
 
	return ( ( ( BaseType_t ) 1 ) );
}
 

QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType )
{
Queue_t *pxNewQueue;
size_t xQueueSizeInBytes;
QueueHandle_t xReturn = 0;
int8_t *pcAllocatedBuffer;

	
 
	( void ) ucQueueType;

	if( ( uxQueueLength > ( UBaseType_t ) 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

	if( uxItemSize == ( UBaseType_t ) 0 )
	{
		 
		xQueueSizeInBytes = ( size_t ) 0;
	}
	else
	{
		
 
		xQueueSizeInBytes = ( size_t ) ( uxQueueLength * uxItemSize ) + ( size_t ) 1;  
	}

	 
	pcAllocatedBuffer = ( int8_t * ) pvPortMalloc( sizeof( Queue_t ) + xQueueSizeInBytes );

	if( pcAllocatedBuffer != 0 )
	{
		pxNewQueue = ( Queue_t * ) pcAllocatedBuffer;  

		if( uxItemSize == ( UBaseType_t ) 0 )
		{
			


 
			pxNewQueue->pcHead = ( int8_t * ) pxNewQueue;
		}
		else
		{
			
 
			pxNewQueue->pcHead = pcAllocatedBuffer + sizeof( Queue_t );
		}

		
 
		pxNewQueue->uxLength = uxQueueLength;
		pxNewQueue->uxItemSize = uxItemSize;
		( void ) xQueueGenericReset( pxNewQueue, ( ( BaseType_t ) 1 ) );



		;
		xReturn = pxNewQueue;
	}
	else
	{
		;
	}

	if( ( xReturn ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

	return xReturn;
}
 


	QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType )
	{
	Queue_t *pxNewQueue;

		
 
		( void ) ucQueueType;

		 
		pxNewQueue = ( Queue_t * ) pvPortMalloc( sizeof( Queue_t ) );
		if( pxNewQueue != 0 )
		{
			 
			pxNewQueue->pcTail = 0;
			pxNewQueue->pcHead = 0;

			
 
			pxNewQueue->pcWriteTo = 0;
			pxNewQueue->u.pcReadFrom = 0;

			

 
			pxNewQueue->uxMessagesWaiting = ( UBaseType_t ) 0U;
			pxNewQueue->uxLength = ( UBaseType_t ) 1U;
			pxNewQueue->uxItemSize = ( UBaseType_t ) 0U;
			pxNewQueue->xRxLock = ( ( BaseType_t ) -1 );
			pxNewQueue->xTxLock = ( ( BaseType_t ) -1 );



			 
			vListInitialise( &( pxNewQueue->xTasksWaitingToSend ) );
			vListInitialise( &( pxNewQueue->xTasksWaitingToReceive ) );

			;

			 
			( void ) xQueueGenericSend( pxNewQueue, 0, ( TickType_t ) 0U, ( ( BaseType_t ) 0 ) );
		}
		else
		{
			;
		}

		if( ( pxNewQueue ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
		return pxNewQueue;
	}

 

 

 

 

 

BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition )
{
BaseType_t xEntryTimeSet = ( ( BaseType_t ) 0 ), xYieldRequired;
TimeOut_t xTimeOut;
Queue_t * const pxQueue = ( Queue_t * ) xQueue;

	if( ( pxQueue ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	if( ( !( ( pvItemToQueue == 0 ) && ( pxQueue ->uxItemSize != ( UBaseType_t ) 0U ) ) ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	if( ( !( ( xCopyPosition == ( ( BaseType_t ) 2 ) ) && ( pxQueue ->uxLength != 1 ) ) ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	{
		if( ( !( ( xTaskGetSchedulerState() == ( ( BaseType_t ) 0 ) ) && ( xTicksToWait != 0 ) ) ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	}


	

 
	for( ;; )
	{
		vPortEnterCritical();
		{
			


 
			if( ( pxQueue->uxMessagesWaiting < pxQueue->uxLength ) || ( xCopyPosition == ( ( BaseType_t ) 2 ) ) )
			{
				;
				xYieldRequired = prvCopyDataToQueue( pxQueue, pvItemToQueue, xCopyPosition );

				{
					
 
					if( ( ( BaseType_t ) ( ( &( pxQueue ->xTasksWaitingToReceive ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
					{
						if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) == ( ( BaseType_t ) 1 ) )
						{
							


 
							{ ( * ( ( volatile uint32_t * ) 0xFFFFFFB0 ) ) = ( 0x7500UL ); asm( " DSB " ); asm( " ISB " ); };
						}
						else
						{
							;
						}
					}
					else if( xYieldRequired != ( ( BaseType_t ) 0 ) )
					{
						


 
						{ ( * ( ( volatile uint32_t * ) 0xFFFFFFB0 ) ) = ( 0x7500UL ); asm( " DSB " ); asm( " ISB " ); };
					}
					else
					{
						;
					}
				}

				vPortExitCritical();
				return ( ( ( BaseType_t ) 1 ) );
			}
			else
			{
				if( xTicksToWait == ( TickType_t ) 0 )
				{
					
 
					vPortExitCritical();

					
 
					;
					return ( ( BaseType_t ) 0 );
				}
				else if( xEntryTimeSet == ( ( BaseType_t ) 0 ) )
				{
					
 
					vTaskSetTimeOutState( &xTimeOut );
					xEntryTimeSet = ( ( BaseType_t ) 1 );
				}
				else
				{
					 
					;
				}
			}
		}
		vPortExitCritical();

		
 

		vTaskSuspendAll();
		vPortEnterCritical(); { if( ( pxQueue )->xRxLock == ( ( BaseType_t ) -1 ) ) { ( pxQueue )->xRxLock = ( ( BaseType_t ) 0 ); } if( ( pxQueue )->xTxLock == ( ( BaseType_t ) -1 ) ) { ( pxQueue )->xTxLock = ( ( BaseType_t ) 0 ); } } vPortExitCritical();

		 
		if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == ( ( BaseType_t ) 0 ) )
		{
			if( prvIsQueueFull( pxQueue ) != ( ( BaseType_t ) 0 ) )
			{
				;
				vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToSend ), xTicksToWait );

				



 
				prvUnlockQueue( pxQueue );

				



 
				if( xTaskResumeAll() == ( ( BaseType_t ) 0 ) )
				{
					{ ( * ( ( volatile uint32_t * ) 0xFFFFFFB0 ) ) = ( 0x7500UL ); asm( " DSB " ); asm( " ISB " ); };
				}
			}
			else
			{
				 
				prvUnlockQueue( pxQueue );
				( void ) xTaskResumeAll();
			}
		}
		else
		{
			 
			prvUnlockQueue( pxQueue );
			( void ) xTaskResumeAll();

			
 
			;
			return ( ( BaseType_t ) 0 );
		}
	}
}
 

 

 

BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition )
{
BaseType_t xReturn;
UBaseType_t uxSavedInterruptStatus;
Queue_t * const pxQueue = ( Queue_t * ) xQueue;

	if( ( pxQueue ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	if( ( !( ( pvItemToQueue == 0 ) && ( pxQueue ->uxItemSize != ( UBaseType_t ) 0U ) ) ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	if( ( !( ( xCopyPosition == ( ( BaseType_t ) 2 ) ) && ( pxQueue ->uxLength != 1 ) ) ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

	












 
	;

	



 
	uxSavedInterruptStatus = 0;
	{
		if( ( pxQueue->uxMessagesWaiting < pxQueue->uxLength ) || ( xCopyPosition == ( ( BaseType_t ) 2 ) ) )
		{
			;

			



 
			( void ) prvCopyDataToQueue( pxQueue, pvItemToQueue, xCopyPosition );

			
 
			if( pxQueue->xTxLock == ( ( BaseType_t ) -1 ) )
			{
				{
					if( ( ( BaseType_t ) ( ( &( pxQueue ->xTasksWaitingToReceive ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
					{
						if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != ( ( BaseType_t ) 0 ) )
						{
							
 
							if( pxHigherPriorityTaskWoken != 0 )
							{
								*pxHigherPriorityTaskWoken = ( ( BaseType_t ) 1 );
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
				}
			}
			else
			{
				
 
				++( pxQueue->xTxLock );
			}

			xReturn = ( ( ( BaseType_t ) 1 ) );
		}
		else
		{
			;
			xReturn = ( ( BaseType_t ) 0 );
		}
	}
	( void ) uxSavedInterruptStatus;

	return xReturn;
}
 

BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue, BaseType_t * const pxHigherPriorityTaskWoken )
{
BaseType_t xReturn;
UBaseType_t uxSavedInterruptStatus;
Queue_t * const pxQueue = ( Queue_t * ) xQueue;

	if( ( pxQueue ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

	 
	if( ( pxQueue ->uxItemSize == 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

	












 
	;

	



 
	uxSavedInterruptStatus = 0;
	{
		

 
		if( pxQueue->uxMessagesWaiting < pxQueue->uxLength )
		{
			;

			



 

			++( pxQueue->uxMessagesWaiting );

			
 
			if( pxQueue->xTxLock == ( ( BaseType_t ) -1 ) )
			{
				{
					if( ( ( BaseType_t ) ( ( &( pxQueue ->xTasksWaitingToReceive ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
					{
						if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != ( ( BaseType_t ) 0 ) )
						{
							
 
							if( pxHigherPriorityTaskWoken != 0 )
							{
								*pxHigherPriorityTaskWoken = ( ( BaseType_t ) 1 );
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
				}
			}
			else
			{
				
 
				++( pxQueue->xTxLock );
			}

			xReturn = ( ( ( BaseType_t ) 1 ) );
		}
		else
		{
			;
			xReturn = ( ( BaseType_t ) 0 );
		}
	}
	( void ) uxSavedInterruptStatus;

	return xReturn;
}
 

BaseType_t xQueueGenericReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait, const BaseType_t xJustPeeking )
{
BaseType_t xEntryTimeSet = ( ( BaseType_t ) 0 );
TimeOut_t xTimeOut;
int8_t *pcOriginalReadPosition;
Queue_t * const pxQueue = ( Queue_t * ) xQueue;

	if( ( pxQueue ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	if( ( !( ( pvBuffer == 0 ) && ( pxQueue ->uxItemSize != ( UBaseType_t ) 0U ) ) ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	{
		if( ( !( ( xTaskGetSchedulerState() == ( ( BaseType_t ) 0 ) ) && ( xTicksToWait != 0 ) ) ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	}

	

 

	for( ;; )
	{
		vPortEnterCritical();
		{
			
 
			if( pxQueue->uxMessagesWaiting > ( UBaseType_t ) 0 )
			{
				
 
				pcOriginalReadPosition = pxQueue->u.pcReadFrom;

				prvCopyDataFromQueue( pxQueue, pvBuffer );

				if( xJustPeeking == ( ( BaseType_t ) 0 ) )
				{
					;

					 
					--( pxQueue->uxMessagesWaiting );

					{
						if( pxQueue->pcHead == 0 )
						{
							
 
							pxQueue->pcTail = ( int8_t * ) pvTaskIncrementMutexHeldCount();  
						}
						else
						{
							;
						}
					}

					if( ( ( BaseType_t ) ( ( &( pxQueue ->xTasksWaitingToSend ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
					{
						if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) == ( ( BaseType_t ) 1 ) )
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
				else
				{
					;

					
 
					pxQueue->u.pcReadFrom = pcOriginalReadPosition;

					
 
					if( ( ( BaseType_t ) ( ( &( pxQueue ->xTasksWaitingToReceive ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
					{
						
 
						if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != ( ( BaseType_t ) 0 ) )
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
				return ( ( ( BaseType_t ) 1 ) );
			}
			else
			{
				if( xTicksToWait == ( TickType_t ) 0 )
				{
					
 
					vPortExitCritical();
					;
					return ( ( BaseType_t ) 0 );
				}
				else if( xEntryTimeSet == ( ( BaseType_t ) 0 ) )
				{
					
 
					vTaskSetTimeOutState( &xTimeOut );
					xEntryTimeSet = ( ( BaseType_t ) 1 );
				}
				else
				{
					 
					;
				}
			}
		}
		vPortExitCritical();

		
 

		vTaskSuspendAll();
		vPortEnterCritical(); { if( ( pxQueue )->xRxLock == ( ( BaseType_t ) -1 ) ) { ( pxQueue )->xRxLock = ( ( BaseType_t ) 0 ); } if( ( pxQueue )->xTxLock == ( ( BaseType_t ) -1 ) ) { ( pxQueue )->xTxLock = ( ( BaseType_t ) 0 ); } } vPortExitCritical();

		 
		if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == ( ( BaseType_t ) 0 ) )
		{
			if( prvIsQueueEmpty( pxQueue ) != ( ( BaseType_t ) 0 ) )
			{
				;

				{
					if( pxQueue->pcHead == 0 )
					{
						vPortEnterCritical();
						{
							vTaskPriorityInherit( ( void * ) pxQueue->pcTail );
						}
						vPortExitCritical();
					}
					else
					{
						;
					}
				}

				vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
				prvUnlockQueue( pxQueue );
				if( xTaskResumeAll() == ( ( BaseType_t ) 0 ) )
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
				 
				prvUnlockQueue( pxQueue );
				( void ) xTaskResumeAll();
			}
		}
		else
		{
			prvUnlockQueue( pxQueue );
			( void ) xTaskResumeAll();
			;
			return ( ( BaseType_t ) 0 );
		}
	}
}
 

BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken )
{
BaseType_t xReturn;
UBaseType_t uxSavedInterruptStatus;
Queue_t * const pxQueue = ( Queue_t * ) xQueue;

	if( ( pxQueue ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	if( ( !( ( pvBuffer == 0 ) && ( pxQueue ->uxItemSize != ( UBaseType_t ) 0U ) ) ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

	












 
	;

	uxSavedInterruptStatus = 0;
	{
		 
		if( pxQueue->uxMessagesWaiting > ( UBaseType_t ) 0 )
		{
			;

			prvCopyDataFromQueue( pxQueue, pvBuffer );
			--( pxQueue->uxMessagesWaiting );

			


 
			if( pxQueue->xRxLock == ( ( BaseType_t ) -1 ) )
			{
				if( ( ( BaseType_t ) ( ( &( pxQueue ->xTasksWaitingToSend ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
				{
					if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != ( ( BaseType_t ) 0 ) )
					{
						
 
						if( pxHigherPriorityTaskWoken != 0 )
						{
							*pxHigherPriorityTaskWoken = ( ( BaseType_t ) 1 );
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
			}
			else
			{
				
 
				++( pxQueue->xRxLock );
			}

			xReturn = ( ( ( BaseType_t ) 1 ) );
		}
		else
		{
			xReturn = ( ( ( BaseType_t ) 0 ) );
			;
		}
	}
	( void ) uxSavedInterruptStatus;

	return xReturn;
}
 

BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue,  void * const pvBuffer )
{
BaseType_t xReturn;
UBaseType_t uxSavedInterruptStatus;
int8_t *pcOriginalReadPosition;
Queue_t * const pxQueue = ( Queue_t * ) xQueue;

	if( ( pxQueue ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	if( ( !( ( pvBuffer == 0 ) && ( pxQueue ->uxItemSize != ( UBaseType_t ) 0U ) ) ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	if( ( pxQueue ->uxItemSize != 0 ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };  

	












 
	;

	uxSavedInterruptStatus = 0;
	{
		 
		if( pxQueue->uxMessagesWaiting > ( UBaseType_t ) 0 )
		{
			;

			
 
			pcOriginalReadPosition = pxQueue->u.pcReadFrom;
			prvCopyDataFromQueue( pxQueue, pvBuffer );
			pxQueue->u.pcReadFrom = pcOriginalReadPosition;

			xReturn = ( ( ( BaseType_t ) 1 ) );
		}
		else
		{
			xReturn = ( ( ( BaseType_t ) 0 ) );
			;
		}
	}
	( void ) uxSavedInterruptStatus;

	return xReturn;
}
 

UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue )
{
UBaseType_t uxReturn;

	if( ( xQueue ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

	vPortEnterCritical();
	{
		uxReturn = ( ( Queue_t * ) xQueue )->uxMessagesWaiting;
	}
	vPortExitCritical();

	return uxReturn;
}  
 

UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue )
{
UBaseType_t uxReturn;
Queue_t *pxQueue;

	pxQueue = ( Queue_t * ) xQueue;
	if( ( pxQueue ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

	vPortEnterCritical();
	{
		uxReturn = pxQueue->uxLength - pxQueue->uxMessagesWaiting;
	}
	vPortExitCritical();

	return uxReturn;
}  
 

UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue )
{
UBaseType_t uxReturn;

	if( ( xQueue ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

	uxReturn = ( ( Queue_t * ) xQueue )->uxMessagesWaiting;

	return uxReturn;
}  
 

void vQueueDelete( QueueHandle_t xQueue )
{
Queue_t * const pxQueue = ( Queue_t * ) xQueue;

	if( ( pxQueue ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };

	;
	vPortFree( pxQueue );
}
 

 

 

 

static BaseType_t prvCopyDataToQueue( Queue_t * const pxQueue, const void *pvItemToQueue, const BaseType_t xPosition )
{
BaseType_t xReturn = ( ( BaseType_t ) 0 );

	if( pxQueue->uxItemSize == ( UBaseType_t ) 0 )
	{
		{
			if( pxQueue->pcHead == 0 )
			{
				 
				xReturn = xTaskPriorityDisinherit( ( void * ) pxQueue->pcTail );
				pxQueue->pcTail = 0;
			}
			else
			{
				;
			}
		}
	}
	else if( xPosition == ( ( BaseType_t ) 0 ) )
	{
		( void ) memcpy( ( void * ) pxQueue->pcWriteTo, pvItemToQueue, ( size_t ) pxQueue->uxItemSize );  
		pxQueue->pcWriteTo += pxQueue->uxItemSize;
		if( pxQueue->pcWriteTo >= pxQueue->pcTail )  
		{
			pxQueue->pcWriteTo = pxQueue->pcHead;
		}
		else
		{
			;
		}
	}
	else
	{
		( void ) memcpy( ( void * ) pxQueue->u.pcReadFrom, pvItemToQueue, ( size_t ) pxQueue->uxItemSize );  
		pxQueue->u.pcReadFrom -= pxQueue->uxItemSize;
		if( pxQueue->u.pcReadFrom < pxQueue->pcHead )  
		{
			pxQueue->u.pcReadFrom = ( pxQueue->pcTail - pxQueue->uxItemSize );
		}
		else
		{
			;
		}

		if( xPosition == ( ( BaseType_t ) 2 ) )
		{
			if( pxQueue->uxMessagesWaiting > ( UBaseType_t ) 0 )
			{
				


 
				--( pxQueue->uxMessagesWaiting );
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

	++( pxQueue->uxMessagesWaiting );

	return xReturn;
}
 

static void prvCopyDataFromQueue( Queue_t * const pxQueue, void * const pvBuffer )
{
	if( pxQueue->uxItemSize != ( UBaseType_t ) 0 )
	{
		pxQueue->u.pcReadFrom += pxQueue->uxItemSize;
		if( pxQueue->u.pcReadFrom >= pxQueue->pcTail )  
		{
			pxQueue->u.pcReadFrom = pxQueue->pcHead;
		}
		else
		{
			;
		}
		( void ) memcpy( ( void * ) pvBuffer, ( void * ) pxQueue->u.pcReadFrom, ( size_t ) pxQueue->uxItemSize );  
	}
}
 

static void prvUnlockQueue( Queue_t * const pxQueue )
{
	 

	


 
	vPortEnterCritical();
	{
		 
		while( pxQueue->xTxLock > ( ( BaseType_t ) 0 ) )
		{
			
 
			{
				
 
				if( ( ( BaseType_t ) ( ( &( pxQueue ->xTasksWaitingToReceive ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
				{
					if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != ( ( BaseType_t ) 0 ) )
					{
						
 
						vTaskMissedYield();
					}
					else
					{
						;
					}
				}
				else
				{
					break;
				}
			}

			--( pxQueue->xTxLock );
		}

		pxQueue->xTxLock = ( ( BaseType_t ) -1 );
	}
	vPortExitCritical();

	 
	vPortEnterCritical();
	{
		while( pxQueue->xRxLock > ( ( BaseType_t ) 0 ) )
		{
			if( ( ( BaseType_t ) ( ( &( pxQueue ->xTasksWaitingToSend ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
			{
				if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != ( ( BaseType_t ) 0 ) )
				{
					vTaskMissedYield();
				}
				else
				{
					;
				}

				--( pxQueue->xRxLock );
			}
			else
			{
				break;
			}
		}

		pxQueue->xRxLock = ( ( BaseType_t ) -1 );
	}
	vPortExitCritical();
}
 

static BaseType_t prvIsQueueEmpty( const Queue_t *pxQueue )
{
BaseType_t xReturn;

	vPortEnterCritical();
	{
		if( pxQueue->uxMessagesWaiting == ( UBaseType_t )  0 )
		{
			xReturn = ( ( BaseType_t ) 1 );
		}
		else
		{
			xReturn = ( ( BaseType_t ) 0 );
		}
	}
	vPortExitCritical();

	return xReturn;
}
 

BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue )
{
BaseType_t xReturn;

	if( ( xQueue ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	if( ( ( Queue_t * ) xQueue )->uxMessagesWaiting == ( UBaseType_t ) 0 )
	{
		xReturn = ( ( BaseType_t ) 1 );
	}
	else
	{
		xReturn = ( ( BaseType_t ) 0 );
	}

	return xReturn;
}  
 

static BaseType_t prvIsQueueFull( const Queue_t *pxQueue )
{
BaseType_t xReturn;

	vPortEnterCritical();
	{
		if( pxQueue->uxMessagesWaiting == pxQueue->uxLength )
		{
			xReturn = ( ( BaseType_t ) 1 );
		}
		else
		{
			xReturn = ( ( BaseType_t ) 0 );
		}
	}
	vPortExitCritical();

	return xReturn;
}
 

BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue )
{
BaseType_t xReturn;

	if( ( xQueue ) == ( ( BaseType_t ) 0 ) ) { vPortDisableInterrupts(); for( ;; ); };
	if( ( ( Queue_t * ) xQueue )->uxMessagesWaiting == ( ( Queue_t * ) xQueue )->uxLength )
	{
		xReturn = ( ( BaseType_t ) 1 );
	}
	else
	{
		xReturn = ( ( BaseType_t ) 0 );
	}

	return xReturn;
}  
 

 

 

 

 

 

 

 

 

 

 

 

 














/* Define function's */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

//  #define MAXBUFF (3200*2400*4) /* 30 MB, covers 3200x2400x4 (32bits) : Matrox HD cards (single headed) */

  /* Helper macros to make the code lighter, more readable and more maintainable */

/*
  #define EXDL_POP_DATA(t)     ((t*)(buff=(char*)&((t*)buff)[1]))[-1]
  #define EXDL_POP_LPTR(t)     &EXDL_POP_DATA(t)
*/
  
  /* Endian conversion, Kochise's way */

  #define B2L_08(t)            ((t)&0x0FF)
  #define B2L_16(t)            (B2L_08((t)>>8))|(B2L_08((t)&0x000000FF))<<8
  #define B2L_32(t)            (B2L_16((t)>>16))|(B2L_16((t)&0x0000FFFF))<<16
  #define B2L_64(t)            (B2L_32((t)>>32))|(B2L_32((t)&0xFFFFFFFF))<<32

  #define L2B_08(t)            B2L_08(t)
  #define L2B_16(t)            B2L_16(t)
  #define L2B_32(t)            B2L_32(t)
  #define L2B_64(t)            B2L_64(t)

  /* Buffer accessor */

  #define GETTEMP_BUFFER(t)    char* start=buff=exdl_get_temp_buff(sd,t);
  #define SDLSEND_BUFFER()     exdl_send(sd,buff-start);

  #define CATCH_RESULT(t)      t exdl_res=
  #define THROW_RESULT(t)      GETTEMP_BUFFER(sizeof(t)) *(t*)buff=(t)exdl_res; buff+=sizeof(t); SDLSEND_BUFFER()
//  #define THROW_POINTER()      THROW_RESULT(long long)
  #define THROW_POINTER()      THROW_RESULT(__int64)
  #define THROW_STRING()       GETTEMP_BUFFER(strlen(exdl_res)) strcpy(          buff,exdl_res); buff+=strlen(exdl_res); SDLSEND_BUFFER()
  #define THROW_WSTRING()      GETTEMP_BUFFER(wcslen(exdl_res)) wcscpy((wchar_t*)buff,exdl_res); buff+=wcslen(exdl_res); SDLSEND_BUFFER()
//  #define THROW_FRAME()        ;
  #define THROW_FRAME()        buff+=exdl_size; SDLSEND_BUFFER()

  /* Incoming <<stack>> (FROM Erlang) format descriptor and accessor */

  #define STACK_FMT_BEGIN()    typedef struct{
  #define STACK_FMT_DATA(s,t)  s t;
  #define STACK_FMT_LPTR(s,t)  union { __int64 t##_ptr64; s t; };
  #define STACK_FMT_END()      }sStack,*psStack;

  #define STACK_GET_DATA(t)    ((psStack)buff)->t
  #define STACK_SET_DATA(t)    STACK_GET_DATA(t)
  #define STACK_GET_ADDR(t)    &(((psStack)buff)->t)
  #define STACK_GET_SIZE()     sizeof(sStack)

  /* Outgoing <<frame>> (TO Erlang) format descriptor, allocator and accessor */

  #define FRAME_FMT_BEGIN()    typedef struct{
  #define FRAME_FMT_DATA(s,t)  s t;
  #define FRAME_FMT_LPTR(s,t)  union { __int64 t##_ptr64; t; };
  #define FRAME_FMT_SIZE(s)    }sFrame,*psFrame; int exdl_size=sizeof(sFrame)+s; GETTEMP_BUFFER(exdl_size);
  #define FRAME_FMT_END()      FRAME_FMT_SIZE(0)

  #define FRAME_SET_DATA(t)    ((psFrame)buff)->t
  #define FRAME_GET_DATA(t)    FRAME_SET_DATA(t)
  #define FRAME_GET_ADDR(t)    &((psFrame)buff)->t

  #define error() \
  { fprintf(stderr, "Error in %s:%d \n\r", __FILE__, __LINE__); return; }

  typedef struct
  { char*         base
  ; size_t        size
  ; ErlDrvBinary* bin
  ;} EsdlBinRef;

  typedef struct exdl_data_def
  { void*        driver_data /* Port or Driver specific data */

  /* I have put these two statically at the bottom of exdl.h */
//  ; exdl_fun*    fun_tab     /* Pointers to functions */
//  ; char**       str_tab     /* Pointers to function names */

  ; int          op          /* Current (or last) function */

  ; ErlDrvSizeT  len         /* Length of message buffer */
  ; void*        buff        /* Pointer to message buffer */

  ; void*        temp_bin    /* Temporary binary */
  ; EsdlBinRef   bin[3]      /* Argument binaries */
  ; int          next_bin    /* Next binary */
  ;} exdl_data, *exdl_data_ptr;

  /* Makes source file definitively lighter and brighter */

  #define EXDL_DRIVAPI_1            (exdl_data_ptr sd)
  #define EXDL_DRIVAPI_2            (exdl_data_ptr sd, ErlDrvSizeT len)
  #define EXDL_DRIVAPI_3            (exdl_data_ptr sd, ErlDrvSizeT len, char* buff)

  #define EXDL_API(t)               void t EXDL_DRIVAPI_3

  typedef void     (*exdl_fun)      EXDL_DRIVAPI_3;
  typedef exdl_fun (*exdl_load_fun) (void);

  void    exdl_send                 EXDL_DRIVAPI_2;
  char*   exdl_getbuff              EXDL_DRIVAPI_2;
  char*   exdl_get_temp_buff        EXDL_DRIVAPI_2;
  void    exdl_free_binaries        EXDL_DRIVAPI_1;

  void    init_fps                  EXDL_DRIVAPI_1;
  void    init_alexts               EXDL_DRIVAPI_1;
  void    init_glexts               EXDL_DRIVAPI_1;

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */

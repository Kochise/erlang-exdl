/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_conv.h,v 1.3 2005/06/29 14:45:38 dgud Exp $
 */

/***************************
 Some Macros to the byte conversion 
 between the byte buffer and real types.
 This code is borrowed from the erl_interface 
 file putget.h 
****************************/

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifndef BYTECONV_H
  #define BYTECONV_H

  #ifndef FLAVOUR_WOGGLE
    #include <SDL_byteorder.h>
  #endif

  /* ==== PUT ==== */

  #define put8(s,n)              \
  do                             \
  {                              \
    *((Uint8*)s) = n;            \
    (s)   += 1;                  \
  }                              \
  while(0)

  /* ==== GET ==== */

  #define get8(s)                \
  (                              \
    (s) += 1                     \
  , (((Uint8*)(s))[-1] & 0xff)   \
  )

  #if (SDL_BYTEORDER == SDL_BIG_ENDIAN)

    /* ==== PUT ==== */

    /* -- 16 bits -- */

    #define put16le(s,n)           \
    {                              \
      (s)[1] = ((n) >>  8) & 0xff; \
      (s)[0] =  (n)        & 0xff; \
      (s)   += 2;                  \
    }

    #define put16be(s,n)           \
    {                              \
      *((Uint16*)s) = n;           \
      (s) += 2;                    \
    }
              
    /* -- 32 bits -- */

    #define put32le(s,n)           \
    {                              \
      (s)[3] = ((n) >> 24) & 0xff; \
      (s)[2] = ((n) >> 16) & 0xff; \
      (s)[1] = ((n) >>  8) & 0xff; \
      (s)[0] =  (n)        & 0xff; \
      (s)   += 4;                  \
    }

    #define put32be(s,n)           \
    {                              \
      *((Uint32*)s) = n;           \
      (s) += 4;                    \
    }
     
    /* -- FLOAT -- */

    #define putFloat32be(s,n) \
    {                         \
      Uint8* t = (Uint8*) &n; \
      (s)[0]   = t[0];        \
      (s)[1]   = t[1];        \
      (s)[2]   = t[2];        \
      (s)[3]   = t[3];        \
      (s)     += 4;           \
    }

    #define putFloat64be(s,n) \
    {                         \
      Uint8* t = (Uint8*) &n; \
      (s)[0]   = t[0];        \
      (s)[1]   = t[1];        \
      (s)[2]   = t[2];        \
      (s)[3]   = t[3];        \
      (s)[4]   = t[4];        \
      (s)[5]   = t[5];        \
      (s)[6]   = t[6];        \
      (s)[7]   = t[7];        \
      (s)     += 8;           \
    }

    /* ==== GET ==== */

    /* -- 16 bits -- */
            
    #define get16le(s)             \
    (                              \
      (s) += 2                     \
    , (((Uint8*)(s))[-1] << 8)     \
    | (((Uint8*)(s))[-2]     )     \
    )

    #define get16be(s)             \
    (                              \
      (s) += 2                     \
    , (((Uint16*)(s))[-1])         \
    )

    /* -- 32 bits -- */
            
    #define get32le(s)             \
    (                              \
      (s) += 4                     \
    , (((Uint8*)(s))[-1] << 24)    \
    | (((Uint8*)(s))[-2] << 16)    \
    | (((Uint8*)(s))[-3] <<  8)    \
    | (((Uint8*)(s))[-4]      )    \
    )

    #define get32be(s)             \
    (                              \
      (s) += 4                     \
    , (((Uint32*)(s))[-1])         \
    )

  #else /* (SDL_BYTEORDER != SDL_BIG_ENDIAN) */

    /* -- 16 bits -- */

    #define put16le(s,n)           \
    {                              \
      *((Uint16*)s) = n;           \
      (s) += 2;                    \
    }
   
    #define put16be(s,n)           \
    {                              \
      (s)[1] = ((n) >>  8) & 0xff; \
      (s)[0] =  (n)        & 0xff; \
      (s)   += 2;                  \
    }
            
    /* -- 32 bits -- */

    #define put32le(s,n)           \
    {                              \
      *((Uint32*)s) = n;           \
      (s) += 4;                    \
    }
     
    #define put32be(s,n)           \
    {                              \
      (s)[4] = (char) ((n) >> 24) & 0xff; \
      (s)[3] = (char) ((n) >> 16) & 0xff; \
      (s)[1] = (char) ((n) >>  8) & 0xff; \
      (s)[0] = (char) ((n)      ) & 0xff; \
      (s)   += 4;                  \
    }

    /* -- FLOAT -- */

    #define putFloat32be(s,n) \
    {                         \
      Uint8* t = (Uint8*) &n; \
      (s)[3]   =  t[0];       \
      (s)[2]   =  t[1];       \
      (s)[1]   =  t[2];       \
      (s)[0]   =  t[3];       \
      (s)     += 4;           \
    }

    #define putFloat64be(s,n) \
    {                         \
      Uint8* t = (Uint8*) &n; \
      (s)[7]   = t[0];        \
      (s)[6]   = t[1];        \
      (s)[5]   = t[2];        \
      (s)[4]   = t[3];        \
      (s)[3]   = t[4];        \
      (s)[2]   = t[5];        \
      (s)[1]   = t[6];        \
      (s)[0]   = t[7];        \
      (s)     += 8;           \
    }

    /* ==== GET ==== */

    /* -- 16 bits -- */
            
    #define get16le(s)             \
    (                              \
      (s) += 2                     \
    , (((Uint16*)(s))[-1])         \
    )

    #define get16be(s)             \
    (                              \
      (s) += 2                     \
    , (((Uint8*)(s))[-2] << 8)     \
    | (((Uint8*)(s))[-1]     )     \
    )

    /* -- 32 bits -- */
            
    #define get32le(s)             \
    (                              \
      (s) += 4                     \
    , (((Uint32*)(s))[-1])         \
    )

    #define get32be(s)             \
    (                              \
      (s) += 4                     \
    , (((Uint8*)(s))[-4] << 24)    \
    | (((Uint8*)(s))[-3] << 16)    \
    | (((Uint8*)(s))[-2] <<  8)    \
    | (((Uint8*)(s))[-1]      )    \
    )

  #endif /* (SDL_BYTEORDER == SDL_BIG_ENDIAN) */

#endif /* BYTECONV_H */

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */

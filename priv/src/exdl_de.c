/*
 *   Copyright(c) 2008 David Koch
 *
 *   See the file "license.terms" for information on usage and redistribution
 *   of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *      $Id: exdl_de.c,v 1.0 2008/12/29 14:45:38 kochise Exp $
 */

#include "exdl.h"

#ifdef COMPILE_DE

/* odeconfig.h */

/* compatibility.h */

/* common.h */

EXDL_API(ede_getConfiguration)
{
  /* const char* dGetConfiguration(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(const char*)

    dGetConfiguration
    (
    );

  THROW_STRING()
}

EXDL_API(ede_checkConfiguration)
{
  /* int dCheckConfiguration(const char* token) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(char, token[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    dCheckConfiguration
    ( STACK_GET_ADDR(token)
    );

  THROW_RESULT(int)
}

/* odeinit.h */

EXDL_API(ede_initODE)
{
  /* void dInitODE(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  dInitODE
  (
  );
}

EXDL_API(ede_initODE2)
{
  /* int dInitODE2(unsigned int uiInitFlags) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(unsigned int, uiInitFlags)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dInitODE2
    ( STACK_GET_DATA(uiInitFlags)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_allocateODEDataForThread)
{
  /* int dAllocateODEDataForThread(unsigned int uiAllocateFlags) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(unsigned int, uiAllocateFlags)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dAllocateODEDataForThread
    ( STACK_GET_DATA(uiAllocateFlags)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_cleanupODEAllDataForThread)
{
  /* void dCleanupODEAllDataForThread() */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  dCleanupODEAllDataForThread
  (
  );
}

EXDL_API(ede_closeODE)
{
  /* void dCloseODE(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  dCloseODE
  (
  );
}

/* contact.h */

/* error.h */

EXDL_API(ede_setErrorHandler)
{
  /* void dSetErrorHandler(dMessageFunction* fn) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dMessageFunction, fn[])
  STACK_FMT_END()

    dSetErrorHandler
    ( STACK_GET_ADDR(fn)
    );
}

EXDL_API(ede_setDebugHandler)
{
  /* void dSetDebugHandler(dMessageFunction* fn) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dMessageFunction, fn[])
  STACK_FMT_END()

    dSetDebugHandler
    ( STACK_GET_ADDR(fn)
    );
}

EXDL_API(ede_setMessageHandler)
{
  /* void dSetMessageHandler(dMessageFunction* fn) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dMessageFunction, fn[])
  STACK_FMT_END()

    dSetMessageHandler
    ( STACK_GET_ADDR(fn)
    );
}

EXDL_API(ede_getErrorHandler)
{
  /* dMessageFunction* dGetErrorHandler(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(dMessageFunction*)

    dGetErrorHandler
    (
    );

  THROW_POINTER()
}

EXDL_API(ede_getDebugHandler)
{
  /* dMessageFunction* dGetDebugHandler(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(dMessageFunction*)

    dGetDebugHandler
    (
    );

  THROW_POINTER()
}

EXDL_API(ede_getMessageHandler)
{
  /* dMessageFunction* dGetMessageHandler(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(dMessageFunction*)

    dGetMessageHandler
    (
    );

  THROW_POINTER()
}

EXDL_API(ede_error)
{
  /* void dError(int num, const char* msg, ...) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
 ...)
  STACK_FMT_END()

    dError
    ( STACK_GET_DATA(...)
    );
}

EXDL_API(ede_debug)
{
  /* void dDebug(int num, const char* msg, ...) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
BIBDIBI
  STACK_FMT_END()

    dDebug
    ( STACK_GET_DATA(...)
    );
}

EXDL_API(ede_message)
{
  /* void dMessage(int num, const char* msg, ...) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
BIBDIBI
  STACK_FMT_END()

    dMessage
    ( STACK_GET_DATA(...)
    );
}

/* memory.h */

EXDL_API(ede_setAllocHandler)
{
  /* void dSetAllocHandler(dAllocFunction* fn) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dAllocFunction, fn[])
  STACK_FMT_END()

    dSetAllocHandler
    ( STACK_GET_ADDR(fn)
    );
}

EXDL_API(ede_setReallocHandler)
{
  /* void dSetReallocHandler(dReallocFunction* fn) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dReallocFunction, fn[])
  STACK_FMT_END()

    dSetReallocHandler
    ( STACK_GET_ADDR(fn)
    );
}

EXDL_API(ede_setFreeHandler)
{
  /* void dSetFreeHandler(dFreeFunction* fn) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dFreeFunction, fn[])
  STACK_FMT_END()

    dSetFreeHandler
    ( STACK_GET_ADDR(fn)
    );
}

EXDL_API(ede_getAllocHandler)
{
  /* dAllocFunction* dGetAllocHandler(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(dAllocFunction*)

    dGetAllocHandler
    (
    );

  THROW_POINTER()
}

EXDL_API(ede_getReallocHandler)
{
  /* dReallocFunction* dGetReallocHandler(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(dReallocFunction*)

    dGetReallocHandler
    (
    );

  THROW_POINTER()
}

EXDL_API(ede_getFreeHandler)
{
  /* dFreeFunction* dGetFreeHandler(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(dFreeFunction*)

    dGetFreeHandler
    (
    );

  THROW_POINTER()
}

EXDL_API(ede_alloc)
{
  /* void* dAlloc(size_t size) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(size_t, size)
  STACK_FMT_END()

  CATCH_RESULT(void*)

    dAlloc
    ( STACK_GET_DATA(size)
    );

  THROW_POINTER()
}

EXDL_API(ede_realloc)
{
  /* void* dRealloc(void* ptr, size_t oldsize, size_t newsize) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(void*,  ptr)
    STACK_FMT_DATA(size_t, oldsize)
    STACK_FMT_DATA(size_t, newsize)
  STACK_FMT_END()

  CATCH_RESULT(void*)

    dRealloc
    ( STACK_GET_DATA(ptr)
   ,  STACK_GET_DATA(oldsize)
   ,  STACK_GET_DATA(newsize)
    );

  THROW_POINTER()
}

EXDL_API(ede_free)
{
  /* void dFree(void* ptr, size_t size) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(void*,  ptr)
    STACK_FMT_DATA(size_t, size)
  STACK_FMT_END()

    dFree
    ( STACK_GET_DATA(ptr)
   ,  STACK_GET_DATA(size)
    );
}

/* odemath.h */

EXDL_API(ede_safeNormalize3)
{
  /* int dSafeNormalize3(dVector3 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dVector3, a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dSafeNormalize3
    ( STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_safeNormalize4)
{
  /* int dSafeNormalize4(dVector4 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dVector4, a)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dSafeNormalize4
    ( STACK_GET_DATA(a)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_normalize3)
{
  /* void dNormalize3(dVector3 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dVector3, a)
  STACK_FMT_END()

    dNormalize3
    ( STACK_GET_DATA(a)
    );
}

EXDL_API(ede_normalize4)
{
  /* void dNormalize4(dVector4 a) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dVector4, a)
  STACK_FMT_END()

    dNormalize4
    ( STACK_GET_DATA(a)
    );
}

EXDL_API(ede_planeSpace)
{
  /* void dPlaneSpace(const dVector3 n, dVector3 p, dVector3 q) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dVector3, n)
    STACK_FMT_DATA(dVector3, p)
    STACK_FMT_DATA(dVector3, q)
  STACK_FMT_END()

    dPlaneSpace
    ( STACK_GET_DATA(n)
   ,  STACK_GET_DATA(p)
   ,  STACK_GET_DATA(q)
    );
}

/* matrix.h */

EXDL_API(ede_setZero)
{
  /* void dSetZero(dReal* a, int n) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, a)
    STACK_FMT_DATA(int,    n)
  STACK_FMT_END()

    dSetZero
    ( STACK_GET_DATA(a)
   ,  STACK_GET_DATA(n)
    );
}

EXDL_API(ede_setValue)
{
  /* void dSetValue(dReal* a, int n, dReal value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, a)
    STACK_FMT_DATA(int,    n)
    STACK_FMT_DATA(dReal,  value)
  STACK_FMT_END()

    dSetValue
    ( STACK_GET_DATA(a)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(value)
    );
}

EXDL_API(ede_dot)
{
  /* dReal dDot(const dReal* a, const dReal* b, int n) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, a)
    STACK_FMT_LPTR(dReal*, b)
    STACK_FMT_DATA(int,    n)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dDot
    ( STACK_GET_DATA(a)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(n)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_multiply0)
{
  /* void dMultiply0(dReal* A, const dReal* B, const dReal* C, int p, int q, int r) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, A)
    STACK_FMT_LPTR(dReal*, B)
    STACK_FMT_LPTR(dReal*, C)
    STACK_FMT_DATA(int,    p)
    STACK_FMT_DATA(int,    q)
    STACK_FMT_DATA(int,    r)
  STACK_FMT_END()

    dMultiply0
    ( STACK_GET_DATA(A)
   ,  STACK_GET_DATA(B)
   ,  STACK_GET_DATA(C)
   ,  STACK_GET_DATA(p)
   ,  STACK_GET_DATA(q)
   ,  STACK_GET_DATA(r)
    );
}

EXDL_API(ede_multiply1)
{
  /* void dMultiply1(dReal* A, const dReal* B, const dReal* C, int p, int q, int r) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, A)
    STACK_FMT_LPTR(dReal*, B)
    STACK_FMT_LPTR(dReal*, C)
    STACK_FMT_DATA(int,    p)
    STACK_FMT_DATA(int,    q)
    STACK_FMT_DATA(int,    r)
  STACK_FMT_END()

    dMultiply1
    ( STACK_GET_DATA(A)
   ,  STACK_GET_DATA(B)
   ,  STACK_GET_DATA(C)
   ,  STACK_GET_DATA(p)
   ,  STACK_GET_DATA(q)
   ,  STACK_GET_DATA(r)
    );
}

EXDL_API(ede_multiply2)
{
  /* void dMultiply2(dReal* A, const dReal* B, const dReal* C, int p, int q, int r) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, A)
    STACK_FMT_LPTR(dReal*, B)
    STACK_FMT_LPTR(dReal*, C)
    STACK_FMT_DATA(int,    p)
    STACK_FMT_DATA(int,    q)
    STACK_FMT_DATA(int,    r)
  STACK_FMT_END()

    dMultiply2
    ( STACK_GET_DATA(A)
   ,  STACK_GET_DATA(B)
   ,  STACK_GET_DATA(C)
   ,  STACK_GET_DATA(p)
   ,  STACK_GET_DATA(q)
   ,  STACK_GET_DATA(r)
    );
}

EXDL_API(ede_factorCholesky)
{
  /* int dFactorCholesky(dReal* A, int n) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, A)
    STACK_FMT_DATA(int,    n)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dFactorCholesky
    ( STACK_GET_DATA(A)
   ,  STACK_GET_DATA(n)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_solveCholesky)
{
  /* void dSolveCholesky(const dReal* L, dReal* b, int n) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, L)
    STACK_FMT_LPTR(dReal*, b)
    STACK_FMT_DATA(int,    n)
  STACK_FMT_END()

    dSolveCholesky
    ( STACK_GET_DATA(L)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(n)
    );
}

EXDL_API(ede_invertPDMatrix)
{
  /* int dInvertPDMatrix(const dReal* A, dReal* Ainv, int n) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, A)
    STACK_FMT_LPTR(dReal*, Ainv)
    STACK_FMT_DATA(int,    n)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dInvertPDMatrix
    ( STACK_GET_DATA(A)
   ,  STACK_GET_DATA(Ainv)
   ,  STACK_GET_DATA(n)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_isPositiveDefinite)
{
  /* int dIsPositiveDefinite(const dReal* A, int n) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, A)
    STACK_FMT_DATA(int,    n)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dIsPositiveDefinite
    ( STACK_GET_DATA(A)
   ,  STACK_GET_DATA(n)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_factorLDLT)
{
  /* void dFactorLDLT(dReal* A, dReal* d, int n, int nskip) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, A)
    STACK_FMT_LPTR(dReal*, d)
    STACK_FMT_DATA(int,    n)
    STACK_FMT_DATA(int,    nskip)
  STACK_FMT_END()

    dFactorLDLT
    ( STACK_GET_DATA(A)
   ,  STACK_GET_DATA(d)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(nskip)
    );
}

EXDL_API(ede_solveL1)
{
  /* void dSolveL1(const dReal* L, dReal* b, int n, int nskip) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, L)
    STACK_FMT_LPTR(dReal*, b)
    STACK_FMT_DATA(int,    n)
    STACK_FMT_DATA(int,    nskip)
  STACK_FMT_END()

    dSolveL1
    ( STACK_GET_DATA(L)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(nskip)
    );
}

EXDL_API(ede_solveL1T)
{
  /* void dSolveL1T(const dReal* L, dReal* b, int n, int nskip) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, L)
    STACK_FMT_LPTR(dReal*, b)
    STACK_FMT_DATA(int,    n)
    STACK_FMT_DATA(int,    nskip)
  STACK_FMT_END()

    dSolveL1T
    ( STACK_GET_DATA(L)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(nskip)
    );
}

EXDL_API(ede_vectorScale)
{
  /* void dVectorScale(dReal* a, const dReal* d, int n) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, a)
    STACK_FMT_LPTR(dReal*, d)
    STACK_FMT_DATA(int,    n)
  STACK_FMT_END()

    dVectorScale
    ( STACK_GET_DATA(a)
   ,  STACK_GET_DATA(d)
   ,  STACK_GET_DATA(n)
    );
}

EXDL_API(ede_solveLDLT)
{
  /* void dSolveLDLT(const dReal* L, const dReal* d, dReal* b, int n, int nskip) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, L)
    STACK_FMT_LPTR(dReal*, d)
    STACK_FMT_LPTR(dReal*, b)
    STACK_FMT_DATA(int,    n)
    STACK_FMT_DATA(int,    nskip)
  STACK_FMT_END()

    dSolveLDLT
    ( STACK_GET_DATA(L)
   ,  STACK_GET_DATA(d)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(nskip)
    );
}

EXDL_API(ede_lDLTAddTL)
{
  /* void dLDLTAddTL(dReal* L, dReal* d, const dReal* a, int n, int nskip) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, L)
    STACK_FMT_LPTR(dReal*, d)
    STACK_FMT_LPTR(dReal*, a)
    STACK_FMT_DATA(int,    n)
    STACK_FMT_DATA(int,    nskip)
  STACK_FMT_END()

    dLDLTAddTL
    ( STACK_GET_DATA(L)
   ,  STACK_GET_DATA(d)
   ,  STACK_GET_DATA(a)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(nskip)
    );
}

EXDL_API(ede_lDLTRemove)
{
  /* void dLDLTRemove(dReal** A, const int* p, dReal* L, dReal* d, int n1, int n2, int r, int nskip) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal**,    A)
    STACK_FMT_LPTR(int*,       p)
    STACK_FMT_LPTR(dReal*,     L)
    STACK_FMT_LPTR(dReal*,     d)
    STACK_FMT_DATA(int,        n1)
    STACK_FMT_DATA(int,        n2)
    STACK_FMT_DATA(int,        r)
    STACK_FMT_DATA(int,        nskip)
  STACK_FMT_END()

    dLDLTRemove
    ( STACK_GET_DATA(A)
   ,  STACK_GET_DATA(p)
   ,  STACK_GET_DATA(L)
   ,  STACK_GET_DATA(d)
   ,  STACK_GET_DATA(n1)
   ,  STACK_GET_DATA(n2)
   ,  STACK_GET_DATA(r)
   ,  STACK_GET_DATA(nskip)
    );
}

EXDL_API(ede_removeRowCol)
{
  /* void dRemoveRowCol(dReal* A, int n, int nskip, int r) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, A)
    STACK_FMT_DATA(int,    n)
    STACK_FMT_DATA(int,    nskip)
    STACK_FMT_DATA(int,    r)
  STACK_FMT_END()

    dRemoveRowCol
    ( STACK_GET_DATA(A)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(nskip)
   ,  STACK_GET_DATA(r)
    );
}

/* timer.h */

EXDL_API(ede_stopwatchReset)
{
  /* void dStopwatchReset(dStopwatch* s) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dStopwatch, s[])
  STACK_FMT_END()

    dStopwatchReset
    ( STACK_GET_ADDR(s)
    );
}

EXDL_API(ede_stopwatchStart)
{
  /* void dStopwatchStart(dStopwatch* s) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dStopwatch, s[])
  STACK_FMT_END()

    dStopwatchStart
    ( STACK_GET_ADDR(s)
    );
}

EXDL_API(ede_stopwatchStop)
{
  /* void dStopwatchStop(dStopwatch* s) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dStopwatch, s[])
  STACK_FMT_END()

    dStopwatchStop
    ( STACK_GET_ADDR(s)
    );
}

EXDL_API(ede_stopwatchTime)
{
  /* double dStopwatchTime(dStopwatch* s) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dStopwatch, s[])
  STACK_FMT_END()

  CATCH_RESULT(double)

    dStopwatchTime
    ( STACK_GET_ADDR(s)
    );

  THROW_RESULT(double)
}

EXDL_API(ede_timerStart)
{
  /* void dTimerStart(const char* description) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(char, description[])
  STACK_FMT_END()

    dTimerStart
    ( STACK_GET_ADDR(description)
    );
}

EXDL_API(ede_timerNow)
{
  /* void dTimerNow(const char* description) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(char, description[])
  STACK_FMT_END()

    dTimerNow
    ( STACK_GET_ADDR(description)
    );
}

EXDL_API(ede_timerEnd)
{
  /* void dTimerEnd(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  dTimerEnd
  (
  );
}

EXDL_API(ede_timerReport)
{
  /* void dTimerReport(FILE* fout, int average) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(FILE*, fout)
    STACK_FMT_DATA(int,   average)
  STACK_FMT_END()

    dTimerReport
    ( STACK_GET_DATA(fout)
   ,  STACK_GET_DATA(average)
    );
}

EXDL_API(ede_timerTicksPerSecond)
{
  /* double dTimerTicksPerSecond(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(double)

    dTimerTicksPerSecond
    (
    );

  THROW_RESULT(double)
}

EXDL_API(ede_timerResolution)
{
  /* double dTimerResolution(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(double)

    dTimerResolution
    (
    );

  THROW_RESULT(double)
}

/* rotation.h */

EXDL_API(ede_rSetIdentity)
{
  /* void dRSetIdentity(dMatrix3 R) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dMatrix3, R)
  STACK_FMT_END()

    dRSetIdentity
    ( STACK_GET_DATA(R)
    );
}

EXDL_API(ede_rFromAxisAndAngle)
{
  /* void dRFromAxisAndAngle(dMatrix3 R, dReal ax, dReal ay, dReal az, dReal angle) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dMatrix3, R)
    STACK_FMT_DATA(dReal,    ax)
    STACK_FMT_DATA(dReal,    ay)
    STACK_FMT_DATA(dReal,    az)
    STACK_FMT_DATA(dReal,    angle)
  STACK_FMT_END()

    dRFromAxisAndAngle
    ( STACK_GET_DATA(R)
   ,  STACK_GET_DATA(ax)
   ,  STACK_GET_DATA(ay)
   ,  STACK_GET_DATA(az)
   ,  STACK_GET_DATA(angle)
    );
}

EXDL_API(ede_rFromEulerAngles)
{
  /* void dRFromEulerAngles(dMatrix3 R, dReal phi, dReal theta, dReal psi) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dMatrix3, R)
    STACK_FMT_DATA(dReal,    phi)
    STACK_FMT_DATA(dReal,    theta)
    STACK_FMT_DATA(dReal,    psi)
  STACK_FMT_END()

    dRFromEulerAngles
    ( STACK_GET_DATA(R)
   ,  STACK_GET_DATA(phi)
   ,  STACK_GET_DATA(theta)
   ,  STACK_GET_DATA(psi)
    );
}

EXDL_API(ede_rFrom2Axes)
{
  /* void dRFrom2Axes(dMatrix3 R, dReal ax, dReal ay, dReal az, dReal bx, dReal by, dReal bz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dMatrix3, R)
    STACK_FMT_DATA(dReal,    ax)
    STACK_FMT_DATA(dReal,    ay)
    STACK_FMT_DATA(dReal,    az)
    STACK_FMT_DATA(dReal,    bx)
    STACK_FMT_DATA(dReal,    by)
    STACK_FMT_DATA(dReal,    bz)
  STACK_FMT_END()

    dRFrom2Axes
    ( STACK_GET_DATA(R)
   ,  STACK_GET_DATA(ax)
   ,  STACK_GET_DATA(ay)
   ,  STACK_GET_DATA(az)
   ,  STACK_GET_DATA(bx)
   ,  STACK_GET_DATA(by)
   ,  STACK_GET_DATA(bz)
    );
}

EXDL_API(ede_rFromZAxis)
{
  /* void dRFromZAxis(dMatrix3 R, dReal ax, dReal ay, dReal az) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dMatrix3, R)
    STACK_FMT_DATA(dReal,    ax)
    STACK_FMT_DATA(dReal,    ay)
    STACK_FMT_DATA(dReal,    az)
  STACK_FMT_END()

    dRFromZAxis
    ( STACK_GET_DATA(R)
   ,  STACK_GET_DATA(ax)
   ,  STACK_GET_DATA(ay)
   ,  STACK_GET_DATA(az)
    );
}

EXDL_API(ede_qSetIdentity)
{
  /* void dQSetIdentity(dQuaternion q) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dQuaternion, q)
  STACK_FMT_END()

    dQSetIdentity
    ( STACK_GET_DATA(q)
    );
}

EXDL_API(ede_qFromAxisAndAngle)
{
  /* void dQFromAxisAndAngle(dQuaternion q, dReal ax, dReal ay, dReal az, dReal angle) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dQuaternion, q)
    STACK_FMT_DATA(dReal,       ax)
    STACK_FMT_DATA(dReal,       ay)
    STACK_FMT_DATA(dReal,       az)
    STACK_FMT_DATA(dReal,       angle)
  STACK_FMT_END()

    dQFromAxisAndAngle
    ( STACK_GET_DATA(q)
   ,  STACK_GET_DATA(ax)
   ,  STACK_GET_DATA(ay)
   ,  STACK_GET_DATA(az)
   ,  STACK_GET_DATA(angle)
    );
}

EXDL_API(ede_qMultiply0)
{
  /* void dQMultiply0(dQuaternion qa, const dQuaternion qb, const dQuaternion qc) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dQuaternion, qa)
    STACK_FMT_DATA(dQuaternion, qb)
    STACK_FMT_DATA(dQuaternion, qc)
  STACK_FMT_END()

    dQMultiply0
    ( STACK_GET_DATA(qa)
   ,  STACK_GET_DATA(qb)
   ,  STACK_GET_DATA(qc)
    );
}

EXDL_API(ede_qMultiply1)
{
  /* void dQMultiply1(dQuaternion qa, const dQuaternion qb, const dQuaternion qc) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dQuaternion, qa)
    STACK_FMT_DATA(dQuaternion, qb)
    STACK_FMT_DATA(dQuaternion, qc)
  STACK_FMT_END()

    dQMultiply1
    ( STACK_GET_DATA(qa)
   ,  STACK_GET_DATA(qb)
   ,  STACK_GET_DATA(qc)
    );
}

EXDL_API(ede_qMultiply2)
{
  /* void dQMultiply2(dQuaternion qa, const dQuaternion qb, const dQuaternion qc) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dQuaternion, qa)
    STACK_FMT_DATA(dQuaternion, qb)
    STACK_FMT_DATA(dQuaternion, qc)
  STACK_FMT_END()

    dQMultiply2
    ( STACK_GET_DATA(qa)
   ,  STACK_GET_DATA(qb)
   ,  STACK_GET_DATA(qc)
    );
}

EXDL_API(ede_qMultiply3)
{
  /* void dQMultiply3(dQuaternion qa, const dQuaternion qb, const dQuaternion qc) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dQuaternion, qa)
    STACK_FMT_DATA(dQuaternion, qb)
    STACK_FMT_DATA(dQuaternion, qc)
  STACK_FMT_END()

    dQMultiply3
    ( STACK_GET_DATA(qa)
   ,  STACK_GET_DATA(qb)
   ,  STACK_GET_DATA(qc)
    );
}

EXDL_API(ede_rfromQ)
{
  /* void dRfromQ(dMatrix3 R, const dQuaternion q) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dMatrix3,    R)
    STACK_FMT_DATA(dQuaternion, q)
  STACK_FMT_END()

    dRfromQ
    ( STACK_GET_DATA(R)
   ,  STACK_GET_DATA(q)
    );
}

EXDL_API(ede_qfromR)
{
  /* void dQfromR(dQuaternion q, const dMatrix3 R) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dQuaternion, q)
    STACK_FMT_DATA(dMatrix3,    R)
  STACK_FMT_END()

    dQfromR
    ( STACK_GET_DATA(q)
   ,  STACK_GET_DATA(R)
    );
}

EXDL_API(ede_dQfromW)
{
  /* void dDQfromW(dReal dq[4], const dVector3 w, const dQuaternion q) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dReal,       dq[4])
    STACK_FMT_DATA(dVector3,    w)
    STACK_FMT_DATA(dQuaternion, q)
  STACK_FMT_END()

    dDQfromW
    ( STACK_GET_DATA(dq[4])
   ,  STACK_GET_DATA(w)
   ,  STACK_GET_DATA(q)
    );
}

/* mass.h */

EXDL_API(ede_massCheck)
{
  /* int dMassCheck(const dMass* m) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dMass, m[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    dMassCheck
    ( STACK_GET_ADDR(m)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_massSetZero)
{
  /* void dMassSetZero(dMass* m) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dMass, m[])
  STACK_FMT_END()

    dMassSetZero
    ( STACK_GET_ADDR(m)
    );
}

EXDL_API(ede_massSetParameters)
{
  /* void dMassSetParameters(dMass* m, dReal themass, dReal cgx, dReal cgy, dReal cgz, dReal I11, dReal I22, dReal I33, dReal I12, dReal I13, dReal I23) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dMass*, m)
    STACK_FMT_DATA(dReal,  themass)
    STACK_FMT_DATA(dReal,  cgx)
    STACK_FMT_DATA(dReal,  cgy)
    STACK_FMT_DATA(dReal,  cgz)
    STACK_FMT_DATA(dReal,  I11)
    STACK_FMT_DATA(dReal,  I22)
    STACK_FMT_DATA(dReal,  I33)
    STACK_FMT_DATA(dReal,  I12)
    STACK_FMT_DATA(dReal,  I13)
    STACK_FMT_DATA(dReal,  I23)
  STACK_FMT_END()

    dMassSetParameters
    ( STACK_GET_DATA(m)
   ,  STACK_GET_DATA(themass)
   ,  STACK_GET_DATA(cgx)
   ,  STACK_GET_DATA(cgy)
   ,  STACK_GET_DATA(cgz)
   ,  STACK_GET_DATA(I11)
   ,  STACK_GET_DATA(I22)
   ,  STACK_GET_DATA(I33)
   ,  STACK_GET_DATA(I12)
   ,  STACK_GET_DATA(I13)
   ,  STACK_GET_DATA(I23)
    );
}

EXDL_API(ede_massSetSphere)
{
  /* void dMassSetSphere(dMass* m, dReal density, dReal radius) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dMass*, m)
    STACK_FMT_DATA(dReal,  density)
    STACK_FMT_DATA(dReal,  radius)
  STACK_FMT_END()

    dMassSetSphere
    ( STACK_GET_DATA(m)
   ,  STACK_GET_DATA(density)
   ,  STACK_GET_DATA(radius)
    );
}

EXDL_API(ede_massSetSphereTotal)
{
  /* void dMassSetSphereTotal(dMass* m, dReal total_mass, dReal radius) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dMass*, m)
    STACK_FMT_DATA(dReal,  total_mass)
    STACK_FMT_DATA(dReal,  radius)
  STACK_FMT_END()

    dMassSetSphereTotal
    ( STACK_GET_DATA(m)
   ,  STACK_GET_DATA(total_mass)
   ,  STACK_GET_DATA(radius)
    );
}

EXDL_API(ede_massSetCapsule)
{
  /* void dMassSetCapsule(dMass* m, dReal density, int direction, dReal radius, dReal length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dMass*, m)
    STACK_FMT_DATA(dReal,  density)
    STACK_FMT_DATA(int,    direction)
    STACK_FMT_DATA(dReal,  radius)
    STACK_FMT_DATA(dReal,  length)
  STACK_FMT_END()

    dMassSetCapsule
    ( STACK_GET_DATA(m)
   ,  STACK_GET_DATA(density)
   ,  STACK_GET_DATA(direction)
   ,  STACK_GET_DATA(radius)
   ,  STACK_GET_DATA(length)
    );
}

EXDL_API(ede_massSetCapsuleTotal)
{
  /* void dMassSetCapsuleTotal(dMass* m, dReal total_mass, int direction, dReal radius, dReal length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dMass*, m)
    STACK_FMT_DATA(dReal,  total_mass)
    STACK_FMT_DATA(int,    direction)
    STACK_FMT_DATA(dReal,  radius)
    STACK_FMT_DATA(dReal,  length)
  STACK_FMT_END()

    dMassSetCapsuleTotal
    ( STACK_GET_DATA(m)
   ,  STACK_GET_DATA(total_mass)
   ,  STACK_GET_DATA(direction)
   ,  STACK_GET_DATA(radius)
   ,  STACK_GET_DATA(length)
    );
}

EXDL_API(ede_massSetCylinder)
{
  /* void dMassSetCylinder(dMass* m, dReal density, int direction, dReal radius, dReal length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dMass*, m)
    STACK_FMT_DATA(dReal,  density)
    STACK_FMT_DATA(int,    direction)
    STACK_FMT_DATA(dReal,  radius)
    STACK_FMT_DATA(dReal,  length)
  STACK_FMT_END()

    dMassSetCylinder
    ( STACK_GET_DATA(m)
   ,  STACK_GET_DATA(density)
   ,  STACK_GET_DATA(direction)
   ,  STACK_GET_DATA(radius)
   ,  STACK_GET_DATA(length)
    );
}

EXDL_API(ede_massSetCylinderTotal)
{
  /* void dMassSetCylinderTotal(dMass* m, dReal total_mass, int direction, dReal radius, dReal length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dMass*, m)
    STACK_FMT_DATA(dReal,  total_mass)
    STACK_FMT_DATA(int,    direction)
    STACK_FMT_DATA(dReal,  radius)
    STACK_FMT_DATA(dReal,  length)
  STACK_FMT_END()

    dMassSetCylinderTotal
    ( STACK_GET_DATA(m)
   ,  STACK_GET_DATA(total_mass)
   ,  STACK_GET_DATA(direction)
   ,  STACK_GET_DATA(radius)
   ,  STACK_GET_DATA(length)
    );
}

EXDL_API(ede_massSetBox)
{
  /* void dMassSetBox(dMass* m, dReal density, dReal lx, dReal ly, dReal lz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dMass*, m)
    STACK_FMT_DATA(dReal,  density)
    STACK_FMT_DATA(dReal,  lx)
    STACK_FMT_DATA(dReal,  ly)
    STACK_FMT_DATA(dReal,  lz)
  STACK_FMT_END()

    dMassSetBox
    ( STACK_GET_DATA(m)
   ,  STACK_GET_DATA(density)
   ,  STACK_GET_DATA(lx)
   ,  STACK_GET_DATA(ly)
   ,  STACK_GET_DATA(lz)
    );
}

EXDL_API(ede_massSetBoxTotal)
{
  /* void dMassSetBoxTotal(dMass* m, dReal total_mass, dReal lx, dReal ly, dReal lz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dMass*, m)
    STACK_FMT_DATA(dReal,  total_mass)
    STACK_FMT_DATA(dReal,  lx)
    STACK_FMT_DATA(dReal,  ly)
    STACK_FMT_DATA(dReal,  lz)
  STACK_FMT_END()

    dMassSetBoxTotal
    ( STACK_GET_DATA(m)
   ,  STACK_GET_DATA(total_mass)
   ,  STACK_GET_DATA(lx)
   ,  STACK_GET_DATA(ly)
   ,  STACK_GET_DATA(lz)
    );
}

EXDL_API(ede_massSetTrimesh)
{
  /* void dMassSetTrimesh(dMass* m, dReal density, dGeomID g) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dMass*,  m)
    STACK_FMT_DATA(dReal,   density)
    STACK_FMT_DATA(dGeomID, g)
  STACK_FMT_END()

    dMassSetTrimesh
    ( STACK_GET_DATA(m)
   ,  STACK_GET_DATA(density)
   ,  STACK_GET_DATA(g)
    );
}

EXDL_API(ede_massSetTrimeshTotal)
{
  /* void dMassSetTrimeshTotal(dMass* m, dReal total_mass, dGeomID g) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dMass*,  m)
    STACK_FMT_DATA(dReal,   total_mass)
    STACK_FMT_DATA(dGeomID, g)
  STACK_FMT_END()

    dMassSetTrimeshTotal
    ( STACK_GET_DATA(m)
   ,  STACK_GET_DATA(total_mass)
   ,  STACK_GET_DATA(g)
    );
}

EXDL_API(ede_massAdjust)
{
  /* void dMassAdjust(dMass* m, dReal newmass) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dMass*, m)
    STACK_FMT_DATA(dReal,  newmass)
  STACK_FMT_END()

    dMassAdjust
    ( STACK_GET_DATA(m)
   ,  STACK_GET_DATA(newmass)
    );
}

EXDL_API(ede_massTranslate)
{
  /* void dMassTranslate(dMass* m, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dMass*, m)
    STACK_FMT_DATA(dReal,  x)
    STACK_FMT_DATA(dReal,  y)
    STACK_FMT_DATA(dReal,  z)
  STACK_FMT_END()

    dMassTranslate
    ( STACK_GET_DATA(m)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_massRotate)
{
  /* void dMassRotate(dMass* m, const dMatrix3 R) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dMass*,   m)
    STACK_FMT_DATA(dMatrix3, R)
  STACK_FMT_END()

    dMassRotate
    ( STACK_GET_DATA(m)
   ,  STACK_GET_DATA(R)
    );
}

EXDL_API(ede_massAdd)
{
  /* void dMassAdd(dMass* a, const dMass* b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dMass*, a)
    STACK_FMT_DATA(dMass,  b[])
  STACK_FMT_END()

    dMassAdd
    ( STACK_GET_DATA(a)
   ,  STACK_GET_ADDR(b)
    );
}

/* misc.h */

EXDL_API(ede_testRand)
{
  /* int dTestRand(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(int)

    dTestRand
    (
    );

  THROW_RESULT(int)
}

EXDL_API(ede_rand)
{
  /* unsigned long dRand(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(unsigned long)

    dRand
    (
    );

  THROW_RESULT(unsigned long)
}

EXDL_API(ede_randGetSeed)
{
  /* unsigned long dRandGetSeed(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(unsigned long)

    dRandGetSeed
    (
    );

  THROW_RESULT(unsigned long)
}

EXDL_API(ede_randSetSeed)
{
  /* void dRandSetSeed(unsigned long s) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(unsigned long, s)
  STACK_FMT_END()

    dRandSetSeed
    ( STACK_GET_DATA(s)
    );
}

EXDL_API(ede_randInt)
{
  /* int dRandInt(int n) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, n)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dRandInt
    ( STACK_GET_DATA(n)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_randReal)
{
  /* dReal dRandReal(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(dReal)

    dRandReal
    (
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_printMatrix)
{
  /* void dPrintMatrix(const dReal* A, int n, int m, char* fmt, FILE* f) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, A)
    STACK_FMT_DATA(int,    n)
    STACK_FMT_DATA(int,    m)
    STACK_FMT_LPTR(char*,  fmt)
    STACK_FMT_DATA(FILE,   f[])
  STACK_FMT_END()

    dPrintMatrix
    ( STACK_GET_DATA(A)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(m)
   ,  STACK_GET_DATA(fmt)
   ,  STACK_GET_ADDR(f)
    );
}

EXDL_API(ede_makeRandomVector)
{
  /* void dMakeRandomVector(dReal* A, int n, dReal range) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, A)
    STACK_FMT_DATA(int,    n)
    STACK_FMT_DATA(dReal,  range)
  STACK_FMT_END()

    dMakeRandomVector
    ( STACK_GET_DATA(A)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(range)
    );
}

EXDL_API(ede_makeRandomMatrix)
{
  /* void dMakeRandomMatrix(dReal* A, int n, int m, dReal range) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, A)
    STACK_FMT_DATA(int,    n)
    STACK_FMT_DATA(int,    m)
    STACK_FMT_DATA(dReal,  range)
  STACK_FMT_END()

    dMakeRandomMatrix
    ( STACK_GET_DATA(A)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(m)
   ,  STACK_GET_DATA(range)
    );
}

EXDL_API(ede_clearUpperTriangle)
{
  /* void dClearUpperTriangle(dReal* A, int n) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, A)
    STACK_FMT_DATA(int,    n)
  STACK_FMT_END()

    dClearUpperTriangle
    ( STACK_GET_DATA(A)
   ,  STACK_GET_DATA(n)
    );
}

EXDL_API(ede_maxDifference)
{
  /* dReal dMaxDifference(const dReal* A, const dReal* B, int n, int m) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, A)
    STACK_FMT_LPTR(dReal*, B)
    STACK_FMT_DATA(int,    n)
    STACK_FMT_DATA(int,    m)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dMaxDifference
    ( STACK_GET_DATA(A)
   ,  STACK_GET_DATA(B)
   ,  STACK_GET_DATA(n)
   ,  STACK_GET_DATA(m)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_maxDifferenceLowerTriangle)
{
  /* dReal dMaxDifferenceLowerTriangle(const dReal* A, const dReal* B, int n) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_LPTR(dReal*, A)
    STACK_FMT_LPTR(dReal*, B)
    STACK_FMT_DATA(int,    n)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dMaxDifferenceLowerTriangle
    ( STACK_GET_DATA(A)
   ,  STACK_GET_DATA(B)
   ,  STACK_GET_DATA(n)
    );

  THROW_RESULT(dReal)
}

/* objects.h */

EXDL_API(ede_worldCreate)
{
  /* dWorldID dWorldCreate(void) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(dWorldID)

    dWorldCreate
    (
    );

  THROW_RESULT(dWorldID)
}

EXDL_API(ede_worldDestroy)
{
  /* void dWorldDestroy(dWorldID world) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, world)
  STACK_FMT_END()

    dWorldDestroy
    ( STACK_GET_DATA(world)
    );
}

EXDL_API(ede_worldSetGravity)
{
  /* void dWorldSetGravity(dWorldID w, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dWorldSetGravity
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_worldGetGravity)
{
  /* void dWorldGetGravity(dWorldID w, dVector3 gravity) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dVector3, gravity)
  STACK_FMT_END()

    dWorldGetGravity
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(gravity)
    );
}

EXDL_API(ede_worldSetERP)
{
  /* void dWorldSetERP(dWorldID w, dReal erp) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    erp)
  STACK_FMT_END()

    dWorldSetERP
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(erp)
    );
}

EXDL_API(ede_worldGetERP)
{
  /* dReal dWorldGetERP(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dWorldGetERP
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_worldSetCFM)
{
  /* void dWorldSetCFM(dWorldID w, dReal cfm) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    cfm)
  STACK_FMT_END()

    dWorldSetCFM
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(cfm)
    );
}

EXDL_API(ede_worldGetCFM)
{
  /* dReal dWorldGetCFM(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dWorldGetCFM
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_worldStep)
{
  /* void dWorldStep(dWorldID w, dReal stepsize) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    stepsize)
  STACK_FMT_END()

    dWorldStep
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(stepsize)
    );
}

EXDL_API(ede_worldImpulseToForce)
{
  /* void dWorldImpulseToForce(dWorldID w, dReal stepsize, dReal ix, dReal iy, dReal iz, dVector3 force) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    stepsize)
    STACK_FMT_DATA(dReal,    ix)
    STACK_FMT_DATA(dReal,    iy)
    STACK_FMT_DATA(dReal,    iz)
    STACK_FMT_DATA(dVector3, force)
  STACK_FMT_END()

    dWorldImpulseToForce
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(stepsize)
   ,  STACK_GET_DATA(ix)
   ,  STACK_GET_DATA(iy)
   ,  STACK_GET_DATA(iz)
   ,  STACK_GET_DATA(force)
    );
}

EXDL_API(ede_worldQuickStep)
{
  /* void dWorldQuickStep(dWorldID w, dReal stepsize) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    stepsize)
  STACK_FMT_END()

    dWorldQuickStep
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(stepsize)
    );
}

EXDL_API(ede_worldSetQuickStepNumIterations)
{
  /* void dWorldSetQuickStepNumIterations(dWorldID w, int num) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(int,      num)
  STACK_FMT_END()

    dWorldSetQuickStepNumIterations
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(num)
    );
}

EXDL_API(ede_worldGetQuickStepNumIterations)
{
  /* int dWorldGetQuickStepNumIterations(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dWorldGetQuickStepNumIterations
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_worldSetQuickStepW)
{
  /* void dWorldSetQuickStepW(dWorldID w, dReal over_relaxation) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    over_relaxation)
  STACK_FMT_END()

    dWorldSetQuickStepW
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(over_relaxation)
    );
}

EXDL_API(ede_worldGetQuickStepW)
{
  /* dReal dWorldGetQuickStepW(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dWorldGetQuickStepW
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_worldSetContactMaxCorrectingVel)
{
  /* void dWorldSetContactMaxCorrectingVel(dWorldID w, dReal vel) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    vel)
  STACK_FMT_END()

    dWorldSetContactMaxCorrectingVel
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(vel)
    );
}

EXDL_API(ede_worldGetContactMaxCorrectingVel)
{
  /* dReal dWorldGetContactMaxCorrectingVel(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dWorldGetContactMaxCorrectingVel
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_worldSetContactSurfaceLayer)
{
  /* void dWorldSetContactSurfaceLayer(dWorldID w, dReal depth) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    depth)
  STACK_FMT_END()

    dWorldSetContactSurfaceLayer
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(depth)
    );
}

EXDL_API(ede_worldGetContactSurfaceLayer)
{
  /* dReal dWorldGetContactSurfaceLayer(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dWorldGetContactSurfaceLayer
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_worldStepFast1)
{
  /* void dWorldStepFast1(dWorldID w, dReal stepsize, int maxiterations) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    stepsize)
    STACK_FMT_DATA(int,      maxiterations)
  STACK_FMT_END()

    dWorldStepFast1
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(stepsize)
   ,  STACK_GET_DATA(maxiterations)
    );
}

EXDL_API(ede_worldSetAutoEnableDepthSF1)
{
  /* void dWorldSetAutoEnableDepthSF1(dWorldID w, int autoEnableDepth) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(int,      autoEnableDepth)
  STACK_FMT_END()

    dWorldSetAutoEnableDepthSF1
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(autoEnableDepth)
    );
}

EXDL_API(ede_worldGetAutoEnableDepthSF1)
{
  /* int dWorldGetAutoEnableDepthSF1(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dWorldGetAutoEnableDepthSF1
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_worldGetAutoDisableLinearThreshold)
{
  /* dReal dWorldGetAutoDisableLinearThreshold(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dWorldGetAutoDisableLinearThreshold
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_worldSetAutoDisableLinearThreshold)
{
  /* void dWorldSetAutoDisableLinearThreshold(dWorldID w, dReal linear_threshold) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    linear_threshold)
  STACK_FMT_END()

    dWorldSetAutoDisableLinearThreshold
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(linear_threshold)
    );
}

EXDL_API(ede_worldGetAutoDisableAngularThreshold)
{
  /* dReal dWorldGetAutoDisableAngularThreshold(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dWorldGetAutoDisableAngularThreshold
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_worldSetAutoDisableAngularThreshold)
{
  /* void dWorldSetAutoDisableAngularThreshold(dWorldID w, dReal angular_threshold) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    angular_threshold)
  STACK_FMT_END()

    dWorldSetAutoDisableAngularThreshold
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(angular_threshold)
    );
}

EXDL_API(ede_worldGetAutoDisableLinearAverageThreshold)
{
  /* dReal dWorldGetAutoDisableLinearAverageThreshold(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dWorldGetAutoDisableLinearAverageThreshold
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_worldSetAutoDisableLinearAverageThreshold)
{
  /* void dWorldSetAutoDisableLinearAverageThreshold(dWorldID w, dReal linear_average_threshold) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    linear_average_threshold)
  STACK_FMT_END()

    dWorldSetAutoDisableLinearAverageThreshold
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(linear_average_threshold)
    );
}

EXDL_API(ede_worldGetAutoDisableAngularAverageThreshold)
{
  /* dReal dWorldGetAutoDisableAngularAverageThreshold(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dWorldGetAutoDisableAngularAverageThreshold
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_worldSetAutoDisableAngularAverageThreshold)
{
  /* void dWorldSetAutoDisableAngularAverageThreshold(dWorldID w, dReal angular_average_threshold) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    angular_average_threshold)
  STACK_FMT_END()

    dWorldSetAutoDisableAngularAverageThreshold
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(angular_average_threshold)
    );
}

EXDL_API(ede_worldGetAutoDisableAverageSamplesCount)
{
  /* int dWorldGetAutoDisableAverageSamplesCount(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dWorldGetAutoDisableAverageSamplesCount
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_worldSetAutoDisableAverageSamplesCount)
{
  /* void dWorldSetAutoDisableAverageSamplesCount(dWorldID w, unsigned int average_samples_count) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID,     w)
    STACK_FMT_DATA(unsigned int, average_samples_count)
  STACK_FMT_END()

    dWorldSetAutoDisableAverageSamplesCount
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(average_samples_count)
    );
}

EXDL_API(ede_worldGetAutoDisableSteps)
{
  /* int dWorldGetAutoDisableSteps(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dWorldGetAutoDisableSteps
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_worldSetAutoDisableSteps)
{
  /* void dWorldSetAutoDisableSteps(dWorldID w, int steps) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(int,      steps)
  STACK_FMT_END()

    dWorldSetAutoDisableSteps
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(steps)
    );
}

EXDL_API(ede_worldGetAutoDisableTime)
{
  /* dReal dWorldGetAutoDisableTime(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dWorldGetAutoDisableTime
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_worldSetAutoDisableTime)
{
  /* void dWorldSetAutoDisableTime(dWorldID w, dReal time) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    time)
  STACK_FMT_END()

    dWorldSetAutoDisableTime
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(time)
    );
}

EXDL_API(ede_worldGetAutoDisableFlag)
{
  /* int dWorldGetAutoDisableFlag(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dWorldGetAutoDisableFlag
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_worldSetAutoDisableFlag)
{
  /* void dWorldSetAutoDisableFlag(dWorldID w, int do_auto_disable) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(int,      do_auto_disable)
  STACK_FMT_END()

    dWorldSetAutoDisableFlag
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(do_auto_disable)
    );
}

EXDL_API(ede_worldGetLinearDampingThreshold)
{
  /* dReal dWorldGetLinearDampingThreshold(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dWorldGetLinearDampingThreshold
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_worldSetLinearDampingThreshold)
{
  /* void dWorldSetLinearDampingThreshold(dWorldID w, dReal threshold) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    threshold)
  STACK_FMT_END()

    dWorldSetLinearDampingThreshold
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(threshold)
    );
}

EXDL_API(ede_worldGetAngularDampingThreshold)
{
  /* dReal dWorldGetAngularDampingThreshold(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dWorldGetAngularDampingThreshold
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_worldSetAngularDampingThreshold)
{
  /* void dWorldSetAngularDampingThreshold(dWorldID w, dReal threshold) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    threshold)
  STACK_FMT_END()

    dWorldSetAngularDampingThreshold
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(threshold)
    );
}

EXDL_API(ede_worldGetLinearDamping)
{
  /* dReal dWorldGetLinearDamping(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dWorldGetLinearDamping
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_worldSetLinearDamping)
{
  /* void dWorldSetLinearDamping(dWorldID w, dReal scale) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    scale)
  STACK_FMT_END()

    dWorldSetLinearDamping
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(scale)
    );
}

EXDL_API(ede_worldGetAngularDamping)
{
  /* dReal dWorldGetAngularDamping(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dWorldGetAngularDamping
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_worldSetAngularDamping)
{
  /* void dWorldSetAngularDamping(dWorldID w, dReal scale) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    scale)
  STACK_FMT_END()

    dWorldSetAngularDamping
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(scale)
    );
}

EXDL_API(ede_worldSetDamping)
{
  /* void dWorldSetDamping(dWorldID w, dReal linear_scale, dReal angular_scale) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    linear_scale)
    STACK_FMT_DATA(dReal,    angular_scale)
  STACK_FMT_END()

    dWorldSetDamping
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(linear_scale)
   ,  STACK_GET_DATA(angular_scale)
    );
}

EXDL_API(ede_worldGetMaxAngularSpeed)
{
  /* dReal dWorldGetMaxAngularSpeed(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dWorldGetMaxAngularSpeed
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_worldSetMaxAngularSpeed)
{
  /* void dWorldSetMaxAngularSpeed(dWorldID w, dReal max_speed) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
    STACK_FMT_DATA(dReal,    max_speed)
  STACK_FMT_END()

    dWorldSetMaxAngularSpeed
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(max_speed)
    );
}

EXDL_API(ede_bodyGetAutoDisableLinearThreshold)
{
  /* dReal dBodyGetAutoDisableLinearThreshold(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dBodyGetAutoDisableLinearThreshold
    ( STACK_GET_DATA(b)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_bodySetAutoDisableLinearThreshold)
{
  /* void dBodySetAutoDisableLinearThreshold(dBodyID b, dReal linear_average_threshold) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   linear_average_threshold)
  STACK_FMT_END()

    dBodySetAutoDisableLinearThreshold
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(linear_average_threshold)
    );
}

EXDL_API(ede_bodyGetAutoDisableAngularThreshold)
{
  /* dReal dBodyGetAutoDisableAngularThreshold(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dBodyGetAutoDisableAngularThreshold
    ( STACK_GET_DATA(b)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_bodySetAutoDisableAngularThreshold)
{
  /* void dBodySetAutoDisableAngularThreshold(dBodyID b, dReal angular_average_threshold) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   angular_average_threshold)
  STACK_FMT_END()

    dBodySetAutoDisableAngularThreshold
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(angular_average_threshold)
    );
}

EXDL_API(ede_bodyGetAutoDisableAverageSamplesCount)
{
  /* int dBodyGetAutoDisableAverageSamplesCount(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dBodyGetAutoDisableAverageSamplesCount
    ( STACK_GET_DATA(b)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_bodySetAutoDisableAverageSamplesCount)
{
  /* void dBodySetAutoDisableAverageSamplesCount(dBodyID b, unsigned int average_samples_count) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID,      b)
    STACK_FMT_DATA(unsigned int, average_samples_count)
  STACK_FMT_END()

    dBodySetAutoDisableAverageSamplesCount
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(average_samples_count)
    );
}

EXDL_API(ede_bodyGetAutoDisableSteps)
{
  /* int dBodyGetAutoDisableSteps(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dBodyGetAutoDisableSteps
    ( STACK_GET_DATA(b)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_bodySetAutoDisableSteps)
{
  /* void dBodySetAutoDisableSteps(dBodyID b, int steps) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(int,     steps)
  STACK_FMT_END()

    dBodySetAutoDisableSteps
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(steps)
    );
}

EXDL_API(ede_bodyGetAutoDisableTime)
{
  /* dReal dBodyGetAutoDisableTime(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dBodyGetAutoDisableTime
    ( STACK_GET_DATA(b)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_bodySetAutoDisableTime)
{
  /* void dBodySetAutoDisableTime(dBodyID b, dReal time) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   time)
  STACK_FMT_END()

    dBodySetAutoDisableTime
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(time)
    );
}

EXDL_API(ede_bodyGetAutoDisableFlag)
{
  /* int dBodyGetAutoDisableFlag(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dBodyGetAutoDisableFlag
    ( STACK_GET_DATA(b)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_bodySetAutoDisableFlag)
{
  /* void dBodySetAutoDisableFlag(dBodyID b, int do_auto_disable) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(int,     do_auto_disable)
  STACK_FMT_END()

    dBodySetAutoDisableFlag
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(do_auto_disable)
    );
}

EXDL_API(ede_bodySetAutoDisableDefaults)
{
  /* void dBodySetAutoDisableDefaults(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

    dBodySetAutoDisableDefaults
    ( STACK_GET_DATA(b)
    );
}

EXDL_API(ede_bodyGetWorld)
{
  /* dWorldID dBodyGetWorld(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(dWorldID)

    dBodyGetWorld
    ( STACK_GET_DATA(b)
    );

  THROW_RESULT(dWorldID)
}

EXDL_API(ede_bodyCreate)
{
  /* dBodyID dBodyCreate(dWorldID w) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID, w)
  STACK_FMT_END()

  CATCH_RESULT(dBodyID)

    dBodyCreate
    ( STACK_GET_DATA(w)
    );

  THROW_RESULT(dBodyID)
}

EXDL_API(ede_bodyDestroy)
{
  /* void dBodyDestroy(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

    dBodyDestroy
    ( STACK_GET_DATA(b)
    );
}

EXDL_API(ede_bodySetData)
{
  /* void dBodySetData(dBodyID b, void* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(void,    data[])
  STACK_FMT_END()

    dBodySetData
    ( STACK_GET_DATA(b)
   ,  STACK_GET_ADDR(data)
    );
}

EXDL_API(ede_bodyGetData)
{
  /* void* dBodyGetData(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(void*)

    dBodyGetData
    ( STACK_GET_DATA(b)
    );

  THROW_POINTER()
}

EXDL_API(ede_bodySetPosition)
{
  /* void dBodySetPosition(dBodyID b, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   x)
    STACK_FMT_DATA(dReal,   y)
    STACK_FMT_DATA(dReal,   z)
  STACK_FMT_END()

    dBodySetPosition
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_bodySetRotation)
{
  /* void dBodySetRotation(dBodyID b, const dMatrix3 R) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID,  b)
    STACK_FMT_DATA(dMatrix3, R)
  STACK_FMT_END()

    dBodySetRotation
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(R)
    );
}

EXDL_API(ede_bodySetQuaternion)
{
  /* void dBodySetQuaternion(dBodyID b, const dQuaternion q) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID,     b)
    STACK_FMT_DATA(dQuaternion, q)
  STACK_FMT_END()

    dBodySetQuaternion
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(q)
    );
}

EXDL_API(ede_bodySetLinearVel)
{
  /* void dBodySetLinearVel(dBodyID b, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   x)
    STACK_FMT_DATA(dReal,   y)
    STACK_FMT_DATA(dReal,   z)
  STACK_FMT_END()

    dBodySetLinearVel
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_bodySetAngularVel)
{
  /* void dBodySetAngularVel(dBodyID b, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   x)
    STACK_FMT_DATA(dReal,   y)
    STACK_FMT_DATA(dReal,   z)
  STACK_FMT_END()

    dBodySetAngularVel
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_bodyGetPosition)
{
  /* const dReal* dBodyGetPosition(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(const dReal*)

    dBodyGetPosition
    ( STACK_GET_DATA(b)
    );

  THROW_POINTER()
}

EXDL_API(ede_bodyCopyPosition)
{
  /* void dBodyCopyPosition(dBodyID body, dVector3 pos) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID,  body)
    STACK_FMT_DATA(dVector3, pos)
  STACK_FMT_END()

    dBodyCopyPosition
    ( STACK_GET_DATA(body)
   ,  STACK_GET_DATA(pos)
    );
}

EXDL_API(ede_bodyGetRotation)
{
  /* const dReal* dBodyGetRotation(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(const dReal*)

    dBodyGetRotation
    ( STACK_GET_DATA(b)
    );

  THROW_POINTER()
}

EXDL_API(ede_bodyCopyRotation)
{
  /* void dBodyCopyRotation(dBodyID b, dMatrix3 R) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID,  b)
    STACK_FMT_DATA(dMatrix3, R)
  STACK_FMT_END()

    dBodyCopyRotation
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(R)
    );
}

EXDL_API(ede_bodyGetQuaternion)
{
  /* const dReal* dBodyGetQuaternion(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(const dReal*)

    dBodyGetQuaternion
    ( STACK_GET_DATA(b)
    );

  THROW_POINTER()
}

EXDL_API(ede_bodyCopyQuaternion)
{
  /* void dBodyCopyQuaternion(dBodyID body, dQuaternion quat) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID,     body)
    STACK_FMT_DATA(dQuaternion, quat)
  STACK_FMT_END()

    dBodyCopyQuaternion
    ( STACK_GET_DATA(body)
   ,  STACK_GET_DATA(quat)
    );
}

EXDL_API(ede_bodyGetLinearVel)
{
  /* const dReal* dBodyGetLinearVel(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(const dReal*)

    dBodyGetLinearVel
    ( STACK_GET_DATA(b)
    );

  THROW_POINTER()
}

EXDL_API(ede_bodyGetAngularVel)
{
  /* const dReal* dBodyGetAngularVel(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(const dReal*)

    dBodyGetAngularVel
    ( STACK_GET_DATA(b)
    );

  THROW_POINTER()
}

EXDL_API(ede_bodySetMass)
{
  /* void dBodySetMass(dBodyID b, const dMass* mass) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dMass,   mass[])
  STACK_FMT_END()

    dBodySetMass
    ( STACK_GET_DATA(b)
   ,  STACK_GET_ADDR(mass)
    );
}

EXDL_API(ede_bodyGetMass)
{
  /* void dBodyGetMass(dBodyID b, dMass* mass) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(dMass,  mass)
  FRAME_FMT_END()

    dBodyGetMass
    ( STACK_GET_DATA(b)
   ,  FRAME_GET_ADDR(mass)
    );

  THROW_FRAME()
}

EXDL_API(ede_bodyAddForce)
{
  /* void dBodyAddForce(dBodyID b, dReal fx, dReal fy, dReal fz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   fx)
    STACK_FMT_DATA(dReal,   fy)
    STACK_FMT_DATA(dReal,   fz)
  STACK_FMT_END()

    dBodyAddForce
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(fx)
   ,  STACK_GET_DATA(fy)
   ,  STACK_GET_DATA(fz)
    );
}

EXDL_API(ede_bodyAddTorque)
{
  /* void dBodyAddTorque(dBodyID b, dReal fx, dReal fy, dReal fz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   fx)
    STACK_FMT_DATA(dReal,   fy)
    STACK_FMT_DATA(dReal,   fz)
  STACK_FMT_END()

    dBodyAddTorque
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(fx)
   ,  STACK_GET_DATA(fy)
   ,  STACK_GET_DATA(fz)
    );
}

EXDL_API(ede_bodyAddRelForce)
{
  /* void dBodyAddRelForce(dBodyID b, dReal fx, dReal fy, dReal fz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   fx)
    STACK_FMT_DATA(dReal,   fy)
    STACK_FMT_DATA(dReal,   fz)
  STACK_FMT_END()

    dBodyAddRelForce
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(fx)
   ,  STACK_GET_DATA(fy)
   ,  STACK_GET_DATA(fz)
    );
}

EXDL_API(ede_bodyAddRelTorque)
{
  /* void dBodyAddRelTorque(dBodyID b, dReal fx, dReal fy, dReal fz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   fx)
    STACK_FMT_DATA(dReal,   fy)
    STACK_FMT_DATA(dReal,   fz)
  STACK_FMT_END()

    dBodyAddRelTorque
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(fx)
   ,  STACK_GET_DATA(fy)
   ,  STACK_GET_DATA(fz)
    );
}

EXDL_API(ede_bodyAddForceAtPos)
{
  /* void dBodyAddForceAtPos(dBodyID b, dReal fx, dReal fy, dReal fz, dReal px, dReal py, dReal pz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   fx)
    STACK_FMT_DATA(dReal,   fy)
    STACK_FMT_DATA(dReal,   fz)
    STACK_FMT_DATA(dReal,   px)
    STACK_FMT_DATA(dReal,   py)
    STACK_FMT_DATA(dReal,   pz)
  STACK_FMT_END()

    dBodyAddForceAtPos
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(fx)
   ,  STACK_GET_DATA(fy)
   ,  STACK_GET_DATA(fz)
   ,  STACK_GET_DATA(px)
   ,  STACK_GET_DATA(py)
   ,  STACK_GET_DATA(pz)
    );
}

EXDL_API(ede_bodyAddForceAtRelPos)
{
  /* void dBodyAddForceAtRelPos(dBodyID b, dReal fx, dReal fy, dReal fz, dReal px, dReal py, dReal pz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   fx)
    STACK_FMT_DATA(dReal,   fy)
    STACK_FMT_DATA(dReal,   fz)
    STACK_FMT_DATA(dReal,   px)
    STACK_FMT_DATA(dReal,   py)
    STACK_FMT_DATA(dReal,   pz)
  STACK_FMT_END()

    dBodyAddForceAtRelPos
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(fx)
   ,  STACK_GET_DATA(fy)
   ,  STACK_GET_DATA(fz)
   ,  STACK_GET_DATA(px)
   ,  STACK_GET_DATA(py)
   ,  STACK_GET_DATA(pz)
    );
}

EXDL_API(ede_bodyAddRelForceAtPos)
{
  /* void dBodyAddRelForceAtPos(dBodyID b, dReal fx, dReal fy, dReal fz, dReal px, dReal py, dReal pz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   fx)
    STACK_FMT_DATA(dReal,   fy)
    STACK_FMT_DATA(dReal,   fz)
    STACK_FMT_DATA(dReal,   px)
    STACK_FMT_DATA(dReal,   py)
    STACK_FMT_DATA(dReal,   pz)
  STACK_FMT_END()

    dBodyAddRelForceAtPos
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(fx)
   ,  STACK_GET_DATA(fy)
   ,  STACK_GET_DATA(fz)
   ,  STACK_GET_DATA(px)
   ,  STACK_GET_DATA(py)
   ,  STACK_GET_DATA(pz)
    );
}

EXDL_API(ede_bodyAddRelForceAtRelPos)
{
  /* void dBodyAddRelForceAtRelPos(dBodyID b, dReal fx, dReal fy, dReal fz, dReal px, dReal py, dReal pz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   fx)
    STACK_FMT_DATA(dReal,   fy)
    STACK_FMT_DATA(dReal,   fz)
    STACK_FMT_DATA(dReal,   px)
    STACK_FMT_DATA(dReal,   py)
    STACK_FMT_DATA(dReal,   pz)
  STACK_FMT_END()

    dBodyAddRelForceAtRelPos
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(fx)
   ,  STACK_GET_DATA(fy)
   ,  STACK_GET_DATA(fz)
   ,  STACK_GET_DATA(px)
   ,  STACK_GET_DATA(py)
   ,  STACK_GET_DATA(pz)
    );
}

EXDL_API(ede_bodyGetForce)
{
  /* const dReal* dBodyGetForce(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(const dReal*)

    dBodyGetForce
    ( STACK_GET_DATA(b)
    );

  THROW_POINTER()
}

EXDL_API(ede_bodyGetTorque)
{
  /* const dReal* dBodyGetTorque(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(const dReal*)

    dBodyGetTorque
    ( STACK_GET_DATA(b)
    );

  THROW_POINTER()
}

EXDL_API(ede_bodySetForce)
{
  /* void dBodySetForce(dBodyID b, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   x)
    STACK_FMT_DATA(dReal,   y)
    STACK_FMT_DATA(dReal,   z)
  STACK_FMT_END()

    dBodySetForce
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_bodySetTorque)
{
  /* void dBodySetTorque(dBodyID b, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   x)
    STACK_FMT_DATA(dReal,   y)
    STACK_FMT_DATA(dReal,   z)
  STACK_FMT_END()

    dBodySetTorque
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_bodyGetRelPointPos)
{
  /* void dBodyGetRelPointPos(dBodyID b, dReal px, dReal py, dReal pz, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID,  b)
    STACK_FMT_DATA(dReal,    px)
    STACK_FMT_DATA(dReal,    py)
    STACK_FMT_DATA(dReal,    pz)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dBodyGetRelPointPos
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(px)
   ,  STACK_GET_DATA(py)
   ,  STACK_GET_DATA(pz)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_bodyGetRelPointVel)
{
  /* void dBodyGetRelPointVel(dBodyID b, dReal px, dReal py, dReal pz, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID,  b)
    STACK_FMT_DATA(dReal,    px)
    STACK_FMT_DATA(dReal,    py)
    STACK_FMT_DATA(dReal,    pz)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dBodyGetRelPointVel
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(px)
   ,  STACK_GET_DATA(py)
   ,  STACK_GET_DATA(pz)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_bodyGetPointVel)
{
  /* void dBodyGetPointVel(dBodyID b, dReal px, dReal py, dReal pz, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID,  b)
    STACK_FMT_DATA(dReal,    px)
    STACK_FMT_DATA(dReal,    py)
    STACK_FMT_DATA(dReal,    pz)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dBodyGetPointVel
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(px)
   ,  STACK_GET_DATA(py)
   ,  STACK_GET_DATA(pz)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_bodyGetPosRelPoint)
{
  /* void dBodyGetPosRelPoint(dBodyID b, dReal px, dReal py, dReal pz, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID,  b)
    STACK_FMT_DATA(dReal,    px)
    STACK_FMT_DATA(dReal,    py)
    STACK_FMT_DATA(dReal,    pz)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dBodyGetPosRelPoint
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(px)
   ,  STACK_GET_DATA(py)
   ,  STACK_GET_DATA(pz)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_bodyVectorToWorld)
{
  /* void dBodyVectorToWorld(dBodyID b, dReal px, dReal py, dReal pz, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID,  b)
    STACK_FMT_DATA(dReal,    px)
    STACK_FMT_DATA(dReal,    py)
    STACK_FMT_DATA(dReal,    pz)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dBodyVectorToWorld
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(px)
   ,  STACK_GET_DATA(py)
   ,  STACK_GET_DATA(pz)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_bodyVectorFromWorld)
{
  /* void dBodyVectorFromWorld(dBodyID b, dReal px, dReal py, dReal pz, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID,  b)
    STACK_FMT_DATA(dReal,    px)
    STACK_FMT_DATA(dReal,    py)
    STACK_FMT_DATA(dReal,    pz)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dBodyVectorFromWorld
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(px)
   ,  STACK_GET_DATA(py)
   ,  STACK_GET_DATA(pz)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_bodySetFiniteRotationMode)
{
  /* void dBodySetFiniteRotationMode(dBodyID b, int mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(int,     mode)
  STACK_FMT_END()

    dBodySetFiniteRotationMode
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(mode)
    );
}

EXDL_API(ede_bodySetFiniteRotationAxis)
{
  /* void dBodySetFiniteRotationAxis(dBodyID b, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   x)
    STACK_FMT_DATA(dReal,   y)
    STACK_FMT_DATA(dReal,   z)
  STACK_FMT_END()

    dBodySetFiniteRotationAxis
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_bodyGetFiniteRotationMode)
{
  /* int dBodyGetFiniteRotationMode(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dBodyGetFiniteRotationMode
    ( STACK_GET_DATA(b)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_bodyGetFiniteRotationAxis)
{
  /* void dBodyGetFiniteRotationAxis(dBodyID b, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID,  b)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dBodyGetFiniteRotationAxis
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_bodyGetNumJoints)
{
  /* int dBodyGetNumJoints(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dBodyGetNumJoints
    ( STACK_GET_DATA(b)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_bodyGetJoint)
{
  /* dJointID dBodyGetJoint(dBodyID b, int index) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(int,     index)
  STACK_FMT_END()

  CATCH_RESULT(dJointID)

    dBodyGetJoint
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(index)
    );

  THROW_RESULT(dJointID)
}

EXDL_API(ede_bodyEnable)
{
  /* void dBodyEnable(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

    dBodyEnable
    ( STACK_GET_DATA(b)
    );
}

EXDL_API(ede_bodyDisable)
{
  /* void dBodyDisable(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

    dBodyDisable
    ( STACK_GET_DATA(b)
    );
}

EXDL_API(ede_bodyIsEnabled)
{
  /* int dBodyIsEnabled(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dBodyIsEnabled
    ( STACK_GET_DATA(b)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_bodySetGravityMode)
{
  /* void dBodySetGravityMode(dBodyID b, int mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(int,     mode)
  STACK_FMT_END()

    dBodySetGravityMode
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(mode)
    );
}

EXDL_API(ede_bodyGetGravityMode)
{
  /* int dBodyGetGravityMode(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dBodyGetGravityMode
    ( STACK_GET_DATA(b)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_bodySetMovedCallback)
{
  /* void dBodySetMovedCallback(dBodyID b, void(*callback)(dBodyID b)) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
 *callback)
  STACK_FMT_END()

    dBodySetMovedCallback
    ( STACK_GET_DATA(*callback)
    );
}

EXDL_API(ede_bodyGetFirstGeom)
{
  /* dGeomID dBodyGetFirstGeom(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(dGeomID)

    dBodyGetFirstGeom
    ( STACK_GET_DATA(b)
    );

  THROW_RESULT(dGeomID)
}

EXDL_API(ede_bodyGetNextGeom)
{
  /* dGeomID dBodyGetNextGeom(dGeomID g) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, g)
  STACK_FMT_END()

  CATCH_RESULT(dGeomID)

    dBodyGetNextGeom
    ( STACK_GET_DATA(g)
    );

  THROW_RESULT(dGeomID)
}

EXDL_API(ede_bodySetDampingDefaults)
{
  /* void dBodySetDampingDefaults(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

    dBodySetDampingDefaults
    ( STACK_GET_DATA(b)
    );
}

EXDL_API(ede_bodyGetLinearDamping)
{
  /* dReal dBodyGetLinearDamping(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dBodyGetLinearDamping
    ( STACK_GET_DATA(b)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_bodySetLinearDamping)
{
  /* void dBodySetLinearDamping(dBodyID b, dReal scale) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   scale)
  STACK_FMT_END()

    dBodySetLinearDamping
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(scale)
    );
}

EXDL_API(ede_bodyGetAngularDamping)
{
  /* dReal dBodyGetAngularDamping(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dBodyGetAngularDamping
    ( STACK_GET_DATA(b)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_bodySetAngularDamping)
{
  /* void dBodySetAngularDamping(dBodyID b, dReal scale) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   scale)
  STACK_FMT_END()

    dBodySetAngularDamping
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(scale)
    );
}

EXDL_API(ede_bodySetDamping)
{
  /* void dBodySetDamping(dBodyID b, dReal linear_scale, dReal angular_scale) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   linear_scale)
    STACK_FMT_DATA(dReal,   angular_scale)
  STACK_FMT_END()

    dBodySetDamping
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(linear_scale)
   ,  STACK_GET_DATA(angular_scale)
    );
}

EXDL_API(ede_bodyGetLinearDampingThreshold)
{
  /* dReal dBodyGetLinearDampingThreshold(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dBodyGetLinearDampingThreshold
    ( STACK_GET_DATA(b)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_bodySetLinearDampingThreshold)
{
  /* void dBodySetLinearDampingThreshold(dBodyID b, dReal threshold) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   threshold)
  STACK_FMT_END()

    dBodySetLinearDampingThreshold
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(threshold)
    );
}

EXDL_API(ede_bodyGetAngularDampingThreshold)
{
  /* dReal dBodyGetAngularDampingThreshold(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dBodyGetAngularDampingThreshold
    ( STACK_GET_DATA(b)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_bodySetAngularDampingThreshold)
{
  /* void dBodySetAngularDampingThreshold(dBodyID b, dReal threshold) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   threshold)
  STACK_FMT_END()

    dBodySetAngularDampingThreshold
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(threshold)
    );
}

EXDL_API(ede_bodyGetMaxAngularSpeed)
{
  /* dReal dBodyGetMaxAngularSpeed(dBodyID b) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dBodyGetMaxAngularSpeed
    ( STACK_GET_DATA(b)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_bodySetMaxAngularSpeed)
{
  /* void dBodySetMaxAngularSpeed(dBodyID b, dReal max_speed) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, b)
    STACK_FMT_DATA(dReal,   max_speed)
  STACK_FMT_END()

    dBodySetMaxAngularSpeed
    ( STACK_GET_DATA(b)
   ,  STACK_GET_DATA(max_speed)
    );
}

EXDL_API(ede_jointCreateBall)
{
  /* dJointID dJointCreateBall(dWorldID w, dJointGroupID group) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID,      w)
    STACK_FMT_DATA(dJointGroupID, group)
  STACK_FMT_END()

  CATCH_RESULT(dJointID)

    dJointCreateBall
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(group)
    );

  THROW_RESULT(dJointID)
}

EXDL_API(ede_jointCreateHinge)
{
  /* dJointID dJointCreateHinge(dWorldID w, dJointGroupID group) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID,      w)
    STACK_FMT_DATA(dJointGroupID, group)
  STACK_FMT_END()

  CATCH_RESULT(dJointID)

    dJointCreateHinge
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(group)
    );

  THROW_RESULT(dJointID)
}

EXDL_API(ede_jointCreateSlider)
{
  /* dJointID dJointCreateSlider(dWorldID w, dJointGroupID group) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID,      w)
    STACK_FMT_DATA(dJointGroupID, group)
  STACK_FMT_END()

  CATCH_RESULT(dJointID)

    dJointCreateSlider
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(group)
    );

  THROW_RESULT(dJointID)
}

EXDL_API(ede_jointCreateContact)
{
  /* dJointID dJointCreateContact(dWorldID w, dJointGroupID, const dContact* ) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
 dJointGroupID) BIBDIBI
    STACK_FMT_DATA(const dContact,*)
  STACK_FMT_END()

  CATCH_RESULT(dJointID)

    dJointCreateContact
    ( STACK_GET_DATA(dJointGroupID)
   ,  STACK_GET_DATA(dContact*)
    );

  THROW_RESULT(dJointID)
}

EXDL_API(ede_jointCreateHinge2)
{
  /* dJointID dJointCreateHinge2(dWorldID w, dJointGroupID group) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID,      w)
    STACK_FMT_DATA(dJointGroupID, group)
  STACK_FMT_END()

  CATCH_RESULT(dJointID)

    dJointCreateHinge2
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(group)
    );

  THROW_RESULT(dJointID)
}

EXDL_API(ede_jointCreateUniversal)
{
  /* dJointID dJointCreateUniversal(dWorldID w, dJointGroupID group) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID,      w)
    STACK_FMT_DATA(dJointGroupID, group)
  STACK_FMT_END()

  CATCH_RESULT(dJointID)

    dJointCreateUniversal
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(group)
    );

  THROW_RESULT(dJointID)
}

EXDL_API(ede_jointCreatePR)
{
  /* dJointID dJointCreatePR(dWorldID w, dJointGroupID group) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID,      w)
    STACK_FMT_DATA(dJointGroupID, group)
  STACK_FMT_END()

  CATCH_RESULT(dJointID)

    dJointCreatePR
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(group)
    );

  THROW_RESULT(dJointID)
}

EXDL_API(ede_jointCreatePU)
{
  /* dJointID dJointCreatePU(dWorldID w, dJointGroupID group) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID,      w)
    STACK_FMT_DATA(dJointGroupID, group)
  STACK_FMT_END()

  CATCH_RESULT(dJointID)

    dJointCreatePU
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(group)
    );

  THROW_RESULT(dJointID)
}

EXDL_API(ede_jointCreatePiston)
{
  /* dJointID dJointCreatePiston(dWorldID w, dJointGroupID group) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID,      w)
    STACK_FMT_DATA(dJointGroupID, group)
  STACK_FMT_END()

  CATCH_RESULT(dJointID)

    dJointCreatePiston
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(group)
    );

  THROW_RESULT(dJointID)
}

EXDL_API(ede_jointCreateFixed)
{
  /* dJointID dJointCreateFixed(dWorldID w, dJointGroupID group) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID,      w)
    STACK_FMT_DATA(dJointGroupID, group)
  STACK_FMT_END()

  CATCH_RESULT(dJointID)

    dJointCreateFixed
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(group)
    );

  THROW_RESULT(dJointID)
}

EXDL_API(ede_jointCreateNull)
{
  /* dJointID dJointCreateNull(dWorldID w, dJointGroupID group) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID,      w)
    STACK_FMT_DATA(dJointGroupID, group)
  STACK_FMT_END()

  CATCH_RESULT(dJointID)

    dJointCreateNull
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(group)
    );

  THROW_RESULT(dJointID)
}

EXDL_API(ede_jointCreateAMotor)
{
  /* dJointID dJointCreateAMotor(dWorldID w, dJointGroupID group) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID,      w)
    STACK_FMT_DATA(dJointGroupID, group)
  STACK_FMT_END()

  CATCH_RESULT(dJointID)

    dJointCreateAMotor
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(group)
    );

  THROW_RESULT(dJointID)
}

EXDL_API(ede_jointCreateLMotor)
{
  /* dJointID dJointCreateLMotor(dWorldID w, dJointGroupID group) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID,      w)
    STACK_FMT_DATA(dJointGroupID, group)
  STACK_FMT_END()

  CATCH_RESULT(dJointID)

    dJointCreateLMotor
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(group)
    );

  THROW_RESULT(dJointID)
}

EXDL_API(ede_jointCreatePlane2D)
{
  /* dJointID dJointCreatePlane2D(dWorldID w, dJointGroupID group) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID,      w)
    STACK_FMT_DATA(dJointGroupID, group)
  STACK_FMT_END()

  CATCH_RESULT(dJointID)

    dJointCreatePlane2D
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(group)
    );

  THROW_RESULT(dJointID)
}

EXDL_API(ede_jointDestroy)
{
  /* void dJointDestroy(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

    dJointDestroy
    ( STACK_GET_DATA(j)
    );
}

EXDL_API(ede_jointGroupCreate)
{
  /* dJointGroupID dJointGroupCreate(int max_size) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, max_size)
  STACK_FMT_END()

  CATCH_RESULT(dJointGroupID)

    dJointGroupCreate
    ( STACK_GET_DATA(max_size)
    );

  THROW_RESULT(dJointGroupID)
}

EXDL_API(ede_jointGroupDestroy)
{
  /* void dJointGroupDestroy(dJointGroupID) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
 dJointGroupID)
  STACK_FMT_END()

    dJointGroupDestroy
    ( STACK_GET_DATA(dJointGroupID)
    );
}

EXDL_API(ede_jointGroupEmpty)
{
  /* void dJointGroupEmpty(dJointGroupID) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
 dJointGroupID)
  STACK_FMT_END()

    dJointGroupEmpty
    ( STACK_GET_DATA(dJointGroupID)
    );
}

EXDL_API(ede_jointGetNumBodies)
{
  /* int dJointGetNumBodies(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dJointGetNumBodies
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_jointAttach)
{
  /* void dJointAttach(dJointID j, dBodyID body1, dBodyID body2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dBodyID,  body1)
    STACK_FMT_DATA(dBodyID,  body2)
  STACK_FMT_END()

    dJointAttach
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(body1)
   ,  STACK_GET_DATA(body2)
    );
}

EXDL_API(ede_jointSetData)
{
  /* void dJointSetData(dJointID j, void* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(void,     data[])
  STACK_FMT_END()

    dJointSetData
    ( STACK_GET_DATA(j)
   ,  STACK_GET_ADDR(data)
    );
}

EXDL_API(ede_jointGetData)
{
  /* void* dJointGetData(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(void*)

    dJointGetData
    ( STACK_GET_DATA(j)
    );

  THROW_POINTER()
}

EXDL_API(ede_jointGetType)
{
  /* dJointType dJointGetType(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dJointType)

    dJointGetType
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dJointType)
}

EXDL_API(ede_jointGetBody)
{
  /* dBodyID dJointGetBody(dJointID j, int index) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      index)
  STACK_FMT_END()

  CATCH_RESULT(dBodyID)

    dJointGetBody
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(index)
    );

  THROW_RESULT(dBodyID)
}

EXDL_API(ede_jointSetFeedback)
{
  /* void dJointSetFeedback(dJointID j, dJointFeedback* ) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
 dJointFeedback*)
  STACK_FMT_END()

    dJointSetFeedback
    ( STACK_GET_DATA(dJointFeedback*)
    );
}

EXDL_API(ede_jointGetFeedback)
{
  /* dJointFeedback* dJointGetFeedback(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dJointFeedback*)

    dJointGetFeedback
    ( STACK_GET_DATA(j)
    );

  THROW_POINTER()
}

EXDL_API(ede_jointSetBallAnchor)
{
  /* void dJointSetBallAnchor(dJointID j, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetBallAnchor
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetBallAnchor2)
{
  /* void dJointSetBallAnchor2(dJointID j, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetBallAnchor2
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetBallParam)
{
  /* void dJointSetBallParam(dJointID j, int parameter, dReal value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
    STACK_FMT_DATA(dReal,    value)
  STACK_FMT_END()

    dJointSetBallParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
   ,  STACK_GET_DATA(value)
    );
}

EXDL_API(ede_jointSetHingeAnchor)
{
  /* void dJointSetHingeAnchor(dJointID j, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetHingeAnchor
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetHingeAnchorDelta)
{
  /* void dJointSetHingeAnchorDelta(dJointID j, dReal x, dReal y, dReal z, dReal ax, dReal ay, dReal az) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
    STACK_FMT_DATA(dReal,    ax)
    STACK_FMT_DATA(dReal,    ay)
    STACK_FMT_DATA(dReal,    az)
  STACK_FMT_END()

    dJointSetHingeAnchorDelta
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
   ,  STACK_GET_DATA(ax)
   ,  STACK_GET_DATA(ay)
   ,  STACK_GET_DATA(az)
    );
}

EXDL_API(ede_jointSetHingeAxis)
{
  /* void dJointSetHingeAxis(dJointID j, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetHingeAxis
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetHingeAxisOffset)
{
  /* void dJointSetHingeAxisOffset(dJointID j, dReal x, dReal y, dReal z, dReal angle) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
    STACK_FMT_DATA(dReal,    angle)
  STACK_FMT_END()

    dJointSetHingeAxisOffset
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
   ,  STACK_GET_DATA(angle)
    );
}

EXDL_API(ede_jointSetHingeParam)
{
  /* void dJointSetHingeParam(dJointID j, int parameter, dReal value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
    STACK_FMT_DATA(dReal,    value)
  STACK_FMT_END()

    dJointSetHingeParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
   ,  STACK_GET_DATA(value)
    );
}

EXDL_API(ede_jointAddHingeTorque)
{
  /* void dJointAddHingeTorque(dJointID joint, dReal torque) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, joint)
    STACK_FMT_DATA(dReal,    torque)
  STACK_FMT_END()

    dJointAddHingeTorque
    ( STACK_GET_DATA(joint)
   ,  STACK_GET_DATA(torque)
    );
}

EXDL_API(ede_jointSetSliderAxis)
{
  /* void dJointSetSliderAxis(dJointID j, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetSliderAxis
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetSliderAxisDelta)
{
  /* void dJointSetSliderAxisDelta(dJointID j, dReal x, dReal y, dReal z, dReal ax, dReal ay, dReal az) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
    STACK_FMT_DATA(dReal,    ax)
    STACK_FMT_DATA(dReal,    ay)
    STACK_FMT_DATA(dReal,    az)
  STACK_FMT_END()

    dJointSetSliderAxisDelta
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
   ,  STACK_GET_DATA(ax)
   ,  STACK_GET_DATA(ay)
   ,  STACK_GET_DATA(az)
    );
}

EXDL_API(ede_jointSetSliderParam)
{
  /* void dJointSetSliderParam(dJointID j, int parameter, dReal value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
    STACK_FMT_DATA(dReal,    value)
  STACK_FMT_END()

    dJointSetSliderParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
   ,  STACK_GET_DATA(value)
    );
}

EXDL_API(ede_jointAddSliderForce)
{
  /* void dJointAddSliderForce(dJointID joint, dReal force) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, joint)
    STACK_FMT_DATA(dReal,    force)
  STACK_FMT_END()

    dJointAddSliderForce
    ( STACK_GET_DATA(joint)
   ,  STACK_GET_DATA(force)
    );
}

EXDL_API(ede_jointSetHinge2Anchor)
{
  /* void dJointSetHinge2Anchor(dJointID j, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetHinge2Anchor
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetHinge2Axis1)
{
  /* void dJointSetHinge2Axis1(dJointID j, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetHinge2Axis1
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetHinge2Axis2)
{
  /* void dJointSetHinge2Axis2(dJointID j, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetHinge2Axis2
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetHinge2Param)
{
  /* void dJointSetHinge2Param(dJointID j, int parameter, dReal value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
    STACK_FMT_DATA(dReal,    value)
  STACK_FMT_END()

    dJointSetHinge2Param
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
   ,  STACK_GET_DATA(value)
    );
}

EXDL_API(ede_jointAddHinge2Torques)
{
  /* void dJointAddHinge2Torques(dJointID joint, dReal torque1, dReal torque2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, joint)
    STACK_FMT_DATA(dReal,    torque1)
    STACK_FMT_DATA(dReal,    torque2)
  STACK_FMT_END()

    dJointAddHinge2Torques
    ( STACK_GET_DATA(joint)
   ,  STACK_GET_DATA(torque1)
   ,  STACK_GET_DATA(torque2)
    );
}

EXDL_API(ede_jointSetUniversalAnchor)
{
  /* void dJointSetUniversalAnchor(dJointID j, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetUniversalAnchor
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetUniversalAxis1)
{
  /* void dJointSetUniversalAxis1(dJointID j, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetUniversalAxis1
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetUniversalAxis2)
{
  /* void dJointSetUniversalAxis2(dJointID j, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetUniversalAxis2
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetUniversalParam)
{
  /* void dJointSetUniversalParam(dJointID j, int parameter, dReal value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
    STACK_FMT_DATA(dReal,    value)
  STACK_FMT_END()

    dJointSetUniversalParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
   ,  STACK_GET_DATA(value)
    );
}

EXDL_API(ede_jointAddUniversalTorques)
{
  /* void dJointAddUniversalTorques(dJointID joint, dReal torque1, dReal torque2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, joint)
    STACK_FMT_DATA(dReal,    torque1)
    STACK_FMT_DATA(dReal,    torque2)
  STACK_FMT_END()

    dJointAddUniversalTorques
    ( STACK_GET_DATA(joint)
   ,  STACK_GET_DATA(torque1)
   ,  STACK_GET_DATA(torque2)
    );
}

EXDL_API(ede_jointSetPRAnchor)
{
  /* void dJointSetPRAnchor(dJointID j, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetPRAnchor
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetPRAxis1)
{
  /* void dJointSetPRAxis1(dJointID j, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetPRAxis1
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetPRAxis2)
{
  /* void dJointSetPRAxis2(dJointID j, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetPRAxis2
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetPRParam)
{
  /* void dJointSetPRParam(dJointID j, int parameter, dReal value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
    STACK_FMT_DATA(dReal,    value)
  STACK_FMT_END()

    dJointSetPRParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
   ,  STACK_GET_DATA(value)
    );
}

EXDL_API(ede_jointAddPRTorque)
{
  /* void dJointAddPRTorque(dJointID j, dReal torque) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    torque)
  STACK_FMT_END()

    dJointAddPRTorque
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(torque)
    );
}

EXDL_API(ede_jointSetPUAnchor)
{
  /* void dJointSetPUAnchor(dJointID j, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetPUAnchor
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetPUAnchorDelta)
{
  /* void dJointSetPUAnchorDelta(dJointID j, dReal x, dReal y, dReal z, dReal dx, dReal dy, dReal dz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
    STACK_FMT_DATA(dReal,    dx)
    STACK_FMT_DATA(dReal,    dy)
    STACK_FMT_DATA(dReal,    dz)
  STACK_FMT_END()

    dJointSetPUAnchorDelta
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
   ,  STACK_GET_DATA(dx)
   ,  STACK_GET_DATA(dy)
   ,  STACK_GET_DATA(dz)
    );
}

EXDL_API(ede_jointSetPUAxis1)
{
  /* void dJointSetPUAxis1(dJointID j, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetPUAxis1
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetPUAxis2)
{
  /* void dJointSetPUAxis2(dJointID j, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetPUAxis2
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetPUAxis3)
{
  /* void dJointSetPUAxis3(dJointID j, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetPUAxis3
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetPUAxisP)
{
  /* void dJointSetPUAxisP(dJointID id, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, id)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetPUAxisP
    ( STACK_GET_DATA(id)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetPUParam)
{
  /* void dJointSetPUParam(dJointID j, int parameter, dReal value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
    STACK_FMT_DATA(dReal,    value)
  STACK_FMT_END()

    dJointSetPUParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
   ,  STACK_GET_DATA(value)
    );
}

EXDL_API(ede_jointAddPUTorque)
{
  /* void dJointAddPUTorque(dJointID j, dReal torque) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    torque)
  STACK_FMT_END()

    dJointAddPUTorque
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(torque)
    );
}

EXDL_API(ede_jointSetPistonAnchor)
{
  /* void dJointSetPistonAnchor(dJointID j, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetPistonAnchor
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetPistonAnchorOffset)
{
  /* void dJointSetPistonAnchorOffset(dJointID j, dReal x, dReal y, dReal z, dReal dx, dReal dy, dReal dz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
    STACK_FMT_DATA(dReal,    dx)
    STACK_FMT_DATA(dReal,    dy)
    STACK_FMT_DATA(dReal,    dz)
  STACK_FMT_END()

    dJointSetPistonAnchorOffset
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
   ,  STACK_GET_DATA(dx)
   ,  STACK_GET_DATA(dy)
   ,  STACK_GET_DATA(dz)
    );
}

EXDL_API(ede_jointSetPistonAxis)
{
  /* void dJointSetPistonAxis(dJointID j, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetPistonAxis
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetPistonAxisDelta)
{
  /* void dJointSetPistonAxisDelta(dJointID j, dReal x, dReal y, dReal z, dReal ax, dReal ay, dReal az) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
    STACK_FMT_DATA(dReal,    ax)
    STACK_FMT_DATA(dReal,    ay)
    STACK_FMT_DATA(dReal,    az)
  STACK_FMT_END()

    dJointSetPistonAxisDelta
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
   ,  STACK_GET_DATA(ax)
   ,  STACK_GET_DATA(ay)
   ,  STACK_GET_DATA(az)
    );
}

EXDL_API(ede_jointSetPistonParam)
{
  /* void dJointSetPistonParam(dJointID j, int parameter, dReal value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
    STACK_FMT_DATA(dReal,    value)
  STACK_FMT_END()

    dJointSetPistonParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
   ,  STACK_GET_DATA(value)
    );
}

EXDL_API(ede_jointAddPistonForce)
{
  /* void dJointAddPistonForce(dJointID joint, dReal force) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, joint)
    STACK_FMT_DATA(dReal,    force)
  STACK_FMT_END()

    dJointAddPistonForce
    ( STACK_GET_DATA(joint)
   ,  STACK_GET_DATA(force)
    );
}

EXDL_API(ede_jointSetFixed)
{
  /* void dJointSetFixed(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

    dJointSetFixed
    ( STACK_GET_DATA(j)
    );
}

EXDL_API(ede_jointSetFixedParam)
{
  /* void dJointSetFixedParam(dJointID j, int parameter, dReal value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
    STACK_FMT_DATA(dReal,    value)
  STACK_FMT_END()

    dJointSetFixedParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
   ,  STACK_GET_DATA(value)
    );
}

EXDL_API(ede_jointSetAMotorNumAxes)
{
  /* void dJointSetAMotorNumAxes(dJointID j, int num) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      num)
  STACK_FMT_END()

    dJointSetAMotorNumAxes
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(num)
    );
}

EXDL_API(ede_jointSetAMotorAxis)
{
  /* void dJointSetAMotorAxis(dJointID j, int anum, int rel, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      anum)
    STACK_FMT_DATA(int,      rel)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetAMotorAxis
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(anum)
   ,  STACK_GET_DATA(rel)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetAMotorAngle)
{
  /* void dJointSetAMotorAngle(dJointID j, int anum, dReal angle) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      anum)
    STACK_FMT_DATA(dReal,    angle)
  STACK_FMT_END()

    dJointSetAMotorAngle
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(anum)
   ,  STACK_GET_DATA(angle)
    );
}

EXDL_API(ede_jointSetAMotorParam)
{
  /* void dJointSetAMotorParam(dJointID j, int parameter, dReal value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
    STACK_FMT_DATA(dReal,    value)
  STACK_FMT_END()

    dJointSetAMotorParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
   ,  STACK_GET_DATA(value)
    );
}

EXDL_API(ede_jointSetAMotorMode)
{
  /* void dJointSetAMotorMode(dJointID j, int mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      mode)
  STACK_FMT_END()

    dJointSetAMotorMode
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(mode)
    );
}

EXDL_API(ede_jointAddAMotorTorques)
{
  /* void dJointAddAMotorTorques(dJointID j, dReal torque1, dReal torque2, dReal torque3) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dReal,    torque1)
    STACK_FMT_DATA(dReal,    torque2)
    STACK_FMT_DATA(dReal,    torque3)
  STACK_FMT_END()

    dJointAddAMotorTorques
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(torque1)
   ,  STACK_GET_DATA(torque2)
   ,  STACK_GET_DATA(torque3)
    );
}

EXDL_API(ede_jointSetLMotorNumAxes)
{
  /* void dJointSetLMotorNumAxes(dJointID j, int num) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      num)
  STACK_FMT_END()

    dJointSetLMotorNumAxes
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(num)
    );
}

EXDL_API(ede_jointSetLMotorAxis)
{
  /* void dJointSetLMotorAxis(dJointID j, int anum, int rel, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      anum)
    STACK_FMT_DATA(int,      rel)
    STACK_FMT_DATA(dReal,    x)
    STACK_FMT_DATA(dReal,    y)
    STACK_FMT_DATA(dReal,    z)
  STACK_FMT_END()

    dJointSetLMotorAxis
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(anum)
   ,  STACK_GET_DATA(rel)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_jointSetLMotorParam)
{
  /* void dJointSetLMotorParam(dJointID j, int parameter, dReal value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
    STACK_FMT_DATA(dReal,    value)
  STACK_FMT_END()

    dJointSetLMotorParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
   ,  STACK_GET_DATA(value)
    );
}

EXDL_API(ede_jointSetPlane2DXParam)
{
  /* void dJointSetPlane2DXParam(dJointID j, int parameter, dReal value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
    STACK_FMT_DATA(dReal,    value)
  STACK_FMT_END()

    dJointSetPlane2DXParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
   ,  STACK_GET_DATA(value)
    );
}

EXDL_API(ede_jointSetPlane2DYParam)
{
  /* void dJointSetPlane2DYParam(dJointID j, int parameter, dReal value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
    STACK_FMT_DATA(dReal,    value)
  STACK_FMT_END()

    dJointSetPlane2DYParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
   ,  STACK_GET_DATA(value)
    );
}

EXDL_API(ede_jointSetPlane2DAngleParam)
{
  /* void dJointSetPlane2DAngleParam(dJointID j, int parameter, dReal value) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
    STACK_FMT_DATA(dReal,    value)
  STACK_FMT_END()

    dJointSetPlane2DAngleParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
   ,  STACK_GET_DATA(value)
    );
}

EXDL_API(ede_jointGetBallAnchor)
{
  /* void dJointGetBallAnchor(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetBallAnchor
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetBallAnchor2)
{
  /* void dJointGetBallAnchor2(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetBallAnchor2
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetBallParam)
{
  /* dReal dJointGetBallParam(dJointID j, int parameter) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetBallParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetHingeAnchor)
{
  /* void dJointGetHingeAnchor(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetHingeAnchor
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetHingeAnchor2)
{
  /* void dJointGetHingeAnchor2(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetHingeAnchor2
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetHingeAxis)
{
  /* void dJointGetHingeAxis(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetHingeAxis
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetHingeParam)
{
  /* dReal dJointGetHingeParam(dJointID j, int parameter) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetHingeParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetHingeAngle)
{
  /* dReal dJointGetHingeAngle(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetHingeAngle
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetHingeAngleRate)
{
  /* dReal dJointGetHingeAngleRate(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetHingeAngleRate
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetSliderPosition)
{
  /* dReal dJointGetSliderPosition(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetSliderPosition
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetSliderPositionRate)
{
  /* dReal dJointGetSliderPositionRate(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetSliderPositionRate
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetSliderAxis)
{
  /* void dJointGetSliderAxis(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetSliderAxis
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetSliderParam)
{
  /* dReal dJointGetSliderParam(dJointID j, int parameter) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetSliderParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetHinge2Anchor)
{
  /* void dJointGetHinge2Anchor(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetHinge2Anchor
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetHinge2Anchor2)
{
  /* void dJointGetHinge2Anchor2(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetHinge2Anchor2
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetHinge2Axis1)
{
  /* void dJointGetHinge2Axis1(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetHinge2Axis1
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetHinge2Axis2)
{
  /* void dJointGetHinge2Axis2(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetHinge2Axis2
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetHinge2Param)
{
  /* dReal dJointGetHinge2Param(dJointID j, int parameter) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetHinge2Param
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetHinge2Angle1)
{
  /* dReal dJointGetHinge2Angle1(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetHinge2Angle1
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetHinge2Angle1Rate)
{
  /* dReal dJointGetHinge2Angle1Rate(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetHinge2Angle1Rate
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetHinge2Angle2Rate)
{
  /* dReal dJointGetHinge2Angle2Rate(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetHinge2Angle2Rate
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetUniversalAnchor)
{
  /* void dJointGetUniversalAnchor(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetUniversalAnchor
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetUniversalAnchor2)
{
  /* void dJointGetUniversalAnchor2(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetUniversalAnchor2
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetUniversalAxis1)
{
  /* void dJointGetUniversalAxis1(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetUniversalAxis1
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetUniversalAxis2)
{
  /* void dJointGetUniversalAxis2(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetUniversalAxis2
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetUniversalParam)
{
  /* dReal dJointGetUniversalParam(dJointID j, int parameter) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetUniversalParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetUniversalAngles)
{
  /* void dJointGetUniversalAngles(dJointID j, dReal* angle1, dReal* angle2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(dReal,   angle1)
    FRAME_FMT_DATA(dReal,   angle2)
  FRAME_FMT_END()

    dJointGetUniversalAngles
    ( STACK_GET_DATA(j)
   ,  FRAME_GET_ADDR(angle1)
   ,  FRAME_GET_ADDR(angle2)
    );

  THROW_FRAME()
}

EXDL_API(ede_jointGetUniversalAngle1)
{
  /* dReal dJointGetUniversalAngle1(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetUniversalAngle1
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetUniversalAngle2)
{
  /* dReal dJointGetUniversalAngle2(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetUniversalAngle2
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetUniversalAngle1Rate)
{
  /* dReal dJointGetUniversalAngle1Rate(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetUniversalAngle1Rate
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetUniversalAngle2Rate)
{
  /* dReal dJointGetUniversalAngle2Rate(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetUniversalAngle2Rate
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetPRAnchor)
{
  /* void dJointGetPRAnchor(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetPRAnchor
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetPRPosition)
{
  /* dReal dJointGetPRPosition(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetPRPosition
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetPRPositionRate)
{
  /* dReal dJointGetPRPositionRate(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetPRPositionRate
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetPRAxis1)
{
  /* void dJointGetPRAxis1(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetPRAxis1
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetPRAxis2)
{
  /* void dJointGetPRAxis2(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetPRAxis2
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetPRParam)
{
  /* dReal dJointGetPRParam(dJointID j, int parameter) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetPRParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetPUAnchor)
{
  /* void dJointGetPUAnchor(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetPUAnchor
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetPUPosition)
{
  /* dReal dJointGetPUPosition(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetPUPosition
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetPUPositionRate)
{
  /* dReal dJointGetPUPositionRate(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetPUPositionRate
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetPUAxis1)
{
  /* void dJointGetPUAxis1(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetPUAxis1
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetPUAxis2)
{
  /* void dJointGetPUAxis2(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetPUAxis2
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetPUAxis3)
{
  /* void dJointGetPUAxis3(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetPUAxis3
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetPUAxisP)
{
  /* void dJointGetPUAxisP(dJointID id, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, id)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetPUAxisP
    ( STACK_GET_DATA(id)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetPUAngles)
{
  /* void dJointGetPUAngles(dJointID j, dReal* angle1, dReal* angle2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(dReal,   angle1)
    FRAME_FMT_DATA(dReal,   angle2)
  FRAME_FMT_END()

    dJointGetPUAngles
    ( STACK_GET_DATA(j)
   ,  FRAME_GET_ADDR(angle1)
   ,  FRAME_GET_ADDR(angle2)
    );

  THROW_FRAME()
}

EXDL_API(ede_jointGetPUAngle1)
{
  /* dReal dJointGetPUAngle1(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetPUAngle1
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetPUAngle1Rate)
{
  /* dReal dJointGetPUAngle1Rate(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetPUAngle1Rate
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetPUAngle2)
{
  /* dReal dJointGetPUAngle2(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetPUAngle2
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetPUAngle2Rate)
{
  /* dReal dJointGetPUAngle2Rate(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetPUAngle2Rate
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetPUParam)
{
  /* dReal dJointGetPUParam(dJointID j, int parameter) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetPUParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetPistonPosition)
{
  /* dReal dJointGetPistonPosition(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetPistonPosition
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetPistonPositionRate)
{
  /* dReal dJointGetPistonPositionRate(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetPistonPositionRate
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetPistonAngle)
{
  /* dReal dJointGetPistonAngle(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetPistonAngle
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetPistonAngleRate)
{
  /* dReal dJointGetPistonAngleRate(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetPistonAngleRate
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetPistonAnchor)
{
  /* void dJointGetPistonAnchor(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetPistonAnchor
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetPistonAnchor2)
{
  /* void dJointGetPistonAnchor2(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetPistonAnchor2
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetPistonAxis)
{
  /* void dJointGetPistonAxis(dJointID j, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetPistonAxis
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetPistonParam)
{
  /* dReal dJointGetPistonParam(dJointID j, int parameter) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetPistonParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetAMotorNumAxes)
{
  /* int dJointGetAMotorNumAxes(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dJointGetAMotorNumAxes
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_jointGetAMotorAxis)
{
  /* void dJointGetAMotorAxis(dJointID j, int anum, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      anum)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetAMotorAxis
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(anum)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetAMotorAxisRel)
{
  /* int dJointGetAMotorAxisRel(dJointID j, int anum) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      anum)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dJointGetAMotorAxisRel
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(anum)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_jointGetAMotorAngle)
{
  /* dReal dJointGetAMotorAngle(dJointID j, int anum) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      anum)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetAMotorAngle
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(anum)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetAMotorAngleRate)
{
  /* dReal dJointGetAMotorAngleRate(dJointID j, int anum) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      anum)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetAMotorAngleRate
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(anum)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetAMotorParam)
{
  /* dReal dJointGetAMotorParam(dJointID j, int parameter) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetAMotorParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetAMotorMode)
{
  /* int dJointGetAMotorMode(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dJointGetAMotorMode
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_jointGetLMotorNumAxes)
{
  /* int dJointGetLMotorNumAxes(dJointID j) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dJointGetLMotorNumAxes
    ( STACK_GET_DATA(j)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_jointGetLMotorAxis)
{
  /* void dJointGetLMotorAxis(dJointID j, int anum, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      anum)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dJointGetLMotorAxis
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(anum)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_jointGetLMotorParam)
{
  /* dReal dJointGetLMotorParam(dJointID j, int parameter) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetLMotorParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_jointGetFixedParam)
{
  /* dReal dJointGetFixedParam(dJointID j, int parameter) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dJointID, j)
    STACK_FMT_DATA(int,      parameter)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dJointGetFixedParam
    ( STACK_GET_DATA(j)
   ,  STACK_GET_DATA(parameter)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_connectingJoint)
{
  /* dJointID dConnectingJoint(dBodyID b, dBodyID) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
 dBodyID)
  STACK_FMT_END()

  CATCH_RESULT(dJointID)

    dConnectingJoint
    ( STACK_GET_DATA(dBodyID)
    );

  THROW_RESULT(dJointID)
}

EXDL_API(ede_connectingJointList)
{
  /* int dConnectingJointList(dBodyID b, dBodyID, dJointID*) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
 dJointID*)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dConnectingJointList
    ( STACK_GET_DATA(dJointID*)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_areConnected)
{
  /* int dAreConnected(dBodyID b, dBodyID) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
 dBodyID)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dAreConnected
    ( STACK_GET_DATA(dBodyID)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_areConnectedExcluding)
{
  /* int dAreConnectedExcluding(dBodyID body1, dBodyID body2, int joint_type) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dBodyID, body1)
    STACK_FMT_DATA(dBodyID, body2)
    STACK_FMT_DATA(int,     joint_type)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dAreConnectedExcluding
    ( STACK_GET_DATA(body1)
   ,  STACK_GET_DATA(body2)
   ,  STACK_GET_DATA(joint_type)
    );

  THROW_RESULT(int)
}

/* odecpp.h */

/* collision_space.h */

EXDL_API(ede_simpleSpaceCreate)
{
  /* dSpaceID dSimpleSpaceCreate(dSpaceID space) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
  STACK_FMT_END()

  CATCH_RESULT(dSpaceID)

    dSimpleSpaceCreate
    ( STACK_GET_DATA(space)
    );

  THROW_RESULT(dSpaceID)
}

EXDL_API(ede_hashSpaceCreate)
{
  /* dSpaceID dHashSpaceCreate(dSpaceID space) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
  STACK_FMT_END()

  CATCH_RESULT(dSpaceID)

    dHashSpaceCreate
    ( STACK_GET_DATA(space)
    );

  THROW_RESULT(dSpaceID)
}

EXDL_API(ede_quadTreeSpaceCreate)
{
  /* dSpaceID dQuadTreeSpaceCreate(dSpaceID space, dVector3 Center, dVector3 Extents, int Depth) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
    STACK_FMT_DATA(dVector3, Center)
    STACK_FMT_DATA(dVector3, Extents)
    STACK_FMT_DATA(int,      Depth)
  STACK_FMT_END()

  CATCH_RESULT(dSpaceID)

    dQuadTreeSpaceCreate
    ( STACK_GET_DATA(space)
   ,  STACK_GET_DATA(Center)
   ,  STACK_GET_DATA(Extents)
   ,  STACK_GET_DATA(Depth)
    );

  THROW_RESULT(dSpaceID)
}

EXDL_API(ede_sweepAndPruneSpaceCreate)
{
  /* dSpaceID dSweepAndPruneSpaceCreate(dSpaceID space, int axisorder) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
    STACK_FMT_DATA(int,      axisorder)
  STACK_FMT_END()

  CATCH_RESULT(dSpaceID)

    dSweepAndPruneSpaceCreate
    ( STACK_GET_DATA(space)
   ,  STACK_GET_DATA(axisorder)
    );

  THROW_RESULT(dSpaceID)
}

EXDL_API(ede_spaceDestroy)
{
  /* void dSpaceDestroy(dSpaceID space) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
  STACK_FMT_END()

    dSpaceDestroy
    ( STACK_GET_DATA(space)
    );
}

EXDL_API(ede_hashSpaceSetLevels)
{
  /* void dHashSpaceSetLevels(dSpaceID space, int minlevel, int maxlevel) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
    STACK_FMT_DATA(int,      minlevel)
    STACK_FMT_DATA(int,      maxlevel)
  STACK_FMT_END()

    dHashSpaceSetLevels
    ( STACK_GET_DATA(space)
   ,  STACK_GET_DATA(minlevel)
   ,  STACK_GET_DATA(maxlevel)
    );
}

EXDL_API(ede_hashSpaceGetLevels)
{
  /* void dHashSpaceGetLevels(dSpaceID space, int* minlevel, int* maxlevel) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(int,     minlevel)
    FRAME_FMT_DATA(int,     maxlevel)
  FRAME_FMT_END()

    dHashSpaceGetLevels
    ( STACK_GET_DATA(space)
   ,  FRAME_GET_ADDR(minlevel)
   ,  FRAME_GET_ADDR(maxlevel)
    );

  THROW_FRAME()
}

EXDL_API(ede_spaceSetCleanup)
{
  /* void dSpaceSetCleanup(dSpaceID space, int mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
    STACK_FMT_DATA(int,      mode)
  STACK_FMT_END()

    dSpaceSetCleanup
    ( STACK_GET_DATA(space)
   ,  STACK_GET_DATA(mode)
    );
}

EXDL_API(ede_spaceGetCleanup)
{
  /* int dSpaceGetCleanup(dSpaceID space) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dSpaceGetCleanup
    ( STACK_GET_DATA(space)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_spaceSetSublevel)
{
  /* void dSpaceSetSublevel(dSpaceID space, int sublevel) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
    STACK_FMT_DATA(int,      sublevel)
  STACK_FMT_END()

    dSpaceSetSublevel
    ( STACK_GET_DATA(space)
   ,  STACK_GET_DATA(sublevel)
    );
}

EXDL_API(ede_spaceGetSublevel)
{
  /* int dSpaceGetSublevel(dSpaceID space) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dSpaceGetSublevel
    ( STACK_GET_DATA(space)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_spaceAdd)
{
  /* void dSpaceAdd(dSpaceID space, dGeomID g) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
    STACK_FMT_DATA(dGeomID,  g)
  STACK_FMT_END()

    dSpaceAdd
    ( STACK_GET_DATA(space)
   ,  STACK_GET_DATA(g)
    );
}

EXDL_API(ede_spaceRemove)
{
  /* void dSpaceRemove(dSpaceID space, dGeomID g) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
    STACK_FMT_DATA(dGeomID,  g)
  STACK_FMT_END()

    dSpaceRemove
    ( STACK_GET_DATA(space)
   ,  STACK_GET_DATA(g)
    );
}

EXDL_API(ede_spaceQuery)
{
  /* int dSpaceQuery(dSpaceID space, dGeomID g) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
    STACK_FMT_DATA(dGeomID,  g)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dSpaceQuery
    ( STACK_GET_DATA(space)
   ,  STACK_GET_DATA(g)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_spaceClean)
{
  /* void dSpaceClean(dSpaceID space) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
  STACK_FMT_END()

    dSpaceClean
    ( STACK_GET_DATA(space)
    );
}

EXDL_API(ede_spaceGetNumGeoms)
{
  /* int dSpaceGetNumGeoms(dSpaceID space) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dSpaceGetNumGeoms
    ( STACK_GET_DATA(space)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_spaceGetGeom)
{
  /* dGeomID dSpaceGetGeom(dSpaceID space, int i) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
    STACK_FMT_DATA(int,      i)
  STACK_FMT_END()

  CATCH_RESULT(dGeomID)

    dSpaceGetGeom
    ( STACK_GET_DATA(space)
   ,  STACK_GET_DATA(i)
    );

  THROW_RESULT(dGeomID)
}

EXDL_API(ede_spaceGetClass)
{
  /* int dSpaceGetClass(dSpaceID space) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dSpaceGetClass
    ( STACK_GET_DATA(space)
    );

  THROW_RESULT(int)
}

/* collision.h */

EXDL_API(ede_geomDestroy)
{
  /* void dGeomDestroy(dGeomID geom) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
  STACK_FMT_END()

    dGeomDestroy
    ( STACK_GET_DATA(geom)
    );
}

EXDL_API(ede_geomSetData)
{
  /* void dGeomSetData(dGeomID geom, void* data) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
    STACK_FMT_DATA(void,    data[])
  STACK_FMT_END()

    dGeomSetData
    ( STACK_GET_DATA(geom)
   ,  STACK_GET_ADDR(data)
    );
}

EXDL_API(ede_geomGetData)
{
  /* void* dGeomGetData(dGeomID geom) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
  STACK_FMT_END()

  CATCH_RESULT(void*)

    dGeomGetData
    ( STACK_GET_DATA(geom)
    );

  THROW_POINTER()
}

EXDL_API(ede_geomSetBody)
{
  /* void dGeomSetBody(dGeomID geom, dBodyID body) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
    STACK_FMT_DATA(dBodyID, body)
  STACK_FMT_END()

    dGeomSetBody
    ( STACK_GET_DATA(geom)
   ,  STACK_GET_DATA(body)
    );
}

EXDL_API(ede_geomGetBody)
{
  /* dBodyID dGeomGetBody(dGeomID geom) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
  STACK_FMT_END()

  CATCH_RESULT(dBodyID)

    dGeomGetBody
    ( STACK_GET_DATA(geom)
    );

  THROW_RESULT(dBodyID)
}

EXDL_API(ede_geomSetPosition)
{
  /* void dGeomSetPosition(dGeomID geom, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
    STACK_FMT_DATA(dReal,   x)
    STACK_FMT_DATA(dReal,   y)
    STACK_FMT_DATA(dReal,   z)
  STACK_FMT_END()

    dGeomSetPosition
    ( STACK_GET_DATA(geom)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_geomSetRotation)
{
  /* void dGeomSetRotation(dGeomID geom, const dMatrix3 R) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID,  geom)
    STACK_FMT_DATA(dMatrix3, R)
  STACK_FMT_END()

    dGeomSetRotation
    ( STACK_GET_DATA(geom)
   ,  STACK_GET_DATA(R)
    );
}

EXDL_API(ede_geomSetQuaternion)
{
  /* void dGeomSetQuaternion(dGeomID geom, const dQuaternion Q) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID,     geom)
    STACK_FMT_DATA(dQuaternion, Q)
  STACK_FMT_END()

    dGeomSetQuaternion
    ( STACK_GET_DATA(geom)
   ,  STACK_GET_DATA(Q)
    );
}

EXDL_API(ede_geomGetPosition)
{
  /* const dReal* dGeomGetPosition(dGeomID geom) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
  STACK_FMT_END()

  CATCH_RESULT(const dReal*)

    dGeomGetPosition
    ( STACK_GET_DATA(geom)
    );

  THROW_POINTER()
}

EXDL_API(ede_geomCopyPosition)
{
  /* void dGeomCopyPosition(dGeomID geom, dVector3 pos) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID,  geom)
    STACK_FMT_DATA(dVector3, pos)
  STACK_FMT_END()

    dGeomCopyPosition
    ( STACK_GET_DATA(geom)
   ,  STACK_GET_DATA(pos)
    );
}

EXDL_API(ede_geomGetRotation)
{
  /* const dReal* dGeomGetRotation(dGeomID geom) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
  STACK_FMT_END()

  CATCH_RESULT(const dReal*)

    dGeomGetRotation
    ( STACK_GET_DATA(geom)
    );

  THROW_POINTER()
}

EXDL_API(ede_geomCopyRotation)
{
  /* void dGeomCopyRotation(dGeomID geom, dMatrix3 R) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID,  geom)
    STACK_FMT_DATA(dMatrix3, R)
  STACK_FMT_END()

    dGeomCopyRotation
    ( STACK_GET_DATA(geom)
   ,  STACK_GET_DATA(R)
    );
}

EXDL_API(ede_geomGetQuaternion)
{
  /* void dGeomGetQuaternion(dGeomID geom, dQuaternion result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID,     geom)
    STACK_FMT_DATA(dQuaternion, result)
  STACK_FMT_END()

    dGeomGetQuaternion
    ( STACK_GET_DATA(geom)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_geomGetAABB)
{
  /* void dGeomGetAABB(dGeomID geom, dReal aabb[6]) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
    STACK_FMT_DATA(dReal,   aabb[6])
  STACK_FMT_END()

    dGeomGetAABB
    ( STACK_GET_DATA(geom)
    , STACK_GET_ADDR(aabb)
    );
}

EXDL_API(ede_geomIsSpace)
{
  /* int dGeomIsSpace(dGeomID geom) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dGeomIsSpace
    ( STACK_GET_DATA(geom)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_geomGetSpace)
{
  /* dSpaceID dGeomGetSpace(dGeomID) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
 dGeomID)
  STACK_FMT_END()

  CATCH_RESULT(dSpaceID)

    dGeomGetSpace
    ( STACK_GET_DATA(dGeomID)
    );

  THROW_RESULT(dSpaceID)
}

EXDL_API(ede_geomGetClass)
{
  /* int dGeomGetClass(dGeomID geom) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dGeomGetClass
    ( STACK_GET_DATA(geom)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_geomSetCategoryBits)
{
  /* void dGeomSetCategoryBits(dGeomID geom, unsigned long bits) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID,       geom)
    STACK_FMT_DATA(unsigned long, bits)
  STACK_FMT_END()

    dGeomSetCategoryBits
    ( STACK_GET_DATA(geom)
   ,  STACK_GET_DATA(bits)
    );
}

EXDL_API(ede_geomSetCollideBits)
{
  /* void dGeomSetCollideBits(dGeomID geom, unsigned long bits) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID,       geom)
    STACK_FMT_DATA(unsigned long, bits)
  STACK_FMT_END()

    dGeomSetCollideBits
    ( STACK_GET_DATA(geom)
   ,  STACK_GET_DATA(bits)
    );
}

EXDL_API(ede_geomGetCategoryBits)
{
  /* unsigned long dGeomGetCategoryBits(dGeomID) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
 dGeomID)
  STACK_FMT_END()

  CATCH_RESULT(unsigned long)

    dGeomGetCategoryBits
    ( STACK_GET_DATA(dGeomID)
    );

  THROW_RESULT(unsigned long)
}

EXDL_API(ede_geomGetCollideBits)
{
  /* unsigned long dGeomGetCollideBits(dGeomID) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
 dGeomID)
  STACK_FMT_END()

  CATCH_RESULT(unsigned long)

    dGeomGetCollideBits
    ( STACK_GET_DATA(dGeomID)
    );

  THROW_RESULT(unsigned long)
}

EXDL_API(ede_geomEnable)
{
  /* void dGeomEnable(dGeomID geom) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
  STACK_FMT_END()

    dGeomEnable
    ( STACK_GET_DATA(geom)
    );
}

EXDL_API(ede_geomDisable)
{
  /* void dGeomDisable(dGeomID geom) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
  STACK_FMT_END()

    dGeomDisable
    ( STACK_GET_DATA(geom)
    );
}

EXDL_API(ede_geomIsEnabled)
{
  /* int dGeomIsEnabled(dGeomID geom) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dGeomIsEnabled
    ( STACK_GET_DATA(geom)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_geomSetOffsetPosition)
{
  /* void dGeomSetOffsetPosition(dGeomID geom, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
    STACK_FMT_DATA(dReal,   x)
    STACK_FMT_DATA(dReal,   y)
    STACK_FMT_DATA(dReal,   z)
  STACK_FMT_END()

    dGeomSetOffsetPosition
    ( STACK_GET_DATA(geom)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_geomSetOffsetRotation)
{
  /* void dGeomSetOffsetRotation(dGeomID geom, const dMatrix3 R) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID,  geom)
    STACK_FMT_DATA(dMatrix3, R)
  STACK_FMT_END()

    dGeomSetOffsetRotation
    ( STACK_GET_DATA(geom)
   ,  STACK_GET_DATA(R)
    );
}

EXDL_API(ede_geomSetOffsetQuaternion)
{
  /* void dGeomSetOffsetQuaternion(dGeomID geom, const dQuaternion Q) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID,     geom)
    STACK_FMT_DATA(dQuaternion, Q)
  STACK_FMT_END()

    dGeomSetOffsetQuaternion
    ( STACK_GET_DATA(geom)
   ,  STACK_GET_DATA(Q)
    );
}

EXDL_API(ede_geomSetOffsetWorldPosition)
{
  /* void dGeomSetOffsetWorldPosition(dGeomID geom, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
    STACK_FMT_DATA(dReal,   x)
    STACK_FMT_DATA(dReal,   y)
    STACK_FMT_DATA(dReal,   z)
  STACK_FMT_END()

    dGeomSetOffsetWorldPosition
    ( STACK_GET_DATA(geom)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );
}

EXDL_API(ede_geomSetOffsetWorldRotation)
{
  /* void dGeomSetOffsetWorldRotation(dGeomID geom, const dMatrix3 R) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID,  geom)
    STACK_FMT_DATA(dMatrix3, R)
  STACK_FMT_END()

    dGeomSetOffsetWorldRotation
    ( STACK_GET_DATA(geom)
   ,  STACK_GET_DATA(R)
    );
}

EXDL_API(ede_geomSetOffsetWorldQuaternion)
{
  /* void dGeomSetOffsetWorldQuaternion(dGeomID geom, const dQuaternion) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
    STACK_FMT_DATA(const,   dQuaternion)
  STACK_FMT_END()

    dGeomSetOffsetWorldQuaternion
    ( STACK_GET_DATA(geom)
   ,  STACK_GET_DATA(dQuaternion)
    );
}

EXDL_API(ede_geomClearOffset)
{
  /* void dGeomClearOffset(dGeomID geom) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
  STACK_FMT_END()

    dGeomClearOffset
    ( STACK_GET_DATA(geom)
    );
}

EXDL_API(ede_geomIsOffset)
{
  /* int dGeomIsOffset(dGeomID geom) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dGeomIsOffset
    ( STACK_GET_DATA(geom)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_geomGetOffsetPosition)
{
  /* const dReal* dGeomGetOffsetPosition(dGeomID geom) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
  STACK_FMT_END()

  CATCH_RESULT(const dReal*)

    dGeomGetOffsetPosition
    ( STACK_GET_DATA(geom)
    );

  THROW_POINTER()
}

EXDL_API(ede_geomCopyOffsetPosition)
{
  /* void dGeomCopyOffsetPosition(dGeomID geom, dVector3 pos) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID,  geom)
    STACK_FMT_DATA(dVector3, pos)
  STACK_FMT_END()

    dGeomCopyOffsetPosition
    ( STACK_GET_DATA(geom)
   ,  STACK_GET_DATA(pos)
    );
}

EXDL_API(ede_geomGetOffsetRotation)
{
  /* const dReal* dGeomGetOffsetRotation(dGeomID geom) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
  STACK_FMT_END()

  CATCH_RESULT(const dReal*)

    dGeomGetOffsetRotation
    ( STACK_GET_DATA(geom)
    );

  THROW_POINTER()
}

EXDL_API(ede_geomCopyOffsetRotation)
{
  /* void dGeomCopyOffsetRotation(dGeomID geom, dMatrix3 R) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID,  geom)
    STACK_FMT_DATA(dMatrix3, R)
  STACK_FMT_END()

    dGeomCopyOffsetRotation
    ( STACK_GET_DATA(geom)
   ,  STACK_GET_DATA(R)
    );
}

EXDL_API(ede_geomGetOffsetQuaternion)
{
  /* void dGeomGetOffsetQuaternion(dGeomID geom, dQuaternion result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID,     geom)
    STACK_FMT_DATA(dQuaternion, result)
  STACK_FMT_END()

    dGeomGetOffsetQuaternion
    ( STACK_GET_DATA(geom)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_collide)
{
  /* int dCollide(dGeomID o1, dGeomID o2, int flags, dContactGeom* contact, int skip) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID,       o1)
    STACK_FMT_DATA(dGeomID,       o2)
    STACK_FMT_DATA(int,           flags)
    STACK_FMT_LPTR(dContactGeom*, contact)
    STACK_FMT_DATA(int,           skip)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dCollide
    ( STACK_GET_DATA(o1)
   ,  STACK_GET_DATA(o2)
   ,  STACK_GET_DATA(flags)
   ,  STACK_GET_DATA(contact)
   ,  STACK_GET_DATA(skip)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_spaceCollide)
{
  /* void dSpaceCollide(dSpaceID space, void* data, dNearCallback* callback) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID,       space)
    STACK_FMT_LPTR(void*,          data)
    STACK_FMT_DATA(dNearCallback,  callback[])
  STACK_FMT_END()

    dSpaceCollide
    ( STACK_GET_DATA(space)
   ,  STACK_GET_DATA(data)
   ,  STACK_GET_ADDR(callback)
    );
}

EXDL_API(ede_spaceCollide2)
{
  /* void dSpaceCollide2(dGeomID space1, dGeomID space2, void* data, dNearCallback* callback) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID,        space1)
    STACK_FMT_DATA(dGeomID,        space2)
    STACK_FMT_LPTR(void*,          data)
    STACK_FMT_DATA(dNearCallback,  callback[])
  STACK_FMT_END()

    dSpaceCollide2
    ( STACK_GET_DATA(space1)
   ,  STACK_GET_DATA(space2)
   ,  STACK_GET_DATA(data)
   ,  STACK_GET_ADDR(callback)
    );
}

EXDL_API(ede_createSphere)
{
  /* dGeomID dCreateSphere(dSpaceID space, dReal radius) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
    STACK_FMT_DATA(dReal,    radius)
  STACK_FMT_END()

  CATCH_RESULT(dGeomID)

    dCreateSphere
    ( STACK_GET_DATA(space)
   ,  STACK_GET_DATA(radius)
    );

  THROW_RESULT(dGeomID)
}

EXDL_API(ede_geomSphereSetRadius)
{
  /* void dGeomSphereSetRadius(dGeomID sphere, dReal radius) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, sphere)
    STACK_FMT_DATA(dReal,   radius)
  STACK_FMT_END()

    dGeomSphereSetRadius
    ( STACK_GET_DATA(sphere)
   ,  STACK_GET_DATA(radius)
    );
}

EXDL_API(ede_geomSphereGetRadius)
{
  /* dReal dGeomSphereGetRadius(dGeomID sphere) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, sphere)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dGeomSphereGetRadius
    ( STACK_GET_DATA(sphere)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_geomSpherePointDepth)
{
  /* dReal dGeomSpherePointDepth(dGeomID sphere, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, sphere)
    STACK_FMT_DATA(dReal,   x)
    STACK_FMT_DATA(dReal,   y)
    STACK_FMT_DATA(dReal,   z)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dGeomSpherePointDepth
    ( STACK_GET_DATA(sphere)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_createConvex)
{
  /* dGeomID dCreateConvex(dSpaceID space, dReal* _planes, unsigned int _planecount, dReal* _points, unsigned int _pointcount,unsigned int* _polygons) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID,      space)
    STACK_FMT_LPTR(dReal*,        _planes)
    STACK_FMT_DATA(unsigned int,  _planecount)
    STACK_FMT_LPTR(dReal*,        _points)
    STACK_FMT_DATA(unsigned int,  _pointcount)
    STACK_FMT_DATA(unsigned int,  _polygons[])
  STACK_FMT_END()

  CATCH_RESULT(dGeomID)

    dCreateConvex
    ( STACK_GET_DATA(space)
   ,  STACK_GET_DATA(_planes)
   ,  STACK_GET_DATA(_planecount)
   ,  STACK_GET_DATA(_points)
   ,  STACK_GET_DATA(_pointcount)
   ,  STACK_GET_ADDR(_polygons)
    );

  THROW_RESULT(dGeomID)
}

EXDL_API(ede_geomSetConvex)
{
  /* void dGeomSetConvex(dGeomID g, dReal* _planes, unsigned int _count, dReal* _points, unsigned int _pointcount,unsigned int* _polygons) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID,       g)
    STACK_FMT_LPTR(dReal*,        _planes)
    STACK_FMT_DATA(unsigned int,  _count)
    STACK_FMT_LPTR(dReal*,        _points)
    STACK_FMT_DATA(unsigned int,  _pointcount)
    STACK_FMT_DATA(unsigned int,  _polygons[])
  STACK_FMT_END()

    dGeomSetConvex
    ( STACK_GET_DATA(g)
   ,  STACK_GET_DATA(_planes)
   ,  STACK_GET_DATA(_count)
   ,  STACK_GET_DATA(_points)
   ,  STACK_GET_DATA(_pointcount)
   ,  STACK_GET_ADDR(_polygons)
    );
}

EXDL_API(ede_createBox)
{
  /* dGeomID dCreateBox(dSpaceID space, dReal lx, dReal ly, dReal lz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
    STACK_FMT_DATA(dReal,    lx)
    STACK_FMT_DATA(dReal,    ly)
    STACK_FMT_DATA(dReal,    lz)
  STACK_FMT_END()

  CATCH_RESULT(dGeomID)

    dCreateBox
    ( STACK_GET_DATA(space)
   ,  STACK_GET_DATA(lx)
   ,  STACK_GET_DATA(ly)
   ,  STACK_GET_DATA(lz)
    );

  THROW_RESULT(dGeomID)
}

EXDL_API(ede_geomBoxSetLengths)
{
  /* void dGeomBoxSetLengths(dGeomID box, dReal lx, dReal ly, dReal lz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, box)
    STACK_FMT_DATA(dReal,   lx)
    STACK_FMT_DATA(dReal,   ly)
    STACK_FMT_DATA(dReal,   lz)
  STACK_FMT_END()

    dGeomBoxSetLengths
    ( STACK_GET_DATA(box)
   ,  STACK_GET_DATA(lx)
   ,  STACK_GET_DATA(ly)
   ,  STACK_GET_DATA(lz)
    );
}

EXDL_API(ede_geomBoxGetLengths)
{
  /* void dGeomBoxGetLengths(dGeomID box, dVector3 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID,  box)
    STACK_FMT_DATA(dVector3, result)
  STACK_FMT_END()

    dGeomBoxGetLengths
    ( STACK_GET_DATA(box)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_geomBoxPointDepth)
{
  /* dReal dGeomBoxPointDepth(dGeomID box, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, box)
    STACK_FMT_DATA(dReal,   x)
    STACK_FMT_DATA(dReal,   y)
    STACK_FMT_DATA(dReal,   z)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dGeomBoxPointDepth
    ( STACK_GET_DATA(box)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_createPlane)
{
  /* dGeomID dCreatePlane(dSpaceID space, dReal a, dReal b, dReal c, dReal d) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
    STACK_FMT_DATA(dReal,    a)
    STACK_FMT_DATA(dReal,    b)
    STACK_FMT_DATA(dReal,    c)
    STACK_FMT_DATA(dReal,    d)
  STACK_FMT_END()

  CATCH_RESULT(dGeomID)

    dCreatePlane
    ( STACK_GET_DATA(space)
   ,  STACK_GET_DATA(a)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(c)
   ,  STACK_GET_DATA(d)
    );

  THROW_RESULT(dGeomID)
}

EXDL_API(ede_geomPlaneSetParams)
{
  /* void dGeomPlaneSetParams(dGeomID plane, dReal a, dReal b, dReal c, dReal d) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, plane)
    STACK_FMT_DATA(dReal,   a)
    STACK_FMT_DATA(dReal,   b)
    STACK_FMT_DATA(dReal,   c)
    STACK_FMT_DATA(dReal,   d)
  STACK_FMT_END()

    dGeomPlaneSetParams
    ( STACK_GET_DATA(plane)
   ,  STACK_GET_DATA(a)
   ,  STACK_GET_DATA(b)
   ,  STACK_GET_DATA(c)
   ,  STACK_GET_DATA(d)
    );
}

EXDL_API(ede_geomPlaneGetParams)
{
  /* void dGeomPlaneGetParams(dGeomID plane, dVector4 result) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID,  plane)
    STACK_FMT_DATA(dVector4, result)
  STACK_FMT_END()

    dGeomPlaneGetParams
    ( STACK_GET_DATA(plane)
   ,  STACK_GET_DATA(result)
    );
}

EXDL_API(ede_geomPlanePointDepth)
{
  /* dReal dGeomPlanePointDepth(dGeomID plane, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, plane)
    STACK_FMT_DATA(dReal,   x)
    STACK_FMT_DATA(dReal,   y)
    STACK_FMT_DATA(dReal,   z)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dGeomPlanePointDepth
    ( STACK_GET_DATA(plane)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_createCapsule)
{
  /* dGeomID dCreateCapsule(dSpaceID space, dReal radius, dReal length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
    STACK_FMT_DATA(dReal,    radius)
    STACK_FMT_DATA(dReal,    length)
  STACK_FMT_END()

  CATCH_RESULT(dGeomID)

    dCreateCapsule
    ( STACK_GET_DATA(space)
   ,  STACK_GET_DATA(radius)
   ,  STACK_GET_DATA(length)
    );

  THROW_RESULT(dGeomID)
}

EXDL_API(ede_geomCapsuleSetParams)
{
  /* void dGeomCapsuleSetParams(dGeomID ccylinder, dReal radius, dReal length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, ccylinder)
    STACK_FMT_DATA(dReal,   radius)
    STACK_FMT_DATA(dReal,   length)
  STACK_FMT_END()

    dGeomCapsuleSetParams
    ( STACK_GET_DATA(ccylinder)
   ,  STACK_GET_DATA(radius)
   ,  STACK_GET_DATA(length)
    );
}

EXDL_API(ede_geomCapsuleGetParams)
{
  /* void dGeomCapsuleGetParams(dGeomID ccylinder, dReal* radius, dReal* length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, ccylinder)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(dReal,  radius)
    FRAME_FMT_DATA(dReal,  length)
  FRAME_FMT_END()

    dGeomCapsuleGetParams
    ( STACK_GET_DATA(ccylinder)
   ,  FRAME_GET_ADDR(radius)
   ,  FRAME_GET_ADDR(length)
    );

  THROW_FRAME()
}

EXDL_API(ede_geomCapsulePointDepth)
{
  /* dReal dGeomCapsulePointDepth(dGeomID ccylinder, dReal x, dReal y, dReal z) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, ccylinder)
    STACK_FMT_DATA(dReal,   x)
    STACK_FMT_DATA(dReal,   y)
    STACK_FMT_DATA(dReal,   z)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dGeomCapsulePointDepth
    ( STACK_GET_DATA(ccylinder)
   ,  STACK_GET_DATA(x)
   ,  STACK_GET_DATA(y)
   ,  STACK_GET_DATA(z)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_createCylinder)
{
  /* dGeomID dCreateCylinder(dSpaceID space, dReal radius, dReal length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
    STACK_FMT_DATA(dReal,    radius)
    STACK_FMT_DATA(dReal,    length)
  STACK_FMT_END()

  CATCH_RESULT(dGeomID)

    dCreateCylinder
    ( STACK_GET_DATA(space)
   ,  STACK_GET_DATA(radius)
   ,  STACK_GET_DATA(length)
    );

  THROW_RESULT(dGeomID)
}

EXDL_API(ede_geomCylinderSetParams)
{
  /* void dGeomCylinderSetParams(dGeomID cylinder, dReal radius, dReal length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, cylinder)
    STACK_FMT_DATA(dReal,   radius)
    STACK_FMT_DATA(dReal,   length)
  STACK_FMT_END()

    dGeomCylinderSetParams
    ( STACK_GET_DATA(cylinder)
   ,  STACK_GET_DATA(radius)
   ,  STACK_GET_DATA(length)
    );
}

EXDL_API(ede_geomCylinderGetParams)
{
  /* void dGeomCylinderGetParams(dGeomID cylinder, dReal* radius, dReal* length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, cylinder)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(dReal,  radius)
    FRAME_FMT_DATA(dReal,  length)
  FRAME_FMT_END()

    dGeomCylinderGetParams
    ( STACK_GET_DATA(cylinder)
   ,  FRAME_GET_ADDR(radius)
   ,  FRAME_GET_ADDR(length)
    );

  THROW_FRAME()
}

EXDL_API(ede_createRay)
{
  /* dGeomID dCreateRay(dSpaceID space, dReal length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
    STACK_FMT_DATA(dReal,    length)
  STACK_FMT_END()

  CATCH_RESULT(dGeomID)

    dCreateRay
    ( STACK_GET_DATA(space)
   ,  STACK_GET_DATA(length)
    );

  THROW_RESULT(dGeomID)
}

EXDL_API(ede_geomRaySetLength)
{
  /* void dGeomRaySetLength(dGeomID ray, dReal length) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, ray)
    STACK_FMT_DATA(dReal,   length)
  STACK_FMT_END()

    dGeomRaySetLength
    ( STACK_GET_DATA(ray)
   ,  STACK_GET_DATA(length)
    );
}

EXDL_API(ede_geomRayGetLength)
{
  /* dReal dGeomRayGetLength(dGeomID ray) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, ray)
  STACK_FMT_END()

  CATCH_RESULT(dReal)

    dGeomRayGetLength
    ( STACK_GET_DATA(ray)
    );

  THROW_RESULT(dReal)
}

EXDL_API(ede_geomRaySet)
{
  /* void dGeomRaySet(dGeomID ray, dReal px, dReal py, dReal pz, dReal dx, dReal dy, dReal dz) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, ray)
    STACK_FMT_DATA(dReal,   px)
    STACK_FMT_DATA(dReal,   py)
    STACK_FMT_DATA(dReal,   pz)
    STACK_FMT_DATA(dReal,   dx)
    STACK_FMT_DATA(dReal,   dy)
    STACK_FMT_DATA(dReal,   dz)
  STACK_FMT_END()

    dGeomRaySet
    ( STACK_GET_DATA(ray)
   ,  STACK_GET_DATA(px)
   ,  STACK_GET_DATA(py)
   ,  STACK_GET_DATA(pz)
   ,  STACK_GET_DATA(dx)
   ,  STACK_GET_DATA(dy)
   ,  STACK_GET_DATA(dz)
    );
}

EXDL_API(ede_geomRayGet)
{
  /* void dGeomRayGet(dGeomID ray, dVector3 start, dVector3 dir) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID,  ray)
    STACK_FMT_DATA(dVector3, start)
    STACK_FMT_DATA(dVector3, dir)
  STACK_FMT_END()

    dGeomRayGet
    ( STACK_GET_DATA(ray)
   ,  STACK_GET_DATA(start)
   ,  STACK_GET_DATA(dir)
    );
}

EXDL_API(ede_geomRaySetParams)
{
  /* void dGeomRaySetParams(dGeomID g, int FirstContact, int BackfaceCull) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, g)
    STACK_FMT_DATA(int,     FirstContact)
    STACK_FMT_DATA(int,     BackfaceCull)
  STACK_FMT_END()

    dGeomRaySetParams
    ( STACK_GET_DATA(g)
   ,  STACK_GET_DATA(FirstContact)
   ,  STACK_GET_DATA(BackfaceCull)
    );
}

EXDL_API(ede_geomRayGetParams)
{
  /* void dGeomRayGetParams(dGeomID g, int* FirstContact, int* BackfaceCull) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, g)
  STACK_FMT_END()

  FRAME_FMT_BEGIN()
    FRAME_FMT_DATA(int, FirstContact)
    FRAME_FMT_DATA(int, BackfaceCull)
  FRAME_FMT_END()

    dGeomRayGetParams
    ( STACK_GET_DATA(g)
   ,  FRAME_GET_ADDR(FirstContact)
   ,  FRAME_GET_ADDR(BackfaceCull)
    );

  THROW_FRAME()
}

EXDL_API(ede_geomRaySetClosestHit)
{
  /* void dGeomRaySetClosestHit(dGeomID g, int closestHit) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, g)
    STACK_FMT_DATA(int,     closestHit)
  STACK_FMT_END()

    dGeomRaySetClosestHit
    ( STACK_GET_DATA(g)
   ,  STACK_GET_DATA(closestHit)
    );
}

EXDL_API(ede_geomRayGetClosestHit)
{
  /* int dGeomRayGetClosestHit(dGeomID g) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, g)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dGeomRayGetClosestHit
    ( STACK_GET_DATA(g)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_createGeomTransform)
{
  /* dGeomID dCreateGeomTransform(dSpaceID space) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID, space)
  STACK_FMT_END()

  CATCH_RESULT(dGeomID)

    dCreateGeomTransform
    ( STACK_GET_DATA(space)
    );

  THROW_RESULT(dGeomID)
}

EXDL_API(ede_geomTransformSetGeom)
{
  /* void dGeomTransformSetGeom(dGeomID g, dGeomID obj) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, g)
    STACK_FMT_DATA(dGeomID, obj)
  STACK_FMT_END()

    dGeomTransformSetGeom
    ( STACK_GET_DATA(g)
   ,  STACK_GET_DATA(obj)
    );
}

EXDL_API(ede_geomTransformGetGeom)
{
  /* dGeomID dGeomTransformGetGeom(dGeomID g) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, g)
  STACK_FMT_END()

  CATCH_RESULT(dGeomID)

    dGeomTransformGetGeom
    ( STACK_GET_DATA(g)
    );

  THROW_RESULT(dGeomID)
}

EXDL_API(ede_geomTransformSetCleanup)
{
  /* void dGeomTransformSetCleanup(dGeomID g, int mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, g)
    STACK_FMT_DATA(int,     mode)
  STACK_FMT_END()

    dGeomTransformSetCleanup
    ( STACK_GET_DATA(g)
   ,  STACK_GET_DATA(mode)
    );
}

EXDL_API(ede_geomTransformGetCleanup)
{
  /* int dGeomTransformGetCleanup(dGeomID g) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, g)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dGeomTransformGetCleanup
    ( STACK_GET_DATA(g)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_geomTransformSetInfo)
{
  /* void dGeomTransformSetInfo(dGeomID g, int mode) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, g)
    STACK_FMT_DATA(int,     mode)
  STACK_FMT_END()

    dGeomTransformSetInfo
    ( STACK_GET_DATA(g)
   ,  STACK_GET_DATA(mode)
    );
}

EXDL_API(ede_geomTransformGetInfo)
{
  /* int dGeomTransformGetInfo(dGeomID g) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, g)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dGeomTransformGetInfo
    ( STACK_GET_DATA(g)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_createHeightfield)
{
  /* dGeomID dCreateHeightfield(dSpaceID space, dHeightfieldDataID data, int bPlaceable) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dSpaceID,           space)
    STACK_FMT_DATA(dHeightfieldDataID, data)
    STACK_FMT_DATA(int,                bPlaceable)
  STACK_FMT_END()

  CATCH_RESULT(dGeomID)

    dCreateHeightfield
    ( STACK_GET_DATA(space)
   ,  STACK_GET_DATA(data)
   ,  STACK_GET_DATA(bPlaceable)
    );

  THROW_RESULT(dGeomID)
}

EXDL_API(ede_geomHeightfieldDataCreate)
{
  /* dHeightfieldDataID dGeomHeightfieldDataCreate() */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  CATCH_RESULT(dHeightfieldDataID)

    dGeomHeightfieldDataCreate
    (
    );

  THROW_RESULT(dHeightfieldDataID)
}

EXDL_API(ede_geomHeightfieldDataDestroy)
{
  /* void dGeomHeightfieldDataDestroy(dHeightfieldDataID d) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dHeightfieldDataID, d)
  STACK_FMT_END()

    dGeomHeightfieldDataDestroy
    ( STACK_GET_DATA(d)
    );
}

EXDL_API(ede_geomHeightfieldDataBuildCallback)
{
  /* void dGeomHeightfieldDataBuildCallback(dHeightfieldDataID d, void* pUserData, dHeightfieldGetHeight* pCallback, dReal width, dReal depth, int widthSamples, int depthSamples, dReal scale, dReal offset, dReal thickness, int bWrap) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dHeightfieldDataID,     d)
    STACK_FMT_LPTR(void*,                  pUserData)
    STACK_FMT_LPTR(dHeightfieldGetHeight*, pCallback)
    STACK_FMT_DATA(dReal,                  width)
    STACK_FMT_DATA(dReal,                  depth)
    STACK_FMT_DATA(int,                    widthSamples)
    STACK_FMT_DATA(int,                    depthSamples)
    STACK_FMT_DATA(dReal,                  scale)
    STACK_FMT_DATA(dReal,                  offset)
    STACK_FMT_DATA(dReal,                  thickness)
    STACK_FMT_DATA(int,                    bWrap)
  STACK_FMT_END()

    dGeomHeightfieldDataBuildCallback
    ( STACK_GET_DATA(d)
   ,  STACK_GET_DATA(pUserData)
   ,  STACK_GET_DATA(pCallback)
   ,  STACK_GET_DATA(width)
   ,  STACK_GET_DATA(depth)
   ,  STACK_GET_DATA(widthSamples)
   ,  STACK_GET_DATA(depthSamples)
   ,  STACK_GET_DATA(scale)
   ,  STACK_GET_DATA(offset)
   ,  STACK_GET_DATA(thickness)
   ,  STACK_GET_DATA(bWrap)
    );
}

EXDL_API(ede_geomHeightfieldDataBuildByte)
{
  /* void dGeomHeightfieldDataBuildByte(dHeightfieldDataID d, const unsigned char* pHeightData, int bCopyHeightData, dReal width, dReal depth, int widthSamples, int depthSamples, dReal scale, dReal offset, dReal thickness, int bWrap) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dHeightfieldDataID,   d)
    STACK_FMT_LPTR(unsigned char*,       pHeightData)
    STACK_FMT_DATA(int,                  bCopyHeightData)
    STACK_FMT_DATA(dReal,                width)
    STACK_FMT_DATA(dReal,                depth)
    STACK_FMT_DATA(int,                  widthSamples)
    STACK_FMT_DATA(int,                  depthSamples)
    STACK_FMT_DATA(dReal,                scale)
    STACK_FMT_DATA(dReal,                offset)
    STACK_FMT_DATA(dReal,                thickness)
    STACK_FMT_DATA(int,                  bWrap)
  STACK_FMT_END()

    dGeomHeightfieldDataBuildByte
    ( STACK_GET_DATA(d)
   ,  STACK_GET_DATA(pHeightData)
   ,  STACK_GET_DATA(bCopyHeightData)
   ,  STACK_GET_DATA(width)
   ,  STACK_GET_DATA(depth)
   ,  STACK_GET_DATA(widthSamples)
   ,  STACK_GET_DATA(depthSamples)
   ,  STACK_GET_DATA(scale)
   ,  STACK_GET_DATA(offset)
   ,  STACK_GET_DATA(thickness)
   ,  STACK_GET_DATA(bWrap)
    );
}

EXDL_API(ede_geomHeightfieldDataBuildShort)
{
  /* void dGeomHeightfieldDataBuildShort(dHeightfieldDataID d, const short* pHeightData, int bCopyHeightData, dReal width, dReal depth, int widthSamples, int depthSamples, dReal scale, dReal offset, dReal thickness, int bWrap) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dHeightfieldDataID, d)
    STACK_FMT_LPTR(short*,             pHeightData)
    STACK_FMT_DATA(int,                bCopyHeightData)
    STACK_FMT_DATA(dReal,              width)
    STACK_FMT_DATA(dReal,              depth)
    STACK_FMT_DATA(int,                widthSamples)
    STACK_FMT_DATA(int,                depthSamples)
    STACK_FMT_DATA(dReal,              scale)
    STACK_FMT_DATA(dReal,              offset)
    STACK_FMT_DATA(dReal,              thickness)
    STACK_FMT_DATA(int,                bWrap)
  STACK_FMT_END()

    dGeomHeightfieldDataBuildShort
    ( STACK_GET_DATA(d)
   ,  STACK_GET_DATA(pHeightData)
   ,  STACK_GET_DATA(bCopyHeightData)
   ,  STACK_GET_DATA(width)
   ,  STACK_GET_DATA(depth)
   ,  STACK_GET_DATA(widthSamples)
   ,  STACK_GET_DATA(depthSamples)
   ,  STACK_GET_DATA(scale)
   ,  STACK_GET_DATA(offset)
   ,  STACK_GET_DATA(thickness)
   ,  STACK_GET_DATA(bWrap)
    );
}

EXDL_API(ede_geomHeightfieldDataBuildSingle)
{
  /* void dGeomHeightfieldDataBuildSingle(dHeightfieldDataID d, const float* pHeightData, int bCopyHeightData, dReal width, dReal depth, int widthSamples, int depthSamples, dReal scale, dReal offset, dReal thickness, int bWrap) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dHeightfieldDataID, d)
    STACK_FMT_LPTR(float*,             pHeightData)
    STACK_FMT_DATA(int,                bCopyHeightData)
    STACK_FMT_DATA(dReal,              width)
    STACK_FMT_DATA(dReal,              depth)
    STACK_FMT_DATA(int,                widthSamples)
    STACK_FMT_DATA(int,                depthSamples)
    STACK_FMT_DATA(dReal,              scale)
    STACK_FMT_DATA(dReal,              offset)
    STACK_FMT_DATA(dReal,              thickness)
    STACK_FMT_DATA(int,                bWrap)
  STACK_FMT_END()

    dGeomHeightfieldDataBuildSingle
    ( STACK_GET_DATA(d)
   ,  STACK_GET_DATA(pHeightData)
   ,  STACK_GET_DATA(bCopyHeightData)
   ,  STACK_GET_DATA(width)
   ,  STACK_GET_DATA(depth)
   ,  STACK_GET_DATA(widthSamples)
   ,  STACK_GET_DATA(depthSamples)
   ,  STACK_GET_DATA(scale)
   ,  STACK_GET_DATA(offset)
   ,  STACK_GET_DATA(thickness)
   ,  STACK_GET_DATA(bWrap)
    );
}

EXDL_API(ede_geomHeightfieldDataBuildDouble)
{
  /* void dGeomHeightfieldDataBuildDouble(dHeightfieldDataID d, const double* pHeightData, int bCopyHeightData, dReal width, dReal depth, int widthSamples, int depthSamples, dReal scale, dReal offset, dReal thickness, int bWrap) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dHeightfieldDataID, d)
    STACK_FMT_LPTR(double*,            pHeightData)
    STACK_FMT_DATA(int,                bCopyHeightData)
    STACK_FMT_DATA(dReal,              width)
    STACK_FMT_DATA(dReal,              depth)
    STACK_FMT_DATA(int,                widthSamples)
    STACK_FMT_DATA(int,                depthSamples)
    STACK_FMT_DATA(dReal,              scale)
    STACK_FMT_DATA(dReal,              offset)
    STACK_FMT_DATA(dReal,              thickness)
    STACK_FMT_DATA(int,                bWrap)
  STACK_FMT_END()

    dGeomHeightfieldDataBuildDouble
    ( STACK_GET_DATA(d)
   ,  STACK_GET_DATA(pHeightData)
   ,  STACK_GET_DATA(bCopyHeightData)
   ,  STACK_GET_DATA(width)
   ,  STACK_GET_DATA(depth)
   ,  STACK_GET_DATA(widthSamples)
   ,  STACK_GET_DATA(depthSamples)
   ,  STACK_GET_DATA(scale)
   ,  STACK_GET_DATA(offset)
   ,  STACK_GET_DATA(thickness)
   ,  STACK_GET_DATA(bWrap)
    );
}

EXDL_API(ede_geomHeightfieldDataSetBounds)
{
  /* void dGeomHeightfieldDataSetBounds(dHeightfieldDataID d, dReal minHeight, dReal maxHeight) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dHeightfieldDataID, d)
    STACK_FMT_DATA(dReal,              minHeight)
    STACK_FMT_DATA(dReal,              maxHeight)
  STACK_FMT_END()

    dGeomHeightfieldDataSetBounds
    ( STACK_GET_DATA(d)
   ,  STACK_GET_DATA(minHeight)
   ,  STACK_GET_DATA(maxHeight)
    );
}

EXDL_API(ede_geomHeightfieldSetHeightfieldData)
{
  /* void dGeomHeightfieldSetHeightfieldData(dGeomID g, dHeightfieldDataID d) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID,            g)
    STACK_FMT_DATA(dHeightfieldDataID, d)
  STACK_FMT_END()

    dGeomHeightfieldSetHeightfieldData
    ( STACK_GET_DATA(g)
   ,  STACK_GET_DATA(d)
    );
}

EXDL_API(ede_geomHeightfieldGetHeightfieldData)
{
  /* dHeightfieldDataID dGeomHeightfieldGetHeightfieldData(dGeomID g) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, g)
  STACK_FMT_END()

  CATCH_RESULT(dHeightfieldDataID)

    dGeomHeightfieldGetHeightfieldData
    ( STACK_GET_DATA(g)
    );

  THROW_RESULT(dHeightfieldDataID)
}

EXDL_API(ede_closestLineSegmentPoints)
{
  /* void dClosestLineSegmentPoints(const dVector3 a1, const dVector3 a2, const dVector3 b1, const dVector3 b2, dVector3 cp1, dVector3 cp2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dVector3, a1)
    STACK_FMT_DATA(dVector3, a2)
    STACK_FMT_DATA(dVector3, b1)
    STACK_FMT_DATA(dVector3, b2)
    STACK_FMT_DATA(dVector3, cp1)
    STACK_FMT_DATA(dVector3, cp2)
  STACK_FMT_END()

    dClosestLineSegmentPoints
    ( STACK_GET_DATA(a1)
   ,  STACK_GET_DATA(a2)
   ,  STACK_GET_DATA(b1)
   ,  STACK_GET_DATA(b2)
   ,  STACK_GET_DATA(cp1)
   ,  STACK_GET_DATA(cp2)
    );
}

EXDL_API(ede_boxTouchesBox)
{
  /* int dBoxTouchesBox(const dVector3 _p1, const dMatrix3 R1, const dVector3 side1, const dVector3 _p2, const dMatrix3 R2, const dVector3 side2) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dVector3, _p1)
    STACK_FMT_DATA(dMatrix3, R1)
    STACK_FMT_DATA(dVector3, side1)
    STACK_FMT_DATA(dVector3, _p2)
    STACK_FMT_DATA(dMatrix3, R2)
    STACK_FMT_DATA(dVector3, side2)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dBoxTouchesBox
    ( STACK_GET_DATA(_p1)
   ,  STACK_GET_DATA(R1)
   ,  STACK_GET_DATA(side1)
   ,  STACK_GET_DATA(_p2)
   ,  STACK_GET_DATA(R2)
   ,  STACK_GET_DATA(side2)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_boxBox)
{
  /* int dBoxBox(const dVector3 p1, const dMatrix3 R1, const dVector3 side1, const dVector3 p2, const dMatrix3 R2, const dVector3 side2, dVector3 normal, dReal* depth, int* return_code, int flags, dContactGeom* contact, int skip) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dVector3,      p1)
    STACK_FMT_DATA(dMatrix3,      R1)
    STACK_FMT_DATA(dVector3,      side1)
    STACK_FMT_DATA(dVector3,      p2)
    STACK_FMT_DATA(dMatrix3,      R2)
    STACK_FMT_DATA(dVector3,      side2)
    STACK_FMT_DATA(dVector3,      normal)
    STACK_FMT_LPTR(dReal*,        depth)
    STACK_FMT_LPTR(int*,          return_code)
    STACK_FMT_DATA(int,           flags)
    STACK_FMT_LPTR(dContactGeom*, contact)
    STACK_FMT_DATA(int,           skip)
  STACK_FMT_END()

  CATCH_RESULT(int)

    dBoxBox
    ( STACK_GET_DATA(p1)
   ,  STACK_GET_DATA(R1)
   ,  STACK_GET_DATA(side1)
   ,  STACK_GET_DATA(p2)
   ,  STACK_GET_DATA(R2)
   ,  STACK_GET_DATA(side2)
   ,  STACK_GET_DATA(normal)
   ,  STACK_GET_DATA(depth)
   ,  STACK_GET_DATA(return_code)
   ,  STACK_GET_DATA(flags)
   ,  STACK_GET_DATA(contact)
   ,  STACK_GET_DATA(skip)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_infiniteAABB)
{
  /* void dInfiniteAABB(dGeomID geom, dReal aabb[6]) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomID, geom)
    STACK_FMT_DATA(dReal,   aabb[6])
  STACK_FMT_END()

    dInfiniteAABB
    ( STACK_GET_DATA(geom)
   ,  STACK_GET_ADDR(aabb)
    );
}

EXDL_API(ede_createGeomClass)
{
  /* int dCreateGeomClass(const dGeomClass* classptr) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dGeomClass, classptr[])
  STACK_FMT_END()

  CATCH_RESULT(int)

    dCreateGeomClass
    ( STACK_GET_ADDR(classptr)
    );

  THROW_RESULT(int)
}

EXDL_API(ede_geomGetClassData)
{
  /* void* dGeomGetClassData(dGeomID) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
 dGeomID[])
  STACK_FMT_END()

  CATCH_RESULT(void*)

    dGeomGetClassData
    ( STACK_GET_ADDR(dGeomID)
    );

  THROW_POINTER()
}

EXDL_API(ede_createGeom)
{
  /* dGeomID dCreateGeom(int classnum) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int, classnum)
  STACK_FMT_END()

  CATCH_RESULT(dGeomID)

    dCreateGeom
    ( STACK_GET_DATA(classnum)
    );

  THROW_RESULT(dGeomID)
}

EXDL_API(ede_setColliderOverride)
{
  /* void dSetColliderOverride(int i, int j, dColliderFn* fn) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(int,          i)
    STACK_FMT_DATA(int,          j)
    STACK_FMT_DATA(dColliderFn,  fn[])
  STACK_FMT_END()

    dSetColliderOverride
    ( STACK_GET_DATA(i)
   ,  STACK_GET_DATA(j)
   ,  STACK_GET_ADDR(fn)
    );
}

/* odecpp_collision.h */

/* export-dif.h */

EXDL_API(ede_worldExportDIF)
{
  /* void dWorldExportDIF(dWorldID w, FILE* file, const char* world_name) */

  /* exp :  */
  /* inp :  */
  /* ret :  */

  STACK_FMT_BEGIN()
    STACK_FMT_DATA(dWorldID,    w)
    STACK_FMT_LPTR(FILE*,       file)
    STACK_FMT_DATA(char,        world_name[])
  STACK_FMT_END()

    dWorldExportDIF
    ( STACK_GET_DATA(w)
   ,  STACK_GET_DATA(file)
   ,  STACK_GET_ADDR(world_name)
    );
}

#endif // COMPILE_DE

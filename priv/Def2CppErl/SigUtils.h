// SigUtils.h: interface for the SigUtils classes.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_SIGUTILS_H__61AE51F0_E74E_415B_8D27_A395E0DE429B__INCLUDED_)
#define AFX_SIGUTILS_H__61AE51F0_E74E_415B_8D27_A395E0DE429B__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

//#define USE_MSTRING

#ifdef USE_MSTRING
  #include "MStringArray.h"
  #include "MString.h"
  #define XString      MString
  #define XStringArray MStringArray
#else
#ifdef USE_USTRING
  #include "plArrays.hpp"
  #include "plStrings.hpp"
  using namespace pLib::Strings;
  using namespace pLib::Arrays;
  #define XString      plString
  #define XStringArray plArray
#else
  #define XString      CString
  #define XStringArray CStringArray
#endif // USE_USTRING
#endif // USE_MSTRING

#define MAX_LEVEL   16
#define BUFFER_SIZE (1<<21) // 1<<21, 2 Mo, soyons fou !
#define STRING_SIZE 256

#define USEMEMMOVE
#define USEMEMCPY

#ifdef _DEBUG
#define DEBUGSTUFF
#endif // _DEBUG

// ============================================================================

int IPOW(int x, int n);
int SQRT(int n);
int HASH(const char* c, int s = 0);

double ATOD( const char* i_poNumber, BOOL i_bStopOnError = FALSE);
int    ATOL( const char* i_poNumber, BOOL i_bStopOnError = FALSE);
int    ATOI( const char* i_poNumber, BOOL i_bStopOnError = FALSE);
int    ATOH( const char* i_poNumber, BOOL i_bStopOnError = FALSE);

int ANGLE
( int i_nXd
, int i_nYd
, int i_nXf
, int i_nYf
);

char* RACC
( char* io_panString
, BOOL i_bLower = FALSE
);

#define EXTENDCMP

char SCMP
( const char* i_panString
, const char* i_panCompare
#ifdef EXTENDCMP
, BOOL  i_bLower  = FALSE
, BOOL  i_bAccent = FALSE
#endif // EXTENDCMP
, int   i_nCharToCompare = 0
);

BOOL WCMP
( char* i_panWild
, char* i_panString
#ifdef EXTENDCMP
, BOOL i_bLower  = FALSE
, BOOL i_bAccent = FALSE
#endif // EXTENDCMP
);

BOOL WRCMP
( const char* i_panWild
, const char* i_panString
#ifdef EXTENDCMP
, BOOL i_bLower  = FALSE
, BOOL i_bAccent = FALSE
#endif // EXTENDCMP
);

// ============================================================================

void MEMMOVE
( void* o_panBufferOut // void -> accept any format without warning
, void* i_panBufferIn
, int   i_nBufferSize
);

void MEMCPY
( void* o_panBufferOut // void -> accept any format without warning
, void* i_panBufferIn
, int   i_nBufferSize
, BOOL  i_bCopyForward = TRUE
);

// ============================================================================

class CRC32
{
  public:
    CRC32();
    DWORD CalcCRC(LPVOID i_panBuffer, UINT i_nSize);

  private:
    ULONG _Reflect(ULONG i_nRef, char i_nChar);
    void  _Calc(const LPBYTE i_panBuffer, UINT i_nSize, ULONG &io_rnCRC);

    ULONG Table[256];
};

// ============================================================================

LPSTR TrimLeftRight
( LPSTR i_panString
, LPSTR i_panRemove = "\""
);

// ============================================================================

class ClassUtils
{
  public:
    ClassUtils(){};
    virtual ~ClassUtils(){};

    virtual void SetClassName(const char* i_panStrName);

  protected:
    virtual void _SetClassType(const char* i_panStrClass = "BaseClass");

    XString mp_oStrObjectName;
    XString mp_oStrObjectClass;
};

// ============================================================================

class MultiStringBuffer
{
  public:
   MultiStringBuffer();
   virtual ~MultiStringBuffer();

    BOOL Extract(XString& rString, LPCTSTR lpszFullString, int iSubString, TCHAR chSep,               bool bTrim = false, bool bForce = false);
    BOOL Extract(XString& rString, LPCTSTR lpszFullString, int iSubString, LPCTSTR lpszSep = "(,)\n", bool bTrim = false, bool bForce = false);

    BOOL Parse(LPCTSTR lpszFullString, TCHAR chSep,               bool bTrim = true);
    BOOL Parse(LPCTSTR lpszFullString, LPCTSTR lpszSep = "(,)\n", bool bTrim = true);

    LPCTSTR     GetStringAdr(int iSubString);
    XString     GetStringObj(int iSubString);
    std::string GetStringStd(int iSubString);

  protected:
    TCHAR*   m_panFullString;
    int      m_nBufferLen;

    LPCTSTR  mp_panPrevSep;

    std::string m_strPrevSep;

    std::vector<int> m_anSubStrFirst;
    std::vector<int> m_anSubStrCount; // Pour GetBufferSetLength

    void ErasePointers(LPCTSTR lpszFullString = NULL);
};

#define USE_MYEXTRACTSUBSTRING
#ifdef USE_MYEXTRACTSUBSTRING
  static MultiStringBuffer g_oExtractSubString;

  #define MyAfxExtractSubString(rString, lpszFullString, iSubString, chSep) \
            g_oExtractSubString.Extract(rString, lpszFullString, iSubString, chSep)
#else
  #define MyAfxExtractSubString(rString, lpszFullString, iSubString, chSep) \
            AfxExtractSubString(rString, lpszFullString, iSubString, chSep)
#endif // USE_MYEXTRACTSUBSTRING

// ============================================================================

class CFileIO : public ClassUtils
{
  public:
    CFileIO(void);
    CFileIO(char* i_panFilePathNameExt);
    virtual ~CFileIO(void);

    BOOL FileOpen(char* i_panFilePathNameExt);
    void FileClose();

    BOOL LoadNextLine(XString &o_poStrLine, BOOL i_bAllowEmptyLine = FALSE);
    BOOL LoadNextBuff(char *o_panBuffer, int &io_rnSize);

    int  GetPos();
    int  GetSize();

  private:
    void    _Init();
    void    _Load();

    int     mp_nFileSize; // Taille du fichier
    int     mp_nFileLeft; // Reste � lire
    int     mp_nFileRead; // Buffer lu
    int     mp_nPointer;  // Position dans le buffer
    int     mp_nPos;      // Position buffer lu
    char*   mp_panBuffer; // Buffer
    CFile*  mp_poFile;    // Fichier
    XString mp_oStrFile;  // Fichier
};

// Post baseclass declaration includes
// Allows to include only the baseclass header
#include "Memory.h"

#endif // !defined(AFX_SIGUTILS_H__61AE51F0_E74E_415B_8D27_A395E0DE429B__INCLUDED_)

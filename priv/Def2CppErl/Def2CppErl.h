// Def2CppErl.h : main header file for the DEF2CPPERL application
//

#if !defined(AFX_DEF2CPPERL_H__F6E520E9_D80E_4FEA_BBB5_53AF1E4DEFDD__INCLUDED_)
#define AFX_DEF2CPPERL_H__F6E520E9_D80E_4FEA_BBB5_53AF1E4DEFDD__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
  #error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"    // main symbols

/////////////////////////////////////////////////////////////////////////////
// CDef2CppErlApp:
// See Def2CppErl.cpp for the implementation of this class
//

class CDef2CppErlApp : public CWinApp
{
public:
  CDef2CppErlApp();

// Overrides
  // ClassWizard generated virtual function overrides
  //{{AFX_VIRTUAL(CDef2CppErlApp)
  public:
  virtual BOOL InitInstance();
  //}}AFX_VIRTUAL

// Implementation

  //{{AFX_MSG(CDef2CppErlApp)
  //}}AFX_MSG
  DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DEF2CPPERL_H__F6E520E9_D80E_4FEA_BBB5_53AF1E4DEFDD__INCLUDED_)

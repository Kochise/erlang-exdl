// Def2CppErl.cpp : Defines the class behaviors for the application.
//

#include "stdafx.h"
#include "Def2CppErl.h"
#include "Def2CppErlDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CDef2CppErlApp

BEGIN_MESSAGE_MAP(CDef2CppErlApp, CWinApp)
  //{{AFX_MSG_MAP(CDef2CppErlApp)
  //}}AFX_MSG
  ON_COMMAND(ID_HELP, CWinApp::OnHelp)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDef2CppErlApp construction

CDef2CppErlApp::CDef2CppErlApp()
{
}

/////////////////////////////////////////////////////////////////////////////
// The one and only CDef2CppErlApp object

CDef2CppErlApp theApp;

/////////////////////////////////////////////////////////////////////////////
// CDef2CppErlApp initialization

BOOL CDef2CppErlApp::InitInstance()
{
  // IMPORTANT : Pour ComCtl32.dll version 6 ou plus
  InitCommonControls();
  CWinApp::InitInstance();
  // IMPORTANT : Pour ComCtl32.dll version 6 ou plus

  SetRegistryKey(_T("Kochise"));
  LoadStdProfileSettings();  // Load standard INI file options (including MRU)

  // Standard initialization

  CDef2CppErlDlg dlg;
  m_pMainWnd = &dlg;
  int nResponse = dlg.DoModal();
  if (nResponse == IDOK)
  {
  }
  else if (nResponse == IDCANCEL)
  {
  }

  // Since the dialog has been closed, return FALSE so that we exit the
  //  application, rather than start the application's message pump.
  return FALSE;
}

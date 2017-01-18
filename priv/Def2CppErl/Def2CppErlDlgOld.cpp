// Def2CppErlDlg.cpp : implementation file
//

#include "stdafx.h"
#include <io.h> // _taccess

#include "Def2CppErl.h"
#include "Def2CppErlDlg.h"

#include "amsWnd.h"
#include "SigUtils.h" // MultiStringBuffer
#include "SkinProgress.h"

#ifdef _DEBUG
  #define new DEBUG_NEW
  #undef THIS_FILE
  static char THIS_FILE[] = __FILE__;
#endif

#ifndef WS_EX_LAYERED
  #define WS_EX_LAYERED 0x00080000
  #define LWA_COLORKEY  0x00000001
  #define LWA_ALPHA     0x00000002
#endif // WS_EX_LAYERED

/////////////////////////////////////////////////////////////////////////////
// CDef2CppErlDlg dialog

CDef2CppErlDlg::CDef2CppErlDlg(CWnd* pParent /*=NULL*/)
  : CDialog(CDef2CppErlDlg::IDD, pParent)
{
  //{{AFX_DATA_INIT(CDef2CppErlDlg)
  m_oStrPathDst = _T("");
  m_oStrPathSrc = _T("");
  m_oStrFileType = _T("");
	m_oStrWrkTotTxt = _T("");
	//}}AFX_DATA_INIT
  m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CDef2CppErlDlg::DoDataExchange(CDataExchange* pDX)
{
  CDialog::DoDataExchange(pDX);
  //{{AFX_DATA_MAP(CDef2CppErlDlg)
  DDX_Control(pDX, IDC_STA_WRK_TOT_PROG, m_oWndWrkTotProg);
  DDX_Control(pDX, IDC_STA_WRK_FILE_TXT, m_oWndWrkTotTxt);
  DDX_Control(pDX, IDC_ED_FILE_DST, m_oEditFileDst);
  DDX_Control(pDX, IDC_BUT_WRK_RUN, m_oButWrkRun);
  DDX_Control(pDX, IDC_BUT_FIL_SRC, m_oButPathSrc);
  DDX_Control(pDX, IDC_BUT_FIL_DST, m_oButPathDst);
  DDX_Text(pDX, IDC_ED_FILE_DST, m_oStrPathDst);
  DDX_Text(pDX, IDC_ED_FILE_SRC, m_oStrPathSrc);
  DDX_Text(pDX, IDC_ED_FILE_TYPE, m_oStrFileType);
	DDX_Text(pDX, IDC_STA_WRK_FILE_TXT, m_oStrWrkTotTxt);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CDef2CppErlDlg, CDialog)
  //{{AFX_MSG_MAP(CDef2CppErlDlg)
  ON_WM_PAINT()
  ON_WM_QUERYDRAGICON()
  ON_BN_CLICKED(IDC_BUT_FIL_DST, OnButFileDst)
  ON_BN_CLICKED(IDC_BUT_FIL_SRC, OnButFileSrc)
  ON_BN_CLICKED(IDC_BUT_WRK_RUN, OnButWrkRun)
  ON_EN_CHANGE(IDC_ED_FILE_DST, OnChangeEdFileDst)
  ON_WM_DESTROY()
	ON_WM_LBUTTONDOWN()
	ON_EN_CHANGE(IDC_ED_FILE_TYPE, OnChangeEdFileType)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDef2CppErlDlg message handlers

BOOL CDef2CppErlDlg::OnInitDialog()
{
  CDialog::OnInitDialog();

  CAMSWnd::Restore(this, _T("Def2CppErlDlg"), CAMSWnd::Position);

  SetIcon(m_hIcon, TRUE);  // Set big icon
  SetIcon(m_hIcon, FALSE); // Set small icon
  
    // Here we import the function from USER32.DLL
  HMODULE hUser32 = GetModuleHandle(_T("USER32.DLL"));
  m_pSetLayeredWindowAttributes
  = (pSLWA)
    GetProcAddress
    ( hUser32
    , "SetLayeredWindowAttributes"
    );

  // If the import did not succeed, make sure your app can handle it!
  if(NULL != m_pSetLayeredWindowAttributes)
  {
    SetWindowLong
    ( m_hWnd
    , GWL_EXSTYLE
    , GetWindowLong(m_hWnd, GWL_EXSTYLE) | WS_EX_LAYERED
    );
    
    // Sets the window to 70% visibility.
    m_pSetLayeredWindowAttributes
    ( m_hWnd
    , 0
    , (255 * 90) / 100
    , LWA_ALPHA
    );
  }

  // ===============================

  m_oButPathSrc.EnableWindow(TRUE);
  m_oButPathDst.EnableWindow(TRUE);
  m_oButWrkRun.EnableWindow(FALSE);

  m_oEditFileDst.SetBkColor(RGB(255, 255, 255));
  
  m_bTestWrite   = FALSE;
  m_bTestFile    = FALSE;
  m_bStopRequest = FALSE;

  m_oStrAppPath  = AfxGetApp()->m_pszHelpFilePath;
  m_oStrAppPath  = m_oStrAppPath.Left(m_oStrAppPath.ReverseFind('\\')+1);

  m_oStrPathSrc  = AfxGetApp()->GetProfileString(_T("File"), _T("PathSrc"), m_oStrAppPath);
  m_oStrPathDst  = AfxGetApp()->GetProfileString(_T("File"), _T("PathDst"), m_oStrAppPath);
  m_oStrFileType = AfxGetApp()->GetProfileString(_T("File"), _T("Type"), "def");

  VerifyDst();
  VerifyRun();
  
  return TRUE;  // return TRUE  unless you set the focus to a control
}

void CDef2CppErlDlg::OnLButtonDown(UINT nFlags, CPoint point) 
{
	CDialog::OnLButtonDown(nFlags, point);

  PostMessage(WM_NCLBUTTONDOWN, HTCAPTION, MAKELPARAM( point.x, point.y));
}

void CDef2CppErlDlg::OnDestroy() 
{
  CAMSWnd::Save(this, _T("Def2CppErlDlg"));

  CDialog::OnDestroy();
  
  //

  m_bStopRequest = TRUE; // Request to stop (if processing files)

  m_oPathSplitter.Split(m_oStrPathSrc);
  AfxGetApp()->WriteProfileString(_T("File"), _T("PathSrc"), m_oPathSplitter.GetFolder());

  m_oPathSplitter.Split(m_oStrPathDst);
  AfxGetApp()->WriteProfileString(_T("File"), _T("PathDst"), m_oPathSplitter.GetFolder());

  AfxGetApp()->WriteProfileString(_T("File"), _T("Type"), m_oStrFileType);

  PeekAndPump(); // Wait a bit until the process to finish
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CDef2CppErlDlg::OnPaint() 
{
  if(IsIconic())
  {
    CPaintDC dc(this); // device context for painting

    SendMessage(WM_ICONERASEBKGND, (WPARAM) dc.GetSafeHdc(), 0);

    // Center icon in client rectangle
    int cxIcon = GetSystemMetrics(SM_CXICON);
    int cyIcon = GetSystemMetrics(SM_CYICON);

    CRect rect;
    GetClientRect(&rect);

    int x = (rect.Width()  - cxIcon + 1) / 2;
    int y = (rect.Height() - cyIcon + 1) / 2;

    // Draw the icon
    dc.DrawIcon(x, y, m_hIcon);
  }
  else
  {
    CDialog::OnPaint();
  }
}

HCURSOR CDef2CppErlDlg::OnQueryDragIcon()
{
  return (HCURSOR) m_hIcon;
}

void CDef2CppErlDlg::OnButFileSrc() 
{
  UpdateData(TRUE);

  m_oPathSplitter.Split(m_oStrPathSrc);

  CFileDialog l_oDlgFileSelect
  ( TRUE
  , NULL
  , (CString) m_oPathSplitter.GetFolder()+"Répertoire source"
  , 0
  );

  if(IDOK == l_oDlgFileSelect.DoModal())
  { // Si c'est OK
    m_oPathSplitter.Split(l_oDlgFileSelect.GetPathName());

    m_oStrPathSrc = m_oPathSplitter.GetFolder();

    // If destination directory empty, use source directory
    if(m_oStrPathDst.IsEmpty())
    {
      m_oStrPathDst = m_oStrPathSrc;
    }else{}

    VerifyDst();
  }
  else{}

  // Update GUI
  VerifyRun();
}

void CDef2CppErlDlg::OnButFileDst() 
{
  UpdateData(TRUE);

  m_oPathSplitter.Split(m_oStrPathDst);

  CFileDialog l_oDlgFileSelect
  ( TRUE
  , NULL
  , (CString) m_oPathSplitter.GetFolder()+"Répertoire destination"
  , 0
  );

  if(l_oDlgFileSelect.DoModal() == IDOK)
  { // Si c'est OK
    m_oPathSplitter.Split(l_oDlgFileSelect.GetPathName());

    m_oStrPathDst = m_oPathSplitter.GetFolder();

    // If source directory empty, use destination directory
    if(m_oStrPathSrc.IsEmpty())
    {
      m_oStrPathSrc = m_oStrPathDst;
    }else{}

    VerifyDst();
  }
  else{}

  // Update GUI
  VerifyRun();
}

void CDef2CppErlDlg::OnChangeEdFileType() 
{
  UpdateData(TRUE);

  VerifyRun();
}

void CDef2CppErlDlg::OnChangeEdFileDst() 
{
  UpdateData(TRUE);

  VerifyDst();
  VerifyRun();
}

int CDef2CppErlDlg::_GetFileList(CStringList* o_polFileSource /* = NULL */ )
{
  int             l_nFileIdx[2];

  CString         l_oStrTmp[3];
  CStringDicho    l_oStrFileLst;
  CPathSplit      l_oPathSplit;

  HANDLE          l_ahOutFile;
  WIN32_FIND_DATA l_hFileFind;

  //

  l_oStrTmp[0] = m_oStrFileType;

  do
  { // For each file extension
    l_nFileIdx[0] = l_oStrTmp[0].Find(';');
    if(0 > l_nFileIdx[0])
    {
      l_nFileIdx[0] = l_oStrTmp[0].GetLength();
    }else{}

    // The file extension
    l_oStrTmp[1] = l_oStrTmp[0].Left(l_nFileIdx[0]);
    if(TRUE == l_oStrTmp[1].IsEmpty())
    {
      l_oStrTmp[1] = "*";
    }
    else
    {
      l_oStrTmp[1].Remove('*');
      l_oStrTmp[1].Remove('.');
      l_oStrTmp[1].TrimLeft();
      l_oStrTmp[1].TrimRight();
    }

    // Remaining file extensions
    l_oStrTmp[0] = l_oStrTmp[0].Mid(l_nFileIdx[0]);
    while(l_oStrTmp[0].Left(1) == ";")
    {
      l_oStrTmp[0] = l_oStrTmp[0].Mid(1);
    }

    l_oStrTmp[2] = "."+l_oStrTmp[1];
    l_oStrTmp[1] = m_oStrPathSrc+"\\*."+l_oStrTmp[1];
    while(0 != l_oStrTmp[1].Replace("\\\\", "\\")); // Erase double slash

    // Search for all files of the current file extension
    l_ahOutFile = FindFirstFile(l_oStrTmp[1], &l_hFileFind);
    do
    {
      if
      (
           (l_ahOutFile != INVALID_HANDLE_VALUE)
        && ((l_hFileFind.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) == 0)
        // Avoid 'FindFirstFile' lazyness ('*.def' also catches '*.def*'
        && (TRUE == l_oPathSplit.Split(m_oStrPathSrc+l_hFileFind.cFileName))
        && (l_oStrTmp[2] == l_oPathSplit.GetExtension())
      )
      {
        l_oStrTmp[1] = m_oStrPathSrc+l_hFileFind.cFileName;
        l_oStrFileLst.AddDicho(l_oStrTmp[1]);
      }else{}
    }
    while(FindNextFile(l_ahOutFile, &l_hFileFind));

    FindClose(l_ahOutFile);
  }
  while(l_oStrTmp[0].IsEmpty() == FALSE);

  //

  if(NULL != o_polFileSource)
  { // Copy the file list outside
    for
    ( l_nFileIdx[0]  = 0
    , l_nFileIdx[1]  = l_oStrFileLst.GetSize()
    , o_polFileSource->RemoveAll()
    ; l_nFileIdx[0] <  l_nFileIdx[1]
    ; l_nFileIdx[0] += 1
    )
    {
      o_polFileSource->AddTail
      ( l_oStrFileLst.GetAt
        ( l_nFileIdx[0]
        )
      );
    }//for
  }else{}

  //

  return l_oStrFileLst.GetSize();
}

void CDef2CppErlDlg::VerifyDst(void)
{
  CFile   l_oFileTempo;
  CString l_oStrFileName;

  if(m_oStrPathDst.IsEmpty() == TRUE)
  {
    m_oStrPathDst = m_oStrPathSrc;
  }else{}

  m_oPathSplitter.Split(m_oStrPathDst);

  m_oStrPathDst = m_oPathSplitter.GetFolder(); // Clean path

  if(0 == _taccess(m_oStrPathDst, 0))
  { // Test if we can write in the destination folder
    l_oStrFileName.Format
    ( "%s_%08X_.tmp"
    , m_oStrPathDst
    , GetTickCount()
    );

    if(l_oFileTempo.Open(l_oStrFileName, CFile::modeWrite|CFile::modeCreate))
    { // If file created/open, writing is possible
      l_oFileTempo.Close();
      l_oFileTempo.Remove(l_oStrFileName);

      m_bTestWrite = TRUE;
    }
    else
    {
      m_bTestWrite    = FALSE;
      m_oStrWrkTotTxt = "READ ONLY FOLDER !";
    }
  }
  else
  {
    m_bTestWrite    = FALSE;
    m_oStrWrkTotTxt = "FOLDER DOESN'T EXISTS !";
  }

  if(TRUE == m_bTestWrite)
  { // Allow conversion
    m_oEditFileDst.SetBkColor(RGB(255, 255, 255));

    m_bTestFile = TRUE;
  }
  else
  {
    m_oEditFileDst.SetBkColor(RGB(255, 191, 191));

    m_bTestFile = FALSE;
  }
}

void CDef2CppErlDlg::VerifyRun(void)
{
  int l_nFileCnt = _GetFileList(NULL);

  if
  (
       (TRUE == m_bTestWrite)
    && (TRUE == m_bTestFile)
    && (0    <  l_nFileCnt)
  )
  {
    m_oStrWrkTotTxt.Format
    ( "%d file%s to process..."
    , l_nFileCnt
    , (1 < l_nFileCnt)
    ? "s"
    : ""
    );

    m_oButWrkRun.EnableWindow(TRUE);
  }
  else
  {
    m_oStrWrkTotTxt.Empty();

    m_oButWrkRun.EnableWindow(FALSE);
  }

  UpdateData(FALSE);
}

#define FRAME_THRESHOLD 2

// File and buffer accessor
enum
{ BUFF_LOOP = 0
, BUFF_LINE
, BUFF_TAIL
, BUFF_CUNT
, _BUFF
};

// 
enum
{ HEAD_HDR = 0
, HEAD_NAM
, HEAD_NIK
, HEAD_PRE // previous
, _HEAD
};

// Function element
enum
{ FUNC_FUN = 0
, FUNC_ARG // argument
, FUNC_TYP // type
, FUNC_PRE // previous
, FUNC_TMP // temp
, FUNC_PAR // parameter
, FUNC_STR // string
, FUNC_STK // stack
, FUNC_FRM // frame
, FUNC_KTC // catch
, FUNC_TRW // throw
, FUNC_RET // return
, FUNC_VEC // vector index
, _FUNC
};

// File output
enum
{ FILE_DEF = 0
, FILE_LIN
, FILE_CPP // cpp file
, FILE_CHD // h file (1st part)
, FILE_CHE // h file (2nd part)
, FILE_CFP // _fp.h file
, FILE_ERL // erl file
, FILE_EFP // _fp.hrl file
, _FILE
};

void CDef2CppErlDlg::OnButWrkRun() 
{
  int               l_anTmpBuff[_BUFF];
  int               l_anIdxFunc[_FUNC];
  int               l_nDataInSize = 0;

  POSITION          l_anPos[_FILE];

  unsigned char*    l_panBuf[1] = {NULL};

  CString           l_aoStrFunc[_FUNC];
  CString           l_aoStrFile[_FILE];

  CString           l_aoStrData[_FUNC];

  CStringList       l_loStrLst[_FUNC];

  MultiStringBuffer l_aoStrBuffer[_FILE];

  FILE*             l_ahOutFile[_FILE] = {NULL, NULL, NULL, NULL, NULL, NULL, NULL};

  CSkinProgress*    l_poBarWork;  

  // Update data and gui ====================================================

  UpdateData(TRUE);

  m_oButPathSrc.EnableWindow(FALSE);
  m_oButPathDst.EnableWindow(FALSE);

  m_oButWrkRun.EnableWindow(FALSE);

  // Get file list according to extensions ==================================

  l_anTmpBuff[BUFF_CUNT] = _GetFileList(&l_loStrLst[FILE_DEF]);
  if(l_anTmpBuff[BUFF_CUNT] > 0)
  {
    l_aoStrFunc[FUNC_TMP].Format("1/%d ", l_anTmpBuff[BUFF_CUNT]);

#ifdef dCSP_DIALOG_PROGRESS
    l_poBarWork
    = new CSkinProgress
      ( &m_oWndWrkTotProg
      , l_anTmpBuff[BUFF_CUNT]
      , NULL
#ifdef dCSP_SLIDERBAR_METHOD
      , false
#endif // dCSP_SLIDERBAR_METHOD
      , &m_oWndWrkTotTxt
      , l_aoStrFunc[FUNC_TMP].GetBuffer(0)
      , -cSPT_TIMED
      )
    ;
#endif // dCSP_DIALOG_PROGRESS

  // Convert files ==========================================================

    for
    ( l_anPos[FILE_DEF]       = l_loStrLst[FILE_DEF].GetHeadPosition()
    , l_anTmpBuff[BUFF_LOOP]  = 0
    , l_aoStrFunc[FUNC_PRE]   = "HEAD"
    ; l_anPos[FILE_DEF]      != NULL
      && (FALSE == m_bStopRequest)
    ; l_anTmpBuff[BUFF_LOOP] += 1
    )
    {
      // Change the bar's text and progress it
      l_aoStrFunc[FUNC_TMP].Format
      ( "%d/%d "
      , l_anTmpBuff[BUFF_LOOP] + 1
      , l_anTmpBuff[BUFF_CUNT]
      );

      l_poBarWork->SetText
      ( l_aoStrFunc[FUNC_TMP]
      );

      // Loading file

      l_aoStrFunc[FUNC_TMP] = l_loStrLst[FILE_DEF].GetNext(l_anPos[FILE_DEF]); // File to read
      if(NULL != (l_ahOutFile[FILE_DEF] = fopen(l_aoStrFunc[FUNC_TMP], "rb")))
      { // If opening OK
        fseek(l_ahOutFile[FILE_DEF], 0, SEEK_END);
        l_anTmpBuff[BUFF_TAIL] = ftell(l_ahOutFile[FILE_DEF]);
        fseek(l_ahOutFile[FILE_DEF], 0, SEEK_SET);

        if(l_nDataInSize < l_anTmpBuff[BUFF_TAIL])
        {
          if(NULL != l_panBuf[FILE_DEF])
          {
            delete [] l_panBuf[FILE_DEF];
          }else{}
        }else{}

        l_nDataInSize = l_anTmpBuff[BUFF_TAIL];

        l_panBuf[FILE_DEF] = new unsigned char[l_nDataInSize + 2];
        l_panBuf[FILE_DEF][l_nDataInSize+0] = 0; // For Unicode
        l_panBuf[FILE_DEF][l_nDataInSize+1] = 0;
      }else{}

      if
      (
           (0    <  l_nDataInSize)
        && (NULL != l_panBuf[FILE_DEF])
      )
      {
        fread(l_panBuf[FILE_DEF], 1, l_nDataInSize, l_ahOutFile[FILE_DEF]);
        fclose(l_ahOutFile[FILE_DEF]);

        // Creation of the output files -------------------------------------

        m_oPathSplitter.Split(l_aoStrFunc[FUNC_TMP]);

        if((l_ahOutFile[FILE_CPP] = fopen(m_oStrPathDst+m_oPathSplitter.GetFileName()+".cpp", "wb")) != NULL)
        {
          l_aoStrFile[FILE_CPP].Empty();
        }else{}

        if((l_ahOutFile[FILE_CHD] = fopen(m_oStrPathDst+m_oPathSplitter.GetFileName()+".h", "wb")) != NULL)
        {
          l_aoStrFile[FILE_CHD].Empty();
          l_aoStrFile[FILE_CHE].Empty();
        }else{}

        if((l_ahOutFile[FILE_CFP] = fopen(m_oStrPathDst+m_oPathSplitter.GetFileName()+"_fp.h", "wb")) != NULL)
        {
          l_aoStrFile[FILE_CFP].Empty();
        }else{}

        if((l_ahOutFile[FILE_ERL] = fopen(m_oStrPathDst+m_oPathSplitter.GetFileName()+".erl", "wb")) != NULL)
        {
          l_aoStrFile[FILE_ERL].Empty();
        }else{}

        if((l_ahOutFile[FILE_EFP] = fopen(m_oStrPathDst+m_oPathSplitter.GetFileName()+"_fp.hrl", "wb")) != NULL)
        {
          l_aoStrFile[FILE_EFP].Empty();
        }else{}

        // Format the input buffer line-per-line ----------------------------

        if(TRUE == l_aoStrBuffer[FILE_DEF].Parse((const char*) l_panBuf[FILE_DEF], '\n'))
        { // Process of the file
          for
          ( l_anIdxFunc[FUNC_STR] = 0
          ; l_aoStrBuffer[FILE_DEF].Extract
            ( l_aoStrFunc[FUNC_TMP]
            , (const char*) l_panBuf[FILE_DEF]
            , l_anIdxFunc[FUNC_STR]
            , '\n'
            , true
            ) == TRUE
          && (FALSE == l_aoStrFunc[FUNC_TMP].IsEmpty())
          && (FALSE == m_bStopRequest)
          ; l_anIdxFunc[FUNC_STR] += 1
          )
          { // Get the next line
            PeekAndPump(); // Allow Windows to process messages and redraw the screen :)

            /* l_aoStrFunc[FUNC_TMP] == "// void alGetBooleanv(ALenum param, ALboolean* data);"
            */

            if("#" == l_aoStrFunc[FUNC_TMP].Left(1))
            { // Store preprocessor #include / #endif
              l_aoStrFile[FILE_CPP] += l_aoStrFunc[FUNC_TMP] + "\r\n";
              l_aoStrFile[FILE_CHD] += l_aoStrFunc[FUNC_TMP] + "\r\n";
              l_aoStrFile[FILE_CFP] += l_aoStrFunc[FUNC_TMP] + "\r\n";
            }
            else
            { // Clean the line before parsing
//              l_aoStrFunc[FUNC_TMP].Replace("//", "");
//              l_aoStrFunc[FUNC_TMP].Replace("/*", "");
//              l_aoStrFunc[FUNC_TMP].Replace("*/", "");
              l_aoStrFunc[FUNC_TMP].Replace(");", ")");
              l_aoStrFunc[FUNC_TMP].Replace("  ", " ");
              l_aoStrFunc[FUNC_TMP].Replace(" *", "* "); // pointers

              l_aoStrFunc[FUNC_TMP].TrimLeft();
              l_aoStrFunc[FUNC_TMP].TrimRight();

              /* l_aoStrFunc[FUNC_TMP] == "void alGetBooleanv(ALenum param, ALboolean* data)"
              */

              // Keep the complete line for further work
              l_aoStrData[FUNC_TMP] = l_aoStrFunc[FUNC_TMP];

              if(TRUE == l_aoStrBuffer[FILE_LIN].Parse(l_aoStrFunc[FUNC_TMP], "(,);"))
              { // Transform into Cpp and Erl
                for
                ( l_anIdxFunc[FUNC_PAR] = 0
                , l_anIdxFunc[FUNC_RET] = 0
                , l_anIdxFunc[FUNC_VEC] = 0
                , l_loStrLst[FUNC_ARG].RemoveAll()
                ; l_aoStrBuffer[FILE_LIN].Extract
                  ( l_aoStrFunc[FUNC_PAR]
                  , l_aoStrFunc[FUNC_TMP]
                  , l_anIdxFunc[FUNC_PAR]
                  , "(,);"
                  ) == TRUE
                && (l_aoStrFunc[FUNC_PAR].IsEmpty() == FALSE)
                ; l_anIdxFunc[FUNC_PAR] += 1
                )
                { // Get and store the parameters
                  l_aoStrFunc[FUNC_PAR].TrimLeft();
                  l_aoStrFunc[FUNC_PAR].TrimRight();

                  /* l_anIdxFunc[FUNC_PAR] == 0, l_aoStrFunc[FUNC_PAR] == "void alGetBooleanv"
                     l_anIdxFunc[FUNC_PAR] == 1, l_aoStrFunc[FUNC_PAR] == "ALenum param"
                     l_anIdxFunc[FUNC_PAR] == 2, l_aoStrFunc[FUNC_PAR] == "ALboolean* data"
                  */

                  if(0 == l_anIdxFunc[FUNC_PAR])
                  { // Return + Function
                    l_aoStrData[FUNC_PAR] = l_aoStrFunc[FUNC_PAR].Mid(l_aoStrFunc[FUNC_PAR].ReverseFind(' ')+1);

                    /* 0 - l_aoStrData[FUNC_PAR] = "alGetBooleanv"
                    */

                    if(0 <= l_aoStrData[FUNC_PAR].Find("Get"))
                    { // Suspect a frame to return
                      l_anIdxFunc[FUNC_RET] = 1;
                    }else{}

                    if("v" == l_aoStrData[FUNC_PAR].Right(1)) // vector
                    { // Suspect a vector to return
                      l_anIdxFunc[FUNC_VEC] = 1;
                    }else{}

                    /* 0 - l_loStrLst[FUNC_ARG].AddTail("alGetBooleanv")
                           l_loStrLst[FUNC_ARG].AddTail("void")
                    */

                    l_loStrLst[FUNC_ARG].AddTail(l_aoStrData[FUNC_PAR]);
                    l_loStrLst[FUNC_ARG].AddTail(l_aoStrFunc[FUNC_PAR].Left(l_aoStrFunc[FUNC_PAR].ReverseFind(' ')));
                  }
                  else
                  { // Data type + Argument
                    l_aoStrData[FUNC_PAR] = l_aoStrFunc[FUNC_PAR].Left(l_aoStrFunc[FUNC_PAR].ReverseFind(' '));

                    /* 1 - l_aoStrData[FUNC_PAR] == "ALenum"
                       2 - l_aoStrData[FUNC_PAR] == "ALboolean*"
                    */

                    if
                    (
                         (0 <  l_anIdxFunc[FUNC_RET]) // Possible frame from the function name
                      && (0 <= l_aoStrData[FUNC_PAR].Find('*'))
                      && (0 >  l_aoStrData[FUNC_PAR].Find("const ")) // Not read only, which are input args
                    )
                    { // Suspect a frame
                      l_anIdxFunc[FUNC_RET] = l_anIdxFunc[FUNC_PAR] * 2; // Due to double input below

                      if(0 < l_anIdxFunc[FUNC_VEC])
                      { // If vector suspected
                        l_anIdxFunc[FUNC_VEC] = l_anIdxFunc[FUNC_RET] - 1; // Default, previous parameter
                      }else{}
                    }else{}

                    /* 1 - l_loStrLst[FUNC_ARG].AddTail("ALenum")
                           l_loStrLst[FUNC_ARG].AddTail("param")
                       2 - l_loStrLst[FUNC_ARG].AddTail("ALboolean*")
                           l_loStrLst[FUNC_ARG].AddTail("data")
                    */

                    l_loStrLst[FUNC_ARG].AddTail(l_aoStrData[FUNC_PAR]);
                    l_loStrLst[FUNC_ARG].AddTail(l_aoStrFunc[FUNC_PAR].Mid(l_aoStrFunc[FUNC_PAR].ReverseFind(' ')+1));
                  }
                }//for

                if(0 < l_loStrLst[FUNC_ARG].GetCount())
                { // Line contains elements
                  int     l_nLoop;
                  int     l_nParamsIn = 0;
                  
                  CString l_aoStrFun[_HEAD]; // function name
                  CString l_aoStrCpp[_FUNC]; // 
                  CString l_aoStrErl[_FUNC];

                  // Function's name header
                  
                  // "esdl_al"

                  l_aoStrFun[HEAD_HDR] = m_oPathSplitter.GetFileName();
                  l_aoStrFun[HEAD_HDR] = l_aoStrFun[HEAD_HDR].Mid(l_aoStrFun[HEAD_HDR].ReverseFind('_')+1);
                  l_aoStrFun[HEAD_HDR] = l_aoStrFun[HEAD_HDR].Left(3);
                  l_aoStrFun[HEAD_HDR].MakeLower();
                  l_aoStrFun[HEAD_HDR] = "e" + l_aoStrFun[HEAD_HDR] + "_";
                  
                  // "eal_"

                  for
                  ( l_anPos[FILE_LIN]  = l_loStrLst[FUNC_ARG].GetHeadPosition()
                  , l_nLoop       = 0
                  ; l_anPos[FILE_LIN] != NULL
                  ; l_nLoop      += 1
                  )
                  { // Get the stored parameters
                    l_aoStrData[FUNC_PAR] = l_loStrLst[FUNC_ARG].GetNext(l_anPos[FILE_LIN]);
                    
                    /* 0 - l_aoStrData[FUNC_PAR] == "alGetBooleanv"
                       1 - l_aoStrData[FUNC_PAR] == "void"
                       2 - l_aoStrData[FUNC_PAR] == "ALenum"
                       3 - l_aoStrData[FUNC_PAR] == "param"
                       4 - l_aoStrData[FUNC_PAR] == "ALboolean*"
                       5 - l_aoStrData[FUNC_PAR] == "data"
                    */

                    switch(l_nLoop)
                    {
                      case 0  : // FUNCTION
                        /* eg.
                           SDL_GetAppState
                           SDL_JoystickOpened
                           alIsEnabled
                           alGetBooleanv
                        */
                        
                        l_aoStrFun[HEAD_NAM] = l_aoStrData[FUNC_PAR];
                        l_aoStrFun[HEAD_NIK] = l_aoStrData[FUNC_PAR];

                        l_aoStrFun[HEAD_NAM].MakeLower();

                        /* l_aoStrFun[HEAD_NAM] == "algetbooleanv"
                           l_aoStrFun[HEAD_NIK] == "alGetBooleanv"
                        */

                        while
                        (  l_aoStrFun[HEAD_NAM].GetAt(0)
                        == l_aoStrFun[HEAD_NIK].GetAt(0)
                        )
                        { // Remove lower case name header
                          l_aoStrFun[HEAD_NAM] = l_aoStrFun[HEAD_NAM].Mid(1);
                          l_aoStrFun[HEAD_NIK] = l_aoStrFun[HEAD_NIK].Mid(1);
                        }

                        /* l_aoStrFun[HEAD_NAM] == "getbooleanv"
                           l_aoStrFun[HEAD_NIK] == "GetBooleanv"
                        */

                        l_aoStrFun[HEAD_NIK].Replace("SDL_", "");

                        // Lower the case of the first character
                        *(l_aoStrFun[HEAD_NIK].GetBuffer(0)) |= 0x20;

                        /* l_aoStrFun[HEAD_NIK] == "getBooleanv"
                        */

                        // Get back the official name
                        l_aoStrFun[HEAD_NAM] = l_aoStrData[FUNC_PAR];
                        break;
                      case 1  : // RETURN
                        if("void" == l_aoStrData[FUNC_PAR])
                        { // No return, no catcher
                          l_aoStrCpp[FUNC_KTC].Empty();

                          if(FRAME_THRESHOLD < l_anIdxFunc[FUNC_RET])
                          { // Frame
                            l_aoStrCpp[FUNC_TRW] = "  THROW_FRAME()\r\n";
                          }
                          else
                          { // No frame, no throw
                            l_aoStrCpp[FUNC_TRW].Empty();
                          }
                        }
                        else
                        { // Return something
                          if(FRAME_THRESHOLD < l_anIdxFunc[FUNC_RET])
                          { // Return a frame
                            l_aoStrCpp[FUNC_KTC]  = "  FRAME_SET_DATA(esdl) =\r\n\r\n";
                            l_aoStrCpp[FUNC_FRM] += "  FRAME_FMT_ADD(" + l_aoStrData[FUNC_PAR] + " esdl)\r\n";
                            l_aoStrCpp[FUNC_TRW]  = "  THROW_FRAME()\r\n";

                            l_aoStrErl[FUNC_STK] = "<<Bin:?" + l_aoStrData[FUNC_PAR] + "\r\n";
                          }
                          else
                          { // Simple return
                            l_aoStrCpp[FUNC_KTC] = "  CATCH_RESULT(" + l_aoStrData[FUNC_PAR] + ")\r\n\r\n";

                            if(0 <= l_aoStrData[FUNC_PAR].Find("char*"))
                            { // Return a string
                              l_aoStrCpp[FUNC_TRW] = "  THROW_STRING()\r\n";

                              l_aoStrErl[FUNC_STK] = "<<Bin:?String\r\n";
                            }
                            else
                            { // Return a number
                              l_aoStrCpp[FUNC_TRW] = "  THROW_RESULT(" + l_aoStrData[FUNC_PAR] + ")\r\n";

                              l_aoStrErl[FUNC_STK] = "<<Bin:?" + l_aoStrData[FUNC_PAR] + "\r\n";
                            }
                          }
                        }
                        break;
                      default : // DATA TYPE + ARGUMENTS
                        if
                        (
                           (TRUE   == l_aoStrData[FUNC_PAR].IsEmpty())
                        || ("void" == l_aoStrData[FUNC_PAR])
                        )
                        { // No argument
                          l_aoStrCpp[FUNC_STK].Empty();
                          l_aoStrCpp[FUNC_ARG].Empty();
                          l_aoStrErl[FUNC_ARG].Empty();
                        }
                        else
                        {
                          l_nParamsIn = 1;

                          if
                          (
                               (FRAME_THRESHOLD <  l_anIdxFunc[FUNC_RET])
                            && (l_nLoop         >= l_anIdxFunc[FUNC_RET])
                          )
                          { // Frame
                            if(0 == l_nLoop % 2)
                            { // Type
                              l_aoStrCpp[FUNC_FRM] += "    FRAME_FMT_ADD(" + l_aoStrData[FUNC_PAR];
                            }
                            else
                            { // Value
                              l_aoStrCpp[FUNC_FRM] += " " + l_aoStrData[FUNC_PAR] + ")\r\n";
                            }
                          }
                          else
                          { // Stack
                            if(0 == l_nLoop % 2)
                            { // Type
                              l_aoStrCpp[FUNC_STK] += "    STACK_FMT_ADD(" + l_aoStrData[FUNC_PAR];
                            }
                            else
                            { // Value
                              l_aoStrCpp[FUNC_STK] += " " + l_aoStrData[FUNC_PAR] + ")\r\n";

                              // For Erlang, upper the case of the first character
                              *(l_aoStrData[FUNC_PAR].GetBuffer(0)) &= ~(0x20);
                              l_aoStrErl[FUNC_ARG] += l_aoStrData[FUNC_PAR] + ", ";
                            }
                          }
                        }
                        break;
                    }
                  }//for

                  if(", " == l_aoStrErl[FUNC_ARG].Right(2))
                  { // Trim
                    l_aoStrErl[FUNC_ARG] = l_aoStrErl[FUNC_ARG].Left(l_aoStrErl[FUNC_ARG].GetLength() - 2);
                  }else{}

                  // Generate FILE_CPP -------------------------------------------

                  /* eg.
                  void
                  eal_getBooleanv 
                  EXDL_DRIVAPI_3
                  {
                    // void alGetBooleanv(ALenum param, ALboolean* data);

                    STACK_FMT_BEGIN()
                      STACK_FMT_ADD(ALenum param)
                    STACK_FMT_END()

                    FRAME_FMT_BEGIN()
                      FRAME_FMT_ADD(ALboolean data)
                    FRAME_FMT_END()

                      alGetBooleanv
                      ( STACK_GET_DATA(param)
                      , FRAME_GET_ADDR(data)
                      );

                    THROW_FRAME()
                  }

                  void
                  eal_getBoolean 
                  EXDL_DRIVAPI_3
                  {
                    // ALboolean alGetBoolean(ALenum param);

                    STACK_FMT_BEGIN()
                      STACK_FMT_ADD(ALenum param)
                    STACK_FMT_END()

                    CATCH_RESULT(ALboolean)

                      alGetBoolean
                      ( STACK_GET_DATA(param)
                      );

                    THROW_RESULT(ALboolean)
                  }
                  */

                  // Function prototype

                  l_aoStrFile[FILE_CPP] += "void\r\n";
                  l_aoStrFile[FILE_CPP] += l_aoStrFun[HEAD_HDR] + l_aoStrFun[HEAD_NIK] + "\r\n";
                  l_aoStrFile[FILE_CPP] += "EXDL_DRIVAPI_3\r\n";
                  l_aoStrFile[FILE_CPP] += "{\r\n  /* " + l_aoStrData[FUNC_TMP] + " */ \r\n\r\n";

                  // Stack frame format

                  if(FALSE == l_aoStrCpp[FUNC_STK].IsEmpty())
                  {
                    l_aoStrFile[FILE_CPP] += "  STACK_FMT_BEGIN()\r\n";
                    l_aoStrFile[FILE_CPP] += l_aoStrCpp[FUNC_STK];
                    l_aoStrFile[FILE_CPP] += "  STACK_FMT_END()\r\n\r\n";
                  }else{}

                  // Frame format

                  if(FALSE == l_aoStrCpp[FUNC_FRM].IsEmpty())
                  {
                    l_aoStrFile[FILE_CPP] += "  FRAME_FMT_BEGIN()\r\n";
                    l_aoStrFile[FILE_CPP] += l_aoStrCpp[FUNC_FRM];
                    if(false)
                    { // Vector frame, let's reserve memory
                      l_aoStrFile[FILE_CPP] += "  FRAME_FMT_MEM()\r\n\r\n";
                    }
                    else
                    {
                      l_aoStrFile[FILE_CPP] += "  FRAME_FMT_END()\r\n\r\n";
                    }
                  }else{}

                  // Result catcher

                  l_aoStrFile[FILE_CPP] += l_aoStrCpp[FUNC_KTC];

                  // Function name

                  l_aoStrFile[FILE_CPP] += "    " + l_aoStrFun[HEAD_NAM] + "\r\n";

                  if(FALSE == l_aoStrCpp[FUNC_ARG].IsEmpty())
                  {
                    l_aoStrFile[FILE_CPP] += l_aoStrCpp[FUNC_ARG];
                  }
                  else
                  {
                    l_aoStrFile[FILE_CPP] += "    (\r\n";
                  }

                  l_aoStrFile[FILE_CPP] += "    );\r\n\r\n";

                  // Return something

                  l_aoStrFile[FILE_CPP] += l_aoStrCpp[FUNC_TRW];

                  l_aoStrFile[FILE_CPP] += "}\r\n\r\n";

                  // Generate HEADER ----------------------------------------

                  /* eg.
                    { alEnable_ENUM = OPENAL_H
                    , alDisable_ENUM
                    }

                  void eal_disable              EXDL_DRIVAPI_3;
                  */

                  l_aoStrFile[FILE_CHD]  += "  , "  + l_aoStrFun[HEAD_NAM] + "_ENUM\r\n";
                  l_aoStrFile[FILE_CHE]  += "void " + l_aoStrFun[HEAD_HDR] + l_aoStrFun[HEAD_NIK];
                  l_aoStrFile[FILE_CHE]  += "             EXDL_DRIVAPI_3;\r\n";

                  // Generate FUNP ------------------------------------------

                  /* eg.
                  { alEnable_ENUM,               "alEnable",               eal_enable },
                  */

                  l_aoStrFile[FILE_CFP] += "{ " + l_aoStrFun[HEAD_NAM] + "_ENUM,      ";
                  l_aoStrFile[FILE_CFP] += "\"" + l_aoStrFun[HEAD_NAM] + "\",        ";
                  l_aoStrFile[FILE_CFP] += l_aoStrFun[HEAD_HDR] + l_aoStrFun[HEAD_NIK];
                  l_aoStrFile[FILE_CFP] += " },\r\n";

                  // Generate FILE_ERL C ------------------------------------

                  /* eg.
                  %% Func:       getBooleanv
                  %% Args:       Param, Data
                  %% Returns:    ALboolean
                  %% C-API func: void alGetBooleanv(ALenum param, ALboolean* data)

                  getBooleanv(Param, Data)
                   -> <<Data:?ALboolean
                      >>
                      = call
                        ( ?alGetBooleanv
                        , <<Param:?ALenum
                          >>
                        )
                    , Data
                  .

                  %% Func:       getBoolean
                  %% Args:       Param
                  %% Returns:    ?AL_BYTE
                  %% C-API func: ALboolean alGetBoolean(ALenum param)

                  getBoolean(Param)
                   -> Bin
                      = call
                        ( ?alGetBoolean
                        , <<Param:?ALenum
                          >>
                        )
                    , case
                        Bin
                      of
                        <<Ret:?ALboolean
                        >>
                          -> Ret
                      ; Else
                          -> erlang:error
                             ( { ?MODULE
                               , ?LINE
                               , badtype
                               , Else
                               }
                             )
                      end
                  .
                  */

                  l_aoStrFile[FILE_ERL] += "%% Func:       " + l_aoStrFun[HEAD_NIK] + "\r\n";
                  l_aoStrFile[FILE_ERL] += "%% Args:       " + l_aoStrErl[FUNC_ARG] + "\r\n";
                  l_aoStrFile[FILE_ERL] += "%% Returns:    \r\n";
                  l_aoStrFile[FILE_ERL] += "%% C-API func: " + l_aoStrData[FUNC_TMP] + "\r\n\r\n";

                  l_aoStrFile[FILE_ERL] += l_aoStrFun[HEAD_NIK] + "(" + l_aoStrErl[FUNC_ARG] + ")\r\n";
                  l_aoStrFile[FILE_ERL] += " -> " + l_aoStrErl[FUNC_STK];

                  if(FALSE == l_aoStrErl[FUNC_STK].IsEmpty())
                  {
                    l_aoStrFile[FILE_ERL] += "call\r\n      (";
                  }
                  else
                  {
                    l_aoStrFile[FILE_ERL] += "cast\r\n      (";
                  }

                  /* "\r\n    >>\r\n    = " */
                    
                  l_aoStrFile[FILE_ERL] += l_aoStrErl[FUNC_ARG];

                  l_aoStrFile[FILE_ERL] += ")\r\n.\r\n\r\n";

                  // Generate FILE_ERL FP -----------------------------------

                  /* eg.
                  -define(alDisable,              ?alEnable               + 1).
                  */

                  l_aoStrFile[FILE_EFP] += "-define(" + l_aoStrFun[HEAD_NIK] + ",           ?";
                  l_aoStrFile[FILE_EFP] += l_aoStrFunc[FUNC_PRE] + "        + 1).\r\n";

                  l_aoStrFunc[FUNC_PRE] = l_aoStrFun[HEAD_NIK];
                }else{} // Line's elements processing
              }else{} // Line parsed
            } // Not a preprocessor match
          }//for // For each line
        }else{} // Data buffer parsed
      }else{} // Data buffer exists

      // Close files ========================================================

      fwrite(l_aoStrFile[FILE_CPP].GetBuffer(0), 1, l_aoStrFile[FILE_CPP].GetLength(), l_ahOutFile[FILE_CPP]);
      fclose(l_ahOutFile[FILE_CPP]);

      // Append extension to C header file
      l_aoStrFile[FILE_CHD] += "\r\n\r\n" + l_aoStrFile[FILE_CHE];

      fwrite(l_aoStrFile[FILE_CHD].GetBuffer(0), 1, l_aoStrFile[FILE_CHD].GetLength(), l_ahOutFile[FILE_CHD]);
      fclose(l_ahOutFile[FILE_CHD]);

      fwrite(l_aoStrFile[FILE_CFP].GetBuffer(0), 1, l_aoStrFile[FILE_CFP].GetLength(), l_ahOutFile[FILE_CFP]);
      fclose(l_ahOutFile[FILE_CFP]);

      fwrite(l_aoStrFile[FILE_ERL].GetBuffer(0), 1, l_aoStrFile[FILE_ERL].GetLength(), l_ahOutFile[FILE_ERL]);
      fclose(l_ahOutFile[FILE_ERL]);

      fwrite(l_aoStrFile[FILE_EFP].GetBuffer(0), 1, l_aoStrFile[FILE_EFP].GetLength(), l_ahOutFile[FILE_EFP]);
      fclose(l_ahOutFile[FILE_EFP]);

      l_poBarWork->StepIt();
      PeekAndPump(); // Allow Windows to process messages and redraw the screen :)
    }//for // For each file

    if(NULL != l_poBarWork)
    {
      delete l_poBarWork;
    }else{}

    if(NULL != l_panBuf[FILE_DEF])
    {
      delete [] l_panBuf[FILE_DEF];
    }else{}
  }else{} // If files to process

  // Update gui =============================================================

  m_oButPathSrc.EnableWindow(TRUE);
  m_oButPathDst.EnableWindow(TRUE);

  m_oButWrkRun.EnableWindow(TRUE);
}

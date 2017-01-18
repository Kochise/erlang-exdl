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
	DDX_Control(pDX, IDC_STA_WRK_TOT_FILE, m_oWndWrkTotFile);
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
	ON_WM_KEYDOWN()
	ON_BN_CLICKED(IDC_RAD_LID, OnRadLid)
	ON_BN_CLICKED(IDC_RAD_NIF, OnRadNif)
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
  m_oStrFileType = AfxGetApp()->GetProfileString(_T("File"), _T("Type"),    "def");
  m_bModeLin     = AfxGetApp()->GetProfileInt(_T("File"),    _T("Mode"),    true) != 0;

  CheckRadioButton(IDC_RAD_LID, IDC_RAD_NIF, (true == m_bModeLin)?IDC_RAD_LID:IDC_RAD_NIF);

  //GetDlgItem(IDC_RAD_LID)->SetCheck(true == m_bModeLin);

  VerifyDst();
  VerifyRun();
  
  return TRUE;  // return TRUE  unless you set the focus to a control
}

void CDef2CppErlDlg::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
	if(0 == nChar)
    PostMessage(WM_CLOSE, HTCAPTION, 0);

	CDialog::OnKeyDown(nChar, nRepCnt, nFlags);
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

  AfxGetApp()->WriteProfileInt(_T("File"),    _T("Mode"), m_bModeLin);

  PeekAndPump(); // Wait a bit until the process to finish
}

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

void CDef2CppErlDlg::OnRadLid() 
{
  m_bModeLin = true;
}

void CDef2CppErlDlg::OnRadNif() 
{
  m_bModeLin = false;
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

  if(TRUE == m_oStrPathDst.IsEmpty())
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
, FUNC_LEN // type lenght
, FUNC_STR // string
, FUNC_STK // stack
, FUNC_FRM // frame
, FUNC_KTC // catch
, FUNC_TRW // throw
, FUNC_RET // return
, FUNC_VEC // vector index
, FUNC_EXT // extension file
, _FUNC
};

// File output
enum
{ FILE_DEF = 0
, FILE_LIN
, FILE_CPP // cpp file
, FILE_CHD // h file (1st part)
, FILE_CHE // h file (2nd part)
, FILE_CHA // h file (extension only : apientry)
, FILE_CHX // h file (extension only : extern)
, FILE_CFP // _fp.h file
, FILE_ERL // erl file
, FILE_EXP // export
, FILE_EFP // _fp.hrl file
, FILE_HRL // hrl file
, _FILE
};

#define INDENT_BASE  72
#define INDENT_SPACE 2
#define INDENT_GLEXT 32

void CDef2CppErlDlg::OnButWrkRun() 
{
  int               l_anTmpBuff[_BUFF];
  int               l_anIdxFunc[_FUNC];
  int               l_nDataInSize = 0;
  int               l_nTotalArgs;
  int               l_anIndent[_FILE];

  bool              l_bSdlBaseFile;

  POSITION          l_anPos[_FILE];

  unsigned char*    l_panBuf[1] = {NULL};

  CPathSplit        l_oPathSplit;

  CString           l_aoStrFunc[_FUNC];
  CString           l_aoStrFile[_FILE];

  /* Space buffer for indent */

  CString           l_oStrSpace = "                                        "\
                                  "                                        "\
                                  "                                        "\
                                  "                                        "\
                                  "                                        ";

  CString           l_aoStrData[_FUNC];

  CStringList       l_loStrLst[_FUNC];

  MultiStringBuffer l_aoStrBuffer[_FILE];

  FILE*             l_ahOutFile[_FILE];

  CSkinProgress*    l_poBarWork;
  CSkinProgress*    l_poBarFile;

  {
    int l_nLoop;

    for
    ( l_nLoop  = FILE_DEF
    ; l_nLoop <  _FILE
    ; l_nLoop += 1
    )
    { // Ease buffer editing
      l_aoStrFile[l_nLoop].GetBufferSetLength(4*1024*1024);
      l_ahOutFile[l_nLoop] = NULL;
    }
  }

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

    for
    ( l_anPos[FILE_DEF]       = l_loStrLst[FILE_DEF].GetHeadPosition()
    , l_anTmpBuff[BUFF_TAIL]  = 0
    ; l_anPos[FILE_DEF]      != NULL
      && (FALSE == m_bStopRequest)
    ; 
    )
    { // Accumulate the files' length
      l_aoStrFunc[FUNC_TMP] = l_loStrLst[FILE_DEF].GetNext(l_anPos[FILE_DEF]); // File to read
      if(NULL != (l_ahOutFile[FILE_DEF] = fopen(l_aoStrFunc[FUNC_TMP], "rb")))
      { // If opening OK
        fseek(l_ahOutFile[FILE_DEF], 0, SEEK_END);
        l_anTmpBuff[BUFF_TAIL] += ftell(l_ahOutFile[FILE_DEF]);
        fclose(l_ahOutFile[FILE_DEF]);
      }else{}
    }//for // For each file

#ifdef dCSP_DIALOG_PROGRESS
    l_poBarWork
    = new CSkinProgress
      ( &m_oWndWrkTotProg
      , l_anTmpBuff[BUFF_TAIL] // file size accumulator
//      , l_anTmpBuff[BUFF_CUNT] // file count
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
    , l_anIdxFunc[FUNC_EXT]   = 0 // For extension file
    , memset(l_anIndent, 0, sizeof(l_anIndent))
    , l_panBuf[FILE_DEF]      = NULL
    ; l_anPos[FILE_DEF]      != NULL
      && (FALSE == m_bStopRequest)
    ; l_anTmpBuff[BUFF_LOOP] += 1
    , l_aoStrFunc[FUNC_PRE]   = "HEAD"
    , l_anIdxFunc[FUNC_EXT]   = 0 // For extension file
    , memset(l_anIndent, 0, sizeof(l_anIndent))
    )
    {
      l_oPathSplit.Split(l_loStrLst[FILE_DEF].GetNext(l_anPos[FILE_DEF])); // File to read

      {
        CString l_oStrSdlBaseFile = l_oPathSplit.GetFileName();
        
        l_oStrSdlBaseFile = l_oStrSdlBaseFile.Mid(5);

        l_oStrSdlBaseFile.MakeLower();

        l_bSdlBaseFile
        = false
        | ("active"   == l_oStrSdlBaseFile)
        | ("audio"    == l_oStrSdlBaseFile)
        | ("cdrom"    == l_oStrSdlBaseFile)
        | ("driver"   == l_oStrSdlBaseFile)
        | ("error"    == l_oStrSdlBaseFile)
        | ("events"   == l_oStrSdlBaseFile)
        | ("gen"      == l_oStrSdlBaseFile)
        | ("joystick" == l_oStrSdlBaseFile)
        | ("keyboard" == l_oStrSdlBaseFile)
        | ("mouse"    == l_oStrSdlBaseFile)
        | ("spec"     == l_oStrSdlBaseFile)
        | ("thread"   == l_oStrSdlBaseFile)
        | ("video"    == l_oStrSdlBaseFile)
        | ("wrapper"  == l_oStrSdlBaseFile)
        ;
      }

      // Change the bar's text and progress it
      l_aoStrFunc[FUNC_TMP].Format
      ( "%d/%d files (%s) : "
      , l_anTmpBuff[BUFF_LOOP] + 1
      , l_anTmpBuff[BUFF_CUNT]
      , l_oPathSplit.GetFile()
      );

      l_poBarWork->SetText
      ( l_aoStrFunc[FUNC_TMP]
      );

      // Loading file

      l_aoStrFunc[FUNC_TMP] = l_oPathSplit.GetPath(); // File to read
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

          l_nDataInSize = l_anTmpBuff[BUFF_TAIL];

          l_panBuf[FILE_DEF] = new unsigned char[l_nDataInSize + 2];
        }else{}

        l_panBuf[FILE_DEF][l_anTmpBuff[BUFF_TAIL]+0] = 0; // For Unicode
        l_panBuf[FILE_DEF][l_anTmpBuff[BUFF_TAIL]+1] = 0;
      }else{}

      if
      (
           (0    <  l_nDataInSize)
        && (0    <  l_anTmpBuff[BUFF_TAIL])
        && (NULL != l_panBuf[FILE_DEF])
      )
      {
        fread(l_panBuf[FILE_DEF], 1, l_nDataInSize, l_ahOutFile[FILE_DEF]);
        fclose(l_ahOutFile[FILE_DEF]);

#ifdef dCSP_DIALOG_PROGRESS
        l_poBarFile
        = new CSkinProgress
          ( &m_oWndWrkTotFile
          , l_anTmpBuff[BUFF_TAIL] // file size
          )
        ;
#endif // dCSP_DIALOG_PROGRESS

        // Creation of the output files -------------------------------------

        m_oPathSplitter.Split(l_aoStrFunc[FUNC_TMP]);

        // Test if it's an extension file, in which case we should output more data

        l_aoStrFile[FILE_CPP] = m_oPathSplitter.GetFileName();

        if
        (
             (0 != l_aoStrFile[FILE_CPP].Right(6).CompareNoCase("glxext")) 
          && (0 == l_aoStrFile[FILE_CPP].Right(3).CompareNoCase("ext"))
        )
        { // Only for 'alext' and 'glext' -> NOT FOR 'glxext' !!!
          l_anIdxFunc[FUNC_EXT] = 1;
        }else{}

        if
        (  NULL
        != ( l_ahOutFile[FILE_CPP]
           = fopen(m_oStrPathDst+m_oPathSplitter.GetFileName()+".c", "wb")
           )
        )
        {
          l_aoStrFile[FILE_CPP]  = "/*\r\n";
          l_aoStrFile[FILE_CPP] += " *  Copyright (c) 2012 David Koch\r\n";
          l_aoStrFile[FILE_CPP] += " *\r\n";
          l_aoStrFile[FILE_CPP] += " *  See the file \"license.terms\" for information on usage and redistribution\r\n";
          l_aoStrFile[FILE_CPP] += " *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.\r\n";
          l_aoStrFile[FILE_CPP] += " *\r\n";
          l_aoStrFile[FILE_CPP] += " *     $Id: ";
          l_aoStrFile[FILE_CPP] += m_oPathSplitter.GetFileName();
          l_aoStrFile[FILE_CPP] += ".c,v 1.5 2005/06/29 14:45:38 dgud Exp $\r\n";
          l_aoStrFile[FILE_CPP] += " */\r\n";
          l_aoStrFile[FILE_CPP] += "\r\n";
          l_aoStrFile[FILE_CPP] += "#include \"exdl.h\"\r\n";
          l_aoStrFile[FILE_CPP] += "\r\n";

          if(false == l_bSdlBaseFile)
          {
            l_aoStrFile[FILE_CPP] += "#ifdef COMPILE_@@CPP@@\r\n\r\n";
          }else{}

//          l_aoStrFile[FILE_CPP] += "#include <string.h>\r\n";
//          l_aoStrFile[FILE_CPP] += "#include <stdlib.h>\r\n\r\n";
        }else{}

        if
        (  NULL
        != ( l_ahOutFile[FILE_CHD]
           = fopen(m_oStrPathDst+m_oPathSplitter.GetFileName()+".h", "wb")
           )
        )
        {
          l_aoStrFile[FILE_CHD]  = "/*\r\n";
          l_aoStrFile[FILE_CHD] += " *  Copyright (c) 2012 David Koch\r\n";
          l_aoStrFile[FILE_CHD] += " *\r\n";
          l_aoStrFile[FILE_CHD] += " *  See the file \"license.terms\" for information on usage and redistribution\r\n";
          l_aoStrFile[FILE_CHD] += " *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.\r\n";
          l_aoStrFile[FILE_CHD] += " *\r\n";
          l_aoStrFile[FILE_CHD] += " *     $Id: ";
          l_aoStrFile[FILE_CHD] += m_oPathSplitter.GetFileName();
          l_aoStrFile[FILE_CHD] += ".h,v 1.5 2005/06/29 14:45:38 dgud Exp $\r\n";
          l_aoStrFile[FILE_CHD] += " */\r\n";
          l_aoStrFile[FILE_CHD] += "\r\n";
          l_aoStrFile[FILE_CHD] += "  #ifdef __cplusplus\r\n";
          l_aoStrFile[FILE_CHD] += "  extern \"C\" {\r\n"; // }
          l_aoStrFile[FILE_CHD] += "  #endif /* __cplusplus */\r\n";
          l_aoStrFile[FILE_CHD] += "\r\n";
          if(false == l_bSdlBaseFile)
          {
            l_aoStrFile[FILE_CHD] += "#ifdef COMPILE_@@CHD@@\r\n\r\n";
          }else{}
          l_aoStrFile[FILE_CHD] += "  enum\r\n";

          l_aoStrFile[FILE_CHE].Empty();
          
          // Extension file
          l_aoStrFile[FILE_CHA].Empty();
          l_aoStrFile[FILE_CHX].Empty();
        }else{}

        if
        (  NULL
        != ( l_ahOutFile[FILE_CFP]
           = fopen(m_oStrPathDst+m_oPathSplitter.GetFileName()+"_fp.h", "wb")
           )
        )
        {
          l_aoStrFile[FILE_CFP]  = "/*\r\n";
          l_aoStrFile[FILE_CFP] += " *  Copyright (c) 2012 David Koch\r\n";
          l_aoStrFile[FILE_CFP] += " *\r\n";
          l_aoStrFile[FILE_CFP] += " *  See the file \"license.terms\" for information on usage and redistribution\r\n";
          l_aoStrFile[FILE_CFP] += " *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.\r\n";
          l_aoStrFile[FILE_CFP] += " *\r\n";
          l_aoStrFile[FILE_CFP] += " *     $Id: ";
          l_aoStrFile[FILE_CFP] += m_oPathSplitter.GetFileName();
          l_aoStrFile[FILE_CFP] += "_fp.h,v 1.5 2005/06/29 14:45:38 dgud Exp $\r\n";
          l_aoStrFile[FILE_CFP] += " */\r\n";
          l_aoStrFile[FILE_CFP] += "\r\n";
          l_aoStrFile[FILE_CFP] += "/* File included in \"exdl_wrapper.c\" */\r\n";
          l_aoStrFile[FILE_CFP] += "\r\n";
          if(false == l_bSdlBaseFile)
          {
            l_aoStrFile[FILE_CFP] += "#ifdef COMPILE_@@CFP@@\r\n\r\n";
          }else{}
        }else{}

        if
        (  NULL
        != ( l_ahOutFile[FILE_ERL]
           = fopen(m_oStrPathDst+m_oPathSplitter.GetFileName()+".erl", "wb")
           )
        )
        {
          l_aoStrFile[FILE_ERL]  = "%%\r\n";
          l_aoStrFile[FILE_ERL] += "%%  Copyright (c) 2012 David Koch\r\n";
          l_aoStrFile[FILE_ERL] += "%%\r\n";
          l_aoStrFile[FILE_ERL] += "%%  See the file \"license.terms\" for information on usage and redistribution\r\n";
          l_aoStrFile[FILE_ERL] += "%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.\r\n";
          l_aoStrFile[FILE_ERL] += "%%\r\n";
          l_aoStrFile[FILE_ERL] += "%%     $Id: ";
          l_aoStrFile[FILE_ERL] += m_oPathSplitter.GetFileName();
          l_aoStrFile[FILE_ERL] += ".erl,v 1.5 2005/06/29 14:45:38 dgud Exp $\r\n";
          l_aoStrFile[FILE_ERL] += "%%\r\n";
          l_aoStrFile[FILE_ERL] += "\r\n";
          l_aoStrFile[FILE_ERL] += "-module(";
          l_aoStrFile[FILE_ERL] += m_oPathSplitter.GetFileName();
          l_aoStrFile[FILE_ERL] += ").\r\n\r\n";
          l_aoStrFile[FILE_ERL] += "-include(\"exdl.hrl\").\r\n";
          if(false == l_bSdlBaseFile)
          {
            l_aoStrFile[FILE_ERL] += "\r\n-ifdef(COMPILE_@@CPP@@).\r\n";
          }else{}
          l_aoStrFile[FILE_ERL] += "\r\n%% 1- EXPORT\r\n\r\n";
          l_aoStrFile[FILE_ERL] += "%-compile(export_all).\r\n\r\n";
          l_aoStrFile[FILE_ERL] += "@@EXP@@\r\n"; // This will allows inserting the 'export' section latter
//          l_aoStrFile[FILE_ERL] += "-export( [ @@EXP@@\r\n";
          l_aoStrFile[FILE_ERL] += "         ]\r\n";
          l_aoStrFile[FILE_ERL] += "       ).\r\n\r\n";
          l_aoStrFile[FILE_ERL] += "%% 2- INCLUDE\r\n\r\n";
          l_aoStrFile[FILE_ERL] += "-include(\"";
          l_aoStrFile[FILE_ERL] += m_oPathSplitter.GetFileName();
          l_aoStrFile[FILE_ERL] += ".hrl\").\r\n\r\n";
//          l_aoStrFile[FILE_ERL] += "-include(\"";
//          l_aoStrFile[FILE_ERL] += m_oPathSplitter.GetFileName();
//          l_aoStrFile[FILE_ERL] += "_fp.hrl\").\r\n\r\n";
          l_aoStrFile[FILE_ERL] += "%% 3- IMPORT\r\n\r\n";
          l_aoStrFile[FILE_ERL] += "-import( exdl_driver\r\n";
          l_aoStrFile[FILE_ERL] += "       , [ call/2\r\n";
          l_aoStrFile[FILE_ERL] += "         , cast/2\r\n";
          l_aoStrFile[FILE_ERL] += "         ]\r\n";
          l_aoStrFile[FILE_ERL] += "       ).\r\n\r\n";
          l_aoStrFile[FILE_ERL] += "%% 4- FUNCTIONS\r\n\r\n";

          l_aoStrFile[FILE_EXP].Empty();
        }else{}

        if
        (  NULL
        != ( l_ahOutFile[FILE_EFP]
           = fopen(m_oStrPathDst+m_oPathSplitter.GetFileName()+"_fp.hrl", "wb")
           )
        )
        {
          l_aoStrFile[FILE_EFP]  = "%%\r\n";
          l_aoStrFile[FILE_EFP] += "%%  Copyright (c) 2012 David Koch\r\n";
          l_aoStrFile[FILE_EFP] += "%%\r\n";
          l_aoStrFile[FILE_EFP] += "%%  See the file \"license.terms\" for information on usage and redistribution\r\n";
          l_aoStrFile[FILE_EFP] += "%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.\r\n";
          l_aoStrFile[FILE_EFP] += "%%\r\n";
          l_aoStrFile[FILE_EFP] += "%%     $Id: ";
          l_aoStrFile[FILE_EFP] += m_oPathSplitter.GetFileName();
          l_aoStrFile[FILE_EFP] += "_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $\r\n";
          l_aoStrFile[FILE_EFP] += "%%\r\n";
          l_aoStrFile[FILE_EFP] += "\r\n";
//          l_aoStrFile[FILE_EFP] += "-include(\"exdl.hrl\").\r\n\r\n";
          l_aoStrFile[FILE_EFP] += "%% Using original C function name as identifier for driver callback\r\n\r\n";
          if(false == l_bSdlBaseFile)
          {
            l_aoStrFile[FILE_EFP] += "-ifdef(COMPILE_@@CPP@@).\r\n";
          }else{}
        }else{}

        if
        (  NULL
        != ( l_ahOutFile[FILE_HRL]
           = fopen(m_oStrPathDst+m_oPathSplitter.GetFileName()+".hrl", "wb")
           )
        )
        {
          l_aoStrFile[FILE_HRL].Empty();
        }else{}

        // Format the input buffer line-per-line ----------------------------

        /*
        Let's talk a bit about how it will be done. We must change :

            int SDL_JoystickGetBall(SDL_Joystick* joystick, int ball, int* dx, int* dy);

        into (CPP) :

            EXDL_API(ejoy_getBall)
            {
              // int SDL_JoystickGetBall(SDL_Joystick* joystick, int ball, int* dx, int* dy);

              STACK_FMT_BEGIN()
                STACK_FMT_LPTR(SDL_Joystick*, joy)
                STACK_FMT_DATA(Uint8,         ball)
              STACK_FMT_END()

              FRAME_FMT_BEGIN()
                FRAME_FMT_DATA(int, exdl)
                FRAME_FMT_DATA(int, dx)
                FRAME_FMT_DATA(int, dy)
              FRAME_FMT_END()

              FRAME_SET_DATA(exdl) =

                SDL_JoystickGetBall
                ( STACK_GET_DATA(joy)
                , STACK_GET_DATA(ball)
                , FRAME_GET_ADDR(dx)
                , FRAME_GET_ADDR(dy)
                );

              THROW_FRAME()
            }

        alternatively (H) :

            , SDL_JoystickGetBall_ENUM

            EXDL_API(ejoy_getBall);

        but also (_FP.H) :

            { SDL_JoystickGetBall_ENUM,       "SDL_JoystickGetBall",      ejoy_getBall },

        and, hey (ERL) :

            , getBall/2

            %% Func:       getBall
            %% Args:       Joystick, Ball
            %% Returns:    {Exdl, Dx, Dy} or badarg
            %% C-API func: int SDL_JoystickGetBall(SDL_Joystick* joystick, int ball, int* dx, int* dy);
            %% Desc:       Get the ball axis change since the last poll
            %%             This returns 0, or -1 if you passed it invalid parameters.
            %%             The ball indices start at index 0.

            getBall(Joystick, Ball)
             -> case
                  call
                  ( ?SDL_JoystickGetBall
                  , <<Joystick:?_PTR
                    , Ball:?Int
                    >>
                  )
                of
                  <<Exdl:?Int
                  , Dx:?Int
                  , Dy:?Int
                  >>
                    -> {Exdl, Dx, Dy}
                ; Res
                    -> {badarg, Res}
                end
            .

        and finally (_FP.HRL) :

            -define(SDL_JoystickGetBall,    ?SDL_JoystickGetButton  + 1).

        So here we go, we need the following stuff to be done :

        1- Parsing the original C prototype into its elements

           Return type   : int
           Function name : SDL_JoystickGetBall
           Argument list : SDL_Joystick* joystick, int ball, int* dx, int* dy

        2- Get various name alternatives according to the destination :

           Original name  : SDL_JoystickGetBall
           Enum value     : SDL_JoystickGetBall_ENUM
           Base cpp + erl : getBall
           Exdl cpp name  : ejoy_getBall

        3- Analyse the argument list and create 2 lists :

           The stack (incoming) : SDL_Joystick* joystick, int ball
           The frame (output)   : int* dx, int* dy

           To create the frame, we make the following assumptions :

           a- The name contains "Get" or "Are"
           b- There is/are no 'const' pointers in the arguments list
           c- If the first argument is a pointer, look for the next non pointer argument
           d- If there is a return value, embed it into the frame

        4- Analyse the 2 arguments lists and create the declarations :

           a- The stack (incoming) : SDL_Joystick* joystick, int ball

              STACK_FMT_BEGIN()
                STACK_FMT_LPTR(SDL_Joystick*, joy)
                STACK_FMT_DATA(Uint8,         ball)
              STACK_FMT_END()

              <<Joystick:?_PTR
              , Ball:?Int
              >>

              ( STACK_GET_DATA(joy)
              , STACK_GET_DATA(ball)
              ...
              )

           b- The frame (output) : int* dx, int* dy

              FRAME_FMT_BEGIN()
                FRAME_FMT_DATA(int, exdl)
                FRAME_FMT_DATA(int, dx)
                FRAME_FMT_DATA(int, dy)
              FRAME_FMT_END()

              <<Exdl:?Int
              , Dx:?Int
              , Dy:?Int
              >>
                -> {Exdl, Dx, Dy}

              , FRAME_GET_ADDR(dx)
              , FRAME_GET_ADDR(dy)

        5- Now create the various files from the elements we just created :

           a- The cpp file
           b- The h file
           c- The _fp.h file
           d- The erl file
           e- The _fp.hrl file

        6- To sum up, here's what we need :

           a- A parser to parse the C prototype
           b- A list to store the function elements
           c- An array for the various name variations
           d- Integers for the frame/vector indexes
           e- A list for the Erlang input parameters (used in header and function definition)
           f- A list for the Erlang output parameters
           g- 2 lists for the stacks
           h- 2 lists for the frames
           i- A list for the C calling parameters
           j- Various temporary storages and integers
        */

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
            l_poBarWork->OffsetPos(l_aoStrFunc[FUNC_TMP].GetLength());
            l_poBarFile->OffsetPos(l_aoStrFunc[FUNC_TMP].GetLength());
            PeekAndPump(); // Allow Windows to process messages and redraw the screen :)

            /* l_aoStrFunc[FUNC_TMP] == "  void alGetBooleanv(ALenum param, ALboolean* data);\r\n"
            */

            l_aoStrFunc[FUNC_TMP].TrimLeft();
            l_aoStrFunc[FUNC_TMP].TrimRight();

            if
            (
                 ("#" == l_aoStrFunc[FUNC_TMP].Left(1))
              || ("//" == l_aoStrFunc[FUNC_TMP].Left(2))
              || (
                      ("/*" == l_aoStrFunc[FUNC_TMP].Left(2))
                   && ("*/" == l_aoStrFunc[FUNC_TMP].Right(2))
                 )
            )
            { // Store preprocessor (#include, #endif, ...) or comment
              l_aoStrFile[FILE_CPP] += l_aoStrFunc[FUNC_TMP] + "\r\n\r\n";
              l_aoStrFile[FILE_CHD] += l_aoStrFunc[FUNC_TMP] + "\r\n";
              l_aoStrFile[FILE_CHE] += l_aoStrFunc[FUNC_TMP] + "\r\n";
              l_aoStrFile[FILE_CFP] += l_aoStrFunc[FUNC_TMP] + "\r\n";

              if(1 == l_anIdxFunc[FUNC_EXT])
              { // Extension file
                l_aoStrFile[FILE_CHA] += l_aoStrFunc[FUNC_TMP] + "\r\n";
                l_aoStrFile[FILE_CHX] += l_aoStrFunc[FUNC_TMP] + "\r\n";
              }else{}

              l_aoStrFunc[FUNC_TMP].Replace("//", "");
              l_aoStrFunc[FUNC_TMP].Replace("/*", "");
              l_aoStrFunc[FUNC_TMP].Replace("*/", "");

              l_aoStrFunc[FUNC_TMP].TrimLeft();
              l_aoStrFunc[FUNC_TMP].TrimRight();

              l_aoStrFile[FILE_ERL] += "%% " + l_aoStrFunc[FUNC_TMP] + "\r\n\r\n";
              l_aoStrFile[FILE_EFP] += "\r\n%% " + l_aoStrFunc[FUNC_TMP] + "\r\n\r\n";

              if
              (
                   (TRUE != l_aoStrFile[FILE_EXP].IsEmpty())
                && ("/"  == l_aoStrFile[FILE_EXP].Mid(l_aoStrFile[FILE_EXP].ReverseFind('\n') - 3, 1))
//                && (0    <= l_aoStrFile[FILE_EXP].Find("-export( [ "))
              )
              { // Inserting comments in the 'export' section is tricky
                l_aoStrFile[FILE_EXP]
                = l_aoStrFile[FILE_EXP].Left(l_aoStrFile[FILE_EXP].ReverseFind('\n') + 1)
                + "         ]\r\n       ).\r\n\r\n"
                ;
              }else{}

              l_aoStrFile[FILE_EXP]
              += "%% " + l_aoStrFunc[FUNC_TMP] + "\r\n\r\n"
              + "-export( [ "
              ;
            }
            else
            { // Clean-up the line before parsing
              l_aoStrFunc[FUNC_TMP].Replace(");", ")");
              l_aoStrFunc[FUNC_TMP].Replace("  ", " ");
              l_aoStrFunc[FUNC_TMP].Replace(" *", "* "); // pointers
              l_aoStrFunc[FUNC_TMP].Replace("* /", " */"); // broken closing comments
              l_aoStrFunc[FUNC_TMP].Replace("const* ", "const *"); // broken const pointers

              l_aoStrFunc[FUNC_TMP].Replace("GLAPI ", "");
              l_aoStrFunc[FUNC_TMP].Replace("APIENTRY ", "");
              l_aoStrFunc[FUNC_TMP].Replace("CSFML_API ", "");
              
              // Prepare to parse
              l_aoStrFunc[FUNC_TMP].TrimLeft();
              l_aoStrFunc[FUNC_TMP].TrimRight();

              /* l_aoStrFunc[FUNC_TMP] == "void alGetBooleanv(ALenum param, ALboolean* data)"
              */

              // Keep the complete line for further work
              l_aoStrData[FUNC_TMP] = l_aoStrFunc[FUNC_TMP];

              if
              (
                   TRUE 
                == l_aoStrBuffer[FILE_LIN].Parse
                   ( l_aoStrFunc[FUNC_TMP]
                   , "(,);"
                   )
              )
              { // Transform into Cpp and Erl
                for
                ( l_nTotalArgs          = 0
                , l_anIdxFunc[FUNC_PAR] = 0
                , l_anIdxFunc[FUNC_LEN] = 0
                , l_anIdxFunc[FUNC_RET] = 0
                , l_anIdxFunc[FUNC_VEC] = 0
                , l_loStrLst[FUNC_ARG].RemoveAll()
                ; l_aoStrBuffer[FILE_LIN].Extract
                  ( l_aoStrFunc[FUNC_PAR]
                  , l_aoStrFunc[FUNC_TMP]
                  , l_anIdxFunc[FUNC_PAR]
                  , "(,);"
                  ) == TRUE
                && (FALSE == l_aoStrFunc[FUNC_PAR].IsEmpty())
                ; l_anIdxFunc[FUNC_PAR] += 1
                )
                { // Get and store the parameters
                  l_aoStrFunc[FUNC_PAR].TrimLeft();
                  l_aoStrFunc[FUNC_PAR].TrimRight();

                  /* l_anIdxFunc[FUNC_PAR] == 0, l_aoStrFunc[FUNC_PAR] == "void alGetBooleanv"
                     l_anIdxFunc[FUNC_PAR] == 1, l_aoStrFunc[FUNC_PAR] == "ALenum param"
                     l_anIdxFunc[FUNC_PAR] == 2, l_aoStrFunc[FUNC_PAR] == "ALboolean* data"
                  */

                  l_aoStrFunc[FUNC_PAR].Replace("const *", "* const ");

                  if(0 == l_anIdxFunc[FUNC_PAR])
                  { // Return + Function
                    l_aoStrData[FUNC_PAR] = l_aoStrFunc[FUNC_PAR].Mid(l_aoStrFunc[FUNC_PAR].ReverseFind(' ')+1);

                    /* 0 - l_aoStrData[FUNC_PAR] = "alGetBooleanv"
                    */

                    if
                    (
                         (0 <= l_aoStrData[FUNC_PAR].Find("Get"))
                      || (0 <= l_aoStrData[FUNC_PAR].Find("Are"))
                      || (0 <= l_aoStrData[FUNC_PAR].Find("Gen")) // OpenGL
                    )
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
                    l_nTotalArgs += 1;

                    // Remove double 'const '
                    l_aoStrFunc[FUNC_PAR]
                    = (0 < l_aoStrFunc[FUNC_PAR].Replace("const ", ""))
                    ? "const " + l_aoStrFunc[FUNC_PAR]
                    : l_aoStrFunc[FUNC_PAR]
                    ;

                    l_aoStrData[FUNC_PAR] = l_aoStrFunc[FUNC_PAR].Left(l_aoStrFunc[FUNC_PAR].ReverseFind(' '));

                    /* 1 - l_aoStrData[FUNC_PAR] == "ALenum"
                       1 - l_aoStrData[FUNC_PAR] == "ALboolean*"
                    */

                    if
                    (
                         (0 < l_anIdxFunc[FUNC_RET]) // Possible frame from the function name
                      && (0 > l_aoStrData[FUNC_PAR].Find("const ")) // Not read only, which are ALWAYS input args
                    )
                    { // Suspect a frame
                      if(0 <= l_aoStrData[FUNC_PAR].Find('*'))
                      {
                        if(FRAME_THRESHOLD > l_anIdxFunc[FUNC_RET])
                        {
                          l_anIdxFunc[FUNC_RET] = l_anIdxFunc[FUNC_PAR] * 2; // Due to double input below

                          if(0 < l_anIdxFunc[FUNC_VEC])
                          { // If vector suspected
                            l_anIdxFunc[FUNC_VEC] = l_anIdxFunc[FUNC_RET] - 1; // Default, previous parameter
                          }else{}
                        }else{}
                      }
                      else
                      { // Reset frame argument index if NOT a pointer
                        l_anIdxFunc[FUNC_RET] = 1;
                      }
                    }else{}

                    /* 1 - l_loStrLst[FUNC_ARG].AddTail("ALenum")
                           l_loStrLst[FUNC_ARG].AddTail("param")
                       2 - l_loStrLst[FUNC_ARG].AddTail("ALboolean*")
                           l_loStrLst[FUNC_ARG].AddTail("data")
                    */

                    
                    l_anIdxFunc[FUNC_LEN]
                    = (l_anIdxFunc[FUNC_LEN] < l_aoStrData[FUNC_PAR].GetLength())
                    ? (
                           (0 <= l_aoStrData[FUNC_PAR].Find("const "))
                        && (l_anIdxFunc[FUNC_LEN] <= (l_aoStrData[FUNC_PAR].GetLength() - 6))
                      )
                      ? l_aoStrData[FUNC_PAR].GetLength() - 6
                      : l_aoStrData[FUNC_PAR].GetLength()
                    : l_anIdxFunc[FUNC_LEN]
                    ;

                    l_loStrLst[FUNC_ARG].AddTail(l_aoStrData[FUNC_PAR]);
                    l_loStrLst[FUNC_ARG].AddTail(l_aoStrFunc[FUNC_PAR].Mid(l_aoStrFunc[FUNC_PAR].ReverseFind(' ')+1));
                  }
                }//for

                /*
                Now that we have gotten all the parameters, let's short things out.
                Remember, we needs :

                a- Get various name alternatives according to the destination :

                   Original name  : SDL_JoystickGetBall
                   Enum value     : SDL_JoystickGetBall_ENUM
                   Base cpp + erl : getBall
                   Exdl cpp name  : ejoy_getBall

                b- The stack (incoming) : SDL_Joystick* joystick, int ball

                   STACK_FMT_BEGIN()
                     STACK_FMT_LPTR(SDL_Joystick*, joy)
                     STACK_FMT_DATA(Uint8,         ball)
                   STACK_FMT_END()

                   - - - 8< - - - - - - - - - - - - - - - - - -

                   <<Joystick:?_PTR
                   , Ball:?Int
                   >>

                   - - - 8< - - - - - - - - - - - - - - - - - -

                   ( STACK_GET_DATA(joy)
                   , STACK_GET_DATA(ball)
                   ...
                   )

                c- The frame (output) : int* dx, int* dy

                   FRAME_FMT_BEGIN()
                     FRAME_FMT_DATA(int, exdl)
                     FRAME_FMT_DATA(int, dx)
                     FRAME_FMT_DATA(int, dy)
                   FRAME_FMT_END()

                   - - - 8< - - - - - - - - - - - - - - - - - -

                   <<Exdl:?Int
                   , Dx:?Int
                   , Dy:?Int
                   >>
                     -> {Exdl, Dx, Dy}

                   - - - 8< - - - - - - - - - - - - - - - - - -

                   , FRAME_GET_ADDR(dx)
                   , FRAME_GET_ADDR(dy)
                */

                if(0 < l_loStrLst[FUNC_ARG].GetCount())
                { // Line contains elements
                  int     l_nLoop;
                  int     l_nArgs;
                  int     l_nIdxPointer;

                  CString l_aoStrFun[_HEAD]; // function name
                  CString l_aoStrCpp[_FUNC]; // 
                  CString l_aoStrErl[_FUNC];

                  // Function's name header
                  
                  // "exdl_al.def"

                  l_aoStrFun[HEAD_HDR] = m_oPathSplitter.GetFileName();
                  l_aoStrFun[HEAD_HDR] = l_aoStrFun[HEAD_HDR].Mid(l_aoStrFun[HEAD_HDR].ReverseFind('_') + 1);
                  
                  l_aoStrFun[HEAD_PRE] = l_aoStrFun[HEAD_HDR];
                  l_aoStrFun[HEAD_PRE].MakeUpper();

                  // Compress the name (only for very specific modules)

                  if("image" == l_aoStrFun[HEAD_HDR])
                  {
                    l_aoStrFun[HEAD_HDR] = "img";
                  }
                  else
                  if("events" == l_aoStrFun[HEAD_HDR])
                  {
                    l_aoStrFun[HEAD_HDR] = "evt";
                  }
                  else
/*
                  if("glext" == l_aoStrFun[HEAD_HDR])
                  {
                    l_aoStrFun[HEAD_HDR] = "gl";
                  }
                  else
*/
                  if("keyboard" == l_aoStrFun[HEAD_HDR])
                  {
                    l_aoStrFun[HEAD_HDR] = "kbd";
                  }
                  else
                  if("oglblit" == l_aoStrFun[HEAD_HDR])
                  {
                    l_aoStrFun[HEAD_HDR] = "glblt";
                  }
                  else
                  if("video" == l_aoStrFun[HEAD_HDR])
                  {
                    l_aoStrFun[HEAD_HDR] = "vdo";
                  }
                  else
                  if
                  (
                       ("alut"  == l_aoStrFun[HEAD_HDR])
                    || ("alext" == l_aoStrFun[HEAD_HDR])
                    || ("audio" == l_aoStrFun[HEAD_HDR])
                    || ("glext" == l_aoStrFun[HEAD_HDR])
                    || ("glut"  == l_aoStrFun[HEAD_HDR])
                  )
                  {
                    l_aoStrFun[HEAD_HDR] = l_aoStrFun[HEAD_HDR].Left(5);
                  }
                  else
                  {
                    l_aoStrFun[HEAD_HDR] = l_aoStrFun[HEAD_HDR].Left(3);
                  }

                  l_aoStrFun[HEAD_HDR].MakeLower();
                  l_aoStrFun[HEAD_HDR] = "e" + l_aoStrFun[HEAD_HDR] + "_";
                  
                  // l_aoStrFun[HEAD_HDR] == "eal_"

                  for
                  ( l_anPos[FILE_LIN]  = l_loStrLst[FUNC_ARG].GetHeadPosition()
                  , l_nLoop            = 0
                  , l_nArgs            = 0
                  ; l_anPos[FILE_LIN] != NULL
                  ; l_nLoop           += 1
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

                        if(1 == l_anIdxFunc[FUNC_EXT])
                        { // Extension file
                          l_aoStrFun[HEAD_NAM] = l_aoStrFun[HEAD_NIK];
                          l_aoStrFun[HEAD_NAM].MakeLower();

                          /* l_aoStrFun[HEAD_NAM] == "alcgetaudiochannel_loki"
                             l_aoStrFun[HEAD_NIK] == "alcGetAudioChannel_LOKI"
                          */

                          while
                          (  l_aoStrFun[HEAD_NAM].GetAt(0)
                          == l_aoStrFun[HEAD_NIK].GetAt(0)
                          )
                          { // Remove lower case name header
                            l_aoStrFun[HEAD_NAM] = l_aoStrFun[HEAD_NAM].Mid(1);
                            l_aoStrFun[HEAD_NIK] = l_aoStrFun[HEAD_NIK].Mid(1);
                          }
                          
                          l_aoStrFun[HEAD_HDR] = "e" + l_aoStrData[FUNC_PAR].Left(l_aoStrData[FUNC_PAR].GetLength() - l_aoStrFun[HEAD_NAM].GetLength()) + "_";

                          // l_aoStrFun[HEAD_HDR] == "ealc_"

                          // Restore function name
                          l_aoStrFun[HEAD_NAM] = l_aoStrData[FUNC_PAR];
                          l_aoStrFun[HEAD_NIK] = l_aoStrData[FUNC_PAR];
                        }else{}

                        if
                        (
                             (0 == l_aoStrFun[HEAD_NIK].Replace("IMG_", ""))
                          && (0 == l_aoStrFun[HEAD_NIK].Replace("Mix_", ""))
                          && (0 == l_aoStrFun[HEAD_NIK].Replace("OGL_", ""))
                          && (0 == l_aoStrFun[HEAD_NIK].Replace("RTF_", ""))
                          && (0 == l_aoStrFun[HEAD_NIK].Replace("SDL_CD", ""))
                          && (0 == l_aoStrFun[HEAD_NIK].Replace("SDL_Joystick", ""))
                          && (0 == l_aoStrFun[HEAD_NIK].Replace("SDL_", ""))
                          && (0 == l_aoStrFun[HEAD_NIK].Replace("SDLNet_", ""))
                          && (0 == l_aoStrFun[HEAD_NIK].Replace("SVG_", ""))
                          && (0 == l_aoStrFun[HEAD_NIK].Replace("TTF_", ""))
                        )
                        {
                          l_aoStrFun[HEAD_NAM] = l_aoStrFun[HEAD_NIK];
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
                        }else{}

                        if
                        (
                             ("TCP_" == l_aoStrFun[HEAD_NIK].Left(4))
                          || ("UDP_" == l_aoStrFun[HEAD_NIK].Left(4))
                        )
                        { // Special cases
                          l_aoStrFun[HEAD_NIK] = l_aoStrFun[HEAD_NIK].Left(3) + l_aoStrFun[HEAD_NIK].Mid(4);

                          // Lower case of 3 first characters
                          *(l_aoStrFun[HEAD_NIK].GetBuffer(0)+0) |= 0x20;
                          *(l_aoStrFun[HEAD_NIK].GetBuffer(0)+1) |= 0x20;
                          *(l_aoStrFun[HEAD_NIK].GetBuffer(0)+2) |= 0x20;
                        }
                        else
                        { // Lower the case of the first character
                          *(l_aoStrFun[HEAD_NIK].GetBuffer(0)) |= 0x20;

                          if('_' == l_aoStrFun[HEAD_NIK].GetAt(2))
                          { // gl_...
                            *(l_aoStrFun[HEAD_NIK].GetBuffer(0)+1) |= 0x20;
                          }else{}
                        }

                        /* l_aoStrFun[HEAD_NIK] == "getBooleanv"
                        */

                        // Get back the official name
                        l_aoStrFun[HEAD_NAM] = l_aoStrData[FUNC_PAR];
                        break;
                      case 1  : // RETURN
                        if("void" == l_aoStrData[FUNC_PAR])
                        { // No return, then no catcher needed
                          l_aoStrCpp[FUNC_KTC].Empty();

                          if(FRAME_THRESHOLD < l_anIdxFunc[FUNC_RET])
                          { // Frame
                            l_aoStrCpp[FUNC_TRW] = "\r\n  THROW_FRAME()\r\n";
                          }
                          else
                          { // No frame, then no throwing needed
                            l_aoStrCpp[FUNC_TRW].Empty();
                          }
                        }
                        else
                        { // Return something
                          if
                          (
                               (FALSE           == l_aoStrData[FUNC_PAR].IsEmpty())
                            && (FRAME_THRESHOLD <  l_anIdxFunc[FUNC_RET])
                            && (0 > l_aoStrData[FUNC_PAR].Find("*"))
//                            && (1 < l_nTotalArgs)
                          )
                          { // Return a frame
                            l_aoStrCpp[FUNC_KTC]  = "  FRAME_SET_DATA(exdl) =\r\n\r\n";
                            l_aoStrCpp[FUNC_FRM] += "    FRAME_FMT_DATA(" + l_aoStrData[FUNC_PAR] + ", exdl)\r\n";
                            l_aoStrCpp[FUNC_TRW]  = "\r\n  THROW_FRAME()\r\n";

                            // For Erlang, upper the case of the first character
                            *(l_aoStrData[FUNC_PAR].GetBuffer(0)) &= ~(0x20);

                            l_aoStrErl[FUNC_STK] = "Exdl:?" + l_aoStrData[FUNC_PAR];
                          }
                          else
                          { // Simple return
                            l_aoStrCpp[FUNC_KTC] = "  CATCH_RESULT(" + l_aoStrData[FUNC_PAR] + ")\r\n\r\n";

                            if(0 <= l_aoStrData[FUNC_PAR].Find("char*"))
                            { // Return a string
                              l_aoStrCpp[FUNC_TRW] = "\r\n  THROW_STRING()\r\n";

                              l_aoStrErl[FUNC_STK] = "*Exdl:?String";
                            }
                            else
                            { // Return a number
                              l_nIdxPointer = l_aoStrData[FUNC_PAR].Remove('*');

                              if(0 <l_nIdxPointer)
                              {
                                l_aoStrCpp[FUNC_TRW] = "\r\n  THROW_POINTER(";

                                l_aoStrErl[FUNC_STK] = "*Exdl:?_PTR";
                              }
                              else
                              {
                                l_aoStrCpp[FUNC_TRW] = "\r\n  THROW_RESULT(" + l_aoStrData[FUNC_PAR];

                                // For Erlang, upper the case of the first character
                                l_aoStrData[FUNC_PAR].Replace("unsigned ", "u");
                                *(l_aoStrData[FUNC_PAR].GetBuffer(0)) &= ~(0x20);
                                l_aoStrErl[FUNC_STK] = "Exdl:?" + l_aoStrData[FUNC_PAR];
                              }

                              // End throw
                              l_aoStrCpp[FUNC_TRW] += /*(*/ ")\r\n";
                            }
                          }

                          l_aoStrErl[FUNC_RET] = "Exdl";
                          l_aoStrErl[FUNC_TYP] = l_aoStrData[FUNC_PAR];
                        }
                        break;
                      default : // DATA TYPE + ARGUMENTS
                        if
                        ( // "()" or "(void)"
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
                          if
                          (
                               (FRAME_THRESHOLD <= l_anIdxFunc[FUNC_RET])
                            && (l_nLoop         >= l_anIdxFunc[FUNC_RET])
                            // Cannot return a frame if a result is already thrown back
                            && (TRUE            == l_aoStrCpp[FUNC_KTC].IsEmpty())
//                            && (2               <= l_nTotalArgs)
                            // WORKS FOR   : const char* RTF_GetTitle(RTF_Context* ctx)
                            // DO NOT WORK : Uint8 SDL_GetMouseState(int* x, int* y)
                          )
                          { // Frame
                            if(0 == l_nLoop % 2)
                            { // Type
                              l_nIdxPointer = l_aoStrData[FUNC_PAR].Remove('*'); // Remove pointer attribute
                              l_aoStrCpp[FUNC_FRM] += "    FRAME_FMT_";

                              l_aoStrCpp[FUNC_FRM]
                              += (
                                      (0 < l_nIdxPointer)
                                   && (FRAME_THRESHOLD > l_anIdxFunc[FUNC_RET])
                                   && (0               > l_anIdxFunc[FUNC_VEC])
                                 )
                              ? "LPTR"
                              : "DATA"
                              ;

                              l_aoStrCpp[FUNC_FRM] += "(" + l_aoStrData[FUNC_PAR] + ",";
                              l_aoStrCpp[FUNC_FRM] += l_oStrSpace.Left(l_anIdxFunc[FUNC_LEN] - l_aoStrData[FUNC_PAR].GetLength() - 1);

                              l_aoStrCpp[FUNC_FRM].Replace(" ,", ", "); // Ensure the comma to be well placed

                              // Vector
                              l_aoStrCpp[FUNC_PRE] = l_aoStrData[FUNC_PAR];

                              if
                              (
                                   (0  < l_nIdxPointer)
                                && (0 == l_anIdxFunc[FUNC_VEC])
                                // Ensure it is not a simple data type that can be framed
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALboolean"))
//                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALchar"))
//                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALbyte"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALubyte"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALshort"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALushort"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALint"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALuint"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALsizei"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALenum"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALfloat"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALdouble"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALCboolean"))
//                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALCchar"))
//                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALCbyte"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALCubyte"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALCshort"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALCushort"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALCint"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALCuint"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALCsizei"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALCenum"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALCfloat"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ALCdouble"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("UN"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("SN"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("FN"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("boolean"))
//                                && (0 != l_aoStrData[FUNC_PAR].Compare("char"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("byte"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ubyte"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("short"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ushort"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("int"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("uint"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("long"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("ulong"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("enum"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("float"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("double"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("sint8"))
//                                && (0 != l_aoStrData[FUNC_PAR].Compare("uint8"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("sint16"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("uint16"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("sint32"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("uint32"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("sint64"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("uint64"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("GLvoid"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("GLboolean"))
//                                && (0 != l_aoStrData[FUNC_PAR].Compare("GLbyte"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("GLshort"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("GLint"))
//                                && (0 != l_aoStrData[FUNC_PAR].Compare("GLubyte"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("GLushort"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("GLuint"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("GLsizei"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("GLfloat"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("GLclampf"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("GLdouble"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("GLclampd"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("GLenum"))
                                && (0 != l_aoStrData[FUNC_PAR].Compare("GLbitfield"))
                              )
                              {
                                l_aoStrErl[FUNC_PRE] = "_PTR";
                              }
                              else
                              { // For Erlang, upper the case of the first character
                                l_aoStrErl[FUNC_PRE] = l_aoStrData[FUNC_PAR];
                                l_aoStrErl[FUNC_PRE].Replace("unsigned ", "u");
                                *(l_aoStrErl[FUNC_PRE].GetBuffer(0)) &= ~(0x20);
                              }
                            }
                            else
                            { // Value
                              l_aoStrCpp[FUNC_FRM] += " " + l_aoStrData[FUNC_PAR];
                              
                              if
                              (
                                   (FRAME_THRESHOLD < l_anIdxFunc[FUNC_RET])
                                && (0               < l_anIdxFunc[FUNC_VEC])
                              )
                              { // Fake size
                                l_aoStrCpp[FUNC_FRM] += "[1]";
                              }else{}
                              
                              // (

                              l_aoStrCpp[FUNC_FRM] += ")\r\n";
                              l_aoStrCpp[FUNC_ARG] += " FRAME_GET_ADDR(" + l_aoStrData[FUNC_PAR];
                              l_aoStrCpp[FUNC_ARG] += ")\r\n    ,";

                              // Return special case
                              if(FALSE == l_aoStrErl[FUNC_RET].IsEmpty())
                              {
                                if("Exdl" == l_aoStrErl[FUNC_RET])
                                {
                                  l_aoStrErl[FUNC_RET] += ", ";
                                  l_aoStrErl[FUNC_TYP] += ", ";
                                }else{}

                                l_aoStrErl[FUNC_STK] += "\r\n      , ";
                              }else{}

                              // For Erlang, upper the case of the first character
                              *(l_aoStrData[FUNC_PAR].GetBuffer(0)) &= ~(0x20);

                              l_aoStrErl[FUNC_RET] += l_aoStrData[FUNC_PAR] + ", ";
                              l_aoStrErl[FUNC_TYP] += l_aoStrData[FUNC_PRE] + ", ";

                              l_aoStrErl[FUNC_STK] += l_aoStrData[FUNC_PAR] + ":?" + l_aoStrErl[FUNC_PRE];
                            }
                          }
                          else
                          { // Stack
                            if(0 == l_nLoop % 2)
                            { // Type
                              if
                              (
                                   (
                                        (FRAME_THRESHOLD < l_anIdxFunc[FUNC_RET])
                                     && (l_nLoop == (l_anIdxFunc[FUNC_RET] - 2))
                                   )
                                || (
                                        (FRAME_THRESHOLD > l_anIdxFunc[FUNC_RET])
                                     && (l_nLoop == (l_loStrLst[FUNC_ARG].GetCount() - 2))
                                   )
                              )
                              { // Last stack's argument only
                                l_nIdxPointer = l_aoStrData[FUNC_PAR].Replace('*', ' '); // Remove pointer attribute
                              }
                              else
                              {
                                l_nIdxPointer = 0;
                              }

                              l_aoStrCpp[FUNC_STK] += "    STACK_FMT_";
                              
                              // Select the kind of data (pointer have to be embedded into an anonymous union)
                              l_aoStrCpp[FUNC_STK]
                              += (0 > l_aoStrData[FUNC_PAR].Find("*"))
                              ? "DATA"
                              : "LPTR"
                              ;
                                                            
                              l_aoStrData[FUNC_PAR].Replace("const ", ""); // Remove constant attribute

                              l_aoStrCpp[FUNC_STK] += "(" + l_aoStrData[FUNC_PAR] + ","; // )
                              l_aoStrCpp[FUNC_STK] += l_oStrSpace.Left(l_anIdxFunc[FUNC_LEN] - l_aoStrData[FUNC_PAR].GetLength());

                              l_aoStrCpp[FUNC_STK].Replace(" ,", ", "); // Ensure the comma to be well placed

                              if(0 < l_nIdxPointer)
                              {
                                l_aoStrErl[FUNC_PRE] = "_PTR";
                              }
                              else
                              {
                                l_aoStrErl[FUNC_PRE] = l_aoStrData[FUNC_PAR];
                                l_aoStrErl[FUNC_PRE].Replace("unsigned ", "u");

                                // For Erlang, upper the case of the first character
                                *(l_aoStrErl[FUNC_PRE].GetBuffer(0)) &= ~(0x20);
                              }
                            }
                            else
                            { // Value
                              l_nArgs += 1;

                              l_aoStrCpp[FUNC_STK] += " " + l_aoStrData[FUNC_PAR];

                              if(0 < l_nIdxPointer)
                              { // If pointer, let's convert into an array
                                l_aoStrCpp[FUNC_STK] += "[]";

                                // Delete the spurious space
//                                l_aoStrCpp[FUNC_STK].Delete(l_aoStrCpp[FUNC_STK].ReverseFind(' '));
                              }else{}

                              // (

                              l_aoStrCpp[FUNC_STK] += ")\r\n";

                              if(0 < l_nIdxPointer)
                              { // If pointer, let's convert into an array
                                l_aoStrCpp[FUNC_ARG] += " STACK_GET_ADDR";
                              }
                              else
                              {
                                l_aoStrCpp[FUNC_ARG] += " STACK_GET_DATA";
                              }

                              l_aoStrCpp[FUNC_ARG] += "(" + l_aoStrData[FUNC_PAR] + ")\r\n    ,"; // )

                              if(l_nLoop == l_anIdxFunc[FUNC_VEC])
                              { // Vector
                                l_aoStrCpp[FUNC_VEC] = l_aoStrData[FUNC_PAR];
                              }else{}

                              // For Erlang, upper the case of the first character
                              *(l_aoStrData[FUNC_PAR].GetBuffer(0)) &= ~(0x20);

                              // '_' forbidden in Erlang function name or argument (more or less, but do not try)
                              
                              while(0 <= l_aoStrData[FUNC_PAR].Find('_'))
                              {
                                *(l_aoStrData[FUNC_PAR].GetBuffer(0)+l_aoStrData[FUNC_PAR].Find('_')+1) &= ~(0x20);
                                l_aoStrData[FUNC_PAR].Delete(l_aoStrData[FUNC_PAR].Find('_'));
                              }

                              l_aoStrErl[FUNC_ARG] += l_aoStrData[FUNC_PAR] + ", ";
                              l_aoStrErl[FUNC_PAR] += l_aoStrData[FUNC_PAR] + ":?";
                              l_aoStrErl[FUNC_PAR] += (l_aoStrErl[FUNC_PRE].Find('*')<0)?l_aoStrErl[FUNC_PRE]:"_PTR";
                              l_aoStrErl[FUNC_PAR] += "\r\n      , ";
                            }
                          }
                        }
                        break;
                    }
                  }//for

                  if("    ," == l_aoStrCpp[FUNC_ARG].Right(5))
                  { // Trim Cpp's arguments list
                    l_aoStrCpp[FUNC_ARG] = l_aoStrCpp[FUNC_ARG].Left(l_aoStrCpp[FUNC_ARG].GetLength() - 5);
                  }else{}

                  if(", " == l_aoStrErl[FUNC_ARG].Right(2))
                  { // Trim Erlang's arguments list
                    l_aoStrErl[FUNC_ARG] = l_aoStrErl[FUNC_ARG].Left(l_aoStrErl[FUNC_ARG].GetLength() - 2);
                  }else{}

                  if(", " == l_aoStrErl[FUNC_RET].Right(2))
                  { // Trim Erlang's arguments list
                    l_aoStrErl[FUNC_RET] = l_aoStrErl[FUNC_RET].Left(l_aoStrErl[FUNC_RET].GetLength() - 2);
                  }else{}

                  if(", " == l_aoStrErl[FUNC_TYP].Right(2))
                  { // Trim Erlang's arguments type list
                    l_aoStrErl[FUNC_TYP] = l_aoStrErl[FUNC_TYP].Left(l_aoStrErl[FUNC_TYP].GetLength() - 2);
                  }else{}

                  if("      , " == l_aoStrErl[FUNC_PAR].Right(8))
                  { // Trim Erlang's arguments list
                    l_aoStrErl[FUNC_PAR] = l_aoStrErl[FUNC_PAR].Left(l_aoStrErl[FUNC_PAR].GetLength() - 8);
                  }else{}

                  // Generate FILE_CPP -------------------------------------------

                  /* eg.
                  EXDL_API(eal_getBooleanv)
                  {
                    // void alGetBooleanv(ALenum param, ALboolean* data);

                    STACK_FMT_BEGIN()
                      STACK_FMT_DATA(ALenum, param)
                    STACK_FMT_END()

                    FRAME_FMT_BEGIN()
                      FRAME_FMT_DATA(ALboolean, data)
                    FRAME_FMT_END()

                      alGetBooleanv
                      ( STACK_GET_DATA(param)
                      , FRAME_GET_ADDR(data)
                      );

                    THROW_FRAME()
                  }

                  EXDL_API(eal_getBoolean)
                  {
                    // ALboolean alGetBoolean(ALenum param);

                    STACK_FMT_BEGIN()
                      STACK_FMT_DATA(ALenum, param)
                    STACK_FMT_END()

                    CATCH_RESULT(ALboolean)

                      alGetBoolean
                      ( STACK_GET_DATA(param)
                      );

                    THROW_RESULT(ALboolean)
                  }
                  */

                  // Function prototype

                  l_aoStrFile[FILE_CPP] += "EXDL_API(" + l_aoStrFun[HEAD_HDR] + l_aoStrFun[HEAD_NIK] + ")\r\n";
                  l_aoStrFile[FILE_CPP] += "{\r\n  /* " + l_aoStrData[FUNC_TMP] + " */\r\n\r\n"; // }

                  // Function description

                  l_aoStrFile[FILE_CPP] += "  /* exp :  */\r\n";
                  l_aoStrFile[FILE_CPP] += "  /* inp :  */\r\n";
                  l_aoStrFile[FILE_CPP] += "  /* ret :  */\r\n\r\n";

                  // Stack frame format

                  if(FALSE == l_aoStrCpp[FUNC_STK].IsEmpty())
                  {
                    while
                    (
                         (1 == l_nArgs)
                      && (0 <  l_aoStrCpp[FUNC_STK].Find("  ", 4))
                    )
                    { // Delete the spurious space
                      l_aoStrCpp[FUNC_STK].Delete(l_aoStrCpp[FUNC_STK].ReverseFind(' '));
                    }

                    l_aoStrFile[FILE_CPP] += "  STACK_FMT_BEGIN()\r\n";
                    l_aoStrFile[FILE_CPP] += l_aoStrCpp[FUNC_STK];
                    l_aoStrFile[FILE_CPP] += "  STACK_FMT_END()\r\n\r\n";
                  }else{}

                  // Frame format

                  if(FALSE == l_aoStrCpp[FUNC_FRM].IsEmpty())
                  {
                    l_aoStrFile[FILE_CPP] += "  FRAME_FMT_BEGIN()\r\n";
                    l_aoStrFile[FILE_CPP] += l_aoStrCpp[FUNC_FRM];

                    if(0 < l_anIdxFunc[FUNC_VEC])
                    { // Vector frame, let's reserve memory
                      l_aoStrFile[FILE_CPP] += "  FRAME_FMT_SIZE(STACK_GET_DATA(";
                      l_aoStrFile[FILE_CPP] += l_aoStrCpp[FUNC_VEC];
                      l_aoStrFile[FILE_CPP] += ") * sizeof(";
                      l_aoStrFile[FILE_CPP] += l_aoStrCpp[FUNC_PRE]; // (
                      l_aoStrFile[FILE_CPP] += ")";
                    }
                    else
                    {
                      l_aoStrFile[FILE_CPP] += "  FRAME_FMT_END(";
                    }

                    l_aoStrFile[FILE_CPP] += ")\r\n\r\n";
                  }else{}

                  // Result catcher

                  l_aoStrFile[FILE_CPP] += l_aoStrCpp[FUNC_KTC];

                  {
                    BOOL l_bIndent
                    =  (FALSE == l_aoStrCpp[FUNC_STK].IsEmpty())
                    || (FALSE == l_aoStrCpp[FUNC_FRM].IsEmpty())
                    || (FALSE == l_aoStrCpp[FUNC_KTC].IsEmpty())
                    ;

                    // Function name

                    if(TRUE == l_bIndent)
                    {
                      l_aoStrFile[FILE_CPP] += "  ";
                    }else{}

                    l_aoStrFile[FILE_CPP] += "  ";

                    if(1 == l_anIdxFunc[FUNC_EXT])
                    { // Extension file
                      l_aoStrFile[FILE_CPP] += "exdl_";
                    }else{}
                    
                    
                    l_aoStrFile[FILE_CPP] += l_aoStrFun[HEAD_NAM] + "\r\n";
                    
                    if(TRUE == l_bIndent)
                    {
                      l_aoStrFile[FILE_CPP] += "  ";
                    }else{}
                    
                    l_aoStrFile[FILE_CPP] += "  (";

                    if(FALSE == l_aoStrCpp[FUNC_ARG].IsEmpty())
                    {
                      if(FALSE == l_bIndent)
                      {
                        l_aoStrCpp[FUNC_ARG].Replace("    ", "  ");
                      }else{}

                      l_aoStrFile[FILE_CPP] += l_aoStrCpp[FUNC_ARG];
                    }
                    else
                    {
                      l_aoStrFile[FILE_CPP] += "\r\n";
                    }

                    if(TRUE == l_bIndent)
                    {
                      l_aoStrFile[FILE_CPP] += "  ";
                    }else{}


                    l_aoStrFile[FILE_CPP] += "  );\r\n";
                  }

                  // Return something, { <- character for fools IDE

                  l_aoStrFile[FILE_CPP] += l_aoStrCpp[FUNC_TRW];
                  l_aoStrFile[FILE_CPP] += "}\r\n\r\n";

                  // Generate HEADER ----------------------------------------

                  /* eg.
                    { alEnable_ENUM = OPENAL_H
                    , alDisable_ENUM
                    }

                  EXDL_API(eal_disable);
                  */

                  if("HEAD" == l_aoStrFunc[FUNC_PRE])
                  { // First entry
                    l_aoStrFile[FILE_CHD] += "  { "  + l_aoStrFun[HEAD_NAM] + "_ENUM = EXDL_" + l_aoStrFun[HEAD_PRE] + "_H\r\n"; // }
                  }
                  else
                  {
                    l_aoStrFile[FILE_CHD] += "  , "  + l_aoStrFun[HEAD_NAM] + "_ENUM\r\n";
                  }

                  if(1 == l_anIdxFunc[FUNC_EXT])
                  { // Extension file
                    CString l_oStrUpper;
                    CString l_oStrReturn;
                    
                    l_oStrUpper = "EXDL" + l_aoStrFun[HEAD_NAM] + "PROC";
                    l_oStrUpper.MakeUpper();
                    l_oStrUpper.Replace("_LOKI", "");
                    l_oStrUpper.Replace("_EXT", "");

                    l_oStrReturn = l_aoStrData[FUNC_TMP].Left(l_aoStrData[FUNC_TMP].Find('(')); /*)*/
                    l_oStrReturn = l_oStrReturn.Left(l_oStrReturn.ReverseFind(' '));

                    (l_anIndent[FILE_CHA] < l_oStrUpper.GetLength())?l_anIndent[FILE_CHA]  = l_oStrUpper.GetLength():TRUE;
                    (l_anIndent[FILE_CHX] < l_oStrReturn.GetLength())?l_anIndent[FILE_CHX] = l_oStrReturn.GetLength():TRUE;

                    // APIENTRY

                    l_aoStrFile[FILE_CHA] += "typedef " + l_oStrReturn;
                    l_aoStrFile[FILE_CHA] += " " + l_oStrSpace.Left(INDENT_BASE/2 - 9 - l_oStrReturn.GetLength());
                    l_aoStrFile[FILE_CHA] += "(APIENTRY* " + l_oStrUpper;
                    l_aoStrFile[FILE_CHA] += ") " + l_oStrSpace.Left(INDENT_BASE - 12 - l_oStrUpper.GetLength());
                    l_aoStrFile[FILE_CHA] += l_aoStrData[FUNC_TMP].Mid(l_aoStrData[FUNC_TMP].Find('(')) + ";\r\n";

                    // EXDL_EXTERN

                    l_aoStrFile[FILE_CHX] += "EXDL_EXTERN " + l_oStrUpper;
                    l_aoStrFile[FILE_CHX] += " " + l_oStrSpace.Left(INDENT_BASE - 13 - l_oStrUpper.GetLength());
                    l_aoStrFile[FILE_CHX] += "exdl_" + l_aoStrFun[HEAD_NAM] + ";\r\n";
                  }else{}

                  l_aoStrFile[FILE_CHE] += "EXDL_API(" + l_aoStrFun[HEAD_HDR] + l_aoStrFun[HEAD_NIK] + ");\r\n";

                  (l_anIndent[FILE_CHE] < (l_aoStrFun[HEAD_HDR].GetLength() + l_aoStrFun[HEAD_NIK].GetLength()))?l_anIndent[FILE_CHE] = l_aoStrFun[HEAD_HDR].GetLength() + l_aoStrFun[HEAD_NIK].GetLength():TRUE;

                  // Generate FUNP ------------------------------------------

                  /* eg.
                  { alEnable_ENUM,               "alEnable",               eal_enable },
                  */

                  l_aoStrFile[FILE_CFP] += "{ " + l_aoStrFun[HEAD_NAM] + "_ENUM, " + l_oStrSpace.Left(INDENT_BASE - 9 - 1 - l_aoStrFun[HEAD_NAM].GetLength());
                  l_aoStrFile[FILE_CFP] += "\"" + l_aoStrFun[HEAD_NAM] + "\", "  + l_oStrSpace.Left(INDENT_BASE - 4 - 6 - l_aoStrFun[HEAD_NAM].GetLength());
                  l_aoStrFile[FILE_CFP] += l_aoStrFun[HEAD_HDR] + l_aoStrFun[HEAD_NIK];

                  if(1 == l_anIdxFunc[FUNC_EXT])
                  { // Extension file
                    l_aoStrFile[FILE_CFP] += ", " + l_oStrSpace.Left(INDENT_BASE - 2 - 6 - l_aoStrFun[HEAD_HDR].GetLength() - l_aoStrFun[HEAD_NIK].GetLength());
                    l_aoStrFile[FILE_CFP] += "&exdl_" + l_aoStrFun[HEAD_NAM];
                  }else{}

                  l_aoStrFile[FILE_CFP] += " },\r\n";

                  (l_anIndent[FILE_CFP] < l_aoStrFun[HEAD_NAM].GetLength())?l_anIndent[FILE_CFP]  = l_aoStrFun[HEAD_NAM].GetLength():TRUE;

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

                      case
                        call
                        ( ?SDL_JoystickGetBall
                        , <<Joystick:?_PTR
                          , Ball:?Int
                          >>
                        )
                      of
                        <<Exdl:?Int
                        , Dx:?Int
                        , Dy:?Int
                        >>
                          -> {Exdl, Dx, Dy}
                      ; Res
                          -> {badarg, Res}
                      end
                  */

                  // Beware, '_' forbidden in Erlang function name or argument
                  
                  while(0 <= l_aoStrFun[HEAD_NIK].Find('_'))
                  { // Upper case of the next char then remove underscore
                    *(l_aoStrFun[HEAD_NIK].GetBuffer(0)+l_aoStrFun[HEAD_NIK].Find('_')+1) &= ~(0x20);
                    l_aoStrFun[HEAD_NIK].Delete(l_aoStrFun[HEAD_NIK].Find('_'));
                  }

                  l_aoStrFile[FILE_ERL] += "%% Func:       " + l_aoStrFun[HEAD_NIK] + "\r\n";
                  l_aoStrFile[FILE_ERL] += "%% Args:       " + (l_aoStrErl[FUNC_ARG].IsEmpty()?"none":l_aoStrErl[FUNC_ARG]) + "\r\n";
                  l_aoStrFile[FILE_ERL] += "%% Returns:    ";

                  if(FALSE == l_aoStrErl[FUNC_STK].IsEmpty())
                  {
//                    l_aoStrFile[FILE_ERL] += l_aoStrErl[FUNC_TYP];

                    if("Exdl" == l_aoStrErl[FUNC_RET])
                    {
                      l_aoStrFile[FILE_ERL] += l_aoStrErl[FUNC_RET]; //.Mid(6);
                    }
                    else
                    {
                      if(0 != l_anIdxFunc[FUNC_VEC])
                      {
                        l_aoStrFile[FILE_ERL] += "[ " + l_aoStrErl[FUNC_RET] + " ]";
                      }
                      else
                      {
                        l_aoStrFile[FILE_ERL] += "{ " + l_aoStrErl[FUNC_RET] + " }";
                      }
                    }
                  }
                  else
                  {
                    l_aoStrFile[FILE_ERL] += "ok";
                  }

                  l_aoStrFile[FILE_ERL] += "\r\n";
                  l_aoStrFile[FILE_ERL] += "%% C-API func: " + l_aoStrData[FUNC_TMP] + "\r\n\r\n";

                  l_aoStrFile[FILE_ERL] += l_aoStrFun[HEAD_NIK] + "(" + l_aoStrErl[FUNC_ARG] + ")\r\n";
                  l_aoStrFile[FILE_ERL] += " -> ";

                  if(FALSE == l_aoStrErl[FUNC_STK].IsEmpty())
                  {
                    l_aoStrFile[FILE_ERL] += "case\r\n      call";
                    l_aoStrErl[FUNC_PAR].Replace ("      ,", "        ,");
                  }
                  else
                  {
                    l_aoStrFile[FILE_ERL] += "cast";
                  }

                  l_aoStrFile[FILE_ERL] += "\r\n" + l_oStrSpace.Left(4 + (l_aoStrErl[FUNC_STK].IsEmpty()?0:2));
                  l_aoStrFile[FILE_ERL] += "( ?" + l_aoStrFun[HEAD_NAM];
                  l_aoStrFile[FILE_ERL] += "\r\n" + l_oStrSpace.Left(4 + (l_aoStrErl[FUNC_STK].IsEmpty()?0:2));

                  /* "\r\n    >>\r\n    = " */
                    
                  l_aoStrFile[FILE_ERL] += ", ";
                  l_aoStrFile[FILE_ERL] += l_aoStrErl[FUNC_PAR].IsEmpty()?"[":"<<";
                  l_aoStrFile[FILE_ERL] += l_aoStrErl[FUNC_PAR];
                  l_aoStrFile[FILE_ERL] += l_aoStrErl[FUNC_PAR].IsEmpty()?"\r\n":"";
                  l_aoStrFile[FILE_ERL] += l_oStrSpace.Left(6 + (l_aoStrErl[FUNC_STK].IsEmpty()?0:2));
                  l_aoStrFile[FILE_ERL] += l_aoStrErl[FUNC_PAR].IsEmpty()?"]":">>";
                  l_aoStrFile[FILE_ERL] += "\r\n" + l_oStrSpace.Left(4 + (l_aoStrErl[FUNC_STK].IsEmpty()?0:2));
                  l_aoStrFile[FILE_ERL] += ")\r\n";

                  if(FALSE == l_aoStrErl[FUNC_STK].IsEmpty())
                  {
                    l_aoStrFile[FILE_ERL] += "    of\r\n";

                    if(l_aoStrErl[FUNC_STK].Find('*')<0)
                    { // Not a pointer
                      l_aoStrFile[FILE_ERL] += "      <<" + l_aoStrErl[FUNC_STK] + "\r\n";
                      l_aoStrFile[FILE_ERL] += "      >>\r\n";

                      if("Exdl" == l_aoStrErl[FUNC_RET])
                      {
                        l_aoStrFile[FILE_ERL] += "        -> " + l_aoStrErl[FUNC_RET];
                      }
                      else
                      {
                        l_aoStrFile[FILE_ERL] += "        -> ";

                        if(0 != l_anIdxFunc[FUNC_VEC])
                        {
                          l_aoStrFile[FILE_ERL] += "[ " + l_aoStrErl[FUNC_RET] + " ]";
                        }
                        else
                        {
                          l_aoStrFile[FILE_ERL] += "{ " + l_aoStrErl[FUNC_RET] + " }";
                        }
                      }

                      l_aoStrFile[FILE_ERL] += "\r\n"; 
                    }
                    else
                    { // Is a pointer
                      l_aoStrErl[FUNC_STK].Remove('*');

                      l_aoStrFile[FILE_ERL] += "      0\r\n";
                      l_aoStrFile[FILE_ERL] += "        -> { nullptr, ?MODULE, ?LINE }\r\n";
                      l_aoStrFile[FILE_ERL] += "    ; <<" + l_aoStrErl[FUNC_STK] + "\r\n";
                      l_aoStrFile[FILE_ERL] += "      >>\r\n";
                      l_aoStrFile[FILE_ERL] += "        -> { buffptr, Exdl }\r\n";
                    }

                    l_aoStrFile[FILE_ERL] += "    ; Res\r\n";
                    l_aoStrFile[FILE_ERL] += "        -> { badarg, ?MODULE, ?LINE, Res }\r\n";
                    l_aoStrFile[FILE_ERL] += "    end\r\n";
                  }else{}
                  
                  l_aoStrFile[FILE_ERL] += ".\r\n\r\n";

                  if(TRUE == l_aoStrFile[FILE_EXP].IsEmpty())
                  { // Begin 'export' section if no comment
                    l_aoStrFile[FILE_EXP] = "-export( [ ";
                  }else{}

                  l_aoStrFunc[FUNC_TMP].Format("/%d\r\n         , ", l_nArgs);
                  l_aoStrFile[FILE_EXP] += l_aoStrFun[HEAD_NIK] + l_aoStrFunc[FUNC_TMP];

                  // Generate FILE_ERL FP -----------------------------------

                  /* eg.
                  -define(alDisable,              ?alEnable               + 1).
                  */

                  l_aoStrFile[FILE_EFP] += "  -define(" + l_aoStrFun[HEAD_NAM] + ", " + l_oStrSpace.Left(INDENT_BASE - 10 - l_aoStrFun[HEAD_NAM].GetLength());

                  if("HEAD" == l_aoStrFunc[FUNC_PRE])
                  { // First entry
                    l_aoStrFile[FILE_EFP] += "?EXDL_";

/*
                    if
                    (
                         ("AL"     == l_aoStrFun[HEAD_PRE])
                      || ("ALC"    == l_aoStrFun[HEAD_PRE])
                      || ("ALEXT"  == l_aoStrFun[HEAD_PRE])
                      || ("ALUT"   == l_aoStrFun[HEAD_PRE])
                      || ("GL"     == l_aoStrFun[HEAD_PRE])
                      || ("GL3"    == l_aoStrFun[HEAD_PRE])
                      || ("GLEXT"  == l_aoStrFun[HEAD_PRE])
                      || ("GLU"    == l_aoStrFun[HEAD_PRE])
                      || ("GLUT"   == l_aoStrFun[HEAD_PRE])
                      || ("GLXEXT" == l_aoStrFun[HEAD_PRE])
                    )
                    { // Rename
                      l_aoStrFile[FILE_EFP] += "OPEN";
                    }else{}
*/

                    l_aoStrFile[FILE_EFP] += l_aoStrFun[HEAD_PRE];
                    l_aoStrFile[FILE_EFP] += "_HRL" + l_oStrSpace.Left(INDENT_BASE - 10 - 9 - l_aoStrFun[FUNC_PRE].GetLength()) + " + 0";
                  }
                  else
                  {
                    l_aoStrFile[FILE_EFP] += "?" + l_aoStrFunc[FUNC_PRE] + l_oStrSpace.Left(INDENT_BASE - 1 - 9 - l_aoStrFunc[FUNC_PRE].GetLength()) + " + 1";
                  }

                  l_aoStrFile[FILE_EFP] += ").\r\n";

                  l_aoStrFunc[HEAD_HDR] = l_aoStrFun[HEAD_PRE];
                  l_aoStrFunc[FUNC_PRE] = l_aoStrFun[HEAD_NAM];
                }else{} // Line's elements processing
              }else{} // Line parsed
            } // Not a preprocessor match
          }//for // For each line

          if(false == l_bSdlBaseFile)
          {
            l_aoStrFile[FILE_CPP].Replace("@@CPP@@", l_aoStrFunc[HEAD_HDR]);
            l_aoStrFile[FILE_CPP] += "#endif // COMPILE_" + l_aoStrFunc[HEAD_HDR] + "\r\n";

            l_aoStrFile[FILE_CHD].Replace("@@CHD@@", l_aoStrFunc[HEAD_HDR]);

            l_aoStrFile[FILE_CFP].Replace("@@CFP@@", l_aoStrFunc[HEAD_HDR]);
            l_aoStrFile[FILE_CFP] += "\r\n#endif // COMPILE_" + l_aoStrFunc[HEAD_HDR] + "\r\n";
          }else{}

          if("\r\n         , " == l_aoStrFile[FILE_EXP].Right(13))
          { // Trim Cpp's arguments list
            l_aoStrFile[FILE_EXP] = l_aoStrFile[FILE_EXP].Left(l_aoStrFile[FILE_EXP].GetLength() - 13);
          }else{}

          if(false == l_bSdlBaseFile)
          {
            l_aoStrFile[FILE_ERL] += "\r\n-endif. % COMPILE_" + l_aoStrFunc[HEAD_HDR] + "\r\n";
            l_aoStrFile[FILE_ERL].Replace("@@CPP@@", l_aoStrFunc[HEAD_HDR]);
          }else{}

          // Place the 'export' section at the beginning of the file with no pain
          l_aoStrFile[FILE_ERL].Replace("@@EXP@@", l_aoStrFile[FILE_EXP]);
        
          // End FILE_ERL FP ------------------------------------------------

          if(false == l_bSdlBaseFile)
          {
            l_aoStrFile[FILE_EFP].Replace("@@CPP@@", l_aoStrFunc[HEAD_HDR]);
          }else{}
          l_aoStrFile[FILE_EFP] += "\r\n  %% EXDL_" + l_aoStrFunc[HEAD_HDR] + " C SRC ENUM CHECK\r\n";
          l_aoStrFile[FILE_EFP] += "  -define(_ENUM_EXDL_" + l_aoStrFunc[HEAD_HDR] + ", " + l_oStrSpace.Left(INDENT_BASE - 21 - l_aoStrFunc[HEAD_HDR].GetLength());
          l_aoStrFile[FILE_EFP] += "?" + l_aoStrFunc[FUNC_PRE] + l_oStrSpace.Left(INDENT_BASE - 1 - 9 - l_aoStrFunc[FUNC_PRE].GetLength()) + " + 1).\r\n\r\n";
          if(false == l_bSdlBaseFile)
          {
            l_aoStrFile[FILE_EFP] += "-else. % COMPILE_" + l_aoStrFunc[HEAD_HDR] + "\r\n\r\n";
            l_aoStrFile[FILE_EFP] += "  -define(_ENUM_EXDL_" + l_aoStrFunc[HEAD_HDR] + ", " + l_oStrSpace.Left(INDENT_BASE - 21 - l_aoStrFunc[HEAD_HDR].GetLength());
            l_aoStrFile[FILE_EFP] += "?EXDL_" + l_aoStrFunc[HEAD_HDR] + "_HRL).\r\n";
            l_aoStrFile[FILE_EFP] += "\r\n-endif. % COMPILE_" + l_aoStrFunc[HEAD_HDR] + "\r\n";
          }else{}

          l_anIndent[FILE_EFP] = l_anIndent[FILE_CFP];
          (l_anIndent[FILE_EFP] < (l_aoStrFunc[HEAD_HDR].GetLength() + 11))?l_anIndent[FILE_EFP] = l_aoStrFunc[HEAD_HDR].GetLength() + 11:TRUE;
        }else{} // Data buffer parsed
      
        delete l_poBarFile;
        l_poBarFile = NULL;
      }else{} // Data buffer exists

      // Decrease tabbed indentation

      if(0 < l_anIndent[FILE_CHE])
      {
//        l_aoStrData[FUNC_TMP] = l_oStrSpace.Left(INDENT_BASE - 5 - 2 - l_anIndent[FILE_CHE]) + "EXDL_DRIVAPI_3";
//        l_aoStrFile[FILE_CHE].Replace(l_aoStrData[FUNC_TMP], "EXDL_DRIVAPI_3");
      }

      if(1 == l_anIdxFunc[FUNC_EXT])
      { // Extension file
        if(0 < l_anIndent[FILE_CHA])
        {
          l_aoStrData[FUNC_TMP] = "PROC)" + l_oStrSpace.Left(INDENT_BASE - 13 - l_anIndent[FILE_CHA]);
          l_aoStrFile[FILE_CHA].Replace(l_aoStrData[FUNC_TMP], "PROC)");


          l_aoStrData[FUNC_TMP].Remove(')');
          l_aoStrFile[FILE_CHX].Replace(l_aoStrData[FUNC_TMP], "PROC ");
        }

        if(0 < l_anIndent[FILE_CHX])
        {
          l_aoStrData[FUNC_TMP] = l_oStrSpace.Left(INDENT_BASE/2 - 9 - l_anIndent[FILE_CHX]) + "(APIENTRY*";
          l_aoStrFile[FILE_CHA].Replace(l_aoStrData[FUNC_TMP], "(APIENTRY*");
        }
      }else{}

      if(0 < l_anIndent[FILE_CFP])
      {
        l_aoStrData[FUNC_TMP] = l_oStrSpace.Left(INDENT_BASE - 11 - l_anIndent[FILE_CFP]) + "\"";
        l_aoStrFile[FILE_CFP].Replace(l_aoStrData[FUNC_TMP], "\"");

        l_aoStrData[FUNC_TMP] = "\"," + l_oStrSpace.Left(INDENT_BASE - 11 - l_anIndent[FILE_CFP]);
        l_aoStrFile[FILE_CFP].Replace(l_aoStrData[FUNC_TMP], "\",");

        l_aoStrData[FUNC_TMP] = l_oStrSpace.Left(INDENT_BASE - 11 - l_anIndent[FILE_CFP]) + "&";
        l_aoStrFile[FILE_CFP].Replace(l_aoStrData[FUNC_TMP], "&");
      }

      if(0 < l_anIndent[FILE_EFP])
      {
        l_aoStrData[FUNC_TMP] = l_oStrSpace.Left(INDENT_BASE - 10 - l_anIndent[FILE_EFP]) + "?";
        l_aoStrFile[FILE_EFP].Replace(l_aoStrData[FUNC_TMP], " ?");

        l_aoStrData[FUNC_TMP] = l_oStrSpace.Left(INDENT_BASE - 11 - l_anIndent[FILE_EFP]) + "+ ";
        l_aoStrFile[FILE_EFP].Replace(l_aoStrData[FUNC_TMP], "+ ");
      }

      // Append extension to C header file

      l_aoStrFile[FILE_CHD] += "  , _ENUM_EXDL_" + l_aoStrFunc[HEAD_HDR] + "\r\n"; // {
      l_aoStrFile[FILE_CHD] += "  };\r\n\r\n";


      if(1 == l_anIdxFunc[FUNC_EXT])
      { // Extension file
        l_aoStrFile[FILE_CHD] += "\r\n" + l_aoStrFile[FILE_CHA] + "\r\n";
        l_aoStrFile[FILE_CHD] += "\r\n" + l_aoStrFile[FILE_CHX] + "\r\n";
      }else{}

      l_aoStrFile[FILE_CHD] += "\r\n" + l_aoStrFile[FILE_CHE] + "\r\n";

      if(false == l_bSdlBaseFile)
      {
        l_aoStrFile[FILE_CHD] += "#else // COMPILE_" + l_aoStrFunc[HEAD_HDR] + "\r\n";
        l_aoStrFile[FILE_CHD] += "  enum { _ENUM_EXDL_" + l_aoStrFunc[HEAD_HDR] + " = EXDL_" + l_aoStrFunc[HEAD_HDR] + "_H };\r\n";
        l_aoStrFile[FILE_CHD] += "#endif // COMPILE_" + l_aoStrFunc[HEAD_HDR] + "\r\n";
      }else{}
      l_aoStrFile[FILE_CHD] += "\r\n";
      l_aoStrFile[FILE_CHD] += "  #ifdef __cplusplus\r\n"; // {
      l_aoStrFile[FILE_CHD] += "  }\r\n";
      l_aoStrFile[FILE_CHD] += "  #endif /* __cplusplus */\r\n";

      // Close files ========================================================

      fwrite(l_aoStrFile[FILE_CPP].GetBuffer(0), 1, l_aoStrFile[FILE_CPP].GetLength(), l_ahOutFile[FILE_CPP]);
      fclose(l_ahOutFile[FILE_CPP]);

      fwrite(l_aoStrFile[FILE_CHD].GetBuffer(0), 1, l_aoStrFile[FILE_CHD].GetLength(), l_ahOutFile[FILE_CHD]);
      fclose(l_ahOutFile[FILE_CHD]);

      fwrite(l_aoStrFile[FILE_CFP].GetBuffer(0), 1, l_aoStrFile[FILE_CFP].GetLength(), l_ahOutFile[FILE_CFP]);
      fclose(l_ahOutFile[FILE_CFP]);

      fwrite(l_aoStrFile[FILE_ERL].GetBuffer(0), 1, l_aoStrFile[FILE_ERL].GetLength(), l_ahOutFile[FILE_ERL]);
      fclose(l_ahOutFile[FILE_ERL]);

      fwrite(l_aoStrFile[FILE_EFP].GetBuffer(0), 1, l_aoStrFile[FILE_EFP].GetLength(), l_ahOutFile[FILE_EFP]);
      fclose(l_ahOutFile[FILE_EFP]);

      fwrite(l_aoStrFile[FILE_HRL].GetBuffer(0), 1, l_aoStrFile[FILE_HRL].GetLength(), l_ahOutFile[FILE_HRL]);
      fclose(l_ahOutFile[FILE_HRL]);

//      l_poBarWork->StepIt();
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

  m_oButPathSrc.SetFocus();

  m_oButWrkRun.EnableWindow(TRUE);
}

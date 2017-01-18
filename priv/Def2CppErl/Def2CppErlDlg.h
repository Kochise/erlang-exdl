// Def2CppErlDlg.h : header file
//

#if !defined(AFX_DEF2CPPERLDLG_H__E03FEA4B_3F68_4276_9250_641AD21FE525__INCLUDED_)
#define AFX_DEF2CPPERLDLG_H__E03FEA4B_3F68_4276_9250_641AD21FE525__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "CPathSplit.h"
#include "EditLabel.h"

#define dCSD_2N_POWER
class CStringDicho : public CStringArray
{
  public :
    CStringDicho
    (
    )
    {
    }

    int AddDicho
    ( CString const& i_poString
    )
    {
      if(GetSize() > 0)
      {
        if(FindDicho(i_poString, TRUE) < 0)
        {
          InsertAt(m_nDichoMed + m_nDichoDlt, i_poString); 
        }else{}

        return m_nDichoMed;
      }
      else
      {
        Add(i_poString);
        return 0;
      }
    }

    int FindDicho
    ( CString const& i_poString
    , BOOL           i_bExactPlace = TRUE
    )
    {
      m_nDichoMax = GetSize();
      if(m_nDichoMax > 0)
      {
        m_nDichoMin = 0;
        m_nDichoDlt = 0;

#ifdef dCSD_2N_POWER
        m_nDichoMed = m_nDichoMax;
        for
        ( m_nDichoInt   = 0
        ; m_nDichoMed  >  0
        ; m_nDichoMed >>= 1
        )
        {
          m_nDichoInt += 1;
        };

        m_nDichoMed = (m_nDichoMin + m_nDichoMax) / 2;

        for
        (
        ; m_nDichoInt > 0
        ; m_nDichoInt -= 1
        )
        {
          m_oBuffer   = GetAt(m_nDichoMed);
          if(i_poString >= m_oBuffer)
          {
            m_nDichoMin = m_nDichoMed;
            m_nDichoDlt = 1;
          }
          else
          {
            m_nDichoMax = m_nDichoMed;
          }
          m_nDichoMed = (m_nDichoMin + m_nDichoMax) / 2;
        }
#else
        m_nDichoMed = (m_nDichoMin + m_nDichoMax) / 2;
        do
        {
          m_oBuffer   = GetAt(m_nDichoMed);
          if(i_poString >= m_oBuffer)
          {
            m_nDichoMin = m_nDichoMed;
            m_nDichoDlt = 1;
          }
          else
          {
            m_nDichoMax = m_nDichoMed;
          }
          m_nDichoMed = (m_nDichoMin + m_nDichoMax) / 2;
        }
        while
        (
          m_nDichoMax > (m_nDichoMed + m_nDichoDlt)
        );
#endif // dCSD_2N_POWER

        if
        (
             (i_bExactPlace == TRUE)
          && (i_poString    != GetAt(m_nDichoMed))
        )
        { // return (-1) un peu plus loin
        }
        else
        {
          return m_nDichoMed;
        }
      }else{};

      return (-1);
    }
    
  protected :
    int     m_nDichoMin;
    int     m_nDichoMed;
    int     m_nDichoMax;
    int     m_nDichoDlt;
#ifdef dCSD_2N_POWER
    int     m_nDichoInt;
#endif // dCSD_2N_POWER
    CString m_oBuffer;
};

/////////////////////////////////////////////////////////////////////////////
// CDef2CppErlDlg dialog

class CDef2CppErlDlg : public CDialog
{
// Construction
public:
  CDef2CppErlDlg(CWnd* pParent = NULL);  // standard constructor

// Dialog Data
  //{{AFX_DATA(CDef2CppErlDlg)
	enum { IDD = IDD_DEF2CPPERL_DIALOG };
	CStatic	m_oWndWrkTotFile;
  CStatic  m_oWndWrkTotProg;
  CStatic  m_oWndWrkTotTxt;
  CEditLabel  m_oEditFileDst;
  CButton  m_oButWrkRun;
  CButton  m_oButPathSrc;
  CButton  m_oButPathDst;
  CString  m_oStrPathDst;
  CString  m_oStrPathSrc;
  CString  m_oStrFileType;
	CString	m_oStrWrkTotTxt;
	//}}AFX_DATA

  // ClassWizard generated virtual function overrides
  //{{AFX_VIRTUAL(CDef2CppErlDlg)
  protected:
  virtual void DoDataExchange(CDataExchange* pDX);  // DDX/DDV support
  //}}AFX_VIRTUAL

  void VerifyRun(void);
  void VerifyDst(void);

// Implementation
protected:
  HICON      m_hIcon;

  BOOL       m_bTestWrite;
  BOOL       m_bTestFile;
  BOOL       m_bStopRequest;

  bool       m_bModeLin;

  CString    m_oStrAppPath;
  CPathSplit m_oPathSplitter;

  int _GetFileList(CStringList* o_polFileSource = NULL);

  // Preparation for the function we want to import from USER32.DLL
  typedef BOOL (WINAPI *pSLWA)
  ( HWND hWnd
  , COLORREF crKey
  , BYTE bAlpha
  , DWORD dwFlags
  );

  pSLWA m_pSetLayeredWindowAttributes;

  // Generated message map functions
  //{{AFX_MSG(CDef2CppErlDlg)
  virtual BOOL OnInitDialog();
  afx_msg void OnPaint();
  afx_msg HCURSOR OnQueryDragIcon();
  afx_msg void OnButFileDst();
  afx_msg void OnButFileSrc();
  afx_msg void OnButWrkRun();
  afx_msg void OnChangeEdFileDst();
  afx_msg void OnDestroy();
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnChangeEdFileType();
	afx_msg void OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags);
	afx_msg void OnRadLid();
	afx_msg void OnRadNif();
	//}}AFX_MSG
  DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DEF2CPPERLDLG_H__E03FEA4B_3F68_4276_9250_641AD21FE525__INCLUDED_)

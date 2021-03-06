#include "windows.h"
#include <port1632.h>
#include "fontsel.h"

#define TA_LOWERCASE 0x01  // taken from winfile.h!
#define TA_BOLD      0x02
#define TA_ITALIC 0x04
// albertt (191 5.18)
#define TA_LOWERCASEALL 0x08

extern HANDLE hAppInstance;
extern BOOL wTextAttribs;
extern HWND hwndFrame;
extern WORD wHelpMessage;

typedef struct {
   HWND hwndLB;
   HDC hdc;
} ENUM_FONT_DATA, FAR *LPENUM_FONT_DATA;

#define COUNTOF(x) (sizeof(x)/sizeof(*x))

INT APIENTRY FontSizeEnumProc(LPLOGFONT lplf, LPTEXTMETRIC lptm, INT nFontType, LPENUM_FONT_DATA lpData);
INT APIENTRY FontFaceEnumProc(LPLOGFONT lplf, LPTEXTMETRIC lptm, INT nFontType, LPENUM_FONT_DATA lpData);
INT APIENTRY FontDlgProc(HWND hDlg, WORD wMsg, WPARAM wParam, LONG lParam);

INT APIENTRY GetHeightFromPointsString(LPTSTR sz);
VOID APIENTRY WFHelp(HWND hwnd);


BOOL APIENTRY MyChooseFont(LPMYCHOOSEFONT lpcf)
{
   FARPROC lpfnDialog;
   BOOL ret;

   lpfnDialog = MakeProcInstance((FARPROC)FontDlgProc, hAppInstance);
   ret = DialogBoxParam(hAppInstance, (LPTSTR) MAKEINTRESOURCE(FONTDLG), lpcf->hwndOwner, (DLGPROC)lpfnDialog, (LONG)lpcf);
   FreeProcInstance(lpfnDialog);

   return ret == IDOK;
}

INT APIENTRY FontFaceEnumProc(LPLOGFONT lplf, LPTEXTMETRIC lptm, INT nFontType, LPENUM_FONT_DATA lpData)
{
    lptm; nFontType;

   if (lplf->lfCharSet == ANSI_CHARSET) {
      SendMessage(lpData->hwndLB, CB_ADDSTRING, 0, (LPARAM)lplf->lfFaceName);
   }
   return TRUE;
}

LPTSTR NEAR PASCAL GetPointString(LPTSTR buf, HDC hdc, INT height)
{
   wsprintf(buf, TEXT("%d"), MulDiv((height < 0) ? -height : height, 72, GetDeviceCaps(hdc, LOGPIXELSY)));

   return buf;
}

INT APIENTRY FontSizeEnumProc(LPLOGFONT lplf, LPTEXTMETRIC lptm, INT nFontType, LPENUM_FONT_DATA lpData)
{
   INT height;
   TCHAR buf[20];
         lplf;

   if (!(nFontType & RASTER_FONTTYPE)) {
      SendMessage(lpData->hwndLB, CB_ADDSTRING, 0, (LPARAM)TEXT("6"));
      SendMessage(lpData->hwndLB, CB_ADDSTRING, 0, (LPARAM)TEXT("8"));
      SendMessage(lpData->hwndLB, CB_ADDSTRING, 0, (LPARAM)TEXT("10"));
      SendMessage(lpData->hwndLB, CB_ADDSTRING, 0, (LPARAM)TEXT("12"));
      SendMessage(lpData->hwndLB, CB_ADDSTRING, 0, (LPARAM)TEXT("14"));
      SendMessage(lpData->hwndLB, CB_ADDSTRING, 0, (LPARAM)TEXT("18"));
      SendMessage(lpData->hwndLB, CB_ADDSTRING, 0, (LPARAM)TEXT("24"));
   } else {
      height = lptm->tmHeight - lptm->tmInternalLeading;
      GetPointString(buf, lpData->hdc, height);
      SendMessage(lpData->hwndLB, CB_ADDSTRING, 0, (LPARAM)buf);
   }

   return TRUE;
}


VOID NEAR PASCAL EnumFontSizes(HWND hDlg, HDC hdc, LPTSTR szFace, INT height)
{
   ENUM_FONT_DATA data;
   FARPROC lpfp;
   TCHAR szTemp[10];

   SendDlgItemMessage(hDlg, IDD_PTSIZE, CB_RESETCONTENT, 0, 0L);

   lpfp = MakeProcInstance((FARPROC)FontSizeEnumProc, hAppInstance);

   if (!lpfp)
      return;

   data.hwndLB = GetDlgItem(hDlg, IDD_PTSIZE);
   data.hdc = hdc;

   EnumFonts(hdc, szFace, (FONTENUMPROC)lpfp, (LPARAM)&data);

   FreeProcInstance(lpfp);

   GetPointString(szTemp, hdc, height);
   if ((INT)SendDlgItemMessage(hDlg, IDD_PTSIZE, CB_SELECTSTRING, -1, (LPARAM)szTemp) < 0)
      SendDlgItemMessage(hDlg, IDD_PTSIZE, CB_SETCURSEL, 0, 0L);

}



// needs to be exported of course

INT APIENTRY FontDlgProc(HWND hDlg, WORD wMsg, WPARAM wParam, LONG lParam)
{
   LOGFONT lf;
   FARPROC lpfp;
   ENUM_FONT_DATA data;
   HDC hdc;
   TCHAR szTemp[80];
   INT sel;
   static LPMYCHOOSEFONT lpcf;

   switch (wMsg) {
   case WM_INITDIALOG:

      lpcf = (LPMYCHOOSEFONT)lParam;

      lpfp = MakeProcInstance((FARPROC)FontFaceEnumProc, hAppInstance);

      if (!lpfp)
         return 0;

      hdc = GetDC(NULL);   // screen fonts

      data.hwndLB = GetDlgItem(hDlg, IDD_FACE);
      data.hdc = hdc;

      EnumFonts(hdc, NULL, (FONTENUMPROC)lpfp, (LPARAM)&data);

      FreeProcInstance(lpfp);

      sel = (INT)SendDlgItemMessage(hDlg, IDD_FACE, CB_SELECTSTRING, -1, (LPARAM)(lpcf->lpLogFont)->lfFaceName);
      if (sel  < 0) {
         SendDlgItemMessage(hDlg, IDD_FACE, CB_SETCURSEL, 0, 0L);
         sel = 0;
      }

      GetDlgItemText(hDlg, IDD_FACE, szTemp, COUNTOF(szTemp));

      EnumFontSizes(hDlg, hdc, szTemp, lpcf->lpLogFont->lfHeight);

      ReleaseDC(NULL, hdc);

      CheckDlgButton(hDlg, IDD_ITALIC, lpcf->lpLogFont->lfItalic);
      CheckDlgButton(hDlg, IDD_BOLD, (WORD)(lpcf->lpLogFont->lfWeight > 500));
      CheckDlgButton(hDlg, IDD_LOWERCASE, (WORD)(wTextAttribs & TA_LOWERCASE));
// albert (191 2.18)
      CheckDlgButton(hDlg, IDD_LOWERCASEALL, (WORD)(wTextAttribs & TA_LOWERCASEALL));

      break;

   case WM_COMMAND:
      switch (GET_WM_COMMAND_ID(wParam, lParam)) {
      case IDD_HELP:
         goto DoHelp;

      case IDD_FACE:
         switch (GET_WM_COMMAND_CMD(wParam, lParam)) {
            case CBN_SELCHANGE:
            GetDlgItemText(hDlg, IDD_FACE, szTemp, COUNTOF(szTemp));

            hdc = GetDC(NULL);   // screen fonts
            EnumFontSizes(hDlg, hdc, szTemp, lpcf->lpLogFont->lfHeight);
            ReleaseDC(NULL, hdc);
            break;
         }
         break;

      case IDCANCEL:
         EndDialog(hDlg, FALSE);
         break;

      case IDOK:

         if (IsDlgButtonChecked(hDlg, IDD_LOWERCASE))
            wTextAttribs |= TA_LOWERCASE;
         else
            wTextAttribs &= ~TA_LOWERCASE;

// albertt (191 5.18)

         if (IsDlgButtonChecked(hDlg, IDD_LOWERCASEALL))
            wTextAttribs |= TA_LOWERCASEALL;
         else
            wTextAttribs &= ~TA_LOWERCASEALL;
// end.

         if (IsDlgButtonChecked(hDlg, IDD_ITALIC))
            wTextAttribs |= TA_ITALIC;
         else
            wTextAttribs &= ~TA_ITALIC;

         if (IsDlgButtonChecked(hDlg, IDD_BOLD))
            wTextAttribs |= TA_BOLD;
         else
            wTextAttribs &= ~TA_BOLD;

         GetDlgItemText(hDlg, IDD_FACE, lf.lfFaceName, COUNTOF(lf.lfFaceName));

         GetDlgItemText(hDlg, IDD_PTSIZE, szTemp, COUNTOF(szTemp));
         lf.lfHeight = (SHORT)GetHeightFromPointsString(szTemp);
         lf.lfWeight = (SHORT)(IsDlgButtonChecked(hDlg, IDD_BOLD) ? 800 : 400);
         lf.lfItalic = (BYTE)IsDlgButtonChecked(hDlg, IDD_ITALIC);
         lf.lfWidth = 0;
         lf.lfEscapement = 0;
         lf.lfOrientation = 0;
         lf.lfUnderline = 0;
         lf.lfStrikeOut = 0;
         lf.lfCharSet = ANSI_CHARSET;
         lf.lfOutPrecision = OUT_DEFAULT_PRECIS;
         lf.lfClipPrecision = CLIP_DEFAULT_PRECIS;
         lf.lfQuality = DEFAULT_QUALITY;
         lf.lfPitchAndFamily = DEFAULT_PITCH;

         *(lpcf->lpLogFont) = lf;

         EndDialog(hDlg, TRUE);
         break;

      default:
         return FALSE;
      }
      break;

   default:

           if (wMsg == wHelpMessage) {
DoHelp:
      WFHelp(hDlg);

      return TRUE;
     } else
      return FALSE;
   }
   return TRUE;
}



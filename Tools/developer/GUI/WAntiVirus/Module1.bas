Attribute VB_Name = "Module1"

Private Declare Function ReleaseCapture Lib "user32" () As Long
Public Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Const HTCAPTION = 2     '±`¶q©w?
Const WM_NCLBUTTONDOWN = &HA1


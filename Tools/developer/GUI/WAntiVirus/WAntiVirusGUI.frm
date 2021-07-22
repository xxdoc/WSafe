VERSION 5.00
Begin VB.Form WAntiVirus 
   Appearance      =   0  '平面
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  '沒有框線
   Caption         =   "WAntiVirus "
   ClientHeight    =   13110
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   22065
   Icon            =   "WAntiVirusGUI.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   13110
   ScaleWidth      =   22065
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '螢幕中央
   Begin VB.PictureBox 標題 
      Appearance      =   0  '平面
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  '沒有框線
      ClipControls    =   0   'False
      FillColor       =   &H00FFFFFF&
      ForeColor       =   &H00FFFFFF&
      Height          =   7425
      Left            =   0
      Picture         =   "WAntiVirusGUI.frx":10CA
      ScaleHeight     =   35568.87
      ScaleLeft       =   200
      ScaleMode       =   0  '使用者自訂
      ScaleWidth      =   23535
      TabIndex        =   0
      Top             =   0
      Width           =   23535
      Begin VB.Label 反饋 
         BackStyle       =   0  '透明
         Caption         =   "Feedback"
         Height          =   255
         Left            =   21120
         TabIndex        =   2
         Top             =   6600
         Width           =   855
      End
      Begin VB.Label About 
         BackStyle       =   0  '透明
         Caption         =   "About"
         Height          =   255
         Left            =   20400
         TabIndex        =   1
         Top             =   6600
         Width           =   495
      End
      Begin VB.Image end 
         Height          =   600
         Left            =   19800
         Picture         =   "WAntiVirusGUI.frx":AA8B
         Top             =   600
         Width           =   1680
      End
      Begin VB.Image 病毒庫升級 
         Height          =   840
         Left            =   18240
         Picture         =   "WAntiVirusGUI.frx":B90C
         Top             =   5640
         Width           =   2715
      End
      Begin VB.Image Image3 
         Height          =   3180
         Left            =   12720
         Picture         =   "WAntiVirusGUI.frx":C7BF
         Top             =   2160
         Width           =   8625
      End
      Begin VB.Image Image2 
         Height          =   4920
         Left            =   6120
         Picture         =   "WAntiVirusGUI.frx":1329C
         Top             =   2040
         Width           =   4920
      End
      Begin VB.Image 全盤查殺 
         Height          =   4920
         Left            =   720
         Picture         =   "WAntiVirusGUI.frx":15E6C
         Top             =   2040
         Width           =   4920
      End
   End
   Begin VB.Label 提示 
      Caption         =   "點擊上方按鈕以顯示"
      BeginProperty Font 
         Name            =   "微軟正黑體"
         Size            =   36
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   14880
      TabIndex        =   3
      Top             =   8760
      Width           =   6735
   End
   Begin VB.Image 命令行模式 
      Height          =   3420
      Left            =   11880
      MousePointer    =   1  '箭號形狀
      Picture         =   "WAntiVirusGUI.frx":18A51
      Top             =   7560
      Width           =   2805
   End
   Begin VB.Image 彈窗遮蔽 
      Height          =   3420
      Left            =   8880
      MousePointer    =   1  '箭號形狀
      Picture         =   "WAntiVirusGUI.frx":1A710
      Top             =   7560
      Width           =   2805
   End
   Begin VB.Image 隔離清理 
      Height          =   3420
      Left            =   5880
      MousePointer    =   1  '箭號形狀
      Picture         =   "WAntiVirusGUI.frx":1D293
      Top             =   7560
      Width           =   2805
   End
   Begin VB.Image 微步在線 
      Height          =   3420
      Left            =   120
      MousePointer    =   1  '箭號形狀
      Picture         =   "WAntiVirusGUI.frx":1FF37
      Top             =   7560
      Width           =   2805
   End
   Begin VB.Image 文件粉碎 
      Height          =   3420
      Left            =   2880
      MousePointer    =   1  '箭號形狀
      Picture         =   "WAntiVirusGUI.frx":223FA
      Top             =   7560
      Width           =   2805
   End
End
Attribute VB_Name = "WAntiVirus"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

Private Sub About_Click()
MsgBox "WAntiVirus Free [GUI] dev.011" & vbCrLf & "作者：Bob0800 感謝您的使用。" & vbCrLf & "防病毒引擎基於 ClamAV 開源殺毒軟件" & vbCrLf & "彈窗遮蔽使用知乎：廖小波的軟件" & vbCrLf & "感謝他們~", 0 + 64, "關於"
End Sub


Private Sub end_Click()
End
End Sub

Private Sub 反饋_Click()
Shell "cmd.exe /c start " & "mailto:\\103020@cjes.hcc.edu.tw"
End Sub

Private Sub 文件夾查殺_Click()
Shell ".\tools\mode\3.bat", vbNormalFocus
End Sub

Private Sub 文件夾掃描_Click()
Shell ".\tools\mode\3.bat", vbNormalFocus
End Sub

Private Sub 文件粉碎_Click()
Shell ".\tools\mode\4.bat", vbNormalFocus
End Sub

Private Sub 全盤查殺_Click()
全盤掃描選擇盤.Show
End Sub


Private Sub 命令行模式_Click()
Shell ".\WAntiVirus.bat", vbNormalFocus
End
End Sub

Private Sub 病毒庫升級_Click()
Shell ".\tools\clamav\freshclam.exe", vbNormalFocus
End Sub

Private Sub 單檔查殺_Click()
Shell ".\tools\mode\2.bat", vbNormalFocus
End Sub

Private Sub 單檔掃描_Click()
Shell ".\tools\mode\2.bat", vbNormalFocus
End Sub

Private Sub 微步在線_Click()
Shell ".\tools\mode\6.bat", vbNormalFocus
End
End Sub

Private Sub 微步多引擎_Click()
Shell ".\tools\mode\6.bat", vbNormalFocus
End
End Sub

Private Sub 隔離清理_Click()
Shell ".\tools\mode\7.bat", vbNormalFocus
End Sub

Private Sub 網站遮蔽_Click()
Shell ".\tools\mode\9.bat", vbNormalFocus
End Sub

Private Sub 彈窗遮蔽_Click()
Shell ".\tools\mode\10.bat", vbNormalFocus
End Sub

Private Sub 關閉_Click()
End
End Sub




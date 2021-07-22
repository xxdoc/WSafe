VERSION 5.00
Begin VB.Form 全盤掃描選擇盤 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  '沒有框線
   Caption         =   "全盤掃描"
   ClientHeight    =   13110
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   22065
   Icon            =   "全盤掃描選擇盤.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   13110
   ScaleWidth      =   22065
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  '所屬視窗中央
   Begin VB.CommandButton 取消掃描 
      Caption         =   "取消"
      BeginProperty Font 
         Name            =   "微軟正黑體"
         Size            =   9.75
         Charset         =   136
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   12720
      TabIndex        =   3
      Top             =   4080
      Width           =   1095
   End
   Begin VB.CommandButton 開始掃描 
      Caption         =   "掃描"
      BeginProperty Font 
         Name            =   "微軟正黑體"
         Size            =   9.75
         Charset         =   136
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   11280
      TabIndex        =   2
      Top             =   4080
      Width           =   1095
   End
   Begin VB.DriveListBox Drive 
      Appearance      =   0  '平面
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   720
      Left            =   4920
      TabIndex        =   1
      Top             =   3120
      Width           =   9135
   End
   Begin VB.Label 請選擇盤符 
      BackStyle       =   0  '透明
      Caption         =   "請選擇盤符"
      BeginProperty Font 
         Name            =   "標楷體"
         Size            =   27.75
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4920
      TabIndex        =   0
      Top             =   2400
      Width           =   3135
   End
End
Attribute VB_Name = "全盤掃描選擇盤"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub 取消掃描_Click()
全盤掃描選擇盤.Hide
End Sub

Private Sub 開始掃描_Click()
 Shell "cmd /c" & ".\Tools\clamav\clamscan.exe --Log=Tools\Log\log.txt --Move=.\Tools\Virus" & "Drive1.Drive", vbNormalFocus
End Sub


VERSION 5.00
Begin VB.Form frmSplash 
   BorderStyle     =   3  '雙線固定對話方塊
   ClientHeight    =   4245
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   7380
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4245
   ScaleWidth      =   7380
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '螢幕中央
   Visible         =   0   'False
   Begin VB.Frame Frame1 
      Height          =   4050
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   7080
      Begin VB.Image imgLogo 
         Height          =   1545
         Left            =   600
         Picture         =   "frmSplash.frx":0000
         Stretch         =   -1  'True
         Top             =   480
         Width           =   1455
      End
      Begin VB.Label lblCopyright 
         Caption         =   "版權 Bob0800"
         Height          =   255
         Left            =   4560
         TabIndex        =   4
         Top             =   3060
         Width           =   2415
      End
      Begin VB.Label lblCompany 
         Caption         =   "公司 WStudio"
         Height          =   255
         Left            =   4560
         TabIndex        =   3
         Top             =   3390
         Width           =   2415
      End
      Begin VB.Label lblWarning 
         Caption         =   "2021 WStudio"
         Height          =   195
         Left            =   150
         TabIndex        =   2
         Top             =   3660
         Width           =   6855
      End
      Begin VB.Label lblVersion 
         Alignment       =   1  '靠右對齊
         AutoSize        =   -1  'True
         Caption         =   "版本"
         BeginProperty Font 
            Name            =   "新細明體"
            Size            =   12
            Charset         =   136
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   6330
         TabIndex        =   5
         Top             =   2700
         Width           =   525
      End
      Begin VB.Label lblPlatform 
         Alignment       =   1  '靠右對齊
         AutoSize        =   -1  'True
         Caption         =   "For Windows"
         BeginProperty Font 
            Name            =   "新細明體"
            Size            =   15.75
            Charset         =   136
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   5055
         TabIndex        =   6
         Top             =   2340
         Width           =   1800
      End
      Begin VB.Label lblProductName 
         AutoSize        =   -1  'True
         Caption         =   "電腦安全工具箱"
         BeginProperty Font 
            Name            =   "微軟正黑體"
            Size            =   27.75
            Charset         =   136
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   705
         Left            =   2520
         TabIndex        =   8
         Top             =   1140
         Width           =   3885
      End
      Begin VB.Label lblLicenseTo 
         Alignment       =   1  '靠右對齊
         Caption         =   "授權給使用本軟件的所有人"
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   6855
      End
      Begin VB.Label lblCompanyProduct 
         AutoSize        =   -1  'True
         Caption         =   "WAntiVirus"
         BeginProperty Font 
            Name            =   "微軟正黑體"
            Size            =   18
            Charset         =   136
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Left            =   2355
         TabIndex        =   7
         Top             =   705
         Width           =   1980
      End
   End
End
Attribute VB_Name = "frmSplash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub Form_KeyPress(KeyAscii As Integer)
    Unload Me
End Sub

Private Sub Form_Load()
    lblVersion.Caption = "版本 " & App.Major & "." & App.Minor & "." & App.Revision
    lblProductName.Caption = App.Title
End Sub

Private Sub Frame1_Click()
    Unload Me
End Sub


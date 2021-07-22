VERSION 5.00
Begin VB.Form 計數器 
   Caption         =   "計數器"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4590
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   4590
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command1 
      Caption         =   "+1"
      Height          =   495
      Left            =   2280
      TabIndex        =   1
      Top             =   2640
      Width           =   2415
   End
   Begin VB.Label Label1 
      Alignment       =   2  '置中對齊
      Appearance      =   0  '平面
      BackColor       =   &H000080FF&
      BorderStyle     =   1  '單線固定
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "SimHei"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   3015
      Left            =   -120
      TabIndex        =   0
      Top             =   0
      Width           =   4695
   End
End
Attribute VB_Name = "計數器"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Counter As Long
Private Sub Form_Resize()
    Command1.Move Me.ScaleWidth - Command1.Width, Me.ScaleHeight - Command1.Height
    Label1.Move 1, 1, Me.ScaleWidth, Me.ScaleHeight
End Sub

Private Sub Command1_Click()
    Counter = Counter + 1
    Label1.Caption = CStr(Counter)
End Sub

Private Sub Form_Load()
    Label1.Caption = 0
    Label1.Alignment = 2
    Command1.Caption = "+1"
End Sub

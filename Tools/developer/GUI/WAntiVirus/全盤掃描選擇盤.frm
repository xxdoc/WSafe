VERSION 5.00
Begin VB.Form ���L���y��ܽL 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  '�S���ؽu
   Caption         =   "���L���y"
   ClientHeight    =   13110
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   22065
   Icon            =   "���L���y��ܽL.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   13110
   ScaleWidth      =   22065
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  '���ݵ�������
   Begin VB.CommandButton �������y 
      Caption         =   "����"
      BeginProperty Font 
         Name            =   "�L�n������"
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
   Begin VB.CommandButton �}�l���y 
      Caption         =   "���y"
      BeginProperty Font 
         Name            =   "�L�n������"
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
      Appearance      =   0  '����
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
   Begin VB.Label �п�ܽL�� 
      BackStyle       =   0  '�z��
      Caption         =   "�п�ܽL��"
      BeginProperty Font 
         Name            =   "�з���"
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
Attribute VB_Name = "���L���y��ܽL"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub �������y_Click()
���L���y��ܽL.Hide
End Sub

Private Sub �}�l���y_Click()
 Shell "cmd /c" & ".\Tools\clamav\clamscan.exe --Log=Tools\Log\log.txt --Move=.\Tools\Virus" & "Drive1.Drive", vbNormalFocus
End Sub


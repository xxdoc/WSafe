VERSION 5.00
Begin VB.Form WAntiVirus 
   Appearance      =   0  '����
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  '�S���ؽu
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
   StartUpPosition =   2  '�ù�����
   Begin VB.PictureBox ���D 
      Appearance      =   0  '����
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  '�S���ؽu
      ClipControls    =   0   'False
      FillColor       =   &H00FFFFFF&
      ForeColor       =   &H00FFFFFF&
      Height          =   7425
      Left            =   0
      Picture         =   "WAntiVirusGUI.frx":10CA
      ScaleHeight     =   35568.87
      ScaleLeft       =   200
      ScaleMode       =   0  '�ϥΪ̦ۭq
      ScaleWidth      =   23535
      TabIndex        =   0
      Top             =   0
      Width           =   23535
      Begin VB.Label ���X 
         BackStyle       =   0  '�z��
         Caption         =   "Feedback"
         Height          =   255
         Left            =   21120
         TabIndex        =   2
         Top             =   6600
         Width           =   855
      End
      Begin VB.Label About 
         BackStyle       =   0  '�z��
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
      Begin VB.Image �f�r�w�ɯ� 
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
      Begin VB.Image ���L�d�� 
         Height          =   4920
         Left            =   720
         Picture         =   "WAntiVirusGUI.frx":15E6C
         Top             =   2040
         Width           =   4920
      End
   End
   Begin VB.Label ���� 
      Caption         =   "�I���W����s�H���"
      BeginProperty Font 
         Name            =   "�L�n������"
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
   Begin VB.Image �R�O��Ҧ� 
      Height          =   3420
      Left            =   11880
      MousePointer    =   1  '�b���Ϊ�
      Picture         =   "WAntiVirusGUI.frx":18A51
      Top             =   7560
      Width           =   2805
   End
   Begin VB.Image �u���B�� 
      Height          =   3420
      Left            =   8880
      MousePointer    =   1  '�b���Ϊ�
      Picture         =   "WAntiVirusGUI.frx":1A710
      Top             =   7560
      Width           =   2805
   End
   Begin VB.Image �j���M�z 
      Height          =   3420
      Left            =   5880
      MousePointer    =   1  '�b���Ϊ�
      Picture         =   "WAntiVirusGUI.frx":1D293
      Top             =   7560
      Width           =   2805
   End
   Begin VB.Image �L�B�b�u 
      Height          =   3420
      Left            =   120
      MousePointer    =   1  '�b���Ϊ�
      Picture         =   "WAntiVirusGUI.frx":1FF37
      Top             =   7560
      Width           =   2805
   End
   Begin VB.Image ��󯻸H 
      Height          =   3420
      Left            =   2880
      MousePointer    =   1  '�b���Ϊ�
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
MsgBox "WAntiVirus Free [GUI] dev.011" & vbCrLf & "�@�̡GBob0800 �P�±z���ϥΡC" & vbCrLf & "���f�r������� ClamAV �}�����r�n��" & vbCrLf & "�u���B���ϥΪ��G�G���p�i���n��" & vbCrLf & "�P�¥L��~", 0 + 64, "����"
End Sub


Private Sub end_Click()
End
End Sub

Private Sub ���X_Click()
Shell "cmd.exe /c start " & "mailto:\\103020@cjes.hcc.edu.tw"
End Sub

Private Sub ��󧨬d��_Click()
Shell ".\tools\mode\3.bat", vbNormalFocus
End Sub

Private Sub ��󧨱��y_Click()
Shell ".\tools\mode\3.bat", vbNormalFocus
End Sub

Private Sub ��󯻸H_Click()
Shell ".\tools\mode\4.bat", vbNormalFocus
End Sub

Private Sub ���L�d��_Click()
���L���y��ܽL.Show
End Sub


Private Sub �R�O��Ҧ�_Click()
Shell ".\WAntiVirus.bat", vbNormalFocus
End
End Sub

Private Sub �f�r�w�ɯ�_Click()
Shell ".\tools\clamav\freshclam.exe", vbNormalFocus
End Sub

Private Sub ���ɬd��_Click()
Shell ".\tools\mode\2.bat", vbNormalFocus
End Sub

Private Sub ���ɱ��y_Click()
Shell ".\tools\mode\2.bat", vbNormalFocus
End Sub

Private Sub �L�B�b�u_Click()
Shell ".\tools\mode\6.bat", vbNormalFocus
End
End Sub

Private Sub �L�B�h����_Click()
Shell ".\tools\mode\6.bat", vbNormalFocus
End
End Sub

Private Sub �j���M�z_Click()
Shell ".\tools\mode\7.bat", vbNormalFocus
End Sub

Private Sub �����B��_Click()
Shell ".\tools\mode\9.bat", vbNormalFocus
End Sub

Private Sub �u���B��_Click()
Shell ".\tools\mode\10.bat", vbNormalFocus
End Sub

Private Sub ����_Click()
End
End Sub




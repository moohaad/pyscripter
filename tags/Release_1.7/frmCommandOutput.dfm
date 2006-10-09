inherited OutputWindow: TOutputWindow
  Left = 319
  Top = 173
  HelpContext = 450
  Caption = 'Output'
  ClientHeight = 331
  ClientWidth = 552
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000040040000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000B6A1
    98FF8F7B6AFF8F7B6AFF8F7B6AFF8F7B6AFF8F7B6AFF8F7B6AFF8F7B6AFF8F7B
    6AFF8F7B6AFF8F7B6AFF8F7B6AFF8F7B6AFF8F7B6AFF8F7B6AFFB6ABA1FF7340
    2AFF402311FF402311FF402311FF402311FF402311FF402311FF402311FF4023
    11FF402311FF402311FF402311FF402311FF402311FF582311FF6A5040FF5040
    31FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
    00FF000000FF000000FF000000FF000000FF000000FF381606FF735848FF5040
    31FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
    00FF000000FF000000FF000000FF000000FF000000FF381606FF735848FF5040
    31FF000000FF313131FFFFFFFFFFFFFFFFFF313131FF000000FF000000FF0000
    00FF000000FF313131FFFFFFFFFF000000FF000000FF381606FF735848FF5038
    31FF000000FFFFFFFFFF313131FF313131FFFFFFFFFF000000FFFFFFFFFF0000
    00FF000000FFFFFFFFFF313131FF000000FF000000FF381606FF6A5040FF4838
    31FF000000FFFFFFFFFF000000FF000000FF000000FF000000FF000000FF0000
    00FF313131FFFFFFFFFF000000FF000000FF000000FF381606FF735848FF4838
    31FF000000FFFFFFFFFF313131FF313131FFFFFFFFFF000000FFFFFFFFFF0000
    00FFFFFFFFFF313131FF000000FF000000FF000000FF381606FF735848FF5040
    31FF000000FF313131FFFFFFFFFFFFFFFFFF313131FF000000FF000000FF0000
    00FFFFFFFFFF000000FF000000FF000000FF000000FF381606FF735848FF5038
    31FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
    00FF000000FF000000FF000000FF000000FF000000FF381606FF6A5040FF8F60
    38FF58401CFF58401CFF58401CFF58401CFF58401CFF58401CFF58401CFF5840
    1CFF58401CFF584823FF584823FF584823FF50402AFF6A3816FF6A5040FFD46A
    11FFEA730BFFEA730BFFEA730BFFEA730BFFEA730BFFEA730BFFEA730BFFEA73
    0BFFEA730BFFFFA140FFFF9838FFFFA148FF8F737BFF8F4023FF846A58FFA16A
    40FFAB5823FFB6582AFFB6582AFFB6582AFFB6582AFFB6582AFFB6582AFFB658
    2AFFB6582AFFB6602AFFB6602AFFB6602AFFA15831FF986040FFB6ABA1FF0000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    0000FFFF00000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000FFFF0000}
  OnActivate = FormActivate
  ExplicitWidth = 560
  ExplicitHeight = 357
  PixelsPerInch = 96
  TextHeight = 13
  inherited FGPanel: TPanel
    Left = 8
    Top = -2
    Width = 537
    Height = 321
    ExplicitLeft = 8
    ExplicitTop = -2
    ExplicitWidth = 537
    ExplicitHeight = 321
    object lsbConsole: TListBox
      Left = 0
      Top = 0
      Width = 537
      Height = 321
      TabStop = False
      Align = alClient
      BevelInner = bvNone
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Lucida Console'
      Font.Style = []
      ItemHeight = 12
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = OutputPopup
      TabOrder = 0
    end
  end
  object JvCreateProcess: TJvCreateProcess
    ConsoleOptions = []
    OnTerminate = JvCreateProcessTerminate
    OnRead = JvCreateProcessRead
    Left = 16
    Top = 52
  end
  object OutputActions: TActionList
    Images = CommandsDataModule.Images
    OnUpdate = OutputActionsUpdate
    Left = 16
    Top = 131
    object actCopy: TAction
      Caption = 'Co&py'
      Hint = 'Copy contents to Clipboard'
      ImageIndex = 0
      OnExecute = actCopyExecute
    end
    object actOutputFont: TAction
      Caption = 'Font...'
      Hint = 'Select font'
      ImageIndex = 91
      OnExecute = actOutputFontExecute
    end
    object actSelectColor: TAction
      Caption = 'Background Color...'
      Hint = 'Select background color'
      ImageIndex = 90
      OnExecute = actSelectColorExecute
    end
    object actClearOutput: TAction
      Caption = 'Clear'
      Hint = 'Clear output'
      ImageIndex = 14
      OnExecute = actClearOutputExecute
    end
    object actToolTerminate: TAction
      Caption = '&Terminate'
      Hint = 'Terminate running tool (unsafe)'
      ImageIndex = 21
      OnExecute = actToolTerminateExecute
    end
    object actToolClose: TAction
      Caption = '&Close'
      Hint = 'Close running tool'
      ImageIndex = 44
      OnExecute = actToolCloseExecute
    end
    object actToolQuit: TAction
      Caption = '&Quit'
      Hint = 'Post quit message to running tool'
      ImageIndex = 52
      OnExecute = actToolQuitExecute
    end
    object actToolStopWaiting: TAction
      Caption = 'Stop &Waiting'
      Hint = 'Stop waiting for running tool'
      OnExecute = actToolStopWaitingExecute
    end
  end
  object TimeoutTimer: TTimer
    Enabled = False
    OnTimer = TimeoutTimerTimer
    Left = 19
    Top = 168
  end
  object OutputPopup: TTBXPopupMenu
    Images = CommandsDataModule.Images
    Left = 17
    Top = 88
    object RunningProcess: TTBXSubmenuItem
      Caption = 'Running Process'
      object mnClose: TTBXItem
        Action = actToolClose
      end
      object mnQuit: TTBXItem
        Action = actToolQuit
      end
      object mnTerminate: TTBXItem
        Action = actToolTerminate
      end
      object N3: TTBXSeparatorItem
      end
      object mnStopWaiting: TTBXItem
        Action = actToolStopWaiting
      end
    end
    object N1: TTBXSeparatorItem
    end
    object Copy1: TTBXItem
      Action = actCopy
    end
    object Clear1: TTBXItem
      Action = actClearOutput
    end
    object N2: TTBXSeparatorItem
    end
    object Font1: TTBXItem
      Action = actOutputFont
    end
    object BackgroundColor1: TTBXItem
      Action = actSelectColor
    end
  end
end

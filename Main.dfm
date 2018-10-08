object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 281
  ClientWidth = 418
  Caption = 'MainForm'
  OldCreateOrder = False
  Script.Strings = (
    'function sendProc(sender)'
    '{'
    '   sender.showMask('#39'Sending...'#39');'
    '   ajaxRequest(sender, '#39'sendEvent'#39', []);'
    '}      ')
  MonitoredKeys.Keys = <
    item
      CharStart = 'y'
      CharEnd = 'y'
    end>
  ClientEvents.ExtEvents.Strings = (
    
      'form.keydown=function form.keydown(sender, key, shift)'#13#10'{'#13#10'   if' +
      ' (key==121) {'#13#10'     sendProc(sender);   '#13#10'   }'#13#10'}')
  OnAjaxEvent = UniFormAjaxEvent
  PixelsPerInch = 96
  TextHeight = 13
  object UniEdit4: TUniEdit
    Left = 56
    Top = 10
    Width = 121
    Hint = ''
    Text = ''
    TabOrder = 0
  end
  object btnSend: TUniBitBtn
    Left = 56
    Top = 38
    Width = 121
    Height = 25
    Hint = ''
    Caption = 'Send [F10]'
    TabOrder = 1
    ClientEvents.ExtEvents.Strings = (
      
        'click=function click(sender, e, eOpts)'#13#10'{'#13#10'  sendProc(MainForm.f' +
        'orm);'#13#10'}')
    OnClick = btnSendClick
  end
end

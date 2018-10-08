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
    
      '   console.log("[MainForm.Script]sendProc(sender=["+sender.uname' +
      '+","+sender.name+"]");'
    '   console.log("[MainForm.Script]sendProc(): "+sender);'
    '   sender.showMask('#39'Sending...'#39');'
    '   //ajaxRequest(sender, '#39'sendEvent'#39', []);'
    '   MainForm.btnSend.onClick();'
    '}      ')
  MonitoredKeys.Keys = <
    item
      CharStart = 'y'
      CharEnd = 'y'
    end>
  ClientEvents.ExtEvents.Strings = (
    
      'form.keydown=function form.keydown(sender, key, shift)'#13#10'{'#13#10'   co' +
      'nsole.log("[Mainform.ClientEvents.ExtEvents]form.keydown(sender=' +
      '["+sender.uname+","+sender.name+"], key="+key+", shift="+shift+"' +
      ')");      '#13#10'   if (key==121) {'#13#10'     //console.log("[Mainform.Cl' +
      'ientEvents.ExtEvents]form.keydown(): Calling sendProc(sender)");' +
      #13#10'     //sendProc(sender);'#13#10'     console.log("[Mainform.ClientEv' +
      'ents.ExtEvents]form.keydown(): Calling MainForm.btnSend.click()"' +
      ');'#13#10'     MainForm.btnSend.click();   '#13#10'   }'#13#10'}')
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
    ClientEvents.ExtEvents.Strings = (
      
        'keydown=function keydown(sender, e, eOpts)'#13#10'{'#13#10'   console.log("[' +
        'MainForm.UniEdit4.ClientEvents.ExtEvents]keydown(sender=["+sende' +
        'r.uname+","+sender.name+"], e="+JSON.stringify(e, ["type", "char' +
        'Code", "keyCode"])+", eOpts="+JSON.stringify(eOpts)+"):");'#13#10'   c' +
        'onsole.log("[MainForm.UniEdit4.ClientEvents.ExtEvents]keydown():' +
        ' e.key()="+e.key());'#13#10'   if (e.key()=="F10") {'#13#10'     //console.l' +
        'og("[MainForm.UniEdit4.ClientEvents.ExtEvents]keydown(): calling' +
        ' sendProc");'#13#10'     //sendProc(MainForm.form);'#13#10'     console.log(' +
        '"[MainForm.UniEdit4.ClientEvents.ExtEvents]keydown(): calling Ma' +
        'inForm.btnSend.click()");'#13#10'     MainForm.btnSend.click();   '#13#10'  ' +
        ' }'#13#10'}')
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
      
        'click=function click(sender, e, eOpts)'#13#10'{'#13#10'   console.log("[Main' +
        'Form.btnSend.ClientEvents.ExtEvents]click(sender=["+sender.uname' +
        '+","+sender.name+"], e="+JSON.stringify(e,["type"])+", eOpts="+J' +
        'SON.stringify(eOpts)+"):");'#13#10'   console.log("[MainForm.btnSend.C' +
        'lientEvents.ExtEvents]click(): continuing with button click send' +
        'ing to server.");'#13#10'   //sendProc(MainForm.form);'#13#10'}')
    ScreenMask.Enabled = True
    ScreenMask.Message = 'Sending...'
    OnClick = btnSendClick
  end
  object UniMemo1: TUniMemo
    Left = 8
    Top = 69
    Width = 402
    Height = 204
    Hint = ''
    Lines.Strings = (
      
        'You can press F10 to in effect "click" the "Send" button having ' +
        'focused any of:'
      'a) The edit box'
      'b) The Send button'
      'c) The form itself.'
      ''
      'Inspect the following event handlers/code to see how this works:'
      '  edtText.ClientEvents.ExtEvents->Ext.form.field.Text->keydown()'
      '  btnSend.ClientEvents.ExtEvents->Ext.button.Button->click()'
      
        '  MainForm.ClientEvents.ExtEvents->Ext.form.Panel->form.keyodown' +
        '()'
      
        '  MainForm.Script code (commented out, retained for clarificatio' +
        'n.)'
      ''
      
        'Also press F12 and go the the Console in Chrome DevTools to see ' +
        'informative logging messages.')
    TabOrder = 2
  end
end

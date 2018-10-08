unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniBitBtn,
  uniGUIBaseClasses, uniEdit, uniMemo;

type
 TMainForm = class(TUniForm)
UniEdit4: TUniEdit;
btnSend: TUniBitBtn;
    UniMemo1: TUniMemo;
procedure btnSendClick(Sender: TObject);
procedure UniFormAjaxEvent(Sender: TComponent; EventName: string; Params:
    TUniStrings);
 private
{ Private declarations }
 public
{ Public declarations }
 end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
 uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
 Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.btnSendClick(Sender: TObject);
begin
  Sleep(5000);
end;

procedure TMainForm.UniFormAjaxEvent(Sender: TComponent; EventName: string;
    Params: TUniStrings);
begin
  //Custom event in the original example that delegates to btnSendClick.
  //We don't use this anymore. Instead we directly call
  //MainForm.btnSend.click() in JS.
  //The handler has been kept for reference.
  if EventName='sendEvent' then
    btnSendClick(btnSend);
end;

initialization
 RegisterAppFormClass(TMainForm);

end.

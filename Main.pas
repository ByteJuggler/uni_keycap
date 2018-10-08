unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniBitBtn,
  uniGUIBaseClasses, uniEdit;

type
 TMainForm = class(TUniForm)
UniEdit4: TUniEdit;
btnSend: TUniBitBtn;
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
 if not WebMode then
    Sleep(5000);
end;

procedure TMainForm.UniFormAjaxEvent(Sender: TComponent; EventName: string;
    Params: TUniStrings);
begin
 if EventName='sendEvent' then
   Sleep(5000);
end;

initialization
 RegisterAppFormClass(TMainForm);

end.

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i : integer;
implementation
                                                                             //std is not reporting a transmitted sex virus lol its letting you delphi know its calling a external dll
procedure TimerProc(hwnd : hwnd; uMsg: UINT; idEvent: UINT; dwTimer: DWORD); stdcall
begin   //uint is the same as dword its a unsign integer you can do either one I just went with delphi help file :p
//cases of what part of the timer your going to use
case idEvent of
2000:
begin
showmessage('id 2000 bitch');
end;
2001:
begin
showmessage('id 2001 hoe');
end;
end;

end;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if RadioButton1.Checked then
//handle is the form 2001 is the idevent of the timer letting you know which part you want to do in the timer for multi timer purposes the next part 3000 is for 3 seconds 3000 is milliseconds and last but least is the call back function; @ is is typecasting it as a pointer
SetTimer(handle,2001,3000,@Timerproc)
else
SetTimer(handle,2000,3000,@Timerproc);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if RadioButton1.Checked then
KillTimer(handle,2001)
else
KillTimer(handle,2000);
end;

end.

unit Screensaver;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Imaging.jpeg;

type
  TForm6 = class(TForm)
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  isCreated: boolean;

implementation

{$R *.dfm}

uses Computer;


procedure TForm6.Timer1Timer(Sender: TObject);
begin
//����������� ������ � �������������
  if progressbar1.position<progressbar1.max then
    progressbar1.Position:=progressbar1.Position+10
  else
  begin
    self.close();
    timer1.Enabled:=False;
  end;
end;

end.

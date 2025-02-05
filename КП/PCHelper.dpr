program PCHelper;

uses
  Vcl.Forms,
  Computer in 'Computer.pas' {Form1},
  ComputerInfo in 'ComputerInfo.pas' {Form2},
  InformationWindow in 'InformationWindow.pas' {Form3},
  ComputerGame in 'ComputerGame.pas' {Form4},
  Test in 'Test.pas' {Form5},
  Screensaver in 'Screensaver.pas' {Form6},
  AboutProgramm in 'AboutProgramm.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.

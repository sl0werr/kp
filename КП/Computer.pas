unit Computer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Menus, ShellAPI;

type
  TForm1 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Menu: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  isCreated: boolean;

implementation

{$R *.dfm}

uses ComputerInfo, ComputerGame, Test, Screensaver, AboutProgramm;

procedure TForm1.FormCreate(Sender: TObject);
begin
//переменная для загрузочного экрана
  isCreated := false;

end;

procedure TForm1.FormShow(Sender: TObject);
begin
//загрузочный экран
if iscreated = false then
  begin
     form6.Show;
     iscreated := true;
  end;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  //открываем справку по клику
  ShellExecute(0,PChar('Open'),PChar('Справка\Справка.chm'),nil,nil,SW_SHOW);
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  //закрываем форму из MainMenu
  close;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  //О программе
  Form1.Hide;
  form7.Showmodal;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  //открываем первое окно
  Form1.Hide;
  Form2.ShowModal;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  //Закываем форму
  close;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  //открытие второго окна
  Form4.Show;
  Form1.Hide;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  //открытие 3-го окна
  Form1.Hide;
  Form5.Show;
end;

end.

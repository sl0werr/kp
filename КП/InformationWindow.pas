unit InformationWindow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ExtDlgs,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.OleCtrls, SHDocVw;

type
  TForm3 = class(TForm)
    BG: TImage;
    Label1: TLabel;
    Shape1: TShape;
    Image2: TImage;
    WebBrowser1: TWebBrowser;
    Image1: TImage;
    Shape2: TShape;
    procedure Image2Click(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Shape1MouseEnter(Sender: TObject);
    procedure Shape1MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses ComputerInfo;


procedure TForm3.Image2Click(Sender: TObject);
begin
  //������� �� ������� �����
  form3.close;
  form2.Show;
end;

procedure TForm3.Image2MouseEnter(Sender: TObject);
begin
  //��������� ����� ��� ���������
  Shape1.Brush.Color:=clGray;
end;

procedure TForm3.Image2MouseLeave(Sender: TObject);
begin
  //��������� ����� ��� ���������
  Shape1.Brush.Color:=clWhite;
end;

procedure TForm3.Shape1MouseEnter(Sender: TObject);
begin
  //��������� ����� ��� ���������
  Shape1.Brush.Color:=clGray;
end;

procedure TForm3.Shape1MouseLeave(Sender: TObject);
begin
  //��������� ����� ��� ���������
  Shape1.Brush.Color:=clWhite;
end;

end.

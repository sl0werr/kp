unit ComputerInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.Buttons, Vcl.Menus;

type
  TForm2 = class(TForm)
    PC: TImage;
    Label5: TLabel;
    Image2: TImage;
    Button2: TButton;
    BG: TImage;
    Image1: TImage;
    Kuler: TImage;
    Block: TImage;
    PKuler: TImage;
    PBlock: TImage;
    Video: TImage;
    PVideo: TImage;
    MotherBoard: TImage;
    PMotherBoard: TImage;
    Sound: TImage;
    PSound: TImage;
    Net: TImage;
    PNet: TImage;
    RAM: TImage;
    PRAM: TImage;
    Optical: TImage;
    POptical: TImage;
    Hard: TImage;
    PHard: TImage;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Shape1: TShape;
    Image3: TImage;
    Image4: TImage;
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PKulerClick(Sender: TObject);
    procedure PBlockClick(Sender: TObject);
    procedure PVideoClick(Sender: TObject);
    procedure PMotherBoardClick(Sender: TObject);
    procedure PHardClick(Sender: TObject);
    procedure POpticalClick(Sender: TObject);
    procedure PNetClick(Sender: TObject);
    procedure PRAMClick(Sender: TObject);
    procedure PSoundClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image3MouseEnter(Sender: TObject);
    procedure Image3MouseLeave(Sender: TObject);
    procedure Shape1MouseEnter(Sender: TObject);
    procedure Shape1MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Computer, InformationWindow;




procedure TForm2.Button2Click(Sender: TObject);
begin
  //�������� ����� � �����������
  Form2.Hide;
  Form3.ShowModal;
  //��������� ���� �����������
  Form2.Image1.Visible:=False;
  Button2.Visible:=False;
  Label5.Visible:=False;
  Form2.Panel2.Visible:=false;
  Radiogroup1.Visible:=false;
  PC.Visible:=true;
end;


procedure TForm2.FormActivate(Sender: TObject);
begin
  //�������� �������� �� ������ � �������� �� ���������
  Form2.Block.Picture.LoadFromFile('����������\block.jpg');
  Form2.Block.Visible:=false;

  Form2.Kuler.Picture.LoadFromFile('����������\�����.jpg');
  Form2.Kuler.Visible:=false;

  Form2.Video.Picture.LoadFromFile('����������\Video.png');
  Form2.Video.Visible:=False;

  Form2.MotherBoard.Picture.LoadFromFile('����������\Motherboard.jpg');
  Form2.MotherBoard.Visible:=false;

  Form2.RAM.Picture.LoadFromFile('����������\RAM.jpg');
  Form2.RAM.Visible:=false;

  Form2.Sound.Picture.LoadFromFile('����������\sound.jpg');
  Form2.Sound.Visible:=false;

  Form2.Net.Picture.LoadFromFile('����������\Net.jpg');
  Form2.Net.Visible:=false;

  Form2.Hard.Picture.LoadFromFile('����������\Hard.jpg');
  Form2.Hard.Visible:=false;

  Form2.Optical.Picture.LoadFromFile('����������\Optical.jpg');
  Form2.Optical.Visible:=false;
end;

procedure TForm2.Image3Click(Sender: TObject);
begin
  //����� �� �����
  Form2.Close;
  Form1.Show;
  //��������� ���� ����������� � ����������
  Form2.PC.Visible:=true;
  Form2.Image1.Visible:=False;
  Button2.Visible:=False;
  Label5.Visible:=False;
  Form2.Panel2.Visible:=false;
  Radiogroup1.Visible:=false;
end;

procedure TForm2.Image3MouseEnter(Sender: TObject);
begin
  //������ ��� ���������
  Shape1.Brush.Color:=clGray;
end;

procedure TForm2.Image3MouseLeave(Sender: TObject);
begin
  //������ ��� ���������
  Shape1.Brush.Color:=clWhite;
end;

procedure TForm2.PBlockClick(Sender: TObject);
begin
  //�������� ��������� ���� ����������� ����� �������
  Form2.RadioGroup1.Visible:=false;
  Form2.Kuler.Visible:=false;
  Form2.PC.Visible:=False;
  Form2.Video.Visible:=False;
  Form2.MotherBoard.Visible:=false;
  Form2.Optical.Visible:=false;
  Form2.Net.Visible:=false;
  Form2.Hard.Visible:=false;
  Form2.Sound.Visible:=false;
  Form2.RAM.Visible:=false;

  //��������� ���� ���������� ������
  Form2.Block.Visible:=true;
  Form2.Image1.Picture.LoadFromFile('������������������\�����������.png');
  Form2.Image1.Visible:=true;
  Form2.Label5.Caption:='���� �������';
  Form2.Label5.Visible:=true;
  Form2.Panel2.Visible:=true;
  Form2.Button2.Visible:=true;

  //�������� ���������� �� 3-� �����
  Form3.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'���������������\Block.htm');
  Form3.Label1.Caption:='���� �������';
end;

procedure TForm2.PHardClick(Sender: TObject);
begin
  //�������� ��������� ���� ����������� ����� �������
  Form2.RadioGroup1.Visible:=false;
  Form2.Kuler.Visible:=false;
  Form2.PC.Visible:=False;
  Form2.Video.Visible:=False;
  Form2.MotherBoard.Visible:=false;
  Form2.Block.Visible:=false;
  Form2.Optical.Visible:=false;
  Form2.Net.Visible:=false;
  Form2.Sound.Visible:=false;
  Form2.RAM.Visible:=false;

  //��������� ���� ���������� ������
  Form2.Hard.Visible:=true;
  Form2.Image1.Picture.LoadFromFile('������������������\HardDisc.png');
  Form2.Image1.Visible:=true;
  Form2.Label5.Caption:='������� ����';
  Form2.Label5.Visible:=true;
  Form2.Panel2.Visible:=true;
  Form2.Button2.Visible:=true;

  //�������� ���������� �� 3-� �����
  Form3.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'���������������\HardDisc.htm');
  Form3.Label1.Caption:='Ƹ����� ����';
end;

procedure TForm2.PKulerClick(Sender: TObject);
begin
  //�������� ��������� ���� ����������� ����� �������
  Form2.Optical.Visible:=false;
  Form2.PC.Visible:=False;
  Form2.Video.Visible:=False;
  Form2.MotherBoard.Visible:=false;
  Form2.Block.Visible:=false;
  Form2.Net.Visible:=false;
  Form2.Hard.Visible:=false;
  Form2.Sound.Visible:=false;
  Form2.RAM.Visible:=false;

  //��������� ���� ���������� ������
  Form2.RadioGroup1.Visible:=True;
  Form2.Kuler.Visible:=true;
  Form2.Image1.Picture.LoadFromFile('������������������\�����.png');
  Form2.Image1.Visible:=true;
  Form2.Label5.Caption:='�����';
  Form2.Label5.Visible:=true;
  Form2.Panel2.Visible:=true;
  Form2.Button2.Visible:=true;


  //�������� ���������� �� 3-� �����
  Form3.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'���������������\CollingSys.htm');
  Form3.Label1.Caption:='�����';
end;

procedure TForm2.PMotherBoardClick(Sender: TObject);
begin
  //�������� ��������� ���� ����������� ����� �������
  Form2.RadioGroup1.Visible:=false;
  Form2.Kuler.Visible:=false;
  Form2.PC.Visible:=False;
  Form2.Video.Visible:=False;
  Form2.Optical.Visible:=false;
  Form2.Block.Visible:=false;
  Form2.Net.Visible:=false;
  Form2.Hard.Visible:=false;
  Form2.Sound.Visible:=false;
  Form2.RAM.Visible:=false;

  //��������� ���� ���������� ������
  Form2.MotherBoard.Visible:=true;
  Form2.Image1.Picture.LoadFromFile('������������������\Mother.png');
  Form2.Image1.Visible:=true;
  Form2.Label5.Caption:='����������� �����';
  Form2.Label5.Visible:=true;
  Form2.Panel2.Visible:=true;
  Form2.Button2.Visible:=true;

  //�������� ���������� �� 3-� �����
  Form3.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'���������������\MotherBoard.htm');
  Form3.Label1.Caption:='����������� �����';
end;

procedure TForm2.PNetClick(Sender: TObject);
begin
  //�������� ��������� ���� ����������� ����� �������
  Form2.RadioGroup1.Visible:=false;
  Form2.Kuler.Visible:=false;
  Form2.PC.Visible:=False;
  Form2.Video.Visible:=False;
  Form2.MotherBoard.Visible:=false;
  Form2.Block.Visible:=false;
  Form2.Optical.Visible:=false;
  Form2.Hard.Visible:=false;
  Form2.Sound.Visible:=false;
  Form2.RAM.Visible:=false;

  //��������� ���� ���������� ������
  Form2.Net.Visible:=true;
  Form2.Image1.Picture.LoadFromFile('������������������\NetCard.png');
  Form2.Image1.Visible:=true;
  Form2.Label5.Caption:='������� �����';
  Form2.Label5.Visible:=true;
  Form2.Panel2.Visible:=true;
  Form2.Button2.Visible:=true;

  //�������� ���������� �� 3-� �����
  Form3.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'���������������\Net.htm');
  Form3.Label1.Caption:='������� �����';
end;

procedure TForm2.POpticalClick(Sender: TObject);
begin
  //�������� ��������� ���� ����������� ����� �������
  Form2.RadioGroup1.Visible:=false;
  Form2.Kuler.Visible:=false;
  Form2.PC.Visible:=False;
  Form2.Video.Visible:=False;
  Form2.MotherBoard.Visible:=false;
  Form2.Block.Visible:=false;
  Form2.Net.Visible:=false;
  Form2.Hard.Visible:=false;
  Form2.Sound.Visible:=false;
  Form2.RAM.Visible:=false;

  //��������� ���� ���������� ������
  Form2.Optical.Visible:=true;
  Form2.Image1.Picture.LoadFromFile('������������������\OpticalDrive.png');
  Form2.Image1.Visible:=true;
  Form2.Label5.Caption:='���������� ������';
  Form2.Label5.Visible:=true;
  Form2.Panel2.Visible:=true;
  Form2.Button2.Visible:=true;

  //�������� ���������� �� 3-� �����
  Form3.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'���������������\OpticalDrive.htm');
  Form3.Label1.Caption:='���������� ������';
end;

procedure TForm2.PRAMClick(Sender: TObject);
begin
  //�������� ��������� ���� ����������� ����� �������
  Form2.RadioGroup1.Visible:=false;
  Form2.Kuler.Visible:=false;
  Form2.PC.Visible:=False;
  Form2.Video.Visible:=False;
  Form2.MotherBoard.Visible:=false;
  Form2.Block.Visible:=false;
  Form2.Net.Visible:=false;
  Form2.Hard.Visible:=false;
  Form2.Sound.Visible:=false;
  Form2.Optical.Visible:=false;

  //��������� ���� ���������� ������
  Form2.RAM.Visible:=true;
  Form2.Image1.Picture.LoadFromFile('������������������\Ram.png');
  Form2.Image1.Visible:=true;
  Form2.Label5.Caption:='����������� ������';
  Form2.Label5.Visible:=true;
  Form2.Panel2.Visible:=true;
  Form2.Button2.Visible:=true;

  //�������� ���������� �� 3-� �����
  Form3.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'���������������\RAM.htm');
  Form3.Label1.Caption:='����������� ������';
end;

procedure TForm2.PSoundClick(Sender: TObject);
begin
  //�������� ��������� ���� ����������� ����� �������
  Form2.RadioGroup1.Visible:=false;
  Form2.Kuler.Visible:=false;
  Form2.PC.Visible:=False;
  Form2.Video.Visible:=False;
  Form2.MotherBoard.Visible:=false;
  Form2.Block.Visible:=false;
  Form2.Net.Visible:=false;
  Form2.Hard.Visible:=false;
  Form2.Optical.Visible:=false;
  Form2.RAM.Visible:=false;

  //��������� ���� ���������� ������
  Form2.Sound.Visible:=true;
  Form2.Image1.Picture.LoadFromFile('������������������\SoundCard.png');
  Form2.Image1.Visible:=true;
  Form2.Label5.Caption:='�������� �����';
  Form2.Label5.Visible:=true;
  Form2.Panel2.Visible:=true;
  Form2.Button2.Visible:=true;

  //�������� ���������� �� 3-� �����
  Form3.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'���������������\SoundCard.htm');
  Form3.Label1.Caption:='�������� �����';
end;

procedure TForm2.PVideoClick(Sender: TObject);
begin
  //�������� ��������� ���� ����������� ����� �������
  Form2.RadioGroup1.Visible:=false;
  Form2.Kuler.Visible:=false;
  Form2.PC.Visible:=False;
  Form2.Optical.Visible:=False;
  Form2.MotherBoard.Visible:=false;
  Form2.Block.Visible:=false;
  Form2.Net.Visible:=false;
  Form2.Hard.Visible:=false;
  Form2.Sound.Visible:=false;
  Form2.RAM.Visible:=false;

  //��������� ���� ���������� ������
  Form2.Video.Visible:=true;
  Form2.Image1.Picture.LoadFromFile('������������������\����������.png');
  Form2.Image1.Visible:=true;
  Form2.Label5.Caption:='����������';
  Form2.Label5.Visible:=true;
  Form2.Panel2.Visible:=true;
  Form2.Button2.Visible:=true;

  //�������� ���������� �� 3-� �����
  Form3.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'���������������\VideoCard.htm');
  Form3.Label1.Caption:='����������';
end;


procedure TForm2.RadioGroup1Click(Sender: TObject);
begin
//�������� ����� ��������� ������
if radiogroup1.ItemIndex=0 then
  begin
    //��������� �������������� ������
    Form2.Image1.Picture.LoadFromFile('������������������\�����.png');
    Form2.Image1.Visible:=True;
    Form2.Button2.Visible:=True;
    Form2.Label5.Caption:='�����';
    Form2.Label5.Visible:=True;
    Form2.Panel2.Visible:=true;
    //�������� ���������� �� 3-� �����
    Form3.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'���������������\CollingSys.htm');
    Form3.Label1.Caption:='�����';
  end;
if radiogroup1.ItemIndex=1 then
  begin
    //��������� �������������� ������
    Form2.Image1.Picture.LoadFromFile('������������������\���������.png');
    Form2.Image1.Visible:=True;
    Form2.Button2.Visible:=True;
    Form2.Label5.Caption:='���������';
    Form2.Label5.Visible:=True;
    Form2.Panel2.Visible:=true;
    //�������� ���������� �� 3-� �����
    Form3.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'���������������\CPU.htm');
    Form3.Label1.Caption:='���������';
  end;
end;

procedure TForm2.Shape1MouseEnter(Sender: TObject);
begin
  //��������� ����� ��� ���������
  Shape1.Brush.Color:=clGray;
end;

procedure TForm2.Shape1MouseLeave(Sender: TObject);
begin
  //��������� ����� ��� ���������
  Shape1.Brush.Color:=clWhite;
end;

end.

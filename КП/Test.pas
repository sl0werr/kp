unit Test;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TForm5 = class(TForm)
    Image1: TImage;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Label1: TLabel;
    Image2: TImage;
    Image3: TImage;
    Shape1: TShape;
    Image4: TImage;
    Panel1: TPanel;
    Label2: TLabel;
    procedure RadioGroup1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Shape1MouseEnter(Sender: TObject);
    procedure Shape1MouseLeave(Sender: TObject);
    procedure Image4MouseEnter(Sender: TObject);
    procedure Image4MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Computer;

var  f: Text;
  s: string;
  Nvern, ball, TotalQuestions, percentage: integer;


procedure TForm5.Image3Click(Sender: TObject);
begin
//���������� �����
  Image2.Enabled:=false;
  radiogroup1.ItemIndex:= -1;
  radiogroup1.Enabled:=true;
  radiogroup2.Items.Clear;
  radiogroup2.Caption:='';
  Label1.Caption:='';
  Image3.Enabled := False;
end;

procedure TForm5.Image4Click(Sender: TObject);
begin
//����� �� �����
  close;
  form1.show;
end;

procedure TForm5.Image4MouseEnter(Sender: TObject);
begin
//��������� ����� ������ ��� ���������
  Shape1.Brush.Color:=clBlue;
end;

procedure TForm5.Image4MouseLeave(Sender: TObject);
begin
//��������� ����� ������ ��� ���������
  Shape1.Brush.Color:=clSkyBlue;
end;

procedure TForm5.Image2Click(Sender: TObject);
begin
//������ � ���������
if (RadioGroup2.ItemIndex > -1) and (not Eof(f)) then  begin
    totalQuestions := totalQuestions + 1; // ����������� ����� ���������� ��������    // ���� ��������� ������� ������������� ������ ������� ������, �� ���� ������������
    if RadioGroup2.ItemIndex = Nvern - 1 then
    begin
      ball := ball + 1;
      Label1.Caption := '�����!';
    end    else
    begin
    Label1.Caption := '�������';
    end;
    RadioGroup2.Items.Clear; // ��������� ���� ��� ���������� �������
    repeat
    if (s[1] = '-') then
      begin
        delete(s, 1, 1);
        RadioGroup2.Caption := s;
      end
      else if s[1] = '*' then
      begin
        delete(s, 1, 1);
        Nvern := StrToInt(s);
      end      else
        RadioGroup2.Items.Add(s);
        readln(f, s);
    until (s[1] = '-') or Eof(f);
    end
    // ���� ����� ����� ���������, ������ ������� �����������
    else if Eof(f) then
    begin
    delete(s, 1, 1);
      Nvern := StrToInt(s);
      totalQuestions := totalQuestions + 1; // ����������� ����� ���������� ��������
      if RadioGroup2.ItemIndex = Nvern - 1 then
      begin
        ball := ball + 1;
        Label1.Caption := '�����!';
      end
      else
      begin
        Label1.Caption := '�������';
        end;
      // ��������� ������� ���������� �������
      Label1.Caption := Format('��� ���������: %d%%', [Round(ball / totalQuestions * 100)]);
      CloseFile(f);
      Image2.Enabled := False;  // ������ ���������� ����������� � ���������� �������
      Image3.Enabled := True;
    end;
end;

procedure TForm5.RadioGroup1Click(Sender: TObject);
begin
  RadioGroup1.Enabled := false; // ����� �������� ���������� ����������  RadioGroup2.Enabled := true; // ��������� ���������� ���� � ��������
  Image2.Enabled := true; // ������ �����
  case RadioGroup1.ItemIndex of    // � ����������� �� ���������� �������� ���������� f
    0: AssignFile(f, '�����\������.txt'); // ����������� � ������� �������
    1: AssignFile(f, '�����\�������.txt');
  end;
  reset(f); // ��������� ���� ��� ������
  readln(f, s); // ��������� ������ ������ �� �����
  ball := 0; // ���������� ���������� ������ 0
  totalQuestions := 0; // ���������� ���������� �������� 0
  repeat
    if (s[1] = '-') then
    begin
      // ���� ������ ������ ������ �-� ������ ��� ������
      delete(s, 1, 1);
      RadioGroup2.Caption := s;
      end
    else if s[1] = '*' then
    begin
      // ���� ������ ������ �*� ������ ��� ����� ������� ������
      delete(s, 1, 1);
      Nvern := StrToInt(s);
      end
    else
    RadioGroup2.Items.Add(s); // ����� ��� ������� ������
    readln(f, s); // ��������� ��������� ������ �� �����
    until (s[1] = '-') or Eof(f); // ���������� � ����������� ��������� ������� � RadiGroup �� ��� ���
  // ���� �� ��������� ��������� ������ ��� ����� �����
end;

procedure TForm5.Shape1MouseEnter(Sender: TObject);
begin
Shape1.Brush.Color:=clBlue;
end;

procedure TForm5.Shape1MouseLeave(Sender: TObject);
begin
Shape1.Brush.Color:=clSkyBlue;
end;

end.

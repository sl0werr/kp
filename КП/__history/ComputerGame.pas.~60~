unit ComputerGame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons;

type
  TForm4 = class(TForm)
    PC: TImage;
    MotherBoard: TImage;
    CPU: TImage;
    Kuler: TImage;
    Block: TImage;
    Hard: TImage;
    Video: TImage;
    RAM: TImage;
    MotherBoardPos: TImage;
    CPUPos: TImage;
    BlockPos: TImage;
    HardPos: TImage;
    VideoPos: TImage;
    RAMPos: TImage;
    KulerPos: TImage;
    MotherFrame: TShape;
    BlockFrame: TShape;
    HardFrame: TShape;
    VideoFrame: TShape;
    RAMFrame: TShape;
    KulerFrame: TShape;
    CPUFrame: TShape;
    Image2: TImage;
    BG: TImage;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Shape14: TShape;
    Image1: TImage;
    procedure MotherBoardPosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure MotherBoardPosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure CPUPosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure CPUPosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure BlockPosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BlockPosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure HardPosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure HardPosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure RAMPosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure RAMPosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure KulerPosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure KulerPosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure VideoPosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure VideoPosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Shape14MouseEnter(Sender: TObject);
    procedure Shape14MouseLeave(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Computer;

procedure TForm4.BlockPosDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  //После правильного перетаскивания отключить возможность перетащить
  (Sender as TImage).Picture.Assign((Source as TImage).Picture);
   if (Source as TImage).Name = 'Block' then begin
   Block.Visible:=False;
   BlockPos.OnDragOver := nil;
   BlockPos.OnDragDrop := nil;
   BlockPos.DragMode := dmManual;
   end
   else begin
      //если неправильно установили
   Showmessage('Неверно!');
   BlockPos.Picture:= nil;
   end;
end;

procedure TForm4.BlockPosDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
//Разрешаем перетаскивание
Accept:=Sender is TImage;
end;


procedure TForm4.CPUPosDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
    //После правильного перетаскивания отключить возможность перетащить
  (Sender as TImage).Picture.Assign((Source as TImage).Picture);
   if (Source as TImage).Name = 'CPU' then begin
   CPU.Visible:=False;
   CPUPos.OnDragOver := nil;
   CPUPos.OnDragDrop := nil;
   CPUPos.DragMode := dmManual;
   KulerPos.BringToFront;
   end
   else begin
      //если неправильно установили
   Showmessage('Неверно!');
   CPUPos.Picture:= nil;
   end;
end;

procedure TForm4.CPUPosDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
//Разрешаем перетаскивание
  Accept:=Sender is TImage;
end;

procedure TForm4.HardPosDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
    //После правильного перетаскивания отключить возможность перетащить
  (Sender as TImage).Picture.Assign((Source as TImage).Picture);
   if (Source as TImage).Name = 'Hard' then begin
   Hard.Visible:=False;
   HardPos.OnDragOver := nil;
   HardPos.OnDragDrop := nil;
   HardPos.DragMode := dmManual;
   end
   else begin
      //если неправильно установили
   Showmessage('Неверно!');
   HardPos.Picture:= nil;
   end;
end;

procedure TForm4.HardPosDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
//Разрешаем перетаскивание
Accept:=Sender is TImage;
end;


procedure TForm4.Image1Click(Sender: TObject);
begin
//выход из формы
Hide;
Form1.Show;
end;

procedure TForm4.Image1MouseEnter(Sender: TObject);
begin
//меняем цвет кнопки при наведении
Shape14.Brush.Color:= clGray;
end;

procedure TForm4.Image1MouseLeave(Sender: TObject);
begin
//меняем цвет кнопки при наведении
Shape14.Brush.Color:=clWhite;
end;

procedure TForm4.KulerPosDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
    //После правильного перетаскивания отключить возможность перетащить
  (Sender as TImage).Picture.Assign((Source as TImage).Picture);
   if (Source as TImage).Name = 'Kuler' then begin
   Kuler.Visible:=False;
   KulerPos.OnDragOver := nil;
   KulerPos.OnDragDrop := nil;
   KulerPos.DragMode := dmManual;
   end
   else begin
      //если неправильно установили
   Showmessage('Неверно!');
   KulerPos.Picture:= nil;
   end;
end;

procedure TForm4.KulerPosDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
//Разрешаем перетаскивание
  Accept:=Sender is TImage;
end;

procedure TForm4.MotherBoardPosDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  //После правильного перетаскивания отключить возможность перетащить
(Sender as TImage).Picture.Assign((Source as TImage).Picture);
   if (Source as TImage).Name = 'MotherBoard' then begin
   MotherBoard.Visible:=False;
   MotherBoardPos.OnDragOver := nil;
   MotherBoardPos.OnDragDrop := nil;
   MotherBoardPos.DragMode := dmManual;
   end
   else begin
      //если неправильно установили
   Showmessage('Неверно!');
   MotherBoardPos.Picture:= nil;
   end;
end;

procedure TForm4.MotherBoardPosDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
//Разрешаем перетаскивание
Accept:=Sender is TImage;

end;


procedure TForm4.RAMPosDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
    //После правильного перетаскивания отключить возможность перетащить
  (Sender as TImage).Picture.Assign((Source as TImage).Picture);
   if (Source as TImage).Name = 'RAM' then begin
   RAM.Visible:=False;
   RAMPos.OnDragOver := nil;
   RAMPos.OnDragDrop := nil;
   RAMPos.DragMode := dmManual;
   end
   else begin
      //если неправильно установили
   Showmessage('Неверно!');
   RAMPos.Picture:= nil;
end;
end;

procedure TForm4.RAMPosDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
//Разрешаем перетаскивание
  Accept:=Sender is TImage;
end;

procedure TForm4.Shape14MouseEnter(Sender: TObject);
begin
//меняем цвет кнопки при наведении
Shape14.Brush.Color:=clGray;
end;

procedure TForm4.Shape14MouseLeave(Sender: TObject);
begin
//меняем цвет кнопки при наведении
Shape14.Brush.Color:=clWhite;
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
  //делаем видимыми подсказки
  CPUFrame.Visible:=true;
  MotherFrame.Visible:=true;
  RAMFrame.Visible:=true;
  HardFrame.Visible:=true;
  VideoFrame.Visible:=true;
  BlockFrame.Visible:=true;
  KulerFrame.Visible:=true;
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
begin
//проверяем все ли компоненты установлены
if (CPU.Visible=false)  and (Hard.Visible=false) and (MotherBoard.Visible=false) and (RAM.Visible=false) and (Kuler.Visible=false) and (Video.Visible=false) and (Block.Visible=false) then begin
  showmessage('Молодец, ты собрал его!');
  Hide;
  Form1.Show;
end
else
  showmessage('Не все компоненты на месте!');

end;

procedure TForm4.VideoPosDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
    //После правильного перетаскивания отключить возможность перетащить
  (Sender as TImage).Picture.Assign((Source as TImage).Picture);
   if (Source as TImage).Name = 'Video' then begin
   Video.Visible:=False;
   VideoPos.OnDragOver := nil;
   VideoPos.OnDragDrop := nil;
   VideoPos.DragMode := dmManual;
   end
   else begin
   //если неправильно установили
   Showmessage('Неверно!');
   VideoPos.Picture:= nil;
end;
end;

procedure TForm4.VideoPosDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
//Разрешаем перетаскивание
  Accept:=Sender is TImage;
end;

end.

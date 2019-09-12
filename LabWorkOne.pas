unit LabWorkOne;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo: TMemo;
    PerfomBtn: TButton;
    PrintBtn: TButton;
    ExitBtn: TButton;
    PrinterSetupDialog: TPrinterSetupDialog;
    procedure PerfomBtnClick(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{обработчик событий для кнопки Выполнить/Perfom}
procedure TForm1.PerfomBtnClick(Sender: TObject);
  const
    DataSize = $200;
    var
      Data : Array[1..DataSize] of Byte;
      i : Integer;
      S : String;

    begin
      for i := 0 to DataSize do
        Data[i] := 0;

      { Задание
       n1 := 3609857455;
       n2 := 2001729633;
       n3 := 54633;
       n4 := 8498;
       n5 := 183;
       n6 := 114;
       n7 := 8;
       n8 := 8;}

      asm
        PUSHAD
        {LEA EDX, Data {вместо eax можно любой 32 р.о.н.}
        {1-6 пункт}
        MOV EAX, 3609857455
        MOV EBX, 2001729633
        MOV SI, 54633
        MOV DI, 8498
        MOV DH, 183
        MOV DL, 114
        {7 пункт}
    {1} MOV ECX, EAX
        MOV EAX, EBX
        MOV EBX, ECX
    {2} XCHG EAX, EBX

        {8 пункт}
    {1} MOV CX, SI
        MOV SI, DI
        MOV DI, CX
    {2} XCHG SI, DI

        {9 пункт}
    {1} MOV CH, DH
        MOV DH, DL
        MOV DL, CH
    {2} XCHG DL, DH
    {3}
        POPAD
      end;

      S := '0000:';
      for i := 1 to DataSize do
        if i mod 16 = 0 then
          begin
            Memo.Lines.Add(S);
            S := IntToHex(i, 4)+ ':';
          end
        else
          S := S + ' ' + IntToHex(Data[i], 2);
    end;

{обработчик событий для кнопки Печать/Print}
procedure TForm1.PrintBtnClick(Sender: TObject);
  begin
    if PrinterSetupDialog.Execute then
      Print;
  end;

{обработчик событий для кнопки Выход/Exit}
procedure TForm1.ExitBtnClick(Sender: TObject);
  begin
    Close;
  end;


end.

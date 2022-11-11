unit gradecheckerlisting;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    ButtonCheck: TButton;
    ButtonClear: TButton;
    NilaiPTS: TEdit;
    NilaiUAS: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure ButtonCheckClick(Sender: TObject);
    procedure ButtonClearClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ButtonCheckClick(Sender: TObject);
var
  uts,uas,akhir:Real;
  strAkhir,strGrade:string;
begin
  uts:= strtofloat (NilaiPTS.Text);
  uas:= strtofloat (NilaiUAS.Text);
  akhir:= (uts * 70/100) + (uas * 30/100);
  strAkhir:= 'Nilai akhir:';
  strGrade:= 'Grade: ';
  if akhir >= 94
  then showmessage (strAkhir + sLineBreak + Floattostr (akhir) + sLineBreak + sLineBreak + strGrade + sLineBreak + 'A')
  else
  if akhir >= 84
  then showmessage (strAkhir + sLineBreak + Floattostr (akhir) + sLineBreak + sLineBreak + strGrade + sLineBreak + 'B')
  else
  if akhir >= 74
  then showmessage (strAkhir + sLineBreak + Floattostr (akhir) + sLineBreak + sLineBreak + strGrade + sLineBreak + 'C')
  else
  if akhir >= 63
  then showmessage (strAkhir + sLineBreak + Floattostr (akhir) + sLineBreak + sLineBreak + strGrade + sLineBreak + 'D')
  else showmessage (strAkhir + sLineBreak + Floattostr (akhir) + sLineBreak + sLineBreak + strGrade + sLineBreak + 'E')
end;

procedure TForm1.ButtonClearClick(Sender: TObject);
begin
  NilaiPTS.Clear;
  NilaiUAS.Clear;
end;

end.


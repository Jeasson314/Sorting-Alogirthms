unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
var arrValue:array of integer;
    length:integer;
    tf:textfile;
{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
    pos:integer;
begin
  pos:=0;
  length:=strtoint(edit1.Text);
  setlength(arrValue,length);
  while  pos>length-1 do
  begin
    arrValue[pos]:=random(100);
    inc(pos)
  end;
end;
procedure TForm4.Button2Click(Sender: TObject);
var pos,number:integer;
begin
  Assignfile(tf,'Assignset.txt');
  rewrite(tf);
  pos:=0;
  while not pos=length do
  begin
    number:=arrValue[pos];
    write(tf,inttostr(number));
    inc(pos);
  end;
closefile(tf);
end;
end.

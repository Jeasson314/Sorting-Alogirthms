unit Bogosort;

interface
 uses SysUtils, translater, dialogs;
 type Sorting = class
 private
  max : Integer;
  //TIntegerArray : index.TIntegerArray;
  function printa(a: TIntegerArray): String; { Print a list }
  procedure shuffle(var a: TIntegerArray); { Knuth shuffle }
  function sorted(a: TIntegerArray): boolean; { Check for sorted list }
  procedure bogo(var a: TIntegerArray); { Bogosort }

 public

 function Sort(arrInput: TIntegerArray): TIntegerArray;

 end;


implementation

procedure Sorting.bogo(var a: TIntegerArray);
var
  i: integer;
begin
  i := 1; randomize;
  //index.Form2.redout.Lines.Add(IntToStr(i)+': '+ Sorting.printa(a));
  while not self.sorted(a) do begin
    self.shuffle(a);
    showmessage('not sorted');
    //i := i + 1; index.Form2.redout.Lines.Add(IntToStr(i)+': '+ Sorting.printa(a));
  end
end;

function Sorting.sorted(a: TIntegerArray): boolean;
var
  i: integer;
begin
  sorted := True;
  for i := 2 to self.max do
    if (a[i - 1] > a[i]) then begin
      sorted := False; exit
    end
end;

function Sorting.printa(a: TIntegerArray): String;
var i: integer;
begin
  for i := 1 to self.max do
    result :=(IntToStr(a[i])+ ' ');
  result := result + #13;
end;

procedure Sorting.shuffle(var a: TIntegerArray);
var i,k,tmp: integer;
begin
  for i := self.max downto 2 do begin
    k := random(i) + 1;
    if (a[i] <> a[k]) then begin
      tmp := a[i]; a[i] := a[k]; a[k] := tmp
    end
  end
end;
function Sorting.Sort(arrInput: TIntegerArray): TIntegerArray;
var i: integer;
    a: translater.TIntegerArray;
begin
  showMessage('started sort');
  self.max := length(arrInput);
  for i := 1 to self.max do
    a[i] := arrInput[i];
  bogo(a);
  result := a;
end;
end.

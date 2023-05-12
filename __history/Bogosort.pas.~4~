unit Bogosort;

interface
uses index;
type TIntegerArray = Array of Integer;
function Sort(arrInput: TIntegerArray): TIntegerArray;

implementation

function Sort(arrInput: TIntegerArray): TIntegerArray;
var ilength,i,j,loop,b,a,pos,temp:integer;
    sorted:boolean;
begin
repeat
for  loop := 0 to length(arrInput) - 1 do
    begin
    a:=random(length(arrInput));
    b:=random(length(arrInput));
    if not a=b then
    temp:=arrInput[a];
    arrInput[a]:=arrInput[b];
    arrInput[b]:=temp;
    end;
for i := 0 to length(arrInput)-1 do
begin
  for j := 0 to length(arrInput) do
      begin
     if arrInput[i] > arrInput[j] then begin
       sorted:=false
       index.redout.lines.Add('HAFFHGF');
     end
       else sorted:=true;
      end;
end;
until sorted=true;


  result:= arrInput;
end;

end.

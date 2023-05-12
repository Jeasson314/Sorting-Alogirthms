unit Bogosort_old;

interface
 uses Dialogs, index;
function Sort(arrInput: index.TIntegerArray): index.TIntegerArray;

implementation

function Sort(arrInput: index.TIntegerArray): index.TIntegerArray;
var iLoop,i,j,b,a,pos,temp: Integer;
    sorted: Boolean;
begin
repeat
for  iLoop := 0 to length(arrInput) - 1 do
    begin
    a := random(length(arrInput));
    b := random(length(arrInput));
    if not a=b then
    temp := arrInput[a];
    arrInput[a] := arrInput[b];
    arrInput[b] := temp;
    end;
for i := 0 to length(arrInput)-1 do
begin
  for j := 0 to length(arrInput) do
      begin
     if arrInput[i] > arrInput[j] then begin
       sorted:=false;
       showMessage('Did not work!');
     end
       else sorted:=true;
      end;
end;
until sorted=true;


  result:= arrInput;
end;

end.

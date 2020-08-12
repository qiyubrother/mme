program mme;

{$APPTYPE CONSOLE}

uses
  SysUtils, Math;
var
  rise, fall:Integer;
begin
  if (ParamCount <> 2) then
  begin
    Writeln('mme.exe <Rise> <Fall>');
    Exit;
  end;
  try
    begin
      rise := StrToInt(ParamStr(1));
    end;
  except
    begin
      Writeln('<Rise> is not a valid number.');
      Exit;
    end;
  end;
  try
    begin
      fall := StrToInt(ParamStr(2));
    end;
  except
    begin
      Writeln('<Fall> is not a valid number.');
      Exit;
    end;
  end;
  Writeln(Format('Money making effect:%d%s', [Round(rise/(rise + fall)*100), '%']));

end.


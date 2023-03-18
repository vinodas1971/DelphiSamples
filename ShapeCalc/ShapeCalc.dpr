program ShapeCalc;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Shapes in 'Shapes.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.

program VENDAS;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Registro Diamond';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

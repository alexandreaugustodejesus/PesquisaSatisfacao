program BrOffice_A5;

uses
  Forms,
  brOffice_Aula5 in 'brOffice_Aula5.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

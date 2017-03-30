unit brOffice_Aula5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    btExecutar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    A1: TEdit;
    A2: TEdit;
    A3: TEdit;
    Label4: TLabel;
    F1: TEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    A4: TEdit;
    A5: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    A6: TEdit;
    cbFuncao: TComboBox;
    Label8: TLabel;
    buExecFuncao: TButton;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edAut: TEdit;
    edTit: TEdit;
    edAss: TEdit;
    edKeyW: TEdit;
    Label13: TLabel;
    mmDesc: TMemo;
    chProp: TCheckBox;
    procedure btExecutarClick(Sender: TObject);
    procedure buExecFuncaoClick(Sender: TObject);
  private
    procedure AtribuirVariaveis;
    procedure Propriedades;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  BrOffice,Desktop, Documento,Planilha: Variant;

implementation

{$R *.dfm}

Uses ComObj;

procedure TForm1.AtribuirVariaveis;
begin
  BrOffice  := CreateOleObject('com.sun.star.ServiceManager');
  Desktop   := BrOffice.CreateInstance('com.sun.star.frame.Desktop');
  Documento := Desktop.LoadComponentFromURL('private:factory/scalc',
              '_blank', 0, VarArrayCreate([0,-1], varVariant));
  Planilha := Documento.getSheets.getByName('Planilha1');
end;

procedure TForm1.Propriedades;
begin
  if chProp.Checked then
  begin
    Documento.DocumentInfo.Author      := edAut.Text;
    Documento.DocumentInfo.Title       := edTit.Text;
    Documento.DocumentInfo.Subject     := edAss.Text;
    Documento.DocumentInfo.Keywords    := edKeyW.Text;
    Documento.DocumentInfo.Description := mmDesc.Text;
  end;
end;

procedure TForm1.btExecutarClick(Sender: TObject);
begin
  AtribuirVariaveis;
  Planilha.getCellByPosition(0,0).Value := StrToFloat(A1.Text);  //A1
  Planilha.getCellByPosition(0,1).Value := StrToFloat(A2.Text);  //A2
  Planilha.getCellByPosition(0,2).Value := StrToFloat(A3.Text);  //A3
  Planilha.getCellByPosition(0,3).Formula := F1.Text;
  Propriedades;
end;

procedure TForm1.buExecFuncaoClick(Sender: TObject);
begin
  AtribuirVariaveis;
  Planilha.getCellByPosition(0,0).Value := StrToFloat(A4.Text);  //A1
  Planilha.getCellByPosition(0,1).Value := StrToFloat(A5.Text);  //A2
  Planilha.getCellByPosition(0,2).Value := StrToFloat(A6.Text);  //A3
  Case cbFuncao.ItemIndex of
    0 : Planilha.getCellByPosition(0,3).Formula := '=SUM(A1:A3)';
    1 : Planilha.getCellByPosition(0,3).Formula := '=AVERAGE(A1:A3)';
    2 : Planilha.getCellByPosition(0,3).Formula := '=MAX(A1:A3)';
    3 : Planilha.getCellByPosition(0,3).Formula := '=MIN(A1:A3)';
    4 : Planilha.getCellByPosition(0,3).Formula := '=PRODUCT(A1:A3)';
  end;
  Propriedades;
end;

end.

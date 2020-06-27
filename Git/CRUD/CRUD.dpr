program CRUD;

{$R *.dres}

uses
  Vcl.Forms,
  ufrmCRUD in 'Unit\ufrmCRUD.pas' {frmCRUD},
  udmConexao in 'Unit\udmConexao.pas' {dmConexao: TDataModule},
  Lemonade.Helpers.TDataSetHelper in '..\..\Global\Helper\Lemonade.Helpers.TDataSetHelper.pas',
  Lemonade.Control.Components in '..\..\Global\Funcoes\Lemonade.Control.Components.pas',
  Vcl.Themes,
  Vcl.Styles,
  Lemonade.Helpers.StringHelper in '..\..\Global\Helper\Lemonade.Helpers.StringHelper.pas',
  Lemonade.Types in '..\..\Global\Funcoes\Lemonade.Types.pas',
  Lemonade.Funcoes.Globais in '..\..\Global\Funcoes\Lemonade.Funcoes.Globais.pas',
  Lemonade.Helpers.TFieldHelper in '..\..\Global\Helper\Lemonade.Helpers.TFieldHelper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmCRUD, frmCRUD);
  Application.Run;
end.

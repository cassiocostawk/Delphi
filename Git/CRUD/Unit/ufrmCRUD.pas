unit ufrmCRUD;

interface

  { Estrutura abaixo pode ser utilizada em Tela Modelo para Heran�a }

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinsDefaultPainters, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPC, Vcl.StdCtrls, Vcl.ExtCtrls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Lemonade.Helpers.TDataSetHelper, Lemonade.Control.Components, Vcl.Mask, Vcl.DBCtrls, JvExMask,
  JvToolEdit, JvDBControls, cxMaskEdit, Vcl.Buttons;

type
  TfrmCRUD = class(TForm)
    pgcGeral: TcxPageControl;
    tabPesquisa: TcxTabSheet;
    tabCadastro: TcxTabSheet;
    pFiltro: TPanel;
    btFiltrar: TButton;
    btLimparFiltros: TButton;
    pBase: TPanel;
    gridPesq: TcxGridDBTableView;
    dbgPesq: TcxGrid;
    ds: TDataSource;
    gridPesquisa: TcxGridDBTableView;
    lvlPesq: TcxGridLevel;
    pCad: TPanel;
    pDetail: TPanel;
    dbgDetail: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    gridDetail: TcxGridDBTableView;
    lvlDetail: TcxGridLevel;
    dsDetail: TDataSource;
    dsPais: TDataSource;
    dsUF: TDataSource;
    dsCidade: TDataSource;
    gridDetailID: TcxGridDBColumn;
    gridDetailFK_PESSOA: TcxGridDBColumn;
    gridDetailNOME: TcxGridDBColumn;
    gridDetailEMAIL: TcxGridDBColumn;
    gridDetailTELEFONE: TcxGridDBColumn;
    gridDetailINATIVO: TcxGridDBColumn;
    pDetailCad: TPanel;
    imgsDetail: TImageList;
    imgsCad: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    chkDetailINATIVO: TDBCheckBox;
    edDetailNOME: TDBEdit;
    edEMAIL: TDBEdit;
    edTELEFONE: TDBEdit;
    Label4: TLabel;
    edID: TDBEdit;
    Label7: TLabel;
    edCNPJ_CPF: TDBEdit;
    Label8: TLabel;
    edIE_RG: TDBEdit;
    Label9: TLabel;
    edINSC_MUNICIPAL: TDBEdit;
    Label10: TLabel;
    edNOME: TDBEdit;
    Label11: TLabel;
    edNOME_FANTASIA: TDBEdit;
    rgTIPO: TDBRadioGroup;
    Label6: TLabel;
    edENDERECO: TDBEdit;
    Label12: TLabel;
    edEND_NUMERO: TDBEdit;
    Label13: TLabel;
    edEND_COMPLEMENTO: TDBEdit;
    Label14: TLabel;
    edBAIRRO: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    edCEP: TDBEdit;
    Label18: TLabel;
    cbFK_CIDADE: TDBLookupComboBox;
    cbFK_UF: TDBLookupComboBox;
    Label19: TLabel;
    cbFK_PAIS: TDBLookupComboBox;
    Label15: TLabel;
    Label20: TLabel;
    edSITE: TDBEdit;
    Label21: TLabel;
    mmOBS: TDBMemo;
    dtDATA_CADASTRO: TJvDBDateEdit;
    chkINATIVO: TDBCheckBox;
    chkBLOQUEADO: TDBCheckBox;
    colPesquisaID: TcxGridDBColumn;
    colPesquisaTIPO: TcxGridDBColumn;
    colPesquisaCNPJ_CPF: TcxGridDBColumn;
    colPesquisaIE_RG: TcxGridDBColumn;
    colPesquisaINSC_MUNICIPAL: TcxGridDBColumn;
    colPesquisaNOME: TcxGridDBColumn;
    colPesquisaNOME_FANTASIA: TcxGridDBColumn;
    colPesquisaENDERECO: TcxGridDBColumn;
    colPesquisaEND_NUMERO: TcxGridDBColumn;
    colPesquisaEND_COMPLEMENTO: TcxGridDBColumn;
    colPesquisaBAIRRO: TcxGridDBColumn;
    colPesquisaFK_UF: TcxGridDBColumn;
    colPesquisaFK_CIDADE: TcxGridDBColumn;
    colPesquisaCEP: TcxGridDBColumn;
    colPesquisaFK_PAIS: TcxGridDBColumn;
    colPesquisaDATA_CADASTRO: TcxGridDBColumn;
    colPesquisaSITE: TcxGridDBColumn;
    colPesquisaOBS: TcxGridDBColumn;
    colPesquisaINATIVO: TcxGridDBColumn;
    colPesquisaBLOQUEADO: TcxGridDBColumn;
    pBotoes: TPanel;
    btInsert: TButton;
    btEdit: TButton;
    btSave: TButton;
    btCancel: TButton;
    btDelete: TButton;
    btPrint: TButton;
    btFirst: TButton;
    btPrior: TButton;
    btNext: TButton;
    btLast: TButton;
    btClose: TButton;
    btSearch: TButton;
    Label22: TLabel;
    Label23: TLabel;
    edPesNome: TEdit;
    edPesNomeFantasia: TEdit;
    Label24: TLabel;
    Label25: TLabel;
    edPesBairro: TEdit;
    edPesCidade: TEdit;
    pDetailBotoes: TPanel;
    Label5: TLabel;
    btDetailInsert: TButton;
    btDetailEdit: TButton;
    btDetailCancel: TButton;
    btDetailSave: TButton;
    btDetailDelete: TButton;
    btAuto: TSpeedButton;
    procedure btDeleteClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure btDetailInsertClick(Sender: TObject);
    procedure btDetailEditClick(Sender: TObject);
    procedure btDetailDeleteClick(Sender: TObject);
    procedure btDetailSaveClick(Sender: TObject);
    procedure btDetailCancelClick(Sender: TObject);
    procedure btSearchClick(Sender: TObject);
    procedure btFirstClick(Sender: TObject);
    procedure btPriorClick(Sender: TObject);
    procedure btNextClick(Sender: TObject);
    procedure btLastClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btLimparFiltrosClick(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure gridPesquisaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btAutoClick(Sender: TObject);
  private
    procedure HabilitaCadastro(Status: Boolean);
    procedure ControleDetalhe;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCRUD: TfrmCRUD;

implementation

uses
  udmConexao;

{$R *.dfm}

procedure TfrmCRUD.btPriorClick(Sender: TObject);
begin
  ds.DataSet.Prior;
  HabilitaCadastro(False);
end;

procedure TfrmCRUD.btAutoClick(Sender: TObject);
begin
  dmConexao.ValoresDefault;
end;

procedure TfrmCRUD.btCancelClick(Sender: TObject);
begin
  if dmConexao.cdsDetail.State in [dsEdit,dsInsert] then
    btDetailCancel.Click;

  dmConexao.cdsCad.Cancel;
  HabilitaCadastro(False);
end;

procedure TfrmCRUD.btCloseClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente cancelar as altera��es no cadastro e sair?', 'Cancelar e Fechar?', MB_ICONQUESTION+MB_YESNO) <> mrYes then
    Exit;

  if dmConexao.cdsDetail.State in [dsInsert, dsEdit] then
    btDetailCancel.Click;

  if dmConexao.cdsCad.State in [dsInsert, dsEdit] then
    btCancel.Click;

  Close;
end;

procedure TfrmCRUD.btDeleteClick(Sender: TObject);
begin
  dmConexao.cdsCad.Delete;
  dmConexao.cdsCad.ApplyUpdates(0);
  HabilitaCadastro(False);
end;

procedure TfrmCRUD.btDetailCancelClick(Sender: TObject);
begin
  dsDetail.DataSet.Cancel;
  ControleDetalhe;
end;

procedure TfrmCRUD.btDetailDeleteClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente excluir o Contato selecionado?',
    'Excluir Contato', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
    Exit;

  dsDetail.DataSet.Delete;
  ControleDetalhe;
end;

procedure TfrmCRUD.btDetailEditClick(Sender: TObject);
begin
  dsDetail.DataSet.Edit;
  ControleDetalhe;
end;

procedure TfrmCRUD.btDetailInsertClick(Sender: TObject);
begin
  dsDetail.DataSet.Append;
  ControleDetalhe;
end;

procedure TfrmCRUD.btDetailSaveClick(Sender: TObject);
var
  Mensagem : string;
begin
  Mensagem := dmConexao.Validar(dmConexao.cdsDetail);
  if Mensagem <> '' then
  begin
    Application.MessageBox(Pchar('Campos obrigat�rios n�o preenchidos:' + sLineBreak + Mensagem), 'N�o � poss�vel salvar', MB_ICONWARNING);
    Exit;
  end;

  dsDetail.DataSet.Post;
  ControleDetalhe;
end;

procedure TfrmCRUD.btEditClick(Sender: TObject);
begin
  ds.DataSet.Edit;
  HabilitaCadastro(True);
end;

procedure TfrmCRUD.btFiltrarClick(Sender: TObject);
begin
  dmConexao.Filtrar(edPesNome.Text, edPesNomeFantasia.Text, edPesBairro.Text, edPesCidade.Text);
end;

procedure TfrmCRUD.btFirstClick(Sender: TObject);
begin
  ds.DataSet.First;
  HabilitaCadastro(False);
end;

procedure TfrmCRUD.btInsertClick(Sender: TObject);
begin
  ds.DataSet.Append;
  HabilitaCadastro(True);
end;

procedure TfrmCRUD.btLastClick(Sender: TObject);
begin
  ds.DataSet.Last;
  HabilitaCadastro(False);
end;

procedure TfrmCRUD.btLimparFiltrosClick(Sender: TObject);
begin
  edPesNome.Clear;
  edPesNomeFantasia.Clear;
  edPesBairro.Clear;
  edPesCidade.Clear;
end;

procedure TfrmCRUD.btNextClick(Sender: TObject);
begin
  ds.DataSet.Next;
  HabilitaCadastro(False);
end;

procedure TfrmCRUD.btSaveClick(Sender: TObject);
var
  Mensagem : string;
begin
  Mensagem := dmConexao.Validar(dmConexao.cdsCad);
  if Mensagem <> '' then
  begin
    Application.MessageBox(Pchar('Campos obrigat�rios n�o preenchidos:' + sLineBreak + Mensagem), 'N�o � poss�vel salvar', MB_ICONWARNING);
    Exit;
  end;

  ds.DataSet.Post;
  HabilitaCadastro(False);
end;

procedure TfrmCRUD.btSearchClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente cancelar as altera��es no cadastro e sair?', 'Cancelar e Fechar?', MB_ICONQUESTION+MB_YESNO) <> mrYes then
    Exit;

  if dmConexao.cdsDetail.State in [dsInsert, dsEdit] then
    btDetailCancel.Click;

  if dmConexao.cdsCad.State in [dsInsert, dsEdit] then
    btCancel.Click;

  pgcGeral.ActivePage := tabPesquisa;
end;

procedure TfrmCRUD.HabilitaCadastro(Status: Boolean);
begin
  btInsert.Enabled := not Status;
  btEdit.Enabled   := (not Status) and (not ds.DataSet.IsEmpty);
  btSave.Enabled   := Status;
  btCancel.Enabled := Status;
  btDelete.Enabled := (not Status) and (not ds.DataSet.IsEmpty);
  btSearch.Enabled := not Status;
  btPrint.Enabled  := not Status;
  btFirst.Enabled  := (not Status) and (not ds.DataSet.IsBof);
  btPrior.Enabled  := (not Status) and (not ds.DataSet.IsBof);
  btNext.Enabled   := (not Status) and (not ds.DataSet.IsEof);
  btLast.Enabled   := (not Status) and (not ds.DataSet.IsEof);
  btClose.Enabled  := not Status;

  pBase.Enabled    := Status;

  TControlComponents.ChangeStateParentsControls(pBase, Status);
  ControleDetalhe;
end;

procedure TfrmCRUD.ControleDetalhe;
var
  Habilitado : Boolean;
begin
  Habilitado := dsDetail.DataSet.State in [dsInsert,dsEdit];

  btDetailInsert.Enabled := not Habilitado;
  btDetailEdit.Enabled   := (not Habilitado) and (not dsDetail.DataSet.IsEmpty);
  btDetailSave.Enabled   := Habilitado;
  btDetailCancel.Enabled := Habilitado;
  btDetailDelete.Enabled := (not Habilitado) and (not dsDetail.DataSet.IsEmpty);
  dbgDetail.Enabled      := not Habilitado;

  pDetailCad.Visible     := Habilitado;
end;

procedure TfrmCRUD.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(WM_NEXTDLGCTL, 0, 0);
    Key := #0;
  end;
end;

procedure TfrmCRUD.FormShow(Sender: TObject);
begin
  pgcGeral.ActivePage := tabPesquisa;
  HabilitaCadastro(False);
  ControleDetalhe;
end;

procedure TfrmCRUD.gridPesquisaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  pgcGeral.ActivePage := tabCadastro;
  btEdit.Click;
end;

end.

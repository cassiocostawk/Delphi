unit Lemonade.Helpers.TWebBrowserHelper;

interface

uses
  Vcl.StdCtrls, System.SysUtils, System.StrUtils, SHDocVw, IdTCPConnection, IdTCPClient, IdHTTP, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL, Winapi.WinInet, IdBaseComponent, IdComponent, Variants, MSHTML, ActiveX;

type
  TWebBrowserHelper = class helper for TWebBrowser
  private
    {private}
  public
    function WaitAndLoaded : Boolean;
    procedure WaitLoadPage;
    function TableRowExists(Item, Row : Integer) : Boolean;
    function LocateTagID(const Doc : IDispatch; const ID : string) : Boolean;
end;

implementation

{ TWebBrowserHelper }


function TWebBrowserHelper.LocateTagID(const Doc: IDispatch; const ID: string): Boolean;
var
  Document : IHTMLDocument2;
  Body     : IHTMLElement2;
  Tags     : IHTMLElementCOllection;
  Tag      : IHTMLElement;
  I        : Integer;
begin
  Result := False;

  if not Supports(Doc, IHTMLDocument2, Document) then
    raise Exception.Create('Invalid HTML document');

  if not Supports(Document.body, IHTMLElement2, Body) then
    raise Exception.Create('Can''t find <body> element');

  Tags := Body.getElementsByTagName('*');

  for I := 0 to Pred(Tags.length) do
  begin
    Tag := Tags.item(I, EmptyParam) as IHTMLElement;

    if AnsiSameText(Tag.id, Id) then
    begin
      Result := True;
      Break;
    end;
  end;
end;

function TWebBrowserHelper.TableRowExists(Item, Row: Integer): Boolean;
begin
  try
    Result := Self.OleObject.Document.all.tags('TABLE').item(Item).Rows(Row).InnerText <> '';
  except
    Result := False;
  end;
end;

function TWebBrowserHelper.WaitAndLoaded: Boolean;
var
  I : Integer;
begin
  Result := True;
  I := 0;

  //TENTA ACESSAR O SITE POR 15 SEGUNDOS
  while (Self.Busy) and (I < 30) do
  begin
    Sleep(500);
    I := I + 1;
  end;

  //FALSE = ATINGIU O TEMPO DE ESPERA AINDA CARREGANDO OU NAO CARREGOU POR ERRO
  if ((I = 30) and (Self.Busy)) {or (NavigateError)} then
    Result := False;
end;

procedure TWebBrowserHelper.WaitLoadPage;
begin
  //USAR SOMENTE SE HÁ UMA PAGINA CARREGANDO (DEPOIS DE WB.ReadyState = READYSTATE_COMPLETE)
  while Self.OleObject.Document.readyState <> 'complete' do
    Sleep(0);
end;

end.


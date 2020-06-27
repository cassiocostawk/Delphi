unit Lemonade.Helpers.IntegerHelper;

interface

uses
  System.StrUtils, System.SysUtils, Lemonade.Funcoes.Globais;

type
  TIntegerHelper = record helper for Integer

  function ToString : string;

  end;

implementation

{ TIntegerHelper }

function TIntegerHelper.ToString: string;
begin
  Result := IntToStr(Self);
end;

end.

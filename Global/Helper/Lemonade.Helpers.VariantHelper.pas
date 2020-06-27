unit Lemonade.Helpers.VariantHelper;

interface

uses
   System.Variants, System.StrUtils, System.SysUtils, Lemonade.Funcoes.Globais;

type
  TVariantHelper = record helper for Variant

  function ToInteger : Integer;
  function ToString : String;

  end;

implementation

{ TIntegerHelper }

function TVariantHelper.ToInteger: Integer;
begin
  Result := StrToIntDef(Self, 0);
end;

function TVariantHelper.ToString: String;
begin
  Result := IfThen(Self = null, '', Self);
end;

end.

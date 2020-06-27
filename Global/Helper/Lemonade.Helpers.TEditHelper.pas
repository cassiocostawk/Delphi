unit Lemonade.Helpers.TEditHelper;

interface

uses
  Vcl.StdCtrls, System.SysUtils, System.StrUtils, Lemonade.Helpers.StringHelper, Lemonade.Types;

type
  TEditHelper = class helper for TCustomEdit
  private
    {private}
  public
    /// <returns><c>True</c> if is empty, otherwise <c>False</c>.</returns>
    function IsEmpty : Boolean;
    /// <returns>Self.Text without Left and Right spaces.</returns>
    function TextTrim : string;
    /// <returns>Self.Text without Left spaces.</returns>
    function TextTrimL : string;
    /// <returns>Self.Text without Right spaces.</returns>
    function TextTrimR : string;
    /// <returns>Self.Text in Integer. 0 when don't convert.</returns>
    function ToInteger : Integer;
    /// <returns>Self.Text in Int64. 0 when don't convert.</returns>
    function ToInt64 : Int64;
    /// <returns>Self.Text in Integer. 0 when don't convert.</returns>
    function AsInteger : Integer;
    /// <returns>Self.Text Leading by Amount os Zeros.</returns>
    function LeadingZeros(Amount : Integer; Position : TTextPosition) : string;
    /// <returns>Self.Text Complete defined length with zeros.</returns>
    function CompleteWithZeros(StrLenght : Integer; Position : TTextPosition) : string;

    { Brazil Functions }
    /// <returns>Self.Text is a Valid CNPJ = True.</returns>
    function CNPJValido : Boolean;
    /// <returns>Self.Text is a Valid CPF = True.</returns>
    function CPFValido : Boolean;
    /// <returns>Self.Text Sum for Crypt.</returns>
    function CNPJCalcular : string;
end;

implementation

{ TEditHelper }

function TEditHelper.AsInteger: Integer;
begin
  Result := StrToIntDef(Self.Text, 0);
end;

function TEditHelper.CNPJCalcular: string;
begin
  Result := String(Self.Text).CNPJCalculate;
end;

function TEditHelper.IsEmpty: Boolean;
begin
  Result := Trim(Self.Text) = EmptyStr;
end;

function TEditHelper.LeadingZeros(Amount: Integer; Position : TTextPosition): string;
begin
  Result := Self.Text;
  Result := Result.InsertZeros(Amount, Position);
end;

function TEditHelper.ToInt64: Int64;
begin
  StrToInt64Def(Self.Text, 0);
end;

function TEditHelper.ToInteger: Integer;
begin
  StrToIntDef(Self.Text, 0);
end;

function TEditHelper.TextTrimL: string;
begin
  Result := TrimLeft(Self.Text);
end;

function TEditHelper.TextTrimR: string;
begin
  Result := TrimRight(Self.Text);
end;

function TEditHelper.TextTrim: string;
begin
  Result := Trim(Self.Text);
end;

function TEditHelper.CNPJValido: Boolean;
begin
  Result := string(Self.Text).IsValidCNPJ;
end;

function TEditHelper.CompleteWithZeros(StrLenght: Integer; Position: TTextPosition): string;
begin
  Result := Self.Text;
  Result := Result.CompleteWithZeros(StrLenght, Position);
end;

function TEditHelper.CPFValido: Boolean;
begin
  Result := String(Self.Text).IsValidCPF;
end;

end.


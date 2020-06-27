unit Lemonade.Helpers.StringHelper;

interface

uses
  System.StrUtils, System.SysUtils, Lemonade.Types;

type
  TStringHelper = record helper for string
    /// <returns><c>True</c> if is empty, otherwise <c>False</c>.</returns>
    function IsEmpty : Boolean;
    /// <returns>Extract just numbers from Self.Text.</returns>
    function ExtractNumbers : string;
    /// <returns>Extract just numbers from Self.Text to Integer.</returns>
    function ExtractNumbersToInteger : Integer;
    /// <returns>Self.Text Without Accent.</returns>
    function RemoveAccent : string;
    /// <returns>Self.Text Without Spaces.</returns>
    function WithoutSpaces : string;
    /// <returns>Self.Text has Numbers.</returns>
    function HasNumbers : Boolean;
    /// <returns>Self.Text Leading by Amount os Zeros.</returns>
    function InsertZeros(Amount : Integer; Position : TTextPosition) : string;
    /// <returns>Self.Text Complete defined length with zeros.</returns>
    function CompleteWithZeros(StrLenght : Integer; Position : TTextPosition) : string;
    /// <returns>Self.Text Without Ampersand "&".</returns>
    function WithoutAmpersand : string;
    /// <returns>Get Length from the string Self.Text.</returns>
    function LengthStr : Integer;
    /// <returns>Self.Text to MD5.</returns>
    function ToMD5 : string;
    /// <returns>Self.Text to Integer, If invalid Returns 0.</returns>
    function ToInteger : Integer;

    { Brazil Functions }
    /// <returns>Format CNPJ/CPF with "-./".</returns>
    function FormatCNPJCPF : string;
    /// <returns>Self.Text is a Valid CNPJ = True.</returns>
    function IsValidCNPJ : Boolean;
    /// <returns>Self.Text is a Valid CPF = True.</returns>
    function IsValidCPF : Boolean;
    /// <returns>Self.Text is a Valid IE = True.</returns>
    function IsValidIE(UF : string) : Boolean;
    /// <returns>Self.Text Sum for Crypt.</returns>
    function CNPJCalculate : string;
    /// <returns>Get ideal Fone Mask to Self.Text.</returns>
    function FoneMask : string;
    /// <returns>Get ideal CPF/CNPJ Mask to Self.Text.</returns>
    function CNPJCPFMask : string;
    /// <returns>Get ideal CEP Mask to Self.Text.</returns>
    function CEPMask : string;

    //add function Upper case caractere apos _ ou " " (Reference : string) : string;
  end;

  TWideStringHelper = record helper for WideString
    /// <returns><c>True</c> if is empty, otherwise <c>False</c>.</returns>
    function IsEmpty : Boolean;
    /// <returns>Extract just numbers from Self.Text.</returns>
    function ExtractNumbers : string;
    /// <returns>Extract just numbers from Self.Text to Integer.</returns>
    function ExtractNumbersToInteger : Integer;
    /// <returns>Self.Text Without Accent.</returns>
    function RemoveAccent : string;
    /// <returns>Self.Text Without Spaces.</returns>
    function WithoutSpaces : string;
    /// <returns>Self.Text has Numbers.</returns>
    function HasNumbers : Boolean;
    /// <returns>Self.Text Leading by Amount os Zeros.</returns>
    function InsertZeros(Amount : Integer; Position : TTextPosition) : string;
    /// <returns>Self.Text Complete defined length with zeros.</returns>
    function CompleteWithZeros(StrLenght : Integer; Position : TTextPosition) : string;
    /// <returns>Self.Text Without Ampersand "&".</returns>
    function WithoutAmpersand : string;
    /// <returns>Get Length from the string Self.Text.</returns>
    function LengthStr : Integer;
    /// <returns>Self.Text to MD5.</returns>
    function ToMD5 : string;
    /// <returns>Self.Text to Integer, If invalid Returns 0.</returns>
    function ToInteger : Integer;

    { Brazil Functions }
    /// <returns>Format CNPJ/CPF with "-./".</returns>
    function FormatCNPJCPF : string;
    /// <returns>Self.Text is a Valid CNPJ = True.</returns>
    function IsValidCNPJ : Boolean;
    /// <returns>Self.Text is a Valid CPF = True.</returns>
    function IsValidCPF : Boolean;
    /// <returns>Self.Text is a Valid IE = True.</returns>
    function IsValidIE(UF : string) : Boolean;
    /// <returns>Self.Text Sum for Crypt.</returns>
    function CNPJCalculate : string;
    /// <returns>Get ideal Fone Mask to Self.Text.</returns>
    function FoneMask : string;
    /// <returns>Get ideal CPF/CNPJ Mask to Self.Text.</returns>
    function CNPJCPFMask : string;
    /// <returns>Get ideal CEP Mask to Self.Text.</returns>
    function CEPMask : string;

    //add function Upper case caractere apos _ ou " " (Reference : string) : string;
  end;

implementation

uses
  Lemonade.Funcoes.Globais;

{ TStringHelper }

function TStringHelper.CEPMask: string;
begin
  Result := CEPMascara(Self);
end;

function TStringHelper.CNPJCalculate: string;
begin
  Result := CalcularCNPJ(Self);
end;

function TStringHelper.CNPJCPFMask: string;
begin
  Result := CNPJCPFMascara(Self);
end;

function TStringHelper.CompleteWithZeros(StrLenght: Integer; Position : TTextPosition): string;
var
  I: Integer;
begin
  Result := '';

  for I := 1 to (StrLenght - Length(Self)) do
    Result := '0' + Result;

  case Position of
    tpBegin : Result := Self + Result;
    tpEnd   : Result := Result + Self;
  end;
end;

function TStringHelper.ExtractNumbers: string;
begin
  Result := ExtrairNumeros(Self);
end;

function TStringHelper.ExtractNumbersToInteger: Integer;
begin
  Result := StrToIntDef(ExtrairNumeros(Self), 0);
end;

function TStringHelper.FoneMask: string;
begin
  Result := TelefoneMascara(Self);
end;

function TStringHelper.FormatCNPJCPF: string;
begin
  Result := FormatarCNPJCPF(Self);
end;

function TStringHelper.HasNumbers: Boolean;
begin
  Result := StringTemNumeros(Self);
end;

function TStringHelper.InsertZeros(Amount: Integer; Position : TTextPosition): string;
var
  I: Integer;
begin
  Result := '';

  for I := 1 to Amount do
    Result := Result + '0';

  case Position of
    tpBegin : Result := Self + Result;
    tpEnd   : Result := Result + Self;
  end;
end;

function TStringHelper.IsEmpty: Boolean;
begin
  Result := Self = EmptyStr;
end;

function TStringHelper.IsValidCNPJ: Boolean;
begin
  Result := ValidaCNPJ(Self);
end;

function TStringHelper.IsValidCPF: Boolean;
begin
  Result := ValidaCPF(Self);
end;

function TStringHelper.IsValidIE(UF : string) : Boolean;
begin
  Result := ValidaIE(Self,UF)
end;

function TStringHelper.LengthStr: Integer;
begin
  Result := Length(Self);
end;

function TStringHelper.RemoveAccent: string;
type
  USAscii20127 = type AnsiString(20127);
begin
  Result := string(USAscii20127(Self));
end;

function TStringHelper.ToInteger: Integer;
begin
  Result := StrToIntDef(Self, 0);
end;

function TStringHelper.ToMD5: string;
begin
  Result := MD5(Self);
end;

function TStringHelper.WithoutAmpersand: string;
begin //& - Ampersand
  Result := StringReplace(Self, '&', '', [rfReplaceAll]);
end;

function TStringHelper.WithoutSpaces: string;
begin
  Result := StringReplace(Self, ' ', '', [rfReplaceAll]);
end;

{ TWideStringHelper }

function TWideStringHelper.CEPMask: string;
begin
  Result := CEPMascara(Self);
end;

function TWideStringHelper.CNPJCalculate: string;
begin
  Result := CalcularCNPJ(Self);
end;

function TWideStringHelper.CNPJCPFMask: string;
begin
  Result := CNPJCPFMascara(Self);
end;

function TWideStringHelper.CompleteWithZeros(StrLenght: Integer; Position : TTextPosition): string;
var
  I: Integer;
begin
  Result := '';

  for I := 1 to (StrLenght - Length(Self)) do
    Result := '0' + Result;

  case Position of
    tpBegin : Result := Self + Result;
    tpEnd   : Result := Result + Self;
  end;
end;

function TWideStringHelper.ExtractNumbers: string;
begin
  Result := ExtrairNumeros(Self);
end;

function TWideStringHelper.ExtractNumbersToInteger: Integer;
begin
  Result := StrToIntDef(ExtrairNumeros(Self), 0);
end;

function TWideStringHelper.FoneMask: string;
begin
  Result := TelefoneMascara(Self);
end;

function TWideStringHelper.FormatCNPJCPF: string;
begin
  Result := FormatarCNPJCPF(Self);
end;

function TWideStringHelper.HasNumbers: Boolean;
begin
  Result := StringTemNumeros(Self);
end;

function TWideStringHelper.InsertZeros(Amount: Integer; Position : TTextPosition): string;
var
  I: Integer;
begin
  Result := '';

  for I := 1 to Amount do
    Result := Result + '0';

  case Position of
    tpBegin : Result := Self + Result;
    tpEnd   : Result := Result + Self;
  end;
end;

function TWideStringHelper.IsEmpty: Boolean;
begin
  Result := Self = EmptyStr;
end;

function TWideStringHelper.IsValidCNPJ: Boolean;
begin
  Result := ValidaCNPJ(Self);
end;

function TWideStringHelper.IsValidCPF: Boolean;
begin
  Result := ValidaCPF(Self);
end;

function TWideStringHelper.IsValidIE(UF : string) : Boolean;
begin
  Result := ValidaIE(Self,UF)
end;

function TWideStringHelper.LengthStr: Integer;
begin
  Result := Length(Self);
end;

function TWideStringHelper.RemoveAccent: string;
type
  USAscii20127 = type AnsiString(20127);
begin
  Result := string(USAscii20127(Self));
end;

function TWideStringHelper.ToInteger: Integer;
begin
  Result := StrToIntDef(Self, 0);
end;

function TWideStringHelper.ToMD5: string;
begin
  Result := MD5(Self);
end;

function TWideStringHelper.WithoutAmpersand: string;
begin //& - Ampersand
  Result := StringReplace(Self, '&', '', [rfReplaceAll]);
end;

function TWideStringHelper.WithoutSpaces: string;
begin
  Result := StringReplace(Self, ' ', '', [rfReplaceAll]);
end;

end.

unit Lemonade.Funcoes.Globais;

interface

uses
  System.SysUtils, Winapi.Windows, Vcl.Forms, IdHashMessageDigest, System.Classes, Winapi.WinInet, Lemonade.Helpers.StringHelper;

  function ValidaCNPJ(CNPJ : string) : Boolean;
  function ValidaCPF(CPF : string) : Boolean;
  function ValidaIE(IE, UF : string) : Boolean;
  function ConsisteInscricaoEstadual(const Insc, UF: AnsiString): Integer; stdcall; external 'DLL\DllInscE32.dll';
  function ExtrairNumeros(Valor: string): String;
  function FormatarCNPJCPF(CNPJCPF : string) : string;
  function GerarDVCodBarras(CodBarras: string): string;
  function TelefoneMascara(Str : string) : string;
  function CNPJCPFMascara(Str : string) : string;
  function MD5(const Str : string) : string;
  function MD5File(const FileName : string) : string;
  function HasInternetConnection : Boolean;
  function StringTemNumeros(Str : string) : Boolean;
  /// <returns>Self.Text Sum for Crypt.</returns>
  function CalcularCNPJ(Str : string) : string;

implementation

uses
  Lemonade.Types;

function ValidaCNPJ(CNPJ : string) : Boolean;
var
  n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, d1, d2: Integer;
  digitado, calculado: string;
begin
  try
    if (Length(CNPJ) = 14) then
    begin
      n1 := StrToInt(CNPJ[1]);
      n2 := StrToInt(CNPJ[2]);
      n3 := StrToInt(CNPJ[3]);
      n4 := StrToInt(CNPJ[4]);
      n5 := StrToInt(CNPJ[5]);
      n6 := StrToInt(CNPJ[6]);
      n7 := StrToInt(CNPJ[7]);
      n8 := StrToInt(CNPJ[8]);
      n9 := StrToInt(CNPJ[9]);
      n10 := StrToInt(CNPJ[10]);
      n11 := StrToInt(CNPJ[11]);
      n12 := StrToInt(CNPJ[12]);
      d1 := n12 * 2 + n11 * 3 + n10 * 4 + n9 * 5 + n8 * 6 + n7 * 7 + n6 * 8 + n5
        * 9 + n4 * 2 + n3 * 3 + n2 * 4 + n1 * 5;
      d1 := 11 - (d1 mod 11);
      if d1 >= 10 then
        d1 := 0;
      d2 := d1 * 2 + n12 * 3 + n11 * 4 + n10 * 5 + n9 * 6 + n8 * 7 + n7 * 8 + n6
        * 9 + n5 * 2 + n4 * 3 + n3 * 4 + n2 * 5 + n1 * 6;
      d2 := 11 - (d2 mod 11);
      if d2 >= 10 then
        d2 := 0;
      calculado := inttostr(d1) + inttostr(d2);
      digitado := CNPJ[13] + CNPJ[14];
      Result := calculado = digitado;
    end
    else
      Result := false;
  except
    Result := false;
  end;
end;

function ValidaCPF(CPF : string) : Boolean;
var
  n1, n2, n3, n4, n5, n6, n7, n8, n9: Integer;
  d1, d2: Integer;
  digitado, calculado: string;
begin
  try
    if (Length(CPF) = 11) then
    begin
      n1 := StrToInt(CPF[1]);
      n2 := StrToInt(CPF[2]);
      n3 := StrToInt(CPF[3]);
      n4 := StrToInt(CPF[4]);
      n5 := StrToInt(CPF[5]);
      n6 := StrToInt(CPF[6]);
      n7 := StrToInt(CPF[7]);
      n8 := StrToInt(CPF[8]);
      n9 := StrToInt(CPF[9]);
      d1 := n9 * 2 + n8 * 3 + n7 * 4 + n6 * 5 + n5 * 6 + n4 * 7 + n3 * 8 + n2
        * 9 + n1 * 10;
      d1 := 11 - (d1 mod 11);
      if d1 >= 10 then
        d1 := 0;
      d2 := d1 * 2 + n9 * 3 + n8 * 4 + n7 * 5 + n6 * 6 + n5 * 7 + n4 * 8 + n3 *
        9 + n2 * 10 + n1 * 11;
      d2 := 11 - (d2 mod 11);
      if d2 >= 10 then
        d2 := 0;
      calculado := inttostr(d1) + inttostr(d2);
      digitado := CPF[10] + CPF[11];
      if calculado = digitado then
        Result := true
      else
        Result := False;
    end
    else
      Result := false;
  except
    Result := false;
  end;
end;

function ValidaIE(IE, UF : string) : Boolean;
begin
  Result := ConsisteInscricaoEstadual(IE, UF) = 0;
end;

function ExtrairNumeros(Valor: string): String;
var
  I: Integer;
  Numeros: string;
begin
  Numeros := '';
  for I := 1 to Length(Valor) do
  begin
    if Valor[i] in ['0' .. '9'] then
      Numeros := Numeros + Valor[I]
  end;
  Result := Numeros;
end;

function FormatarCNPJCPF(CNPJCPF : string) : string;
begin             //00000000000000 - 00.000.000/0000-00   000.000.000-00
  if Length(CNPJCPF) = 14 then
    Result := Copy(CNPJCPF, 1, 2) + '.' + Copy(CNPJCPF, 3, 3) + '.' + Copy(CNPJCPF, 6, 3) + '/' + Copy(CNPJCPF, 9, 4) + '-' + Copy(CNPJCPF, 13, 2)
  else if Length(CNPJCPF) = 11 then
    Result := Copy(CNPJCPF, 1, 3) + '.' + Copy(CNPJCPF, 4, 3) + '.' + Copy(CNPJCPF, 7, 3) + '-' + Copy(CNPJCPF, 10, 2)
  else
    Result := CNPJCPF;
end;

function GerarDVCodBarras(CodBarras: string): string;
var
  I, Impar, Par, Soma, Resto, Valor : Integer;
begin
  try
    Impar := 0;
    Par   := 0;
    Soma  := 0;
    Resto := 0;
    Valor := 0;

    for I := Length(CodBarras) downto 1 do  //12 ATE 1
    begin
      if Odd(I) then //ESTA INVERTIDO POIS ESTA LENDO AO CONTRÁRIO, OS PARES ESTAO NA POSICAO DOS IMPARES E VICE-VERSA
        Par := Par + StrToInt(Copy(CodBarras,I,1))
      else
        Impar := Impar + StrToInt(Copy(CodBarras,I,1));
    end;

    Impar := Impar * 3;
    Soma  := Impar + Par;
    Resto := Soma mod 10;

    if Resto = 0 then
      Resto := 10;

    Valor := 10 - Resto;
  finally
    Result := IntToStr(Valor);
  end;
end;

function TelefoneMascara(Str : string) : string;
begin
  case Str.LengthStr of
    8  : Result := '9999-9999;0;_';             //9100-0000
    9  : Result := '99999-9999;0;_';            //99100-0000
    10 : Result := '(99) 9999-9999;0;_';        //(37) 9100-0000
    11 :                                        //(37) 99100-0000     - (037) 9100-0000
    begin
      if Pos('0', Str) = 1 then
        Result := '(999) 9999-9999;0;_'
      else
        Result := '(99) 99999-9999;0;_';
    end;

    12 :
    begin                                       //(037) 99100-0000    - +55 (37) 9100-0000
      if Pos('0', Str) = 1 then
        Result := '(999) 99999-9999;0;_'
      else
        Result := '+99 (99) 9999-9999;0;_';
    end;

    13 :                                        //+55 (037) 9100-0000 - +55 (37) 99100-0000
    begin
      if Pos('0', Str) = 3 then
        Result := '+99 (999) 9999-9999;0;_'
      else
        Result := '+99 (99) 99999-9999;0;_';
    end;

    14 : Result := '+99 (999) 99999-9999;0;_';  //+55 (037) 99100-0000
  else
    Result := EmptyStr;
  end;
end;

function CNPJCPFMascara(Str : string) : string;
begin
  if ValidaCNPJ(Str) then
    Result := '99.999.999/9999-99;0;_'
  else if ValidaCPF(Str) then
    Result := '99.99999.9-99;0;_'
  else
    Result := EmptyStr;
end;

function MD5(const Str : string) : string;
var
  idmd5 : TIdHashMessageDigest5;
begin
  idmd5 := TIdHashMessageDigest5.Create;
  try
    Result := idmd5.HashStringAsHex(Str);
  finally
    idmd5.Free;
  end;
end;

function MD5File(const FileName : string) : string;
var
  idmd5 : TIdHashMessageDigest5;
  fs : TFileStream;
begin
  idmd5 := TIdHashMessageDigest5.Create;

  fs := TFileStream.Create(fileName, fmOpenRead OR fmShareDenyWrite) ;
  try
    result := idmd5.HashStreamAsHex(fs);
  finally
    fs.Free;
    idmd5.Free;
  end;
end;

function HasInternetConnection : Boolean;
var
  i : DWORD;
begin
  i := INTERNET_CONNECTION_MODEM + INTERNET_CONNECTION_LAN + INTERNET_CONNECTION_PROXY;
  Result := InternetGetConnectedState(@i, 0);
end;

function StringTemNumeros(Str : string) : Boolean;
var
  I : Integer;
begin
  Result := False;

  for I := 1 to Length(Str) do
  begin
    if Str[i] in ['0'..'9'] then
    begin
      Result := True;
      Exit;
    end;
  end;
end;

function CalcularCNPJ(Str : string) : string;
var
  a2, a3, b3, l4,  d2 : Integer;
  Total : LongInt;
begin
  a2 := StrToInt(Copy(Str, 1, 2));
  a3 := StrToInt(Copy(Str, 3, 3));
  b3 := StrToInt(Copy(Str, 6, 3));
  l4 := StrToInt(Copy(Str, 9, 4));
  d2 := StrToInt(Copy(Str, 13, 2));

  Total := a2 + a3 + b3 + l4 + d2;

  Result := Total.ToString.CompleteWithZeros(5, tpEnd);
end;

end.


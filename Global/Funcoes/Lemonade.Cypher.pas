unit Lemonade.Cypher;

interface

uses
  System.SysUtils, Winapi.Windows, Vcl.Forms, IdHashMessageDigest, System.Classes, System.StrUtils;

  //CRYPT
  function Crypt(Action, Src: String): String; overload;
  function Crypt(Action, Src: String; KeyBase : Integer): String; overload;
  function CryptPin(Action, Src: String): String;
  function EncryptSTR(const InString: string; StartKey,MultKey,AddKey: Integer): string;
  function DecryptSTR(const InString: string; StartKey,MultKey,AddKey: Integer): string;
  function Cript(mCad, mOp : string):string;
  function Criptografia(mStr, mChave: string): string;
  function Cifra(Str,Acao: String): String; //NAO DA PRA USAR MUITO PREVISIVEL

implementation

function Crypt(Action, Src: String): String;
label Fim;
var
  KeyLen : Integer;
	KeyPos : Integer;
	OffSet : Integer;
	Dest, Key : String;
	SrcPos : Integer;
	SrcAsc : Integer;
	TmpSrcAsc : Integer;
	Range : Integer;
begin
  if (Src = '') Then
  begin
    Result:= '';
    Goto Fim;
  end;

  Key := 'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;

  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x',[OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;

      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x',[SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$' + copy(Src,1,2));
    SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$' + copy(Src,SrcPos,2));
      if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
      TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
  end;

  Result:= Dest;

  Fim:
end;

function Crypt(Action, Src: String; KeyBase : Integer): String;
label Fim;
var
  KeyLen : Integer;
	KeyPos : Integer;
	OffSet : Integer;
	Dest, Key : String;
	SrcPos : Integer;
	SrcAsc : Integer;
	TmpSrcAsc : Integer;
	Range : Integer;
begin
  if (Src = '') Then
  begin
    Result:= '';
    Goto Fim;
  end;

  case KeyBase of
    0 : Key := 'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
    1 : Key := '4M4VRLS9KAJ7LFCIAH3UKYL3J5ZUK0OCWXIK22K0MDJWJ3I2WQDYMX1LAS9AKD9MTE3FKNL6LAWJ44 OU3LS4J24A67EHJ';
    2 : Key := 'CLJKXZLDOMMUJA0KLAJ3QHK47WUDSIXV3AAW220ADYELME L1JIJ6MJ469NIKAR3YLSKO2C3H45K4L9JF4TFU793WS2KW4';
    3 : Key := 'K0KHQ4MH3WS3K2M67A42SAWR3UZX1KX9NYU2IKIYCLCDI33KOJ4L4JFSOL2EAALLE9JTLKJA A9UJDDMJL4MWJWV0F4675';
    4 : Key := 'K2KL1MUJKJM2KXFKDJW07NMLAJIM4UAKEAQVL46LC39FATOELXHK5J4AJSL33JA49WR3I2ZOC64USYDWH 7YS432I9LD0W';
    5 : Key := 'L22A34LOK7IVKJHJMTLNEMY2WUJA1EJKY499D5J7A9ULS0XW4S6CA04JK2W3I6MAOWRID43LFS4 XJAMLLKDZU33KQKFHC';
    6 : Key := 'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
    7 : Key := 'KAY47MLLSAJJS M23WJDJWXRU4IDJOFMTU6KSL4J04E3LKZNYAMAIC49LC272936E13FWK2OAJWHIL0AH9K4X5KQUKDLV3';
    8 : Key := '3J9F 4KZ3JMU2LFIK23YUJK1WXHAM06DK4JCW4ATAN2M7ISC5KV2W4U9WA74XL3MR6SJEYOD3IJLLJLQ9KAS4LOLDKAHE0';
    9 : Key := 'JLEL24Y36U6K9LSKI025FWL0VK3SMUWLKAOKOAKRH3YQDWAUC7XJM2L4KDAT4W3AXSA LJMJ49FHE1J4Z7C3JNJ9IDI2M4';
  end;

  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;

  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x',[OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;

      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x',[SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$' + copy(Src,1,2));
    SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$' + copy(Src,SrcPos,2));
      if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
      TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
  end;

  Result:= Dest;

  Fim:
end;

function CryptPin(Action, Src: String): String;
label Fim;
var
  KeyLen : Integer;
	KeyPos : Integer;
	OffSet : Integer;
	Dest, Key : String;
	SrcPos : Integer;
	SrcAsc : Integer;
	TmpSrcAsc : Integer;
	Range : Integer;
begin
  if (Src = '') Then
  begin
    Result:= '';
    Goto Fim;
  end;

  Key := '1478963250';
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;

  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x',[OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;

      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x',[SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$' + copy(Src,1,2));
    SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$' + copy(Src,SrcPos,2));
      if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
      TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
  end;

  Result:= Dest;

  Fim:
end;

function EncryptSTR(const InString: string;StartKey,MultKey,AddKey: Integer): string;
var I : Byte;
begin
  //USA CARACTERES ESPECIAIS, NAO USAR
  //CRIPT - EncryptSTR(Edit1.Text,48,27,2); OS NUMEROS SAO ALEATORIOS

  Result := '';
  for I := 1 to Length(InString) do
  begin
    Result := Result + CHAR(Byte(InString[I]) xor (StartKey shr 8));
    StartKey := (Byte(Result[I]) + StartKey) * MultKey + AddKey;
  end;
end;

function DecryptSTR(const InString: string; StartKey,MultKey,AddKey: Integer): string;
var I : Byte;
begin
  //USA CARACTERES ESPECIAIS, NAO USAR
  //DESCRIP - DescryptSTR(Edit1.Text,48,27,2); OS NUMEROS SAO ALEATORIOS

  Result := '';
  for I := 1 to Length(InString) do
  begin
    Result := Result + CHAR(Byte(InString[I]) xor (StartKey shr 8));
    StartKey := (Byte(InString[I]) + StartKey) * MultKey + AddKey;
  end;
end;

function Cript(mCad, mOp: string): string;
var
  i, ate, x1, x2 : integer;
  r1, r2         : string[1];
begin
  //USA CARACTERES ESPECIAIS
  //COMO USAR:
  //CRIP - Cript(Edit1.Text,'CRIPT');
  //DESCRIP - Cript(Edit1.Text,'DESCRIPT');

  if Odd(Length(mCad)) then mCad := mCad + ' ';

  ate := Length(mCad) div 2;

  for i := 1 to ate do
  begin
    x1 := ord(mCad[((i-1) * 2) + 1]);
    x2 := ord(mCad[((i-1) * 2) + 2]);
    if mOp = 'DESCRIPT' then
      begin
        r2 := chr((-x2 + x1 + 90) div 2);
        r1 := chr(x1 - ((-x2 + x1 + 90) div 2));
      end
    else
    begin
       r2 := chr(x1 + 90 - x2);
       r1 := chr( x1 + x2);
    end;
    Result := result + r1 + r2;
    if Result[Length(Result)]=' ' then
      Delete(Result, Length(Result), 1);
  end;
end;

function Criptografia(mStr, mChave: string): string;
var
  i, TamanhoString, pos, PosLetra, TamanhoChave: Integer;
begin
  //USA CARACTERES ESPECIAIS
  //Criptografia('textocriptografar','chave');

  Result := mStr;
  TamanhoString := Length(mStr);
  TamanhoChave := Length(mChave);

  for i := 1 to TamanhoString do
  begin
    pos := (i mod TamanhoChave);

    if pos = 0 then
      pos := TamanhoChave;

    posLetra := ord(Result[i]) xor ord(mChave[pos]);

    if posLetra = 0 then
      posLetra := ord(Result[i]);

    Result[i] := chr(posLetra);
  end;
end;

function Cifra(Str,Acao: String): String;  //DA PRA USAR TIREI A PREVISIBILIDADE
const
  //ULTIMO DIGITO                     //x H H:N N Y  Y Y Y/M M/D D
  addCod0 : array [0..12] of Integer = (0,8,0,3,0,7 ,0,8,0,8,0,6,6); // 1124 20180910
  addCod1 : array [0..12] of Integer = (0,8,0,3,0,3 ,1,7,0,8,0,6,5); // 1124 20180911
  addCod2 : array [0..12] of Integer = (0,8,0,3,0,1 ,2,6,0,8,0,6,4); // 1124 20180912
  addCod3 : array [0..12] of Integer = (0,8,0,3,0,-1,3,5,0,8,0,6,3); // 1124 20180913
  addCod4 : array [0..12] of Integer = (0,8,0,3,0,5 ,4,4,0,8,0,6,2); // 1124 20180914
  addCod5 : array [0..12] of Integer = (0,8,0,3,0,-2,5,3,0,8,0,6,1); // 1124 20180915
  addCod6 : array [0..12] of Integer = (0,8,0,3,0,4 ,6,2,0,8,0,6,3); // 1124 20180916
  addCod7 : array [0..12] of Integer = (0,8,0,3,0,2 ,7,1,0,8,0,6,2); // 1124 20180917
  addCod8 : array [0..12] of Integer = (0,8,0,3,0,6 ,8,0,0,8,0,6,1); // 1124 20180918
  addCod9 : array [0..12] of Integer = (0,8,0,3,0,0 ,9,8,0,8,0,6,0); // 1124 20180919
                                       // 1  1 2 6 2  0 1 8 0 9 1 4   //DATA ATUAL
                                       // 2  9 5 9[2  0 2]9 1 9 3 9   //MAX POR CARACTERE
                                       //   ^-VARIACAO
var
  addCod  : array [0..8] of Integer;
  I,A : integer;
  letra: char;
  final: String;
begin
  case AnsiIndexStr(Acao,['C','D']) of
    0 : //C
    begin
      case StrToInt(Copy(Str,length(str),1)) of
        0 : for A := Low(addCod0) to High(addCod0) do addCod[A] := addCod0[A];
        1 : for A := Low(addCod1) to High(addCod1) do addCod[A] := addCod1[A];
        2 : for A := Low(addCod2) to High(addCod2) do addCod[A] := addCod2[A];
        3 : for A := Low(addCod3) to High(addCod3) do addCod[A] := addCod3[A];
        4 : for A := Low(addCod4) to High(addCod4) do addCod[A] := addCod4[A];
        5 : for A := Low(addCod5) to High(addCod5) do addCod[A] := addCod5[A];
        6 : for A := Low(addCod6) to High(addCod6) do addCod[A] := addCod6[A];
        7 : for A := Low(addCod7) to High(addCod7) do addCod[A] := addCod7[A];
        8 : for A := Low(addCod8) to High(addCod8) do addCod[A] := addCod8[A];
        9 : for A := Low(addCod9) to High(addCod9) do addCod[A] := addCod9[A];
      end;
    end;

    1 : //D
    begin
      case StrToInt(Copy(Str,6,1)) of //6 DIGITO
        0 : for A := Low(addCod0) to High(addCod0) do addCod[A] := addCod0[A];
        1 : for A := Low(addCod1) to High(addCod1) do addCod[A] := addCod1[A];
        2 : for A := Low(addCod2) to High(addCod2) do addCod[A] := addCod2[A];
        3 : for A := Low(addCod3) to High(addCod3) do addCod[A] := addCod3[A];
        4 : for A := Low(addCod4) to High(addCod4) do addCod[A] := addCod4[A];
        5 : for A := Low(addCod5) to High(addCod5) do addCod[A] := addCod5[A];
        6 : for A := Low(addCod6) to High(addCod6) do addCod[A] := addCod6[A];
        7 : for A := Low(addCod7) to High(addCod7) do addCod[A] := addCod7[A];
        8 : for A := Low(addCod8) to High(addCod8) do addCod[A] := addCod8[A];
        9 : for A := Low(addCod9) to High(addCod9) do addCod[A] := addCod9[A];
      end;
    end;
  end;

  if Acao = 'C' then
  begin
    final:= '';
    for i:= 0 to length(Str) do
      begin
        if (Str[i] >= '0') and (Str[i] <= '9') then
          final:= final + chr((ord(Str[i]) - ord('0') + AddCod[i]) mod 26 + ord('0'))
        else
          final:= final + Str[i];
      end;
    Delete(final,1,1);
    Result:= final;
  end
  else if Acao = 'D' then
  begin
    final:= '';
    for i:= 0 to length(Str) do
      begin
        if (Str[i] >= '0') and (Str[i] <= '9') then
          final:= final + chr((ord(Str[i]) + ord('8') - AddCod[i]) mod 26 + ord('0'))
        else
          final:= final + Str[i];
      end;
    Delete(final,1,1);
    Result:= final;
  end;
end;

end.

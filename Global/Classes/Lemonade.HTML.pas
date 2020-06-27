unit LemonadeHTML;

interface

uses
  Vcl.ExtCtrls, Vcl.Graphics, System.SysUtils, Winapi.Windows, System.StrUtils;

type TAlign = (aLeft, aCenter, aRight);
type TList = (liNotOrdered, liOrdered, liDefinition);
type TListType = (ltTerm, ltDefinition, ltNone);
type
  THTML = class
  private
    FNvl : Integer;
    function AlignToStr(Align : TAlign) : string;
    function Ident(Nivel : Integer) : string;

  public
    property Nvl : Integer read FNvl write FNvl;  //NIVEL DE IDENTACAO

    function TColorToHex(Color : TColor) : string;
    function HexToTColor(sColor : string) : TColor;

    //HTML
    function tagHTML(OpenTag : Boolean = True) : string;
    function Table(Width, Height : Integer; OpenTag : Boolean = True;
                         Align : TAlign = aLeft; BorderSize : Integer = 0;
                         BorderColor : TColor = clWhite; CelPadding : Integer = 10; CelSpacing : Integer = 0) : string;
    function Col(Width, Heigth : Integer; OpenTag : Boolean = True; BgColor : TColor = clWhite;
                       Align : TAlign = aLeft) : string;
    function RowCol(Width, Heigth : Integer; OpenTag : Boolean = True; BgColor : TColor = clWhite;
                          Align : TAlign = aLeft) : string;
    function Text(Str : string) : string;

    //LISTS
    function List(OpenTag : Boolean = True; List : TList = liNotOrdered; NeedLineBreak : Boolean = False) : string;
    function ListItem(Text : string; List : TList = liNotOrdered; ListType : TListType = ltNone;
                            NeedLineBreak : Boolean = False) : string; overload;
    function ListItem(OpenTag : Boolean = True; List : TList = liNotOrdered; ListType : TListType = ltNone;
                            NeedLineBreak : Boolean = False) : string; overload;

    //STYLES
    function Font(OpenTag : Boolean = True; Face : TFontName = 'Verdana'; Color : TColor = clWhite;
                        Size : Integer = 2) : string;
    function Center(OpenTag : Boolean = True) : string;
    function Bold(OpenTag : Boolean = True) : string;
    function Italic(OpenTag : Boolean = True) : string;
    function Underline(OpenTag : Boolean = True) : string;
    function LineBreak(iLength : Integer = 1) : string;
  end;

implementation

{ THTML }

function THTML.AlignToStr(Align: TAlign): string;
begin
  case Align of
    aLeft   : Result := 'left';
    aCenter : Result := 'center';
    aRight  : Result := 'right';
  end;
end;

function THTML.Bold(OpenTag: Boolean): string;
begin
  if not OpenTag then Dec(FNvl);

  Result := Ident(FNvl) + IfThen(OpenTag,'<b>','</b>');

  if OpenTag then Inc(FNvl);
end;

function THTML.Center(OpenTag: Boolean): string;
begin
  if not OpenTag then Dec(FNvl);

  Result := Ident(FNvl) + IfThen(OpenTag,'<center>','</center>');

  if OpenTag then Inc(FNvl);
end;

function THTML.Col(Width, Heigth: Integer; OpenTag: Boolean; BgColor: TColor; Align: TAlign): string;
var
  code : string;
begin
  if OpenTag then
  begin
    code := '<td';
    code := code + ' bgcolor="'+ TColorToHex(BgColor) +'"';
    code := code + ' align="'+ AlignToStr(Align) + '"';
    code := code + ' height="'+ IntToStr(Heigth) + '"';
    code := code + ' width="' + IntToStr(Width)  + '"';
    code := code + '>';
  end
  else
    code := '</td>';

  if not OpenTag then Dec(FNvl);

  Result := Ident(FNvl) + code;

  if OpenTag then Inc(FNvl);
end;

function THTML.Font(OpenTag : Boolean; Face: TFontName; Color: TColor; Size: Integer): string;
var
  code : string;
begin
  if OpenTag then
  begin
    code := '<font';
    code := code + ' face="'+ Face +'"';
    code := code + ' size='+ IntToStr(Size);
    code := code + ' color='+ TColorToHex(Color);
  end
  else
    code := '</font';

  code := code + '>';

  if not OpenTag then Dec(FNvl);

  Result := Ident(FNvl) + code;

  if OpenTag then Inc(FNvl);
end;

function THTML.HexToTColor(sColor: string): TColor;
begin
  Result :=
    RGB(StrToInt('$'+Copy(sColor, 1, 2)),  //GET RED VALUE
        StrToInt('$'+Copy(sColor, 3, 2)),  //GET GREEN VALUE
        StrToInt('$'+Copy(sColor, 5, 2))); //GET BLUE VALUE
end;

function THTML.tagHTML(OpenTag: Boolean): string;
begin
  Result := IfThen(OpenTag,'<html>','</html>');

  FNvl := 1;
end;

function THTML.Ident(Nivel: Integer): string;
var
  I: Integer;
  Spaces : string;
begin
  {for I := 1 to (Nivel * 4) do  //SPACES
    Spaces := Spaces + ' '; }

  for I := 1 to Nivel do  //TABS
    Spaces := Spaces + #9;

  Result := Spaces;
end;

function THTML.Italic(OpenTag: Boolean): string;
begin
  if not OpenTag then Dec(FNvl);

  Result := Ident(FNvl) + IfThen(OpenTag,'<i>','</i>');

  if OpenTag then Inc(FNvl);
end;

function THTML.LineBreak(iLength : Integer): string;
var
  code : string;
  I : Integer;
begin
  for I := 1 to iLength do
    code := code + '<br>';

  Result := code;
end;

function THTML.List(OpenTag: Boolean; List: TList; NeedLineBreak: Boolean): string;
var
  code : string;
begin
  code := IfThen(OpenTag, '<', '</');

  case List of
    liNotOrdered : code := code + 'ul';
    liOrdered    : code := code + 'ol';
    liDefinition : code := code + 'dl';
  end;

  code := code + '>';

  if NeedLineBreak then
    code := code + LineBreak;

  if not OpenTag then Dec(FNvl);

  Result := Ident(FNvl) + code;

  if OpenTag then Inc(FNvl);
end;

function THTML.ListItem(Text: string; List: TList; ListType: TListType; NeedLineBreak: Boolean): string;
var
  code : string;
begin
  case List of
    liNotOrdered, liOrdered : code := '<li>' + Text + '</li>';

    liDefinition :
    begin
      case ListType of
        ltTerm, ltNone : code := '<dt>' + Text + '</dt>';
        ltDefinition   : code := '<dd>' + Text + '</dd>';
      end;
    end;
  end;

  if NeedLineBreak then
    code := code + LineBreak;

  Result := Ident(FNvl) + code;
end;

function THTML.ListItem(OpenTag: Boolean; List: TList; ListType: TListType; NeedLineBreak: Boolean): string;
var
  code : string;
begin
  code := IfThen(OpenTag, '<', '</');

  case List of
    liNotOrdered, liOrdered : code := code + 'li>';

    liDefinition :
    begin
      case ListType of
        ltTerm, ltNone : code := code + 'dt>';
        ltDefinition   : code := code + 'dd>';
      end;
    end;
  end;

  if NeedLineBreak then
    code := code + LineBreak;

  if not OpenTag then Dec(FNvl);

  Result := Ident(FNvl) + code;

  if OpenTag then Inc(FNvl);
end;

function THTML.RowCol(Width, Heigth: Integer; OpenTag: Boolean; BgColor: TColor; Align: TAlign): string;
var
  code : string;
begin
  if OpenTag then
  begin
    code := '<tr><td';
    code := code + ' bgcolor="' + TColorToHex(BgColor) + '"';
    code := code + ' align="'   + AlignToStr(Align)    + '"';
    code := code + ' height="'  + IntToStr(Heigth)     + '"';
    code := code + ' width="'   + IntToStr(Width)      + '"';
    code := code + '>';
  end
  else
  begin
    code := '</td></tr>';
  end;

  if not OpenTag then Dec(FNvl);

  Result := Ident(FNvl) + code;

  if OpenTag then Inc(FNvl);
end;

function THTML.Table(Width, Height: Integer; OpenTag: Boolean; Align: TAlign; BorderSize: Integer; BorderColor: TColor; CelPadding,
  CelSpacing: Integer): string;
var
  code : string;
begin
  if OpenTag then
  begin
    code := '<table';
    code := code + ' align="'+ AlignToStr(Align) +'"';
    code := code + ' border="'+ IntToStr(BorderSize) +'"';
    code := code + ' bordercolor='+ TColorToHex(BorderColor);
    code := code + ' cellpadding="'+ IntToStr(CelPadding) +'"';
    code := code + ' cellspacing="'+ IntToStr(CelSpacing) +'"';
    code := code + ' width="'+ IntToStr(Width)  +'"';
    code := IfThen(Height > 0, code + ' height="'+ IntToStr(Height) +'"', code);
    code := code + '>';
  end
  else
    code := '</table>';

  if not OpenTag then Dec(FNvl);

  Result := Ident(FNvl) + code;

  if OpenTag then Inc(FNvl);
end;

function THTML.TColorToHex(Color: TColor): string;
begin
  Result := '#' + IntToHex(GetRValue(Color), 2) +  //RED VALUE
                  IntToHex(GetGValue(Color), 2) +  //GREEN VALUE
                  IntToHex(GetBValue(Color), 2);   //BLUE VALUE
end;

function THTML.Text(Str: string): string;
begin
  Result := Ident(FNvl) + Str;
end;

function THTML.Underline(OpenTag: Boolean): string;
begin
  if not OpenTag then Dec(FNvl);

  Result := Ident(FNvl) + IfThen(OpenTag,'<u>','</u>');

  if OpenTag then Inc(FNvl);
end;

end.

unit Lemonade.ColorTool;

interface

uses
  Vcl.Graphics, System.SysUtils, Winapi.Windows;

type
  TColorTool = class
  public
    class function TColorToHex(Color : TColor) : string; //ERRADO
    class function HexToTColor(sColor : string) : TColor;
    class procedure TColorToRGB(Color : TColor; var R, G, B : Byte);
    class function RGBToColor(R, G, B : Byte) : TColor;
  end;

implementation

{ TColorTool }

class function TColorTool.HexToTColor(sColor: string): TColor;
begin
  Result :=
    RGB(StrToInt('$'+Copy(sColor, 1, 2)),  //GET RED VALUE
        StrToInt('$'+Copy(sColor, 3, 2)),  //GET GREEN VALUE
        StrToInt('$'+Copy(sColor, 5, 2))); //GET BLUE VALUE
end;

class function TColorTool.RGBToColor(R, G, B: Byte): TColor;
begin
  Result := RGB(R, G, B);
end;

class function TColorTool.TColorToHex(Color: TColor): string;
begin
  Result := '#' + IntToHex(GetRValue(Color), 2) +  //RED VALUE
                  IntToHex(GetGValue(Color), 2) +  //GREEN VALUE
                  IntToHex(GetBValue(Color), 2);   //BLUE VALUE
end;

class procedure TColorTool.TColorToRGB(Color: TColor; var R, G, B: Byte);
begin
  R := GetRValue(Color);  //RED VALUE
  G := GetGValue(Color);  //GREEN VALUE
  B := GetBValue(Color);   //BLUE VALUE
end;

end.

unit Lemonade.Helpers.TDBGridHelper;

interface

uses
  DBGrids, Vcl.Grids, Winapi.Windows, System.StrUtils, Vcl.Graphics, Data.DB, Datasnap.DBClient, System.Generics.Collections, uFieldHelper,
  System.UITypes;

type
  TDBGridHelper = class helper for TDBGrid
  /// <summary>* Show Checkbox patterns.</summary>
  /// <param name="Rect">TRect</param>
  /// <param name="Column">TColumn</param>
  procedure ShowCheckBox(const Rect: TRect; Column: TColumn); overload;
  /// <summary>* Show Checkbox on Field Name specified.</summary>
  /// <param name="Rect">Rect DBGrid : TRect</param>
  /// <param name="Column">Column DBGrid : TColumn</param>
  /// <param name="sFieldName">Field Name to show Checkbox : string</param>
  procedure ShowCheckBox(const Rect: TRect; Column: TColumn; sFieldName : string); overload;
  /// <summary>* Show Checkbox on Fields Names specified.</summary>
  /// <param name="sFieldsNames">Fields Names to show Checkbox, separated by commas (,) : string</param>
  /// <param name="Rect">Rect DBGrid : TRect</param>
  /// <param name="Column">Column DBGrid : TColumn</param>
  procedure ShowCheckBox(sFieldsNames : string; const Rect: TRect; Column: TColumn); overload;
  /// <summary>* Check or Uncheck the Checkbox by Column, on Cell Click.</summary>
  /// <param name="Column">Column DBGrid : TColumn</param>
  /// <remarks>If checked, uncheck and vice versa.</remarks>
  procedure ChangeCheckBox(Column : TColumn);
  /// <summary>* Zebra DBGrid (Alternating Colors)</summary>
  /// <param name="SelectedFontColor"> : TColor</param>
  /// <param name="SelectedBGColor"> : TColor</param>
  /// <param name="OddFontColor">Odd Font Color : TColor</param>
  /// <param name="OddBGColor">Odd Background Color : TColor</param>
  /// <param name="EvenFontColor">Even Font Color : TColor</param>
  /// <param name="EvenBGColor">Even Background Color : TColor</param>
  /// <param name="Rect">Rect : TRect</param>
  /// <param name="Column">Column : TColumn</param>
  /// <param name="State">State : TGridDrawState</param>
  procedure AlternateColor(SelectedFontColor, SelectedBGColor, OddFontColor, OddBGColor, EvenFontColor, EvenBGColor : TColor; const Rect : TRect; Column: TColumn; State: TGridDrawState);
  /// <summary>* Set Colors for DBGrid, Selected and Idle.</summary>
  /// <param name="SelectedFontColor">Selected Font Color : TColor</param>
  /// <param name="SelectedBGColor">Selected Background Color : TColor</param>
  /// <param name="FontColor">Idle Font Color : TColor</param>
  /// <param name="BGColor">Idle Background Color : TColor</param>
  /// <param name="Rect">Rect DBGrid : TRect</param>
  /// <param name="Column">Column DBGrid : TColumn</param>
  /// <param name="State">State DBGrid : TGridDrawState</param>
  procedure SetColors(SelectedFontColor, SelectedBGColor, FontColor, BGColor : TColor; const Rect : TRect; Column: TColumn; State: TGridDrawState);
  /// <summary>* Change Selected Colors, Bold, Italic and Underline for DBGrid</summary>
  /// <param name="SelectedFontColor">Selected Font Color : TColor</param>
  /// <param name="SelectedBGColor">Selected Background Color : TColor</param>
  /// <param name="Bold">Selected in Bold : Boolean</param>
  /// <param name="Italic">Selected in Italic : Boolean</param>
  /// <param name="Underline">Selected in Underline : Boolean</param>
  /// <param name="Rect">Rect DBGrid : TRect</param>
  /// <param name="Column">Column DBGrid : TColumn</param>
  /// <param name="State">State DBGrid : TGridDrawState</param>
  procedure SelectedColor(SelectedFontColor, SelectedBGColor : TColor; Bold, Italic, Underline : Boolean; const Rect : TRect; Column: TColumn; State: TGridDrawState);
  /// <summary>* Ajust Columns Auto Width</summary>
  procedure FitGrid;
  /// <summary>* Order Dataset by Column Title Click.</summary>
  /// <param name="Column">DBGrid Column : TColumn</param>
  procedure OrderedBy(Column : TColumn);
  /// <summary>* Paint DBGrid with Colors by Conditions, include and use DBGridConditions.Add with the params.</summary>
  /// <param name="cds">Field : string ex: 'FieldName'<para/>Condition : string ex: ">"...">="<para/>Value : string<para/>Color : string ex: 'clWhite' or '$000000'<para/> : TClientDataSet</param>
  /// <param name="Rect">DBGrid Rectangle : TRect</param>
  /// <param name="Column">DBGrid Column : TColumn</param>
  /// <param name="State">DBGrid State : TGridDrawState</param>
  /// <remarks>Include <see cref="DBGridConditions"/> class</remarks>
  procedure PaintCondictions(var cds : TClientDataSet; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  end;

implementation

{ TDBGridHelper }

procedure TDBGridHelper.ChangeCheckBox(Column: TColumn);
begin
  if not Self.DataSource.DataSet.IsEmpty then
  begin
    if Column = Self.Columns[0] then
    begin
//      Self.Options := [dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgTitleClick,dgTitleHotTrack];
      Self.DataSource.DataSet.Edit;
      Self.DataSource.DataSet.FieldByName('SELECIONADO').AsString := IfThen(Self.DataSource.DataSet.FieldByName('SELECIONADO').AsInteger = 1, '0', '1');
      Self.DataSource.DataSet.Post;
//      Self.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit,dgTitleClick,dgTitleHotTrack];
    end;
  end;
end;

procedure TDBGridHelper.FitGrid;
const
  C_Add = 10;
var
  Rec: TBookmark;
  i: Integer;
  w: Integer;
  a: Array of Integer;
begin
  DataSource.DataSet.DisableControls;
  Rec := DataSource.DataSet.GetBookmark;
  try
    DataSource.Dataset.First;
    SetLength(a, Columns.Count);

    while not DataSource.Dataset.Eof do
    begin
      for I := 0 to Columns.Count - 1 do
      begin
        if Assigned(Columns[i].Field) then
        begin
          if Canvas.TextWidth(DataSource.Dataset.FieldByName(Columns[i].Field.FieldName).DisplayText) >
             Canvas.TextWidth(Columns[i].Title.Caption) then
            w := Canvas.TextWidth(DataSource.Dataset.FieldByName(Columns[i].Field.FieldName).DisplayText)
          else
            w := Canvas.TextWidth(Columns[i].Title.Caption);

          if a[i] < w then
          begin
            a[i] := w;
          end;
        end;
      end;
      DataSource.Dataset.Next;
    end;

    for I := 0 to Columns.Count - 1 do
      Columns[i].Width := a[i] + C_Add;
  finally
    DataSource.Dataset.GotoBookmark(Rec);
    DataSource.Dataset.FreeBookmark(Rec);
    DataSource.Dataset.EnableControls;
  end;
end;

procedure TDBGridHelper.OrderedBy(Column: TColumn);
begin
  TClientDataSet(DataSource.DataSet).IndexFieldNames := Column.FieldName;
end;

procedure TDBGridHelper.PaintCondictions(var cds : TClientDataSet; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  {'FIELD'
  'CONDITION'
  'VALUE'
  'COLOR'
  'FONTSTYLES'}

  cds.Last;
  while not cds.Bof do
  begin
    case AnsiIndexStr(cds.FieldByName('CONDITION').AsStringUp, ['<','<=','=','>=','>','LIKE','CONTAINING']) of
      0 : // <
      begin
        if Self.DataSource.DataSet.FieldByName(cds.FieldByName('FIELD').AsStringUp).Value < cds.FieldByName('VALUE').Value then
        begin
          Self.Canvas.Brush.Color := StringToColor(cds.FieldByName('COLOR').AsString);
          if cds.FieldByName('FONTSTYLES').AsInteger <> -1 then
            Self.Canvas.Font.Style  := [TFontStyle(cds.FieldByName('FONTSTYLES').AsInteger)];
        end;
      end;

      1 : // <=
      begin
        if Self.DataSource.DataSet.FieldByName(cds.FieldByName('FIELD').AsStringUp).Value <= cds.FieldByName('VALUE').Value then
        begin
          Self.Canvas.Brush.Color := StringToColor(cds.FieldByName('COLOR').AsString);
          if cds.FieldByName('FONTSTYLES').AsInteger <> -1 then
            Self.Canvas.Font.Style  := [TFontStyle(cds.FieldByName('FONTSTYLES').AsInteger)];
        end;
      end;

      2 : // =
      begin
        if Self.DataSource.DataSet.FieldByName(cds.FieldByName('FIELD').AsStringUp).Value = cds.FieldByName('VALUE').Value then
        begin
          Self.Canvas.Brush.Color := StringToColor(cds.FieldByName('COLOR').AsString);
          if cds.FieldByName('FONTSTYLES').AsInteger <> -1 then
            Self.Canvas.Font.Style  := [TFontStyle(cds.FieldByName('FONTSTYLES').AsInteger)];
        end;
      end;

      3 : // >=
      begin
        if Self.DataSource.DataSet.FieldByName(cds.FieldByName('FIELD').AsStringUp).Value >= cds.FieldByName('VALUE').Value then
        begin
          Self.Canvas.Brush.Color := StringToColor(cds.FieldByName('COLOR').AsString);
          if cds.FieldByName('FONTSTYLES').AsInteger <> -1 then
            Self.Canvas.Font.Style  := [TFontStyle(cds.FieldByName('FONTSTYLES').AsInteger)];
        end;
      end;

      4 : // >
      begin
        if Self.DataSource.DataSet.FieldByName(cds.FieldByName('FIELD').AsStringUp).Value > cds.FieldByName('VALUE').Value then
        begin
          Self.Canvas.Brush.Color := StringToColor(cds.FieldByName('COLOR').AsString);
          if cds.FieldByName('FONTSTYLES').AsInteger <> -1 then
            Self.Canvas.Font.Style  := [TFontStyle(cds.FieldByName('FONTSTYLES').AsInteger)];
        end;
      end;

      5,6: // LIKE or CONTAINING
      begin
        if Pos(cds.FieldByName('VALUE').Value, Self.DataSource.DataSet.FieldByName(cds.FieldByName('FIELD').AsStringUp).Value) > 0 then
        begin
          Self.Canvas.Brush.Color := StringToColor(cds.FieldByName('COLOR').AsString);
          if cds.FieldByName('FONTSTYLES').AsInteger <> -1 then
            Self.Canvas.Font.Style  := [TFontStyle(cds.FieldByName('FONTSTYLES').AsInteger)];
        end;
      end;
    end;

    cds.Prior;
  end;

  if gdSelected in State then
  begin
    Self.Canvas.Brush.Color := $00AA5500;
    Self.Canvas.Font.Color  := clWhite;
  end
  else
    Self.Canvas.Font.Color  := clBlack;

  Self.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TDBGridHelper.SelectedColor(SelectedFontColor, SelectedBGColor: TColor; Bold, Italic, Underline: Boolean; const Rect: TRect; Column: TColumn; State: TGridDrawState);
begin
  if gdSelected in State then
  begin
    Self.Canvas.Font.Color := SelectedFontColor;
    Self.Canvas.Brush.Color:= SelectedBGColor;

    Canvas.Font.Style := [];

    if Bold then
      Canvas.Font.Style := Canvas.Font.Style + [fsBold];

    if Italic then
      Canvas.Font.Style := Canvas.Font.Style + [fsItalic];

    if Underline then
      Canvas.Font.Style := Canvas.Font.Style + [fsUnderline];
  end;

  Self.Canvas.FillRect(Rect);
  Self.Canvas.TextOut(Rect.Left + 2,Rect.Top, Column.Field.AsString);
end;

procedure TDBGridHelper.SetColors(SelectedFontColor, SelectedBGColor, FontColor, BGColor: TColor; const Rect: TRect; Column: TColumn; State: TGridDrawState);
begin
  if gdSelected in State then
  begin
    Self.Canvas.Font.Color := SelectedFontColor;
    Self.Canvas.Brush.Color:= SelectedBGColor;
  end
  else
  begin
    Self.Canvas.Font.Color := FontColor;
    Self.Canvas.Brush.Color:= BGColor;
  end;

  Self.Canvas.FillRect(Rect);
  Self.Canvas.TextOut(Rect.Left + 2,Rect.Top, Column.Field.AsString);
end;

procedure TDBGridHelper.ShowCheckBox(sFieldsNames: string; const Rect: TRect; Column: TColumn);
var
  Check: Integer;
  R: TRect;
begin
  if Pos(',' + Column.FieldName + ',', ',' + sFieldsNames + ',') > 0 then
  begin
    TDBGrid(Self).Canvas.FillRect(Rect);

    if (Self.DataSource.Dataset.FieldByName(Column.FieldName).AsInteger = 1) then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -2, -2);
    DrawFrameControl(Self.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TDBGridHelper.ShowCheckBox(const Rect: TRect; Column: TColumn; sFieldName: string);
var
  Check: Integer;
  R: TRect;
begin
  if Column.FieldName = sFieldName then
  begin
    TDBGrid(Self).Canvas.FillRect(Rect);

    if (Self.DataSource.Dataset.FieldByName(sFieldName).AsInteger = 1) then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -2, -2);
    DrawFrameControl(Self.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TDBGridHelper.AlternateColor(SelectedFontColor, SelectedBGColor, OddFontColor, OddBGColor, EvenFontColor, EvenBGColor : TColor; const Rect : TRect; Column: TColumn; State: TGridDrawState);
begin
  if gdSelected in State then
  begin
    Self.Canvas.Font.Color := SelectedFontColor;
    Self.Canvas.Brush.Color:= SelectedBGColor;
  end
  else
  begin
    If Odd(Self.DataSource.DataSet.RecNo) then
    begin
      Self.Canvas.Font.Color := OddFontColor;
      Self.Canvas.Brush.Color:= OddBGColor;
    end
    else
    begin
      Self.Canvas.Font.Color := EvenFontColor;
      Self.Canvas.Brush.Color:= EvenBGColor;
    end;
  end;

  Self.Canvas.FillRect(Rect);
  Self.Canvas.TextOut(Rect.Left + 2,Rect.Top, Column.Field.AsString);
end;

procedure TDBGridHelper.ShowCheckBox(const Rect: TRect; Column: TColumn);
var
  Check: Integer;
  R: TRect;
  I : Integer;
const
  aNames : array [0..3] of string = ('SELECIONADO','INATIVO','INATIVA','SELECIONAR');
begin
  for I := 0 to Length(aNames) - 1 do
  begin
    if Column.FieldName = aNames[I] then
    begin
      TDBGrid(Self).Canvas.FillRect(Rect);

      if (Self.DataSource.Dataset.FieldByName(aNames[I]).AsInteger = 1) then
        Check := DFCS_CHECKED
      else
        Check := 0;

      R := Rect;
      InflateRect(R, -2, -2); // Diminue o tamanho do CheckBox
      DrawFrameControl(Self.Canvas.Handle, R, DFC_BUTTON,
        DFCS_BUTTONCHECK or Check);
    end;
  end;
end;

end.

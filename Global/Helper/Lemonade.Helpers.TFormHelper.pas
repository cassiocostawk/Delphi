unit Lemonade.Helpers.TFormHelper;

interface

uses
  Vcl.Forms, Winapi.Messages, Vcl.StdCtrls, JvDBCombobox, JvDBLookup, Vcl.DBCtrls, Vcl.Controls, Lemonade.Types;

type
  TFormHelper = class helper for TForm
    /// <summary>* Can Tab or Can Exit from ActiveControl</summary>
    /// <param name="ActiveControl">TWinControl</param>
    /// <remarks><c>True:</c><para/>TComboBox isn't DroppedDown;<para/>TJvDBComboBox isn't DroppedDown;<para/>TJvDBLookupCombo isn't IsDropDown;<para/>TDBLookupComboBox isn't ListVisible;<para/>TMemo;<para/>TDBMemo.</remarks>
    function CanTab(const ActiveControl : TWinControl) : Boolean;
    /// <summary>* Next Tab Order if Can Tab (function)</summary>
    /// <param name="ActiveControl">TWinControl</param>
    procedure NextTabOrder(const ActiveControl : TWinControl);
    /// <summary>* Prior Tab Order if Can Tab (function)</summary>
    /// <param name="ActiveControl">TWinControl</param>
    procedure PriorTabOrder(const ActiveControl : TWinControl);
    /// <summary>* Controls the position from Form on Screen (function)</summary>
    /// <param name="ScreenAlign">TScreenAlign</param>
    procedure ScreenPosition(ScreenAlign : TScreenAlign);
  end;

implementation

{ TFormHelper }

function TFormHelper.CanTab(const ActiveControl: TWinControl): Boolean;
begin
  Result := not (((ActiveControl is TComboBox)         and (TComboBox(ActiveControl).DroppedDown))         or
                 ((ActiveControl is TJvDBComboBox)     and (TJvDBComboBox(ActiveControl).DroppedDown))     or
                 ((ActiveControl is TJvDBLookupCombo)  and (TJvDBLookupCombo(ActiveControl).IsDropDown))   or
                 ((ActiveControl is TDBLookupComboBox) and (TDBLookupComboBox(ActiveControl).ListVisible)) or
                  (ActiveControl is TMemo) or
                  (ActiveControl is TDBMemo));
end;

procedure TFormHelper.NextTabOrder(const ActiveControl : TWinControl);
begin
  if CanTab(ActiveControl) then
    Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFormHelper.PriorTabOrder(const ActiveControl : TWinControl);
begin
  if CanTab(ActiveControl) then
    Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFormHelper.ScreenPosition(ScreenAlign : TScreenAlign);
var
  vTop, vLeft, vMainTopMargin : Integer;
begin
  if Position = poDesigned then
  begin
    vMainTopMargin := 70;

    case ScreenAlign of
      saTop :
      begin
        vTop  := 0;                                          //V-TOP
        vLeft := Round((Screen.WorkAreaWidth  - Width) / 2); //H-CENTER
      end;

      saBottom :
      begin
        vTop  := Round(Screen.WorkAreaHeight - Height) - 35; //V-BOTTOM
        vLeft := Round((Screen.WorkAreaWidth  - Width) / 2); //H-CENTER
      end;

      saLeft :
      begin
        vTop  := Round((Screen.WorkAreaHeight - Height) / 2); //V-CENTER
        vLeft := 0;                                           //H-LEFT
      end;

      saRight :
      begin
        vTop  := Round((Screen.WorkAreaHeight - Height) / 2); //V-CENTER
        vLeft := Round(Screen.WorkAreaWidth  - Width);        //H-RIGHT
      end;

      saCenter :
      begin
        vTop  := Round((Screen.WorkAreaHeight - Height) / 2); //V-CENTER
        vLeft := Round((Screen.WorkAreaWidth  - Width) / 2);  //H-CENTER
      end;

      saNone :
      begin
        //DESIGNED
      end;
    end;

    //REMOVE MARGINS
    vTop := vTop - vMainTopMargin;
    vLeft := vLeft - 3;

//    if FormStyle = fsNormal then
//      vTop := vTop + vMainTopMargin;

    if vTop < 0 then
      Top := 0
    else
      Top := vTop;

    if vLeft < 0 then
      Left := 0
    else
      Left := vLeft;
  end;
end;

end.


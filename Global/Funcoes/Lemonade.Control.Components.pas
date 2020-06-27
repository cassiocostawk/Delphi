unit Lemonade.Control.Components;

interface

uses
  Vcl.Controls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB;

type
  TControlComponents = class
  public
    class procedure ChangeStateParentsControls(const pControl : TWinControl; State : Boolean);
    class procedure ClearParentsControls(const pControl : TWinControl);
  end;

implementation

{ TControlFields }


class procedure TControlComponents.ClearParentsControls(const pControl: TWinControl);
var
  I : Integer;
begin
  for I := 0 to Pred(pControl.ControlCount) do
  begin
    if (pControl.Controls[I] is TEdit) or
       (pControl.Controls[I] is TLabeledEdit) then
      TCustomEdit(pControl.Controls[I]).Clear;
  end;
end;

class procedure TControlComponents.ChangeStateParentsControls(const pControl: TWinControl; State: Boolean);
var
  I : Integer;
begin
  for I := 0 to Pred(pControl.ControlCount) do
  begin
    //If TDBEdit and DataField is PK or TLabel with FocusControl TDBEdit with DataField as PK, Always Disabled
    if ((pControl.Controls[I] is TDBEdit) and
        (TDataset(TDBEdit(pControl.Controls[I]).DataSource.Dataset).
                 FieldByName(TDBEdit(pControl.Controls[I]).DataField).ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]))

        or

        ((pControl.Controls[I] is TLabel) and (TLabel(pControl.Controls[I]).FocusControl is TDBEdit) and
         (TDataset(TDBEdit(TLabel(pControl.Controls[I]).FocusControl).DataSource.DataSet).
                 FieldByName(TDBEdit(TLabel(pControl.Controls[I]).FocusControl).DataField).ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]))
    then
      pControl.Controls[I].Enabled := False
    else
      pControl.Controls[I].Enabled := State;

    if (pControl.Controls[I] is TGroupBox) or
       (pControl.Controls[I] is TPanel) then
    begin
      ChangeStateParentsControls(TWinControl(pControl.Controls[I]), State);
    end;
  end;
end;

end.

unit Lemonade.Helpers.TDataSetHelper;

interface

uses
  Data.DB;

type
  TDataSetHelper = class helper for TDataSet
  /// <returns><c>True</c> = at the End of the Dataset<para/><c>False</c> = not in the End of Dataset or Dataset is not Active.</returns>
  function IsEof : Boolean;
  /// <returns><c>True</c> = at the End of the Dataset<para/><c>False</c> = not in the End of Dataset or Dataset is not Active.</returns>
  function IsBof : Boolean;
  end;

implementation

{ TDataSetHelper }

function TDataSetHelper.IsEof: Boolean;
begin
  Result := (Active) and (RecNo = RecordCount);
end;

function TDataSetHelper.IsBof: Boolean;
begin
  Result := (Active) and (RecNo = 1);
end;

end.

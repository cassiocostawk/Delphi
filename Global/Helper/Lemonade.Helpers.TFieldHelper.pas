unit Lemonade.Helpers.TFieldHelper;

interface

uses
  Data.DB, System.SysUtils;

type
  TFieldHelper = class helper for TField
  public
    /// <returns><c>True</c> = <c>string is EmptyStr</c> or <c>Field is Null</c>, otherwise <c>False</c></returns>
    function IsEmpty : Boolean;
    /// <returns>String UpperCase</returns>
    function AsStringUp : string;
    /// <returns>String LowerCase</returns>
    function AsStringLw : string;
  end;

implementation

{ TFieldHelper }

function TFieldHelper.AsStringLw: string;
begin
  Result := LowerCase(Self.Value);
end;

function TFieldHelper.AsStringUp: string;
begin
  Result := UpperCase(Self.Value);
end;

function TFieldHelper.IsEmpty: Boolean;
begin
  Result := (Self.Value = EmptyStr) or (Self.IsNull);
end;

end.

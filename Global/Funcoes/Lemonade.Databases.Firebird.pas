unit Lemonade.Databases.Firebird;

interface

uses
  System.StrUtils;

type
  TFirebirdTools = class
    private
      {private scope}
    public
      class function GetSQL_Tables(IncludeSystemTables : Boolean = False; IncludeViews : Boolean = False) : string;
      class function GetSQL_Views(IncludeSystemTables : Boolean = False) : string;
      class function GetSQL_Fields(FilteredAsDetail : Boolean = True) : string;
      class function GetSQL_Domains(FilteredAsDetail : Boolean = True) : string;

      //class function FK, UK, PK
  end;

  { INFORMATIONS }

  { RDB$RELATIONS.RDB$RELATION_TYPE
    0 - tabelas
    1 - views
    2 - tabela externa
    3 - tabela de monitoramento
    4 - nível de conexão GTT
    5 - nível de transação GTT }

implementation

{ TFirebirdTools }

class function TFirebirdTools.GetSQL_Domains(FilteredAsDetail : Boolean = True) : string;
begin
  Result := 'SELECT '+
            '    DOMAINS.RDB$FIELD_NAME, '+
            '    DOMAINS.RDB$FIELD_TYPE, '+
            '    CASE DOMAINS.RDB$FIELD_TYPE '+
            '    WHEN 7 THEN ''SMALLINT'' '+
            '    WHEN 8 THEN ''INTEGER'' '+
            '    WHEN 10 THEN ''FLOAT'' '+
            '    WHEN 12 THEN ''DATE'' '+
            '    WHEN 13 THEN ''TIME'' '+
            '    WHEN 14 THEN ''CHAR'' '+
            '    WHEN 16 THEN ''BIGINT'' '+
            '    WHEN 23 THEN ''BOOLEAN'' '+
            '    WHEN 27 THEN ''DOUBLE PRECISION'' '+
            '    WHEN 35 THEN ''TIMESTAMP'' '+
            '    WHEN 37 THEN ''VARCHAR'' '+
            '    WHEN 261 THEN ''BLOB'' '+
            '    END RDB$FIELD_TYPE_NAME, '+
            '    DOMAINS.RDB$FIELD_SUB_TYPE, '+
            '    CASE DOMAINS.RDB$FIELD_TYPE '+
            '    WHEN 14 THEN     --CHAR SUBTYPES '+
            '        CASE DOMAINS.RDB$FIELD_SUB_TYPE '+
            '        WHEN 0 THEN ''untyped data'' '+
            '        WHEN 1 THEN ''fixed binary data'' '+
            '        END '+
            '    WHEN 261 THEN --BLOB SUBTYPES '+
            '        CASE DOMAINS.RDB$FIELD_SUB_TYPE '+
            '        WHEN 0 THEN ''untyped'' '+
            '        WHEN 1 THEN ''text'' '+
            '        WHEN 2 THEN ''BLR'' '+
            '        WHEN 3 THEN ''access control list'' '+
            '        WHEN 4 THEN ''reserved for future use'' '+
            '        WHEN 5 THEN ''encoded table metadata description'' '+
            '        WHEN 6 THEN ''for storing the details of a cross-database transaction that ends abnormally'' '+
            '        END '+
            '    ELSE '+
            '        IIF(DOMAINS.RDB$FIELD_TYPE IN (7,8,16,10), --SMALLINT, INTEGER, BIGINT SUBTYPES AND NUMERIC, DECIMAL FIXED-POINTS '+
            '            CASE DOMAINS.RDB$FIELD_SUB_TYPE '+
            '            WHEN 1 THEN ''NUMERIC'' '+
            '            WHEN 2 THEN ''DECIMAL'' '+
            '            END, '') '+
            '    END RDB$FIELD_SUB_TYPE_NAME, '+
            '    DOMAINS.RDB$FIELD_PRECISION, '+
            '    (DOMAINS.RDB$FIELD_SCALE * -1) RDB$FIELD_SCALE, '+
            '    DOMAINS.RDB$FIELD_LENGTH, '+
            '    DOMAINS.RDB$CHARACTER_LENGTH '+
            ' FROM RDB$FIELDS DOMAINS '+
            IfThen(FilteredAsDetail, 'WHERE DOMAINS.RDB$FIELD_NAME = :RDB$FIELD_SOURCE', '');
end;

class function TFirebirdTools.GetSQL_Fields(FilteredAsDetail: Boolean): string;
begin
  Result := 'SELECT '+
            '  FIELDS.RDB$FIELD_POSITION '+
            '  FIELDS.RDB$FIELD_NAME, '+
            '  FIELDS.RDB$FIELD_SOURCE '+ //Detail for Domains
            ' FROM RDB$RELATION_FIELDS FIELDS '+
            IfThen(FilteredAsDetail, 'WHERE FIELDS.RDB$RELATION_NAME = :RDB$RELATION_NAME ', '');
end;

class function TFirebirdTools.GetSQL_Tables(IncludeSystemTables : Boolean = False; IncludeViews : Boolean = False) : string;
begin
  Result := 'SELECT TABLES.RDB$RELATION_NAME '+
            '  FROM RDB$RELATIONS TABLES '+
            ' WHERE TABLES.RDB$RELATION_TYPE IN (' + IfThen(IncludeViews, '0,1', '0') + ')' +
            IfThen(IncludeSystemTables, '', 'AND RDB$SYSTEM_FLAG = 0');
end;

class function TFirebirdTools.GetSQL_Views(IncludeSystemTables : Boolean = False) : string;
begin
  Result := 'SELECT RDB$RELATION_NAME FROM RDB$RELATIONS WHERE RDB$RELATION_TYPE = 1 ' +
            IfThen(IncludeSystemTables, '', 'AND RDB$SYSTEM_FLAG = 0');
end;

end.

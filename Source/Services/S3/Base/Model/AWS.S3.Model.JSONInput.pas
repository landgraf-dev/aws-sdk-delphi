unit AWS.S3.Model.JSONInput;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TJSONInput = class;
  
  IJSONInput = interface
    function GetType: TJSONType;
    procedure SetType(const Value: TJSONType);
    function Obj: TJSONInput;
    function IsSetType: Boolean;
    property &Type: TJSONType read GetType write SetType;
  end;
  
  TJSONInput = class
  strict private
    FType: Nullable<TJSONType>;
    function GetType: TJSONType;
    procedure SetType(const Value: TJSONType);
  strict protected
    function Obj: TJSONInput;
  public
    function IsSetType: Boolean;
    property &Type: TJSONType read GetType write SetType;
  end;
  
implementation

{ TJSONInput }

function TJSONInput.Obj: TJSONInput;
begin
  Result := Self;
end;

function TJSONInput.GetType: TJSONType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TJSONInput.SetType(const Value: TJSONType);
begin
  FType := Value;
end;

function TJSONInput.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

end.

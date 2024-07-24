unit AWS.SSM.Model.MetadataValue;

interface

uses
  AWS.Nullable;

type
  TMetadataValue = class;
  
  IMetadataValue = interface
    function GetValue: string;
    procedure SetValue(const Value: string);
    function Obj: TMetadataValue;
    function IsSetValue: Boolean;
    property Value: string read GetValue write SetValue;
  end;
  
  TMetadataValue = class
  strict private
    FValue: Nullable<string>;
    function GetValue: string;
    procedure SetValue(const Value: string);
  strict protected
    function Obj: TMetadataValue;
  public
    function IsSetValue: Boolean;
    property Value: string read GetValue write SetValue;
  end;
  
implementation

{ TMetadataValue }

function TMetadataValue.Obj: TMetadataValue;
begin
  Result := Self;
end;

function TMetadataValue.GetValue: string;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TMetadataValue.SetValue(const Value: string);
begin
  FValue := Value;
end;

function TMetadataValue.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.

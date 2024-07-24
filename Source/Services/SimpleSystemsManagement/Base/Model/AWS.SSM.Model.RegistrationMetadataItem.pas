unit AWS.SSM.Model.RegistrationMetadataItem;

interface

uses
  AWS.Nullable;

type
  TRegistrationMetadataItem = class;
  
  IRegistrationMetadataItem = interface
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetValue: string;
    procedure SetValue(const Value: string);
    function Obj: TRegistrationMetadataItem;
    function IsSetKey: Boolean;
    function IsSetValue: Boolean;
    property Key: string read GetKey write SetKey;
    property Value: string read GetValue write SetValue;
  end;
  
  TRegistrationMetadataItem = class
  strict private
    FKey: Nullable<string>;
    FValue: Nullable<string>;
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetValue: string;
    procedure SetValue(const Value: string);
  strict protected
    function Obj: TRegistrationMetadataItem;
  public
    function IsSetKey: Boolean;
    function IsSetValue: Boolean;
    property Key: string read GetKey write SetKey;
    property Value: string read GetValue write SetValue;
  end;
  
implementation

{ TRegistrationMetadataItem }

function TRegistrationMetadataItem.Obj: TRegistrationMetadataItem;
begin
  Result := Self;
end;

function TRegistrationMetadataItem.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TRegistrationMetadataItem.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TRegistrationMetadataItem.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TRegistrationMetadataItem.GetValue: string;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TRegistrationMetadataItem.SetValue(const Value: string);
begin
  FValue := Value;
end;

function TRegistrationMetadataItem.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.

unit AWS.S3Control.Model.StorageLensTag;

interface

uses
  AWS.Nullable;

type
  TStorageLensTag = class;
  
  IStorageLensTag = interface
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetValue: string;
    procedure SetValue(const Value: string);
    function Obj: TStorageLensTag;
    function IsSetKey: Boolean;
    function IsSetValue: Boolean;
    property Key: string read GetKey write SetKey;
    property Value: string read GetValue write SetValue;
  end;
  
  TStorageLensTag = class
  strict private
    FKey: Nullable<string>;
    FValue: Nullable<string>;
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetValue: string;
    procedure SetValue(const Value: string);
  strict protected
    function Obj: TStorageLensTag;
  public
    function IsSetKey: Boolean;
    function IsSetValue: Boolean;
    property Key: string read GetKey write SetKey;
    property Value: string read GetValue write SetValue;
  end;
  
implementation

{ TStorageLensTag }

function TStorageLensTag.Obj: TStorageLensTag;
begin
  Result := Self;
end;

function TStorageLensTag.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TStorageLensTag.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TStorageLensTag.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TStorageLensTag.GetValue: string;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TStorageLensTag.SetValue(const Value: string);
begin
  FValue := Value;
end;

function TStorageLensTag.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.

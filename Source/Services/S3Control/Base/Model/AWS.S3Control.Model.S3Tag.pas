unit AWS.S3Control.Model.S3Tag;

interface

uses
  Bcl.Types.Nullable;

type
  TS3Tag = class;
  
  IS3Tag = interface
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetValue: string;
    procedure SetValue(const Value: string);
    function Obj: TS3Tag;
    function IsSetKey: Boolean;
    function IsSetValue: Boolean;
    property Key: string read GetKey write SetKey;
    property Value: string read GetValue write SetValue;
  end;
  
  TS3Tag = class
  strict private
    FKey: Nullable<string>;
    FValue: Nullable<string>;
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetValue: string;
    procedure SetValue(const Value: string);
  strict protected
    function Obj: TS3Tag;
  public
    function IsSetKey: Boolean;
    function IsSetValue: Boolean;
    property Key: string read GetKey write SetKey;
    property Value: string read GetValue write SetValue;
  end;
  
implementation

{ TS3Tag }

function TS3Tag.Obj: TS3Tag;
begin
  Result := Self;
end;

function TS3Tag.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TS3Tag.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TS3Tag.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TS3Tag.GetValue: string;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TS3Tag.SetValue(const Value: string);
begin
  FValue := Value;
end;

function TS3Tag.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.

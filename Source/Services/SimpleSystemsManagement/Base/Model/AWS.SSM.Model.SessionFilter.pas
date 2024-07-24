unit AWS.SSM.Model.SessionFilter;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TSessionFilter = class;
  
  ISessionFilter = interface
    function GetKey: TSessionFilterKey;
    procedure SetKey(const Value: TSessionFilterKey);
    function GetValue: string;
    procedure SetValue(const Value: string);
    function Obj: TSessionFilter;
    function IsSetKey: Boolean;
    function IsSetValue: Boolean;
    property Key: TSessionFilterKey read GetKey write SetKey;
    property Value: string read GetValue write SetValue;
  end;
  
  TSessionFilter = class
  strict private
    FKey: Nullable<TSessionFilterKey>;
    FValue: Nullable<string>;
    function GetKey: TSessionFilterKey;
    procedure SetKey(const Value: TSessionFilterKey);
    function GetValue: string;
    procedure SetValue(const Value: string);
  strict protected
    function Obj: TSessionFilter;
  public
    function IsSetKey: Boolean;
    function IsSetValue: Boolean;
    property Key: TSessionFilterKey read GetKey write SetKey;
    property Value: string read GetValue write SetValue;
  end;
  
implementation

{ TSessionFilter }

function TSessionFilter.Obj: TSessionFilter;
begin
  Result := Self;
end;

function TSessionFilter.GetKey: TSessionFilterKey;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TSessionFilter.SetKey(const Value: TSessionFilterKey);
begin
  FKey := Value;
end;

function TSessionFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TSessionFilter.GetValue: string;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TSessionFilter.SetValue(const Value: string);
begin
  FValue := Value;
end;

function TSessionFilter.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.

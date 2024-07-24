unit AWS.SSM.Model.CommandFilter;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TCommandFilter = class;
  
  ICommandFilter = interface
    function GetKey: TCommandFilterKey;
    procedure SetKey(const Value: TCommandFilterKey);
    function GetValue: string;
    procedure SetValue(const Value: string);
    function Obj: TCommandFilter;
    function IsSetKey: Boolean;
    function IsSetValue: Boolean;
    property Key: TCommandFilterKey read GetKey write SetKey;
    property Value: string read GetValue write SetValue;
  end;
  
  TCommandFilter = class
  strict private
    FKey: Nullable<TCommandFilterKey>;
    FValue: Nullable<string>;
    function GetKey: TCommandFilterKey;
    procedure SetKey(const Value: TCommandFilterKey);
    function GetValue: string;
    procedure SetValue(const Value: string);
  strict protected
    function Obj: TCommandFilter;
  public
    function IsSetKey: Boolean;
    function IsSetValue: Boolean;
    property Key: TCommandFilterKey read GetKey write SetKey;
    property Value: string read GetValue write SetValue;
  end;
  
implementation

{ TCommandFilter }

function TCommandFilter.Obj: TCommandFilter;
begin
  Result := Self;
end;

function TCommandFilter.GetKey: TCommandFilterKey;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TCommandFilter.SetKey(const Value: TCommandFilterKey);
begin
  FKey := Value;
end;

function TCommandFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TCommandFilter.GetValue: string;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TCommandFilter.SetValue(const Value: string);
begin
  FValue := Value;
end;

function TCommandFilter.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.

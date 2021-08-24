unit AWS.SESv2.Model.Tag;

interface

uses
  Bcl.Types.Nullable;

type
  TTag = class;
  
  ITag = interface
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetValue: string;
    procedure SetValue(const Value: string);
    function Obj: TTag;
    function IsSetKey: Boolean;
    function IsSetValue: Boolean;
    property Key: string read GetKey write SetKey;
    property Value: string read GetValue write SetValue;
  end;
  
  TTag = class
  strict private
    FKey: Nullable<string>;
    FValue: Nullable<string>;
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetValue: string;
    procedure SetValue(const Value: string);
  strict protected
    function Obj: TTag;
  public
    function IsSetKey: Boolean;
    function IsSetValue: Boolean;
    property Key: string read GetKey write SetKey;
    property Value: string read GetValue write SetValue;
  end;
  
implementation

{ TTag }

function TTag.Obj: TTag;
begin
  Result := Self;
end;

function TTag.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TTag.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TTag.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TTag.GetValue: string;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TTag.SetValue(const Value: string);
begin
  FValue := Value;
end;

function TTag.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.

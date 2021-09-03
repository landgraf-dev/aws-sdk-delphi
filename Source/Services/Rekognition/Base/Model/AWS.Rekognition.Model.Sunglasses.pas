unit AWS.Rekognition.Model.Sunglasses;

interface

uses
  Bcl.Types.Nullable;

type
  TSunglasses = class;
  
  ISunglasses = interface
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetValue: Boolean;
    procedure SetValue(const Value: Boolean);
    function Obj: TSunglasses;
    function IsSetConfidence: Boolean;
    function IsSetValue: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Value: Boolean read GetValue write SetValue;
  end;
  
  TSunglasses = class
  strict private
    FConfidence: Nullable<Double>;
    FValue: Nullable<Boolean>;
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetValue: Boolean;
    procedure SetValue(const Value: Boolean);
  strict protected
    function Obj: TSunglasses;
  public
    function IsSetConfidence: Boolean;
    function IsSetValue: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Value: Boolean read GetValue write SetValue;
  end;
  
implementation

{ TSunglasses }

function TSunglasses.Obj: TSunglasses;
begin
  Result := Self;
end;

function TSunglasses.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TSunglasses.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TSunglasses.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TSunglasses.GetValue: Boolean;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TSunglasses.SetValue(const Value: Boolean);
begin
  FValue := Value;
end;

function TSunglasses.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.

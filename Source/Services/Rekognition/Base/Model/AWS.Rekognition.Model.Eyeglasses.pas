unit AWS.Rekognition.Model.Eyeglasses;

interface

uses
  Bcl.Types.Nullable;

type
  TEyeglasses = class;
  
  IEyeglasses = interface
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetValue: Boolean;
    procedure SetValue(const Value: Boolean);
    function Obj: TEyeglasses;
    function IsSetConfidence: Boolean;
    function IsSetValue: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Value: Boolean read GetValue write SetValue;
  end;
  
  TEyeglasses = class
  strict private
    FConfidence: Nullable<Double>;
    FValue: Nullable<Boolean>;
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetValue: Boolean;
    procedure SetValue(const Value: Boolean);
  strict protected
    function Obj: TEyeglasses;
  public
    function IsSetConfidence: Boolean;
    function IsSetValue: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Value: Boolean read GetValue write SetValue;
  end;
  
implementation

{ TEyeglasses }

function TEyeglasses.Obj: TEyeglasses;
begin
  Result := Self;
end;

function TEyeglasses.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TEyeglasses.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TEyeglasses.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TEyeglasses.GetValue: Boolean;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TEyeglasses.SetValue(const Value: Boolean);
begin
  FValue := Value;
end;

function TEyeglasses.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.

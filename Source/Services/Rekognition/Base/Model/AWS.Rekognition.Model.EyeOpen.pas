unit AWS.Rekognition.Model.EyeOpen;

interface

uses
  Bcl.Types.Nullable;

type
  TEyeOpen = class;
  
  IEyeOpen = interface
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetValue: Boolean;
    procedure SetValue(const Value: Boolean);
    function Obj: TEyeOpen;
    function IsSetConfidence: Boolean;
    function IsSetValue: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Value: Boolean read GetValue write SetValue;
  end;
  
  TEyeOpen = class
  strict private
    FConfidence: Nullable<Double>;
    FValue: Nullable<Boolean>;
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetValue: Boolean;
    procedure SetValue(const Value: Boolean);
  strict protected
    function Obj: TEyeOpen;
  public
    function IsSetConfidence: Boolean;
    function IsSetValue: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Value: Boolean read GetValue write SetValue;
  end;
  
implementation

{ TEyeOpen }

function TEyeOpen.Obj: TEyeOpen;
begin
  Result := Self;
end;

function TEyeOpen.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TEyeOpen.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TEyeOpen.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TEyeOpen.GetValue: Boolean;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TEyeOpen.SetValue(const Value: Boolean);
begin
  FValue := Value;
end;

function TEyeOpen.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.

unit AWS.Rekognition.Model.MouthOpen;

interface

uses
  Bcl.Types.Nullable;

type
  TMouthOpen = class;
  
  IMouthOpen = interface
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetValue: Boolean;
    procedure SetValue(const Value: Boolean);
    function Obj: TMouthOpen;
    function IsSetConfidence: Boolean;
    function IsSetValue: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Value: Boolean read GetValue write SetValue;
  end;
  
  TMouthOpen = class
  strict private
    FConfidence: Nullable<Double>;
    FValue: Nullable<Boolean>;
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetValue: Boolean;
    procedure SetValue(const Value: Boolean);
  strict protected
    function Obj: TMouthOpen;
  public
    function IsSetConfidence: Boolean;
    function IsSetValue: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Value: Boolean read GetValue write SetValue;
  end;
  
implementation

{ TMouthOpen }

function TMouthOpen.Obj: TMouthOpen;
begin
  Result := Self;
end;

function TMouthOpen.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TMouthOpen.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TMouthOpen.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TMouthOpen.GetValue: Boolean;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TMouthOpen.SetValue(const Value: Boolean);
begin
  FValue := Value;
end;

function TMouthOpen.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.

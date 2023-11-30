unit AWS.Rekognition.Model.Mustache;

interface

uses
  AWS.Nullable;

type
  TMustache = class;
  
  IMustache = interface
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetValue: Boolean;
    procedure SetValue(const Value: Boolean);
    function Obj: TMustache;
    function IsSetConfidence: Boolean;
    function IsSetValue: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Value: Boolean read GetValue write SetValue;
  end;
  
  TMustache = class
  strict private
    FConfidence: Nullable<Double>;
    FValue: Nullable<Boolean>;
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetValue: Boolean;
    procedure SetValue(const Value: Boolean);
  strict protected
    function Obj: TMustache;
  public
    function IsSetConfidence: Boolean;
    function IsSetValue: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Value: Boolean read GetValue write SetValue;
  end;
  
implementation

{ TMustache }

function TMustache.Obj: TMustache;
begin
  Result := Self;
end;

function TMustache.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TMustache.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TMustache.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TMustache.GetValue: Boolean;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TMustache.SetValue(const Value: Boolean);
begin
  FValue := Value;
end;

function TMustache.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.

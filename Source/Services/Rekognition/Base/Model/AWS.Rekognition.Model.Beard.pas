unit AWS.Rekognition.Model.Beard;

interface

uses
  Bcl.Types.Nullable;

type
  TBeard = class;
  
  IBeard = interface
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetValue: Boolean;
    procedure SetValue(const Value: Boolean);
    function Obj: TBeard;
    function IsSetConfidence: Boolean;
    function IsSetValue: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Value: Boolean read GetValue write SetValue;
  end;
  
  TBeard = class
  strict private
    FConfidence: Nullable<Double>;
    FValue: Nullable<Boolean>;
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetValue: Boolean;
    procedure SetValue(const Value: Boolean);
  strict protected
    function Obj: TBeard;
  public
    function IsSetConfidence: Boolean;
    function IsSetValue: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Value: Boolean read GetValue write SetValue;
  end;
  
implementation

{ TBeard }

function TBeard.Obj: TBeard;
begin
  Result := Self;
end;

function TBeard.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TBeard.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TBeard.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TBeard.GetValue: Boolean;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TBeard.SetValue(const Value: Boolean);
begin
  FValue := Value;
end;

function TBeard.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.

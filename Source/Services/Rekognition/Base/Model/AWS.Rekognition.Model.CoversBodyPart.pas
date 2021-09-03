unit AWS.Rekognition.Model.CoversBodyPart;

interface

uses
  Bcl.Types.Nullable;

type
  TCoversBodyPart = class;
  
  ICoversBodyPart = interface
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetValue: Boolean;
    procedure SetValue(const Value: Boolean);
    function Obj: TCoversBodyPart;
    function IsSetConfidence: Boolean;
    function IsSetValue: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Value: Boolean read GetValue write SetValue;
  end;
  
  TCoversBodyPart = class
  strict private
    FConfidence: Nullable<Double>;
    FValue: Nullable<Boolean>;
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetValue: Boolean;
    procedure SetValue(const Value: Boolean);
  strict protected
    function Obj: TCoversBodyPart;
  public
    function IsSetConfidence: Boolean;
    function IsSetValue: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Value: Boolean read GetValue write SetValue;
  end;
  
implementation

{ TCoversBodyPart }

function TCoversBodyPart.Obj: TCoversBodyPart;
begin
  Result := Self;
end;

function TCoversBodyPart.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TCoversBodyPart.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TCoversBodyPart.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TCoversBodyPart.GetValue: Boolean;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TCoversBodyPart.SetValue(const Value: Boolean);
begin
  FValue := Value;
end;

function TCoversBodyPart.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.

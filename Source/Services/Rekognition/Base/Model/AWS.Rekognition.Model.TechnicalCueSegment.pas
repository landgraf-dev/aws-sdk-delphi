unit AWS.Rekognition.Model.TechnicalCueSegment;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Enums;

type
  TTechnicalCueSegment = class;
  
  ITechnicalCueSegment = interface
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetType: TTechnicalCueType;
    procedure SetType(const Value: TTechnicalCueType);
    function Obj: TTechnicalCueSegment;
    function IsSetConfidence: Boolean;
    function IsSetType: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property &Type: TTechnicalCueType read GetType write SetType;
  end;
  
  TTechnicalCueSegment = class
  strict private
    FConfidence: Nullable<Double>;
    FType: Nullable<TTechnicalCueType>;
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetType: TTechnicalCueType;
    procedure SetType(const Value: TTechnicalCueType);
  strict protected
    function Obj: TTechnicalCueSegment;
  public
    function IsSetConfidence: Boolean;
    function IsSetType: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property &Type: TTechnicalCueType read GetType write SetType;
  end;
  
implementation

{ TTechnicalCueSegment }

function TTechnicalCueSegment.Obj: TTechnicalCueSegment;
begin
  Result := Self;
end;

function TTechnicalCueSegment.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TTechnicalCueSegment.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TTechnicalCueSegment.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TTechnicalCueSegment.GetType: TTechnicalCueType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TTechnicalCueSegment.SetType(const Value: TTechnicalCueType);
begin
  FType := Value;
end;

function TTechnicalCueSegment.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

end.

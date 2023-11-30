unit AWS.Rekognition.Model.ComparedSourceImageFace;

interface

uses
  AWS.Rekognition.Model.BoundingBox, 
  AWS.Nullable;

type
  TComparedSourceImageFace = class;
  
  IComparedSourceImageFace = interface
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function Obj: TComparedSourceImageFace;
    function IsSetBoundingBox: Boolean;
    function IsSetConfidence: Boolean;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Confidence: Double read GetConfidence write SetConfidence;
  end;
  
  TComparedSourceImageFace = class
  strict private
    FBoundingBox: TBoundingBox;
    FKeepBoundingBox: Boolean;
    FConfidence: Nullable<Double>;
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
  strict protected
    function Obj: TComparedSourceImageFace;
  public
    destructor Destroy; override;
    function IsSetBoundingBox: Boolean;
    function IsSetConfidence: Boolean;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Confidence: Double read GetConfidence write SetConfidence;
  end;
  
implementation

{ TComparedSourceImageFace }

destructor TComparedSourceImageFace.Destroy;
begin
  BoundingBox := nil;
  inherited;
end;

function TComparedSourceImageFace.Obj: TComparedSourceImageFace;
begin
  Result := Self;
end;

function TComparedSourceImageFace.GetBoundingBox: TBoundingBox;
begin
  Result := FBoundingBox;
end;

procedure TComparedSourceImageFace.SetBoundingBox(const Value: TBoundingBox);
begin
  if FBoundingBox <> Value then
  begin
    if not KeepBoundingBox then
      FBoundingBox.Free;
    FBoundingBox := Value;
  end;
end;

function TComparedSourceImageFace.GetKeepBoundingBox: Boolean;
begin
  Result := FKeepBoundingBox;
end;

procedure TComparedSourceImageFace.SetKeepBoundingBox(const Value: Boolean);
begin
  FKeepBoundingBox := Value;
end;

function TComparedSourceImageFace.IsSetBoundingBox: Boolean;
begin
  Result := FBoundingBox <> nil;
end;

function TComparedSourceImageFace.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TComparedSourceImageFace.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TComparedSourceImageFace.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

end.

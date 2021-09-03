unit AWS.Rekognition.Model.ComparedFace;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Rekognition.Model.BoundingBox, 
  AWS.Rekognition.Model.Landmark, 
  AWS.Rekognition.Model.Pose, 
  AWS.Rekognition.Model.ImageQuality;

type
  TComparedFace = class;
  
  IComparedFace = interface
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetLandmarks: TObjectList<TLandmark>;
    procedure SetLandmarks(const Value: TObjectList<TLandmark>);
    function GetKeepLandmarks: Boolean;
    procedure SetKeepLandmarks(const Value: Boolean);
    function GetPose: TPose;
    procedure SetPose(const Value: TPose);
    function GetKeepPose: Boolean;
    procedure SetKeepPose(const Value: Boolean);
    function GetQuality: TImageQuality;
    procedure SetQuality(const Value: TImageQuality);
    function GetKeepQuality: Boolean;
    procedure SetKeepQuality(const Value: Boolean);
    function Obj: TComparedFace;
    function IsSetBoundingBox: Boolean;
    function IsSetConfidence: Boolean;
    function IsSetLandmarks: Boolean;
    function IsSetPose: Boolean;
    function IsSetQuality: Boolean;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Landmarks: TObjectList<TLandmark> read GetLandmarks write SetLandmarks;
    property KeepLandmarks: Boolean read GetKeepLandmarks write SetKeepLandmarks;
    property Pose: TPose read GetPose write SetPose;
    property KeepPose: Boolean read GetKeepPose write SetKeepPose;
    property Quality: TImageQuality read GetQuality write SetQuality;
    property KeepQuality: Boolean read GetKeepQuality write SetKeepQuality;
  end;
  
  TComparedFace = class
  strict private
    FBoundingBox: TBoundingBox;
    FKeepBoundingBox: Boolean;
    FConfidence: Nullable<Double>;
    FLandmarks: TObjectList<TLandmark>;
    FKeepLandmarks: Boolean;
    FPose: TPose;
    FKeepPose: Boolean;
    FQuality: TImageQuality;
    FKeepQuality: Boolean;
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetLandmarks: TObjectList<TLandmark>;
    procedure SetLandmarks(const Value: TObjectList<TLandmark>);
    function GetKeepLandmarks: Boolean;
    procedure SetKeepLandmarks(const Value: Boolean);
    function GetPose: TPose;
    procedure SetPose(const Value: TPose);
    function GetKeepPose: Boolean;
    procedure SetKeepPose(const Value: Boolean);
    function GetQuality: TImageQuality;
    procedure SetQuality(const Value: TImageQuality);
    function GetKeepQuality: Boolean;
    procedure SetKeepQuality(const Value: Boolean);
  strict protected
    function Obj: TComparedFace;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBoundingBox: Boolean;
    function IsSetConfidence: Boolean;
    function IsSetLandmarks: Boolean;
    function IsSetPose: Boolean;
    function IsSetQuality: Boolean;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Landmarks: TObjectList<TLandmark> read GetLandmarks write SetLandmarks;
    property KeepLandmarks: Boolean read GetKeepLandmarks write SetKeepLandmarks;
    property Pose: TPose read GetPose write SetPose;
    property KeepPose: Boolean read GetKeepPose write SetKeepPose;
    property Quality: TImageQuality read GetQuality write SetQuality;
    property KeepQuality: Boolean read GetKeepQuality write SetKeepQuality;
  end;
  
implementation

{ TComparedFace }

constructor TComparedFace.Create;
begin
  inherited;
  FLandmarks := TObjectList<TLandmark>.Create;
end;

destructor TComparedFace.Destroy;
begin
  Quality := nil;
  Pose := nil;
  Landmarks := nil;
  BoundingBox := nil;
  inherited;
end;

function TComparedFace.Obj: TComparedFace;
begin
  Result := Self;
end;

function TComparedFace.GetBoundingBox: TBoundingBox;
begin
  Result := FBoundingBox;
end;

procedure TComparedFace.SetBoundingBox(const Value: TBoundingBox);
begin
  if FBoundingBox <> Value then
  begin
    if not KeepBoundingBox then
      FBoundingBox.Free;
    FBoundingBox := Value;
  end;
end;

function TComparedFace.GetKeepBoundingBox: Boolean;
begin
  Result := FKeepBoundingBox;
end;

procedure TComparedFace.SetKeepBoundingBox(const Value: Boolean);
begin
  FKeepBoundingBox := Value;
end;

function TComparedFace.IsSetBoundingBox: Boolean;
begin
  Result := FBoundingBox <> nil;
end;

function TComparedFace.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TComparedFace.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TComparedFace.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TComparedFace.GetLandmarks: TObjectList<TLandmark>;
begin
  Result := FLandmarks;
end;

procedure TComparedFace.SetLandmarks(const Value: TObjectList<TLandmark>);
begin
  if FLandmarks <> Value then
  begin
    if not KeepLandmarks then
      FLandmarks.Free;
    FLandmarks := Value;
  end;
end;

function TComparedFace.GetKeepLandmarks: Boolean;
begin
  Result := FKeepLandmarks;
end;

procedure TComparedFace.SetKeepLandmarks(const Value: Boolean);
begin
  FKeepLandmarks := Value;
end;

function TComparedFace.IsSetLandmarks: Boolean;
begin
  Result := (FLandmarks <> nil) and (FLandmarks.Count > 0);
end;

function TComparedFace.GetPose: TPose;
begin
  Result := FPose;
end;

procedure TComparedFace.SetPose(const Value: TPose);
begin
  if FPose <> Value then
  begin
    if not KeepPose then
      FPose.Free;
    FPose := Value;
  end;
end;

function TComparedFace.GetKeepPose: Boolean;
begin
  Result := FKeepPose;
end;

procedure TComparedFace.SetKeepPose(const Value: Boolean);
begin
  FKeepPose := Value;
end;

function TComparedFace.IsSetPose: Boolean;
begin
  Result := FPose <> nil;
end;

function TComparedFace.GetQuality: TImageQuality;
begin
  Result := FQuality;
end;

procedure TComparedFace.SetQuality(const Value: TImageQuality);
begin
  if FQuality <> Value then
  begin
    if not KeepQuality then
      FQuality.Free;
    FQuality := Value;
  end;
end;

function TComparedFace.GetKeepQuality: Boolean;
begin
  Result := FKeepQuality;
end;

procedure TComparedFace.SetKeepQuality(const Value: Boolean);
begin
  FKeepQuality := Value;
end;

function TComparedFace.IsSetQuality: Boolean;
begin
  Result := FQuality <> nil;
end;

end.

unit AWS.Rekognition.Model.FaceDetail;

interface

uses
  System.Generics.Collections, 
  AWS.Rekognition.Model.AgeRange, 
  AWS.Rekognition.Model.Beard, 
  AWS.Rekognition.Model.BoundingBox, 
  AWS.Nullable, 
  AWS.Rekognition.Model.Emotion, 
  AWS.Rekognition.Model.Eyeglasses, 
  AWS.Rekognition.Model.EyeOpen, 
  AWS.Rekognition.Model.Gender, 
  AWS.Rekognition.Model.Landmark, 
  AWS.Rekognition.Model.MouthOpen, 
  AWS.Rekognition.Model.Mustache, 
  AWS.Rekognition.Model.Pose, 
  AWS.Rekognition.Model.ImageQuality, 
  AWS.Rekognition.Model.Smile, 
  AWS.Rekognition.Model.Sunglasses;

type
  TFaceDetail = class;
  
  IFaceDetail = interface
    function GetAgeRange: TAgeRange;
    procedure SetAgeRange(const Value: TAgeRange);
    function GetKeepAgeRange: Boolean;
    procedure SetKeepAgeRange(const Value: Boolean);
    function GetBeard: TBeard;
    procedure SetBeard(const Value: TBeard);
    function GetKeepBeard: Boolean;
    procedure SetKeepBeard(const Value: Boolean);
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetEmotions: TObjectList<TEmotion>;
    procedure SetEmotions(const Value: TObjectList<TEmotion>);
    function GetKeepEmotions: Boolean;
    procedure SetKeepEmotions(const Value: Boolean);
    function GetEyeglasses: TEyeglasses;
    procedure SetEyeglasses(const Value: TEyeglasses);
    function GetKeepEyeglasses: Boolean;
    procedure SetKeepEyeglasses(const Value: Boolean);
    function GetEyesOpen: TEyeOpen;
    procedure SetEyesOpen(const Value: TEyeOpen);
    function GetKeepEyesOpen: Boolean;
    procedure SetKeepEyesOpen(const Value: Boolean);
    function GetGender: TGender;
    procedure SetGender(const Value: TGender);
    function GetKeepGender: Boolean;
    procedure SetKeepGender(const Value: Boolean);
    function GetLandmarks: TObjectList<TLandmark>;
    procedure SetLandmarks(const Value: TObjectList<TLandmark>);
    function GetKeepLandmarks: Boolean;
    procedure SetKeepLandmarks(const Value: Boolean);
    function GetMouthOpen: TMouthOpen;
    procedure SetMouthOpen(const Value: TMouthOpen);
    function GetKeepMouthOpen: Boolean;
    procedure SetKeepMouthOpen(const Value: Boolean);
    function GetMustache: TMustache;
    procedure SetMustache(const Value: TMustache);
    function GetKeepMustache: Boolean;
    procedure SetKeepMustache(const Value: Boolean);
    function GetPose: TPose;
    procedure SetPose(const Value: TPose);
    function GetKeepPose: Boolean;
    procedure SetKeepPose(const Value: Boolean);
    function GetQuality: TImageQuality;
    procedure SetQuality(const Value: TImageQuality);
    function GetKeepQuality: Boolean;
    procedure SetKeepQuality(const Value: Boolean);
    function GetSmile: TSmile;
    procedure SetSmile(const Value: TSmile);
    function GetKeepSmile: Boolean;
    procedure SetKeepSmile(const Value: Boolean);
    function GetSunglasses: TSunglasses;
    procedure SetSunglasses(const Value: TSunglasses);
    function GetKeepSunglasses: Boolean;
    procedure SetKeepSunglasses(const Value: Boolean);
    function Obj: TFaceDetail;
    function IsSetAgeRange: Boolean;
    function IsSetBeard: Boolean;
    function IsSetBoundingBox: Boolean;
    function IsSetConfidence: Boolean;
    function IsSetEmotions: Boolean;
    function IsSetEyeglasses: Boolean;
    function IsSetEyesOpen: Boolean;
    function IsSetGender: Boolean;
    function IsSetLandmarks: Boolean;
    function IsSetMouthOpen: Boolean;
    function IsSetMustache: Boolean;
    function IsSetPose: Boolean;
    function IsSetQuality: Boolean;
    function IsSetSmile: Boolean;
    function IsSetSunglasses: Boolean;
    property AgeRange: TAgeRange read GetAgeRange write SetAgeRange;
    property KeepAgeRange: Boolean read GetKeepAgeRange write SetKeepAgeRange;
    property Beard: TBeard read GetBeard write SetBeard;
    property KeepBeard: Boolean read GetKeepBeard write SetKeepBeard;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Emotions: TObjectList<TEmotion> read GetEmotions write SetEmotions;
    property KeepEmotions: Boolean read GetKeepEmotions write SetKeepEmotions;
    property Eyeglasses: TEyeglasses read GetEyeglasses write SetEyeglasses;
    property KeepEyeglasses: Boolean read GetKeepEyeglasses write SetKeepEyeglasses;
    property EyesOpen: TEyeOpen read GetEyesOpen write SetEyesOpen;
    property KeepEyesOpen: Boolean read GetKeepEyesOpen write SetKeepEyesOpen;
    property Gender: TGender read GetGender write SetGender;
    property KeepGender: Boolean read GetKeepGender write SetKeepGender;
    property Landmarks: TObjectList<TLandmark> read GetLandmarks write SetLandmarks;
    property KeepLandmarks: Boolean read GetKeepLandmarks write SetKeepLandmarks;
    property MouthOpen: TMouthOpen read GetMouthOpen write SetMouthOpen;
    property KeepMouthOpen: Boolean read GetKeepMouthOpen write SetKeepMouthOpen;
    property Mustache: TMustache read GetMustache write SetMustache;
    property KeepMustache: Boolean read GetKeepMustache write SetKeepMustache;
    property Pose: TPose read GetPose write SetPose;
    property KeepPose: Boolean read GetKeepPose write SetKeepPose;
    property Quality: TImageQuality read GetQuality write SetQuality;
    property KeepQuality: Boolean read GetKeepQuality write SetKeepQuality;
    property Smile: TSmile read GetSmile write SetSmile;
    property KeepSmile: Boolean read GetKeepSmile write SetKeepSmile;
    property Sunglasses: TSunglasses read GetSunglasses write SetSunglasses;
    property KeepSunglasses: Boolean read GetKeepSunglasses write SetKeepSunglasses;
  end;
  
  TFaceDetail = class
  strict private
    FAgeRange: TAgeRange;
    FKeepAgeRange: Boolean;
    FBeard: TBeard;
    FKeepBeard: Boolean;
    FBoundingBox: TBoundingBox;
    FKeepBoundingBox: Boolean;
    FConfidence: Nullable<Double>;
    FEmotions: TObjectList<TEmotion>;
    FKeepEmotions: Boolean;
    FEyeglasses: TEyeglasses;
    FKeepEyeglasses: Boolean;
    FEyesOpen: TEyeOpen;
    FKeepEyesOpen: Boolean;
    FGender: TGender;
    FKeepGender: Boolean;
    FLandmarks: TObjectList<TLandmark>;
    FKeepLandmarks: Boolean;
    FMouthOpen: TMouthOpen;
    FKeepMouthOpen: Boolean;
    FMustache: TMustache;
    FKeepMustache: Boolean;
    FPose: TPose;
    FKeepPose: Boolean;
    FQuality: TImageQuality;
    FKeepQuality: Boolean;
    FSmile: TSmile;
    FKeepSmile: Boolean;
    FSunglasses: TSunglasses;
    FKeepSunglasses: Boolean;
    function GetAgeRange: TAgeRange;
    procedure SetAgeRange(const Value: TAgeRange);
    function GetKeepAgeRange: Boolean;
    procedure SetKeepAgeRange(const Value: Boolean);
    function GetBeard: TBeard;
    procedure SetBeard(const Value: TBeard);
    function GetKeepBeard: Boolean;
    procedure SetKeepBeard(const Value: Boolean);
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetEmotions: TObjectList<TEmotion>;
    procedure SetEmotions(const Value: TObjectList<TEmotion>);
    function GetKeepEmotions: Boolean;
    procedure SetKeepEmotions(const Value: Boolean);
    function GetEyeglasses: TEyeglasses;
    procedure SetEyeglasses(const Value: TEyeglasses);
    function GetKeepEyeglasses: Boolean;
    procedure SetKeepEyeglasses(const Value: Boolean);
    function GetEyesOpen: TEyeOpen;
    procedure SetEyesOpen(const Value: TEyeOpen);
    function GetKeepEyesOpen: Boolean;
    procedure SetKeepEyesOpen(const Value: Boolean);
    function GetGender: TGender;
    procedure SetGender(const Value: TGender);
    function GetKeepGender: Boolean;
    procedure SetKeepGender(const Value: Boolean);
    function GetLandmarks: TObjectList<TLandmark>;
    procedure SetLandmarks(const Value: TObjectList<TLandmark>);
    function GetKeepLandmarks: Boolean;
    procedure SetKeepLandmarks(const Value: Boolean);
    function GetMouthOpen: TMouthOpen;
    procedure SetMouthOpen(const Value: TMouthOpen);
    function GetKeepMouthOpen: Boolean;
    procedure SetKeepMouthOpen(const Value: Boolean);
    function GetMustache: TMustache;
    procedure SetMustache(const Value: TMustache);
    function GetKeepMustache: Boolean;
    procedure SetKeepMustache(const Value: Boolean);
    function GetPose: TPose;
    procedure SetPose(const Value: TPose);
    function GetKeepPose: Boolean;
    procedure SetKeepPose(const Value: Boolean);
    function GetQuality: TImageQuality;
    procedure SetQuality(const Value: TImageQuality);
    function GetKeepQuality: Boolean;
    procedure SetKeepQuality(const Value: Boolean);
    function GetSmile: TSmile;
    procedure SetSmile(const Value: TSmile);
    function GetKeepSmile: Boolean;
    procedure SetKeepSmile(const Value: Boolean);
    function GetSunglasses: TSunglasses;
    procedure SetSunglasses(const Value: TSunglasses);
    function GetKeepSunglasses: Boolean;
    procedure SetKeepSunglasses(const Value: Boolean);
  strict protected
    function Obj: TFaceDetail;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAgeRange: Boolean;
    function IsSetBeard: Boolean;
    function IsSetBoundingBox: Boolean;
    function IsSetConfidence: Boolean;
    function IsSetEmotions: Boolean;
    function IsSetEyeglasses: Boolean;
    function IsSetEyesOpen: Boolean;
    function IsSetGender: Boolean;
    function IsSetLandmarks: Boolean;
    function IsSetMouthOpen: Boolean;
    function IsSetMustache: Boolean;
    function IsSetPose: Boolean;
    function IsSetQuality: Boolean;
    function IsSetSmile: Boolean;
    function IsSetSunglasses: Boolean;
    property AgeRange: TAgeRange read GetAgeRange write SetAgeRange;
    property KeepAgeRange: Boolean read GetKeepAgeRange write SetKeepAgeRange;
    property Beard: TBeard read GetBeard write SetBeard;
    property KeepBeard: Boolean read GetKeepBeard write SetKeepBeard;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Emotions: TObjectList<TEmotion> read GetEmotions write SetEmotions;
    property KeepEmotions: Boolean read GetKeepEmotions write SetKeepEmotions;
    property Eyeglasses: TEyeglasses read GetEyeglasses write SetEyeglasses;
    property KeepEyeglasses: Boolean read GetKeepEyeglasses write SetKeepEyeglasses;
    property EyesOpen: TEyeOpen read GetEyesOpen write SetEyesOpen;
    property KeepEyesOpen: Boolean read GetKeepEyesOpen write SetKeepEyesOpen;
    property Gender: TGender read GetGender write SetGender;
    property KeepGender: Boolean read GetKeepGender write SetKeepGender;
    property Landmarks: TObjectList<TLandmark> read GetLandmarks write SetLandmarks;
    property KeepLandmarks: Boolean read GetKeepLandmarks write SetKeepLandmarks;
    property MouthOpen: TMouthOpen read GetMouthOpen write SetMouthOpen;
    property KeepMouthOpen: Boolean read GetKeepMouthOpen write SetKeepMouthOpen;
    property Mustache: TMustache read GetMustache write SetMustache;
    property KeepMustache: Boolean read GetKeepMustache write SetKeepMustache;
    property Pose: TPose read GetPose write SetPose;
    property KeepPose: Boolean read GetKeepPose write SetKeepPose;
    property Quality: TImageQuality read GetQuality write SetQuality;
    property KeepQuality: Boolean read GetKeepQuality write SetKeepQuality;
    property Smile: TSmile read GetSmile write SetSmile;
    property KeepSmile: Boolean read GetKeepSmile write SetKeepSmile;
    property Sunglasses: TSunglasses read GetSunglasses write SetSunglasses;
    property KeepSunglasses: Boolean read GetKeepSunglasses write SetKeepSunglasses;
  end;
  
implementation

{ TFaceDetail }

constructor TFaceDetail.Create;
begin
  inherited;
  FEmotions := TObjectList<TEmotion>.Create;
  FLandmarks := TObjectList<TLandmark>.Create;
end;

destructor TFaceDetail.Destroy;
begin
  Sunglasses := nil;
  Smile := nil;
  Quality := nil;
  Pose := nil;
  Mustache := nil;
  MouthOpen := nil;
  Landmarks := nil;
  Gender := nil;
  EyesOpen := nil;
  Eyeglasses := nil;
  Emotions := nil;
  BoundingBox := nil;
  Beard := nil;
  AgeRange := nil;
  inherited;
end;

function TFaceDetail.Obj: TFaceDetail;
begin
  Result := Self;
end;

function TFaceDetail.GetAgeRange: TAgeRange;
begin
  Result := FAgeRange;
end;

procedure TFaceDetail.SetAgeRange(const Value: TAgeRange);
begin
  if FAgeRange <> Value then
  begin
    if not KeepAgeRange then
      FAgeRange.Free;
    FAgeRange := Value;
  end;
end;

function TFaceDetail.GetKeepAgeRange: Boolean;
begin
  Result := FKeepAgeRange;
end;

procedure TFaceDetail.SetKeepAgeRange(const Value: Boolean);
begin
  FKeepAgeRange := Value;
end;

function TFaceDetail.IsSetAgeRange: Boolean;
begin
  Result := FAgeRange <> nil;
end;

function TFaceDetail.GetBeard: TBeard;
begin
  Result := FBeard;
end;

procedure TFaceDetail.SetBeard(const Value: TBeard);
begin
  if FBeard <> Value then
  begin
    if not KeepBeard then
      FBeard.Free;
    FBeard := Value;
  end;
end;

function TFaceDetail.GetKeepBeard: Boolean;
begin
  Result := FKeepBeard;
end;

procedure TFaceDetail.SetKeepBeard(const Value: Boolean);
begin
  FKeepBeard := Value;
end;

function TFaceDetail.IsSetBeard: Boolean;
begin
  Result := FBeard <> nil;
end;

function TFaceDetail.GetBoundingBox: TBoundingBox;
begin
  Result := FBoundingBox;
end;

procedure TFaceDetail.SetBoundingBox(const Value: TBoundingBox);
begin
  if FBoundingBox <> Value then
  begin
    if not KeepBoundingBox then
      FBoundingBox.Free;
    FBoundingBox := Value;
  end;
end;

function TFaceDetail.GetKeepBoundingBox: Boolean;
begin
  Result := FKeepBoundingBox;
end;

procedure TFaceDetail.SetKeepBoundingBox(const Value: Boolean);
begin
  FKeepBoundingBox := Value;
end;

function TFaceDetail.IsSetBoundingBox: Boolean;
begin
  Result := FBoundingBox <> nil;
end;

function TFaceDetail.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TFaceDetail.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TFaceDetail.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TFaceDetail.GetEmotions: TObjectList<TEmotion>;
begin
  Result := FEmotions;
end;

procedure TFaceDetail.SetEmotions(const Value: TObjectList<TEmotion>);
begin
  if FEmotions <> Value then
  begin
    if not KeepEmotions then
      FEmotions.Free;
    FEmotions := Value;
  end;
end;

function TFaceDetail.GetKeepEmotions: Boolean;
begin
  Result := FKeepEmotions;
end;

procedure TFaceDetail.SetKeepEmotions(const Value: Boolean);
begin
  FKeepEmotions := Value;
end;

function TFaceDetail.IsSetEmotions: Boolean;
begin
  Result := (FEmotions <> nil) and (FEmotions.Count > 0);
end;

function TFaceDetail.GetEyeglasses: TEyeglasses;
begin
  Result := FEyeglasses;
end;

procedure TFaceDetail.SetEyeglasses(const Value: TEyeglasses);
begin
  if FEyeglasses <> Value then
  begin
    if not KeepEyeglasses then
      FEyeglasses.Free;
    FEyeglasses := Value;
  end;
end;

function TFaceDetail.GetKeepEyeglasses: Boolean;
begin
  Result := FKeepEyeglasses;
end;

procedure TFaceDetail.SetKeepEyeglasses(const Value: Boolean);
begin
  FKeepEyeglasses := Value;
end;

function TFaceDetail.IsSetEyeglasses: Boolean;
begin
  Result := FEyeglasses <> nil;
end;

function TFaceDetail.GetEyesOpen: TEyeOpen;
begin
  Result := FEyesOpen;
end;

procedure TFaceDetail.SetEyesOpen(const Value: TEyeOpen);
begin
  if FEyesOpen <> Value then
  begin
    if not KeepEyesOpen then
      FEyesOpen.Free;
    FEyesOpen := Value;
  end;
end;

function TFaceDetail.GetKeepEyesOpen: Boolean;
begin
  Result := FKeepEyesOpen;
end;

procedure TFaceDetail.SetKeepEyesOpen(const Value: Boolean);
begin
  FKeepEyesOpen := Value;
end;

function TFaceDetail.IsSetEyesOpen: Boolean;
begin
  Result := FEyesOpen <> nil;
end;

function TFaceDetail.GetGender: TGender;
begin
  Result := FGender;
end;

procedure TFaceDetail.SetGender(const Value: TGender);
begin
  if FGender <> Value then
  begin
    if not KeepGender then
      FGender.Free;
    FGender := Value;
  end;
end;

function TFaceDetail.GetKeepGender: Boolean;
begin
  Result := FKeepGender;
end;

procedure TFaceDetail.SetKeepGender(const Value: Boolean);
begin
  FKeepGender := Value;
end;

function TFaceDetail.IsSetGender: Boolean;
begin
  Result := FGender <> nil;
end;

function TFaceDetail.GetLandmarks: TObjectList<TLandmark>;
begin
  Result := FLandmarks;
end;

procedure TFaceDetail.SetLandmarks(const Value: TObjectList<TLandmark>);
begin
  if FLandmarks <> Value then
  begin
    if not KeepLandmarks then
      FLandmarks.Free;
    FLandmarks := Value;
  end;
end;

function TFaceDetail.GetKeepLandmarks: Boolean;
begin
  Result := FKeepLandmarks;
end;

procedure TFaceDetail.SetKeepLandmarks(const Value: Boolean);
begin
  FKeepLandmarks := Value;
end;

function TFaceDetail.IsSetLandmarks: Boolean;
begin
  Result := (FLandmarks <> nil) and (FLandmarks.Count > 0);
end;

function TFaceDetail.GetMouthOpen: TMouthOpen;
begin
  Result := FMouthOpen;
end;

procedure TFaceDetail.SetMouthOpen(const Value: TMouthOpen);
begin
  if FMouthOpen <> Value then
  begin
    if not KeepMouthOpen then
      FMouthOpen.Free;
    FMouthOpen := Value;
  end;
end;

function TFaceDetail.GetKeepMouthOpen: Boolean;
begin
  Result := FKeepMouthOpen;
end;

procedure TFaceDetail.SetKeepMouthOpen(const Value: Boolean);
begin
  FKeepMouthOpen := Value;
end;

function TFaceDetail.IsSetMouthOpen: Boolean;
begin
  Result := FMouthOpen <> nil;
end;

function TFaceDetail.GetMustache: TMustache;
begin
  Result := FMustache;
end;

procedure TFaceDetail.SetMustache(const Value: TMustache);
begin
  if FMustache <> Value then
  begin
    if not KeepMustache then
      FMustache.Free;
    FMustache := Value;
  end;
end;

function TFaceDetail.GetKeepMustache: Boolean;
begin
  Result := FKeepMustache;
end;

procedure TFaceDetail.SetKeepMustache(const Value: Boolean);
begin
  FKeepMustache := Value;
end;

function TFaceDetail.IsSetMustache: Boolean;
begin
  Result := FMustache <> nil;
end;

function TFaceDetail.GetPose: TPose;
begin
  Result := FPose;
end;

procedure TFaceDetail.SetPose(const Value: TPose);
begin
  if FPose <> Value then
  begin
    if not KeepPose then
      FPose.Free;
    FPose := Value;
  end;
end;

function TFaceDetail.GetKeepPose: Boolean;
begin
  Result := FKeepPose;
end;

procedure TFaceDetail.SetKeepPose(const Value: Boolean);
begin
  FKeepPose := Value;
end;

function TFaceDetail.IsSetPose: Boolean;
begin
  Result := FPose <> nil;
end;

function TFaceDetail.GetQuality: TImageQuality;
begin
  Result := FQuality;
end;

procedure TFaceDetail.SetQuality(const Value: TImageQuality);
begin
  if FQuality <> Value then
  begin
    if not KeepQuality then
      FQuality.Free;
    FQuality := Value;
  end;
end;

function TFaceDetail.GetKeepQuality: Boolean;
begin
  Result := FKeepQuality;
end;

procedure TFaceDetail.SetKeepQuality(const Value: Boolean);
begin
  FKeepQuality := Value;
end;

function TFaceDetail.IsSetQuality: Boolean;
begin
  Result := FQuality <> nil;
end;

function TFaceDetail.GetSmile: TSmile;
begin
  Result := FSmile;
end;

procedure TFaceDetail.SetSmile(const Value: TSmile);
begin
  if FSmile <> Value then
  begin
    if not KeepSmile then
      FSmile.Free;
    FSmile := Value;
  end;
end;

function TFaceDetail.GetKeepSmile: Boolean;
begin
  Result := FKeepSmile;
end;

procedure TFaceDetail.SetKeepSmile(const Value: Boolean);
begin
  FKeepSmile := Value;
end;

function TFaceDetail.IsSetSmile: Boolean;
begin
  Result := FSmile <> nil;
end;

function TFaceDetail.GetSunglasses: TSunglasses;
begin
  Result := FSunglasses;
end;

procedure TFaceDetail.SetSunglasses(const Value: TSunglasses);
begin
  if FSunglasses <> Value then
  begin
    if not KeepSunglasses then
      FSunglasses.Free;
    FSunglasses := Value;
  end;
end;

function TFaceDetail.GetKeepSunglasses: Boolean;
begin
  Result := FKeepSunglasses;
end;

procedure TFaceDetail.SetKeepSunglasses(const Value: Boolean);
begin
  FKeepSunglasses := Value;
end;

function TFaceDetail.IsSetSunglasses: Boolean;
begin
  Result := FSunglasses <> nil;
end;

end.

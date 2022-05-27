unit AWS.Rekognition.Model.CelebrityDetail;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Rekognition.Model.BoundingBox, 
  AWS.Rekognition.Model.FaceDetail, 
  AWS.Rekognition.Model.KnownGender;

type
  TCelebrityDetail = class;
  
  ICelebrityDetail = interface
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetFace: TFaceDetail;
    procedure SetFace(const Value: TFaceDetail);
    function GetKeepFace: Boolean;
    procedure SetKeepFace(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetKnownGender: TKnownGender;
    procedure SetKnownGender(const Value: TKnownGender);
    function GetKeepKnownGender: Boolean;
    procedure SetKeepKnownGender(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetUrls: TList<string>;
    procedure SetUrls(const Value: TList<string>);
    function GetKeepUrls: Boolean;
    procedure SetKeepUrls(const Value: Boolean);
    function Obj: TCelebrityDetail;
    function IsSetBoundingBox: Boolean;
    function IsSetConfidence: Boolean;
    function IsSetFace: Boolean;
    function IsSetId: Boolean;
    function IsSetKnownGender: Boolean;
    function IsSetName: Boolean;
    function IsSetUrls: Boolean;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Face: TFaceDetail read GetFace write SetFace;
    property KeepFace: Boolean read GetKeepFace write SetKeepFace;
    property Id: string read GetId write SetId;
    property KnownGender: TKnownGender read GetKnownGender write SetKnownGender;
    property KeepKnownGender: Boolean read GetKeepKnownGender write SetKeepKnownGender;
    property Name: string read GetName write SetName;
    property Urls: TList<string> read GetUrls write SetUrls;
    property KeepUrls: Boolean read GetKeepUrls write SetKeepUrls;
  end;
  
  TCelebrityDetail = class
  strict private
    FBoundingBox: TBoundingBox;
    FKeepBoundingBox: Boolean;
    FConfidence: Nullable<Double>;
    FFace: TFaceDetail;
    FKeepFace: Boolean;
    FId: Nullable<string>;
    FKnownGender: TKnownGender;
    FKeepKnownGender: Boolean;
    FName: Nullable<string>;
    FUrls: TList<string>;
    FKeepUrls: Boolean;
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetFace: TFaceDetail;
    procedure SetFace(const Value: TFaceDetail);
    function GetKeepFace: Boolean;
    procedure SetKeepFace(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetKnownGender: TKnownGender;
    procedure SetKnownGender(const Value: TKnownGender);
    function GetKeepKnownGender: Boolean;
    procedure SetKeepKnownGender(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetUrls: TList<string>;
    procedure SetUrls(const Value: TList<string>);
    function GetKeepUrls: Boolean;
    procedure SetKeepUrls(const Value: Boolean);
  strict protected
    function Obj: TCelebrityDetail;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBoundingBox: Boolean;
    function IsSetConfidence: Boolean;
    function IsSetFace: Boolean;
    function IsSetId: Boolean;
    function IsSetKnownGender: Boolean;
    function IsSetName: Boolean;
    function IsSetUrls: Boolean;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Face: TFaceDetail read GetFace write SetFace;
    property KeepFace: Boolean read GetKeepFace write SetKeepFace;
    property Id: string read GetId write SetId;
    property KnownGender: TKnownGender read GetKnownGender write SetKnownGender;
    property KeepKnownGender: Boolean read GetKeepKnownGender write SetKeepKnownGender;
    property Name: string read GetName write SetName;
    property Urls: TList<string> read GetUrls write SetUrls;
    property KeepUrls: Boolean read GetKeepUrls write SetKeepUrls;
  end;
  
implementation

{ TCelebrityDetail }

constructor TCelebrityDetail.Create;
begin
  inherited;
  FUrls := TList<string>.Create;
end;

destructor TCelebrityDetail.Destroy;
begin
  Urls := nil;
  KnownGender := nil;
  Face := nil;
  BoundingBox := nil;
  inherited;
end;

function TCelebrityDetail.Obj: TCelebrityDetail;
begin
  Result := Self;
end;

function TCelebrityDetail.GetBoundingBox: TBoundingBox;
begin
  Result := FBoundingBox;
end;

procedure TCelebrityDetail.SetBoundingBox(const Value: TBoundingBox);
begin
  if FBoundingBox <> Value then
  begin
    if not KeepBoundingBox then
      FBoundingBox.Free;
    FBoundingBox := Value;
  end;
end;

function TCelebrityDetail.GetKeepBoundingBox: Boolean;
begin
  Result := FKeepBoundingBox;
end;

procedure TCelebrityDetail.SetKeepBoundingBox(const Value: Boolean);
begin
  FKeepBoundingBox := Value;
end;

function TCelebrityDetail.IsSetBoundingBox: Boolean;
begin
  Result := FBoundingBox <> nil;
end;

function TCelebrityDetail.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TCelebrityDetail.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TCelebrityDetail.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TCelebrityDetail.GetFace: TFaceDetail;
begin
  Result := FFace;
end;

procedure TCelebrityDetail.SetFace(const Value: TFaceDetail);
begin
  if FFace <> Value then
  begin
    if not KeepFace then
      FFace.Free;
    FFace := Value;
  end;
end;

function TCelebrityDetail.GetKeepFace: Boolean;
begin
  Result := FKeepFace;
end;

procedure TCelebrityDetail.SetKeepFace(const Value: Boolean);
begin
  FKeepFace := Value;
end;

function TCelebrityDetail.IsSetFace: Boolean;
begin
  Result := FFace <> nil;
end;

function TCelebrityDetail.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TCelebrityDetail.SetId(const Value: string);
begin
  FId := Value;
end;

function TCelebrityDetail.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TCelebrityDetail.GetKnownGender: TKnownGender;
begin
  Result := FKnownGender;
end;

procedure TCelebrityDetail.SetKnownGender(const Value: TKnownGender);
begin
  if FKnownGender <> Value then
  begin
    if not KeepKnownGender then
      FKnownGender.Free;
    FKnownGender := Value;
  end;
end;

function TCelebrityDetail.GetKeepKnownGender: Boolean;
begin
  Result := FKeepKnownGender;
end;

procedure TCelebrityDetail.SetKeepKnownGender(const Value: Boolean);
begin
  FKeepKnownGender := Value;
end;

function TCelebrityDetail.IsSetKnownGender: Boolean;
begin
  Result := FKnownGender <> nil;
end;

function TCelebrityDetail.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TCelebrityDetail.SetName(const Value: string);
begin
  FName := Value;
end;

function TCelebrityDetail.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TCelebrityDetail.GetUrls: TList<string>;
begin
  Result := FUrls;
end;

procedure TCelebrityDetail.SetUrls(const Value: TList<string>);
begin
  if FUrls <> Value then
  begin
    if not KeepUrls then
      FUrls.Free;
    FUrls := Value;
  end;
end;

function TCelebrityDetail.GetKeepUrls: Boolean;
begin
  Result := FKeepUrls;
end;

procedure TCelebrityDetail.SetKeepUrls(const Value: Boolean);
begin
  FKeepUrls := Value;
end;

function TCelebrityDetail.IsSetUrls: Boolean;
begin
  Result := (FUrls <> nil) and (FUrls.Count > 0);
end;

end.

unit AWS.Rekognition.Model.Face;

interface

uses
  AWS.Rekognition.Model.BoundingBox, 
  AWS.Nullable;

type
  TFace = class;
  
  IFace = interface
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetExternalImageId: string;
    procedure SetExternalImageId(const Value: string);
    function GetFaceId: string;
    procedure SetFaceId(const Value: string);
    function GetImageId: string;
    procedure SetImageId(const Value: string);
    function GetIndexFacesModelVersion: string;
    procedure SetIndexFacesModelVersion(const Value: string);
    function Obj: TFace;
    function IsSetBoundingBox: Boolean;
    function IsSetConfidence: Boolean;
    function IsSetExternalImageId: Boolean;
    function IsSetFaceId: Boolean;
    function IsSetImageId: Boolean;
    function IsSetIndexFacesModelVersion: Boolean;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Confidence: Double read GetConfidence write SetConfidence;
    property ExternalImageId: string read GetExternalImageId write SetExternalImageId;
    property FaceId: string read GetFaceId write SetFaceId;
    property ImageId: string read GetImageId write SetImageId;
    property IndexFacesModelVersion: string read GetIndexFacesModelVersion write SetIndexFacesModelVersion;
  end;
  
  TFace = class
  strict private
    FBoundingBox: TBoundingBox;
    FKeepBoundingBox: Boolean;
    FConfidence: Nullable<Double>;
    FExternalImageId: Nullable<string>;
    FFaceId: Nullable<string>;
    FImageId: Nullable<string>;
    FIndexFacesModelVersion: Nullable<string>;
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetExternalImageId: string;
    procedure SetExternalImageId(const Value: string);
    function GetFaceId: string;
    procedure SetFaceId(const Value: string);
    function GetImageId: string;
    procedure SetImageId(const Value: string);
    function GetIndexFacesModelVersion: string;
    procedure SetIndexFacesModelVersion(const Value: string);
  strict protected
    function Obj: TFace;
  public
    destructor Destroy; override;
    function IsSetBoundingBox: Boolean;
    function IsSetConfidence: Boolean;
    function IsSetExternalImageId: Boolean;
    function IsSetFaceId: Boolean;
    function IsSetImageId: Boolean;
    function IsSetIndexFacesModelVersion: Boolean;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Confidence: Double read GetConfidence write SetConfidence;
    property ExternalImageId: string read GetExternalImageId write SetExternalImageId;
    property FaceId: string read GetFaceId write SetFaceId;
    property ImageId: string read GetImageId write SetImageId;
    property IndexFacesModelVersion: string read GetIndexFacesModelVersion write SetIndexFacesModelVersion;
  end;
  
implementation

{ TFace }

destructor TFace.Destroy;
begin
  BoundingBox := nil;
  inherited;
end;

function TFace.Obj: TFace;
begin
  Result := Self;
end;

function TFace.GetBoundingBox: TBoundingBox;
begin
  Result := FBoundingBox;
end;

procedure TFace.SetBoundingBox(const Value: TBoundingBox);
begin
  if FBoundingBox <> Value then
  begin
    if not KeepBoundingBox then
      FBoundingBox.Free;
    FBoundingBox := Value;
  end;
end;

function TFace.GetKeepBoundingBox: Boolean;
begin
  Result := FKeepBoundingBox;
end;

procedure TFace.SetKeepBoundingBox(const Value: Boolean);
begin
  FKeepBoundingBox := Value;
end;

function TFace.IsSetBoundingBox: Boolean;
begin
  Result := FBoundingBox <> nil;
end;

function TFace.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TFace.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TFace.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TFace.GetExternalImageId: string;
begin
  Result := FExternalImageId.ValueOrDefault;
end;

procedure TFace.SetExternalImageId(const Value: string);
begin
  FExternalImageId := Value;
end;

function TFace.IsSetExternalImageId: Boolean;
begin
  Result := FExternalImageId.HasValue;
end;

function TFace.GetFaceId: string;
begin
  Result := FFaceId.ValueOrDefault;
end;

procedure TFace.SetFaceId(const Value: string);
begin
  FFaceId := Value;
end;

function TFace.IsSetFaceId: Boolean;
begin
  Result := FFaceId.HasValue;
end;

function TFace.GetImageId: string;
begin
  Result := FImageId.ValueOrDefault;
end;

procedure TFace.SetImageId(const Value: string);
begin
  FImageId := Value;
end;

function TFace.IsSetImageId: Boolean;
begin
  Result := FImageId.HasValue;
end;

function TFace.GetIndexFacesModelVersion: string;
begin
  Result := FIndexFacesModelVersion.ValueOrDefault;
end;

procedure TFace.SetIndexFacesModelVersion(const Value: string);
begin
  FIndexFacesModelVersion := Value;
end;

function TFace.IsSetIndexFacesModelVersion: Boolean;
begin
  Result := FIndexFacesModelVersion.HasValue;
end;

end.

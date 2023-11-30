unit AWS.Rekognition.Model.FaceDetection;

interface

uses
  AWS.Rekognition.Model.FaceDetail, 
  AWS.Nullable;

type
  TFaceDetection = class;
  
  IFaceDetection = interface
    function GetFace: TFaceDetail;
    procedure SetFace(const Value: TFaceDetail);
    function GetKeepFace: Boolean;
    procedure SetKeepFace(const Value: Boolean);
    function GetTimestamp: Int64;
    procedure SetTimestamp(const Value: Int64);
    function Obj: TFaceDetection;
    function IsSetFace: Boolean;
    function IsSetTimestamp: Boolean;
    property Face: TFaceDetail read GetFace write SetFace;
    property KeepFace: Boolean read GetKeepFace write SetKeepFace;
    property Timestamp: Int64 read GetTimestamp write SetTimestamp;
  end;
  
  TFaceDetection = class
  strict private
    FFace: TFaceDetail;
    FKeepFace: Boolean;
    FTimestamp: Nullable<Int64>;
    function GetFace: TFaceDetail;
    procedure SetFace(const Value: TFaceDetail);
    function GetKeepFace: Boolean;
    procedure SetKeepFace(const Value: Boolean);
    function GetTimestamp: Int64;
    procedure SetTimestamp(const Value: Int64);
  strict protected
    function Obj: TFaceDetection;
  public
    destructor Destroy; override;
    function IsSetFace: Boolean;
    function IsSetTimestamp: Boolean;
    property Face: TFaceDetail read GetFace write SetFace;
    property KeepFace: Boolean read GetKeepFace write SetKeepFace;
    property Timestamp: Int64 read GetTimestamp write SetTimestamp;
  end;
  
implementation

{ TFaceDetection }

destructor TFaceDetection.Destroy;
begin
  Face := nil;
  inherited;
end;

function TFaceDetection.Obj: TFaceDetection;
begin
  Result := Self;
end;

function TFaceDetection.GetFace: TFaceDetail;
begin
  Result := FFace;
end;

procedure TFaceDetection.SetFace(const Value: TFaceDetail);
begin
  if FFace <> Value then
  begin
    if not KeepFace then
      FFace.Free;
    FFace := Value;
  end;
end;

function TFaceDetection.GetKeepFace: Boolean;
begin
  Result := FKeepFace;
end;

procedure TFaceDetection.SetKeepFace(const Value: Boolean);
begin
  FKeepFace := Value;
end;

function TFaceDetection.IsSetFace: Boolean;
begin
  Result := FFace <> nil;
end;

function TFaceDetection.GetTimestamp: Int64;
begin
  Result := FTimestamp.ValueOrDefault;
end;

procedure TFaceDetection.SetTimestamp(const Value: Int64);
begin
  FTimestamp := Value;
end;

function TFaceDetection.IsSetTimestamp: Boolean;
begin
  Result := FTimestamp.HasValue;
end;

end.

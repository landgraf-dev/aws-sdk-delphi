unit AWS.Rekognition.Model.GetFaceDetectionResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.FaceDetection, 
  AWS.Rekognition.Enums, 
  AWS.Rekognition.Model.VideoMetadata;

type
  TGetFaceDetectionResponse = class;
  
  IGetFaceDetectionResponse = interface(IAmazonWebServiceResponse)
    function GetFaces: TObjectList<TFaceDetection>;
    procedure SetFaces(const Value: TObjectList<TFaceDetection>);
    function GetKeepFaces: Boolean;
    procedure SetKeepFaces(const Value: Boolean);
    function GetJobStatus: TVideoJobStatus;
    procedure SetJobStatus(const Value: TVideoJobStatus);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetVideoMetadata: TVideoMetadata;
    procedure SetVideoMetadata(const Value: TVideoMetadata);
    function GetKeepVideoMetadata: Boolean;
    procedure SetKeepVideoMetadata(const Value: Boolean);
    function Obj: TGetFaceDetectionResponse;
    function IsSetFaces: Boolean;
    function IsSetJobStatus: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetVideoMetadata: Boolean;
    property Faces: TObjectList<TFaceDetection> read GetFaces write SetFaces;
    property KeepFaces: Boolean read GetKeepFaces write SetKeepFaces;
    property JobStatus: TVideoJobStatus read GetJobStatus write SetJobStatus;
    property NextToken: string read GetNextToken write SetNextToken;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property VideoMetadata: TVideoMetadata read GetVideoMetadata write SetVideoMetadata;
    property KeepVideoMetadata: Boolean read GetKeepVideoMetadata write SetKeepVideoMetadata;
  end;
  
  TGetFaceDetectionResponse = class(TAmazonWebServiceResponse, IGetFaceDetectionResponse)
  strict private
    FFaces: TObjectList<TFaceDetection>;
    FKeepFaces: Boolean;
    FJobStatus: Nullable<TVideoJobStatus>;
    FNextToken: Nullable<string>;
    FStatusMessage: Nullable<string>;
    FVideoMetadata: TVideoMetadata;
    FKeepVideoMetadata: Boolean;
    function GetFaces: TObjectList<TFaceDetection>;
    procedure SetFaces(const Value: TObjectList<TFaceDetection>);
    function GetKeepFaces: Boolean;
    procedure SetKeepFaces(const Value: Boolean);
    function GetJobStatus: TVideoJobStatus;
    procedure SetJobStatus(const Value: TVideoJobStatus);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetVideoMetadata: TVideoMetadata;
    procedure SetVideoMetadata(const Value: TVideoMetadata);
    function GetKeepVideoMetadata: Boolean;
    procedure SetKeepVideoMetadata(const Value: Boolean);
  strict protected
    function Obj: TGetFaceDetectionResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFaces: Boolean;
    function IsSetJobStatus: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetVideoMetadata: Boolean;
    property Faces: TObjectList<TFaceDetection> read GetFaces write SetFaces;
    property KeepFaces: Boolean read GetKeepFaces write SetKeepFaces;
    property JobStatus: TVideoJobStatus read GetJobStatus write SetJobStatus;
    property NextToken: string read GetNextToken write SetNextToken;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property VideoMetadata: TVideoMetadata read GetVideoMetadata write SetVideoMetadata;
    property KeepVideoMetadata: Boolean read GetKeepVideoMetadata write SetKeepVideoMetadata;
  end;
  
implementation

{ TGetFaceDetectionResponse }

constructor TGetFaceDetectionResponse.Create;
begin
  inherited;
  FFaces := TObjectList<TFaceDetection>.Create;
end;

destructor TGetFaceDetectionResponse.Destroy;
begin
  VideoMetadata := nil;
  Faces := nil;
  inherited;
end;

function TGetFaceDetectionResponse.Obj: TGetFaceDetectionResponse;
begin
  Result := Self;
end;

function TGetFaceDetectionResponse.GetFaces: TObjectList<TFaceDetection>;
begin
  Result := FFaces;
end;

procedure TGetFaceDetectionResponse.SetFaces(const Value: TObjectList<TFaceDetection>);
begin
  if FFaces <> Value then
  begin
    if not KeepFaces then
      FFaces.Free;
    FFaces := Value;
  end;
end;

function TGetFaceDetectionResponse.GetKeepFaces: Boolean;
begin
  Result := FKeepFaces;
end;

procedure TGetFaceDetectionResponse.SetKeepFaces(const Value: Boolean);
begin
  FKeepFaces := Value;
end;

function TGetFaceDetectionResponse.IsSetFaces: Boolean;
begin
  Result := (FFaces <> nil) and (FFaces.Count > 0);
end;

function TGetFaceDetectionResponse.GetJobStatus: TVideoJobStatus;
begin
  Result := FJobStatus.ValueOrDefault;
end;

procedure TGetFaceDetectionResponse.SetJobStatus(const Value: TVideoJobStatus);
begin
  FJobStatus := Value;
end;

function TGetFaceDetectionResponse.IsSetJobStatus: Boolean;
begin
  Result := FJobStatus.HasValue;
end;

function TGetFaceDetectionResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetFaceDetectionResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetFaceDetectionResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetFaceDetectionResponse.GetStatusMessage: string;
begin
  Result := FStatusMessage.ValueOrDefault;
end;

procedure TGetFaceDetectionResponse.SetStatusMessage(const Value: string);
begin
  FStatusMessage := Value;
end;

function TGetFaceDetectionResponse.IsSetStatusMessage: Boolean;
begin
  Result := FStatusMessage.HasValue;
end;

function TGetFaceDetectionResponse.GetVideoMetadata: TVideoMetadata;
begin
  Result := FVideoMetadata;
end;

procedure TGetFaceDetectionResponse.SetVideoMetadata(const Value: TVideoMetadata);
begin
  if FVideoMetadata <> Value then
  begin
    if not KeepVideoMetadata then
      FVideoMetadata.Free;
    FVideoMetadata := Value;
  end;
end;

function TGetFaceDetectionResponse.GetKeepVideoMetadata: Boolean;
begin
  Result := FKeepVideoMetadata;
end;

procedure TGetFaceDetectionResponse.SetKeepVideoMetadata(const Value: Boolean);
begin
  FKeepVideoMetadata := Value;
end;

function TGetFaceDetectionResponse.IsSetVideoMetadata: Boolean;
begin
  Result := FVideoMetadata <> nil;
end;

end.

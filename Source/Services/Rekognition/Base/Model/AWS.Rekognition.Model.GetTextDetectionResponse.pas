unit AWS.Rekognition.Model.GetTextDetectionResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Enums, 
  AWS.Rekognition.Model.TextDetectionResult, 
  AWS.Rekognition.Model.VideoMetadata;

type
  TGetTextDetectionResponse = class;
  
  IGetTextDetectionResponse = interface(IAmazonWebServiceResponse)
    function GetJobStatus: TVideoJobStatus;
    procedure SetJobStatus(const Value: TVideoJobStatus);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetTextDetections: TObjectList<TTextDetectionResult>;
    procedure SetTextDetections(const Value: TObjectList<TTextDetectionResult>);
    function GetKeepTextDetections: Boolean;
    procedure SetKeepTextDetections(const Value: Boolean);
    function GetTextModelVersion: string;
    procedure SetTextModelVersion(const Value: string);
    function GetVideoMetadata: TVideoMetadata;
    procedure SetVideoMetadata(const Value: TVideoMetadata);
    function GetKeepVideoMetadata: Boolean;
    procedure SetKeepVideoMetadata(const Value: Boolean);
    function Obj: TGetTextDetectionResponse;
    function IsSetJobStatus: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetTextDetections: Boolean;
    function IsSetTextModelVersion: Boolean;
    function IsSetVideoMetadata: Boolean;
    property JobStatus: TVideoJobStatus read GetJobStatus write SetJobStatus;
    property NextToken: string read GetNextToken write SetNextToken;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property TextDetections: TObjectList<TTextDetectionResult> read GetTextDetections write SetTextDetections;
    property KeepTextDetections: Boolean read GetKeepTextDetections write SetKeepTextDetections;
    property TextModelVersion: string read GetTextModelVersion write SetTextModelVersion;
    property VideoMetadata: TVideoMetadata read GetVideoMetadata write SetVideoMetadata;
    property KeepVideoMetadata: Boolean read GetKeepVideoMetadata write SetKeepVideoMetadata;
  end;
  
  TGetTextDetectionResponse = class(TAmazonWebServiceResponse, IGetTextDetectionResponse)
  strict private
    FJobStatus: Nullable<TVideoJobStatus>;
    FNextToken: Nullable<string>;
    FStatusMessage: Nullable<string>;
    FTextDetections: TObjectList<TTextDetectionResult>;
    FKeepTextDetections: Boolean;
    FTextModelVersion: Nullable<string>;
    FVideoMetadata: TVideoMetadata;
    FKeepVideoMetadata: Boolean;
    function GetJobStatus: TVideoJobStatus;
    procedure SetJobStatus(const Value: TVideoJobStatus);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetTextDetections: TObjectList<TTextDetectionResult>;
    procedure SetTextDetections(const Value: TObjectList<TTextDetectionResult>);
    function GetKeepTextDetections: Boolean;
    procedure SetKeepTextDetections(const Value: Boolean);
    function GetTextModelVersion: string;
    procedure SetTextModelVersion(const Value: string);
    function GetVideoMetadata: TVideoMetadata;
    procedure SetVideoMetadata(const Value: TVideoMetadata);
    function GetKeepVideoMetadata: Boolean;
    procedure SetKeepVideoMetadata(const Value: Boolean);
  strict protected
    function Obj: TGetTextDetectionResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetJobStatus: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetTextDetections: Boolean;
    function IsSetTextModelVersion: Boolean;
    function IsSetVideoMetadata: Boolean;
    property JobStatus: TVideoJobStatus read GetJobStatus write SetJobStatus;
    property NextToken: string read GetNextToken write SetNextToken;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property TextDetections: TObjectList<TTextDetectionResult> read GetTextDetections write SetTextDetections;
    property KeepTextDetections: Boolean read GetKeepTextDetections write SetKeepTextDetections;
    property TextModelVersion: string read GetTextModelVersion write SetTextModelVersion;
    property VideoMetadata: TVideoMetadata read GetVideoMetadata write SetVideoMetadata;
    property KeepVideoMetadata: Boolean read GetKeepVideoMetadata write SetKeepVideoMetadata;
  end;
  
implementation

{ TGetTextDetectionResponse }

constructor TGetTextDetectionResponse.Create;
begin
  inherited;
  FTextDetections := TObjectList<TTextDetectionResult>.Create;
end;

destructor TGetTextDetectionResponse.Destroy;
begin
  VideoMetadata := nil;
  TextDetections := nil;
  inherited;
end;

function TGetTextDetectionResponse.Obj: TGetTextDetectionResponse;
begin
  Result := Self;
end;

function TGetTextDetectionResponse.GetJobStatus: TVideoJobStatus;
begin
  Result := FJobStatus.ValueOrDefault;
end;

procedure TGetTextDetectionResponse.SetJobStatus(const Value: TVideoJobStatus);
begin
  FJobStatus := Value;
end;

function TGetTextDetectionResponse.IsSetJobStatus: Boolean;
begin
  Result := FJobStatus.HasValue;
end;

function TGetTextDetectionResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetTextDetectionResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetTextDetectionResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetTextDetectionResponse.GetStatusMessage: string;
begin
  Result := FStatusMessage.ValueOrDefault;
end;

procedure TGetTextDetectionResponse.SetStatusMessage(const Value: string);
begin
  FStatusMessage := Value;
end;

function TGetTextDetectionResponse.IsSetStatusMessage: Boolean;
begin
  Result := FStatusMessage.HasValue;
end;

function TGetTextDetectionResponse.GetTextDetections: TObjectList<TTextDetectionResult>;
begin
  Result := FTextDetections;
end;

procedure TGetTextDetectionResponse.SetTextDetections(const Value: TObjectList<TTextDetectionResult>);
begin
  if FTextDetections <> Value then
  begin
    if not KeepTextDetections then
      FTextDetections.Free;
    FTextDetections := Value;
  end;
end;

function TGetTextDetectionResponse.GetKeepTextDetections: Boolean;
begin
  Result := FKeepTextDetections;
end;

procedure TGetTextDetectionResponse.SetKeepTextDetections(const Value: Boolean);
begin
  FKeepTextDetections := Value;
end;

function TGetTextDetectionResponse.IsSetTextDetections: Boolean;
begin
  Result := (FTextDetections <> nil) and (FTextDetections.Count > 0);
end;

function TGetTextDetectionResponse.GetTextModelVersion: string;
begin
  Result := FTextModelVersion.ValueOrDefault;
end;

procedure TGetTextDetectionResponse.SetTextModelVersion(const Value: string);
begin
  FTextModelVersion := Value;
end;

function TGetTextDetectionResponse.IsSetTextModelVersion: Boolean;
begin
  Result := FTextModelVersion.HasValue;
end;

function TGetTextDetectionResponse.GetVideoMetadata: TVideoMetadata;
begin
  Result := FVideoMetadata;
end;

procedure TGetTextDetectionResponse.SetVideoMetadata(const Value: TVideoMetadata);
begin
  if FVideoMetadata <> Value then
  begin
    if not KeepVideoMetadata then
      FVideoMetadata.Free;
    FVideoMetadata := Value;
  end;
end;

function TGetTextDetectionResponse.GetKeepVideoMetadata: Boolean;
begin
  Result := FKeepVideoMetadata;
end;

procedure TGetTextDetectionResponse.SetKeepVideoMetadata(const Value: Boolean);
begin
  FKeepVideoMetadata := Value;
end;

function TGetTextDetectionResponse.IsSetVideoMetadata: Boolean;
begin
  Result := FVideoMetadata <> nil;
end;

end.

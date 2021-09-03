unit AWS.Rekognition.Model.GetContentModerationResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Enums, 
  AWS.Rekognition.Model.ContentModerationDetection, 
  AWS.Rekognition.Model.VideoMetadata;

type
  TGetContentModerationResponse = class;
  
  IGetContentModerationResponse = interface(IAmazonWebServiceResponse)
    function GetJobStatus: TVideoJobStatus;
    procedure SetJobStatus(const Value: TVideoJobStatus);
    function GetModerationLabels: TObjectList<TContentModerationDetection>;
    procedure SetModerationLabels(const Value: TObjectList<TContentModerationDetection>);
    function GetKeepModerationLabels: Boolean;
    procedure SetKeepModerationLabels(const Value: Boolean);
    function GetModerationModelVersion: string;
    procedure SetModerationModelVersion(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetVideoMetadata: TVideoMetadata;
    procedure SetVideoMetadata(const Value: TVideoMetadata);
    function GetKeepVideoMetadata: Boolean;
    procedure SetKeepVideoMetadata(const Value: Boolean);
    function Obj: TGetContentModerationResponse;
    function IsSetJobStatus: Boolean;
    function IsSetModerationLabels: Boolean;
    function IsSetModerationModelVersion: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetVideoMetadata: Boolean;
    property JobStatus: TVideoJobStatus read GetJobStatus write SetJobStatus;
    property ModerationLabels: TObjectList<TContentModerationDetection> read GetModerationLabels write SetModerationLabels;
    property KeepModerationLabels: Boolean read GetKeepModerationLabels write SetKeepModerationLabels;
    property ModerationModelVersion: string read GetModerationModelVersion write SetModerationModelVersion;
    property NextToken: string read GetNextToken write SetNextToken;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property VideoMetadata: TVideoMetadata read GetVideoMetadata write SetVideoMetadata;
    property KeepVideoMetadata: Boolean read GetKeepVideoMetadata write SetKeepVideoMetadata;
  end;
  
  TGetContentModerationResponse = class(TAmazonWebServiceResponse, IGetContentModerationResponse)
  strict private
    FJobStatus: Nullable<TVideoJobStatus>;
    FModerationLabels: TObjectList<TContentModerationDetection>;
    FKeepModerationLabels: Boolean;
    FModerationModelVersion: Nullable<string>;
    FNextToken: Nullable<string>;
    FStatusMessage: Nullable<string>;
    FVideoMetadata: TVideoMetadata;
    FKeepVideoMetadata: Boolean;
    function GetJobStatus: TVideoJobStatus;
    procedure SetJobStatus(const Value: TVideoJobStatus);
    function GetModerationLabels: TObjectList<TContentModerationDetection>;
    procedure SetModerationLabels(const Value: TObjectList<TContentModerationDetection>);
    function GetKeepModerationLabels: Boolean;
    procedure SetKeepModerationLabels(const Value: Boolean);
    function GetModerationModelVersion: string;
    procedure SetModerationModelVersion(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetVideoMetadata: TVideoMetadata;
    procedure SetVideoMetadata(const Value: TVideoMetadata);
    function GetKeepVideoMetadata: Boolean;
    procedure SetKeepVideoMetadata(const Value: Boolean);
  strict protected
    function Obj: TGetContentModerationResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetJobStatus: Boolean;
    function IsSetModerationLabels: Boolean;
    function IsSetModerationModelVersion: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetVideoMetadata: Boolean;
    property JobStatus: TVideoJobStatus read GetJobStatus write SetJobStatus;
    property ModerationLabels: TObjectList<TContentModerationDetection> read GetModerationLabels write SetModerationLabels;
    property KeepModerationLabels: Boolean read GetKeepModerationLabels write SetKeepModerationLabels;
    property ModerationModelVersion: string read GetModerationModelVersion write SetModerationModelVersion;
    property NextToken: string read GetNextToken write SetNextToken;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property VideoMetadata: TVideoMetadata read GetVideoMetadata write SetVideoMetadata;
    property KeepVideoMetadata: Boolean read GetKeepVideoMetadata write SetKeepVideoMetadata;
  end;
  
implementation

{ TGetContentModerationResponse }

constructor TGetContentModerationResponse.Create;
begin
  inherited;
  FModerationLabels := TObjectList<TContentModerationDetection>.Create;
end;

destructor TGetContentModerationResponse.Destroy;
begin
  VideoMetadata := nil;
  ModerationLabels := nil;
  inherited;
end;

function TGetContentModerationResponse.Obj: TGetContentModerationResponse;
begin
  Result := Self;
end;

function TGetContentModerationResponse.GetJobStatus: TVideoJobStatus;
begin
  Result := FJobStatus.ValueOrDefault;
end;

procedure TGetContentModerationResponse.SetJobStatus(const Value: TVideoJobStatus);
begin
  FJobStatus := Value;
end;

function TGetContentModerationResponse.IsSetJobStatus: Boolean;
begin
  Result := FJobStatus.HasValue;
end;

function TGetContentModerationResponse.GetModerationLabels: TObjectList<TContentModerationDetection>;
begin
  Result := FModerationLabels;
end;

procedure TGetContentModerationResponse.SetModerationLabels(const Value: TObjectList<TContentModerationDetection>);
begin
  if FModerationLabels <> Value then
  begin
    if not KeepModerationLabels then
      FModerationLabels.Free;
    FModerationLabels := Value;
  end;
end;

function TGetContentModerationResponse.GetKeepModerationLabels: Boolean;
begin
  Result := FKeepModerationLabels;
end;

procedure TGetContentModerationResponse.SetKeepModerationLabels(const Value: Boolean);
begin
  FKeepModerationLabels := Value;
end;

function TGetContentModerationResponse.IsSetModerationLabels: Boolean;
begin
  Result := (FModerationLabels <> nil) and (FModerationLabels.Count > 0);
end;

function TGetContentModerationResponse.GetModerationModelVersion: string;
begin
  Result := FModerationModelVersion.ValueOrDefault;
end;

procedure TGetContentModerationResponse.SetModerationModelVersion(const Value: string);
begin
  FModerationModelVersion := Value;
end;

function TGetContentModerationResponse.IsSetModerationModelVersion: Boolean;
begin
  Result := FModerationModelVersion.HasValue;
end;

function TGetContentModerationResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetContentModerationResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetContentModerationResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetContentModerationResponse.GetStatusMessage: string;
begin
  Result := FStatusMessage.ValueOrDefault;
end;

procedure TGetContentModerationResponse.SetStatusMessage(const Value: string);
begin
  FStatusMessage := Value;
end;

function TGetContentModerationResponse.IsSetStatusMessage: Boolean;
begin
  Result := FStatusMessage.HasValue;
end;

function TGetContentModerationResponse.GetVideoMetadata: TVideoMetadata;
begin
  Result := FVideoMetadata;
end;

procedure TGetContentModerationResponse.SetVideoMetadata(const Value: TVideoMetadata);
begin
  if FVideoMetadata <> Value then
  begin
    if not KeepVideoMetadata then
      FVideoMetadata.Free;
    FVideoMetadata := Value;
  end;
end;

function TGetContentModerationResponse.GetKeepVideoMetadata: Boolean;
begin
  Result := FKeepVideoMetadata;
end;

procedure TGetContentModerationResponse.SetKeepVideoMetadata(const Value: Boolean);
begin
  FKeepVideoMetadata := Value;
end;

function TGetContentModerationResponse.IsSetVideoMetadata: Boolean;
begin
  Result := FVideoMetadata <> nil;
end;

end.

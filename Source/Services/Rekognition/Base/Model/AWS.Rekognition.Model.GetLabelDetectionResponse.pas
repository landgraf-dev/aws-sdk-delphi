unit AWS.Rekognition.Model.GetLabelDetectionResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Enums, 
  AWS.Rekognition.Model.LabelDetection, 
  AWS.Rekognition.Model.VideoMetadata;

type
  TGetLabelDetectionResponse = class;
  
  IGetLabelDetectionResponse = interface(IAmazonWebServiceResponse)
    function GetJobStatus: TVideoJobStatus;
    procedure SetJobStatus(const Value: TVideoJobStatus);
    function GetLabelModelVersion: string;
    procedure SetLabelModelVersion(const Value: string);
    function GetLabels: TObjectList<TLabelDetection>;
    procedure SetLabels(const Value: TObjectList<TLabelDetection>);
    function GetKeepLabels: Boolean;
    procedure SetKeepLabels(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetVideoMetadata: TVideoMetadata;
    procedure SetVideoMetadata(const Value: TVideoMetadata);
    function GetKeepVideoMetadata: Boolean;
    procedure SetKeepVideoMetadata(const Value: Boolean);
    function Obj: TGetLabelDetectionResponse;
    function IsSetJobStatus: Boolean;
    function IsSetLabelModelVersion: Boolean;
    function IsSetLabels: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetVideoMetadata: Boolean;
    property JobStatus: TVideoJobStatus read GetJobStatus write SetJobStatus;
    property LabelModelVersion: string read GetLabelModelVersion write SetLabelModelVersion;
    property Labels: TObjectList<TLabelDetection> read GetLabels write SetLabels;
    property KeepLabels: Boolean read GetKeepLabels write SetKeepLabels;
    property NextToken: string read GetNextToken write SetNextToken;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property VideoMetadata: TVideoMetadata read GetVideoMetadata write SetVideoMetadata;
    property KeepVideoMetadata: Boolean read GetKeepVideoMetadata write SetKeepVideoMetadata;
  end;
  
  TGetLabelDetectionResponse = class(TAmazonWebServiceResponse, IGetLabelDetectionResponse)
  strict private
    FJobStatus: Nullable<TVideoJobStatus>;
    FLabelModelVersion: Nullable<string>;
    FLabels: TObjectList<TLabelDetection>;
    FKeepLabels: Boolean;
    FNextToken: Nullable<string>;
    FStatusMessage: Nullable<string>;
    FVideoMetadata: TVideoMetadata;
    FKeepVideoMetadata: Boolean;
    function GetJobStatus: TVideoJobStatus;
    procedure SetJobStatus(const Value: TVideoJobStatus);
    function GetLabelModelVersion: string;
    procedure SetLabelModelVersion(const Value: string);
    function GetLabels: TObjectList<TLabelDetection>;
    procedure SetLabels(const Value: TObjectList<TLabelDetection>);
    function GetKeepLabels: Boolean;
    procedure SetKeepLabels(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetVideoMetadata: TVideoMetadata;
    procedure SetVideoMetadata(const Value: TVideoMetadata);
    function GetKeepVideoMetadata: Boolean;
    procedure SetKeepVideoMetadata(const Value: Boolean);
  strict protected
    function Obj: TGetLabelDetectionResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetJobStatus: Boolean;
    function IsSetLabelModelVersion: Boolean;
    function IsSetLabels: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetVideoMetadata: Boolean;
    property JobStatus: TVideoJobStatus read GetJobStatus write SetJobStatus;
    property LabelModelVersion: string read GetLabelModelVersion write SetLabelModelVersion;
    property Labels: TObjectList<TLabelDetection> read GetLabels write SetLabels;
    property KeepLabels: Boolean read GetKeepLabels write SetKeepLabels;
    property NextToken: string read GetNextToken write SetNextToken;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property VideoMetadata: TVideoMetadata read GetVideoMetadata write SetVideoMetadata;
    property KeepVideoMetadata: Boolean read GetKeepVideoMetadata write SetKeepVideoMetadata;
  end;
  
implementation

{ TGetLabelDetectionResponse }

constructor TGetLabelDetectionResponse.Create;
begin
  inherited;
  FLabels := TObjectList<TLabelDetection>.Create;
end;

destructor TGetLabelDetectionResponse.Destroy;
begin
  VideoMetadata := nil;
  Labels := nil;
  inherited;
end;

function TGetLabelDetectionResponse.Obj: TGetLabelDetectionResponse;
begin
  Result := Self;
end;

function TGetLabelDetectionResponse.GetJobStatus: TVideoJobStatus;
begin
  Result := FJobStatus.ValueOrDefault;
end;

procedure TGetLabelDetectionResponse.SetJobStatus(const Value: TVideoJobStatus);
begin
  FJobStatus := Value;
end;

function TGetLabelDetectionResponse.IsSetJobStatus: Boolean;
begin
  Result := FJobStatus.HasValue;
end;

function TGetLabelDetectionResponse.GetLabelModelVersion: string;
begin
  Result := FLabelModelVersion.ValueOrDefault;
end;

procedure TGetLabelDetectionResponse.SetLabelModelVersion(const Value: string);
begin
  FLabelModelVersion := Value;
end;

function TGetLabelDetectionResponse.IsSetLabelModelVersion: Boolean;
begin
  Result := FLabelModelVersion.HasValue;
end;

function TGetLabelDetectionResponse.GetLabels: TObjectList<TLabelDetection>;
begin
  Result := FLabels;
end;

procedure TGetLabelDetectionResponse.SetLabels(const Value: TObjectList<TLabelDetection>);
begin
  if FLabels <> Value then
  begin
    if not KeepLabels then
      FLabels.Free;
    FLabels := Value;
  end;
end;

function TGetLabelDetectionResponse.GetKeepLabels: Boolean;
begin
  Result := FKeepLabels;
end;

procedure TGetLabelDetectionResponse.SetKeepLabels(const Value: Boolean);
begin
  FKeepLabels := Value;
end;

function TGetLabelDetectionResponse.IsSetLabels: Boolean;
begin
  Result := (FLabels <> nil) and (FLabels.Count > 0);
end;

function TGetLabelDetectionResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetLabelDetectionResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetLabelDetectionResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetLabelDetectionResponse.GetStatusMessage: string;
begin
  Result := FStatusMessage.ValueOrDefault;
end;

procedure TGetLabelDetectionResponse.SetStatusMessage(const Value: string);
begin
  FStatusMessage := Value;
end;

function TGetLabelDetectionResponse.IsSetStatusMessage: Boolean;
begin
  Result := FStatusMessage.HasValue;
end;

function TGetLabelDetectionResponse.GetVideoMetadata: TVideoMetadata;
begin
  Result := FVideoMetadata;
end;

procedure TGetLabelDetectionResponse.SetVideoMetadata(const Value: TVideoMetadata);
begin
  if FVideoMetadata <> Value then
  begin
    if not KeepVideoMetadata then
      FVideoMetadata.Free;
    FVideoMetadata := Value;
  end;
end;

function TGetLabelDetectionResponse.GetKeepVideoMetadata: Boolean;
begin
  Result := FKeepVideoMetadata;
end;

procedure TGetLabelDetectionResponse.SetKeepVideoMetadata(const Value: Boolean);
begin
  FKeepVideoMetadata := Value;
end;

function TGetLabelDetectionResponse.IsSetVideoMetadata: Boolean;
begin
  Result := FVideoMetadata <> nil;
end;

end.

unit AWS.Rekognition.Model.GetSegmentDetectionResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.AudioMetadata, 
  AWS.Nullable, 
  AWS.Rekognition.Enums, 
  AWS.Rekognition.Model.SegmentDetection, 
  AWS.Rekognition.Model.SegmentTypeInfo, 
  AWS.Rekognition.Model.VideoMetadata;

type
  TGetSegmentDetectionResponse = class;
  
  IGetSegmentDetectionResponse = interface(IAmazonWebServiceResponse)
    function GetAudioMetadata: TObjectList<TAudioMetadata>;
    procedure SetAudioMetadata(const Value: TObjectList<TAudioMetadata>);
    function GetKeepAudioMetadata: Boolean;
    procedure SetKeepAudioMetadata(const Value: Boolean);
    function GetJobStatus: TVideoJobStatus;
    procedure SetJobStatus(const Value: TVideoJobStatus);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSegments: TObjectList<TSegmentDetection>;
    procedure SetSegments(const Value: TObjectList<TSegmentDetection>);
    function GetKeepSegments: Boolean;
    procedure SetKeepSegments(const Value: Boolean);
    function GetSelectedSegmentTypes: TObjectList<TSegmentTypeInfo>;
    procedure SetSelectedSegmentTypes(const Value: TObjectList<TSegmentTypeInfo>);
    function GetKeepSelectedSegmentTypes: Boolean;
    procedure SetKeepSelectedSegmentTypes(const Value: Boolean);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetVideoMetadata: TObjectList<TVideoMetadata>;
    procedure SetVideoMetadata(const Value: TObjectList<TVideoMetadata>);
    function GetKeepVideoMetadata: Boolean;
    procedure SetKeepVideoMetadata(const Value: Boolean);
    function Obj: TGetSegmentDetectionResponse;
    function IsSetAudioMetadata: Boolean;
    function IsSetJobStatus: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetSegments: Boolean;
    function IsSetSelectedSegmentTypes: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetVideoMetadata: Boolean;
    property AudioMetadata: TObjectList<TAudioMetadata> read GetAudioMetadata write SetAudioMetadata;
    property KeepAudioMetadata: Boolean read GetKeepAudioMetadata write SetKeepAudioMetadata;
    property JobStatus: TVideoJobStatus read GetJobStatus write SetJobStatus;
    property NextToken: string read GetNextToken write SetNextToken;
    property Segments: TObjectList<TSegmentDetection> read GetSegments write SetSegments;
    property KeepSegments: Boolean read GetKeepSegments write SetKeepSegments;
    property SelectedSegmentTypes: TObjectList<TSegmentTypeInfo> read GetSelectedSegmentTypes write SetSelectedSegmentTypes;
    property KeepSelectedSegmentTypes: Boolean read GetKeepSelectedSegmentTypes write SetKeepSelectedSegmentTypes;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property VideoMetadata: TObjectList<TVideoMetadata> read GetVideoMetadata write SetVideoMetadata;
    property KeepVideoMetadata: Boolean read GetKeepVideoMetadata write SetKeepVideoMetadata;
  end;
  
  TGetSegmentDetectionResponse = class(TAmazonWebServiceResponse, IGetSegmentDetectionResponse)
  strict private
    FAudioMetadata: TObjectList<TAudioMetadata>;
    FKeepAudioMetadata: Boolean;
    FJobStatus: Nullable<TVideoJobStatus>;
    FNextToken: Nullable<string>;
    FSegments: TObjectList<TSegmentDetection>;
    FKeepSegments: Boolean;
    FSelectedSegmentTypes: TObjectList<TSegmentTypeInfo>;
    FKeepSelectedSegmentTypes: Boolean;
    FStatusMessage: Nullable<string>;
    FVideoMetadata: TObjectList<TVideoMetadata>;
    FKeepVideoMetadata: Boolean;
    function GetAudioMetadata: TObjectList<TAudioMetadata>;
    procedure SetAudioMetadata(const Value: TObjectList<TAudioMetadata>);
    function GetKeepAudioMetadata: Boolean;
    procedure SetKeepAudioMetadata(const Value: Boolean);
    function GetJobStatus: TVideoJobStatus;
    procedure SetJobStatus(const Value: TVideoJobStatus);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSegments: TObjectList<TSegmentDetection>;
    procedure SetSegments(const Value: TObjectList<TSegmentDetection>);
    function GetKeepSegments: Boolean;
    procedure SetKeepSegments(const Value: Boolean);
    function GetSelectedSegmentTypes: TObjectList<TSegmentTypeInfo>;
    procedure SetSelectedSegmentTypes(const Value: TObjectList<TSegmentTypeInfo>);
    function GetKeepSelectedSegmentTypes: Boolean;
    procedure SetKeepSelectedSegmentTypes(const Value: Boolean);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetVideoMetadata: TObjectList<TVideoMetadata>;
    procedure SetVideoMetadata(const Value: TObjectList<TVideoMetadata>);
    function GetKeepVideoMetadata: Boolean;
    procedure SetKeepVideoMetadata(const Value: Boolean);
  strict protected
    function Obj: TGetSegmentDetectionResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAudioMetadata: Boolean;
    function IsSetJobStatus: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetSegments: Boolean;
    function IsSetSelectedSegmentTypes: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetVideoMetadata: Boolean;
    property AudioMetadata: TObjectList<TAudioMetadata> read GetAudioMetadata write SetAudioMetadata;
    property KeepAudioMetadata: Boolean read GetKeepAudioMetadata write SetKeepAudioMetadata;
    property JobStatus: TVideoJobStatus read GetJobStatus write SetJobStatus;
    property NextToken: string read GetNextToken write SetNextToken;
    property Segments: TObjectList<TSegmentDetection> read GetSegments write SetSegments;
    property KeepSegments: Boolean read GetKeepSegments write SetKeepSegments;
    property SelectedSegmentTypes: TObjectList<TSegmentTypeInfo> read GetSelectedSegmentTypes write SetSelectedSegmentTypes;
    property KeepSelectedSegmentTypes: Boolean read GetKeepSelectedSegmentTypes write SetKeepSelectedSegmentTypes;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property VideoMetadata: TObjectList<TVideoMetadata> read GetVideoMetadata write SetVideoMetadata;
    property KeepVideoMetadata: Boolean read GetKeepVideoMetadata write SetKeepVideoMetadata;
  end;
  
implementation

{ TGetSegmentDetectionResponse }

constructor TGetSegmentDetectionResponse.Create;
begin
  inherited;
  FAudioMetadata := TObjectList<TAudioMetadata>.Create;
  FSegments := TObjectList<TSegmentDetection>.Create;
  FSelectedSegmentTypes := TObjectList<TSegmentTypeInfo>.Create;
  FVideoMetadata := TObjectList<TVideoMetadata>.Create;
end;

destructor TGetSegmentDetectionResponse.Destroy;
begin
  VideoMetadata := nil;
  SelectedSegmentTypes := nil;
  Segments := nil;
  AudioMetadata := nil;
  inherited;
end;

function TGetSegmentDetectionResponse.Obj: TGetSegmentDetectionResponse;
begin
  Result := Self;
end;

function TGetSegmentDetectionResponse.GetAudioMetadata: TObjectList<TAudioMetadata>;
begin
  Result := FAudioMetadata;
end;

procedure TGetSegmentDetectionResponse.SetAudioMetadata(const Value: TObjectList<TAudioMetadata>);
begin
  if FAudioMetadata <> Value then
  begin
    if not KeepAudioMetadata then
      FAudioMetadata.Free;
    FAudioMetadata := Value;
  end;
end;

function TGetSegmentDetectionResponse.GetKeepAudioMetadata: Boolean;
begin
  Result := FKeepAudioMetadata;
end;

procedure TGetSegmentDetectionResponse.SetKeepAudioMetadata(const Value: Boolean);
begin
  FKeepAudioMetadata := Value;
end;

function TGetSegmentDetectionResponse.IsSetAudioMetadata: Boolean;
begin
  Result := (FAudioMetadata <> nil) and (FAudioMetadata.Count > 0);
end;

function TGetSegmentDetectionResponse.GetJobStatus: TVideoJobStatus;
begin
  Result := FJobStatus.ValueOrDefault;
end;

procedure TGetSegmentDetectionResponse.SetJobStatus(const Value: TVideoJobStatus);
begin
  FJobStatus := Value;
end;

function TGetSegmentDetectionResponse.IsSetJobStatus: Boolean;
begin
  Result := FJobStatus.HasValue;
end;

function TGetSegmentDetectionResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetSegmentDetectionResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetSegmentDetectionResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetSegmentDetectionResponse.GetSegments: TObjectList<TSegmentDetection>;
begin
  Result := FSegments;
end;

procedure TGetSegmentDetectionResponse.SetSegments(const Value: TObjectList<TSegmentDetection>);
begin
  if FSegments <> Value then
  begin
    if not KeepSegments then
      FSegments.Free;
    FSegments := Value;
  end;
end;

function TGetSegmentDetectionResponse.GetKeepSegments: Boolean;
begin
  Result := FKeepSegments;
end;

procedure TGetSegmentDetectionResponse.SetKeepSegments(const Value: Boolean);
begin
  FKeepSegments := Value;
end;

function TGetSegmentDetectionResponse.IsSetSegments: Boolean;
begin
  Result := (FSegments <> nil) and (FSegments.Count > 0);
end;

function TGetSegmentDetectionResponse.GetSelectedSegmentTypes: TObjectList<TSegmentTypeInfo>;
begin
  Result := FSelectedSegmentTypes;
end;

procedure TGetSegmentDetectionResponse.SetSelectedSegmentTypes(const Value: TObjectList<TSegmentTypeInfo>);
begin
  if FSelectedSegmentTypes <> Value then
  begin
    if not KeepSelectedSegmentTypes then
      FSelectedSegmentTypes.Free;
    FSelectedSegmentTypes := Value;
  end;
end;

function TGetSegmentDetectionResponse.GetKeepSelectedSegmentTypes: Boolean;
begin
  Result := FKeepSelectedSegmentTypes;
end;

procedure TGetSegmentDetectionResponse.SetKeepSelectedSegmentTypes(const Value: Boolean);
begin
  FKeepSelectedSegmentTypes := Value;
end;

function TGetSegmentDetectionResponse.IsSetSelectedSegmentTypes: Boolean;
begin
  Result := (FSelectedSegmentTypes <> nil) and (FSelectedSegmentTypes.Count > 0);
end;

function TGetSegmentDetectionResponse.GetStatusMessage: string;
begin
  Result := FStatusMessage.ValueOrDefault;
end;

procedure TGetSegmentDetectionResponse.SetStatusMessage(const Value: string);
begin
  FStatusMessage := Value;
end;

function TGetSegmentDetectionResponse.IsSetStatusMessage: Boolean;
begin
  Result := FStatusMessage.HasValue;
end;

function TGetSegmentDetectionResponse.GetVideoMetadata: TObjectList<TVideoMetadata>;
begin
  Result := FVideoMetadata;
end;

procedure TGetSegmentDetectionResponse.SetVideoMetadata(const Value: TObjectList<TVideoMetadata>);
begin
  if FVideoMetadata <> Value then
  begin
    if not KeepVideoMetadata then
      FVideoMetadata.Free;
    FVideoMetadata := Value;
  end;
end;

function TGetSegmentDetectionResponse.GetKeepVideoMetadata: Boolean;
begin
  Result := FKeepVideoMetadata;
end;

procedure TGetSegmentDetectionResponse.SetKeepVideoMetadata(const Value: Boolean);
begin
  FKeepVideoMetadata := Value;
end;

function TGetSegmentDetectionResponse.IsSetVideoMetadata: Boolean;
begin
  Result := (FVideoMetadata <> nil) and (FVideoMetadata.Count > 0);
end;

end.

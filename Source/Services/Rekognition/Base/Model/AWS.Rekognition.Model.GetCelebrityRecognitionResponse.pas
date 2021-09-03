unit AWS.Rekognition.Model.GetCelebrityRecognitionResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.CelebrityRecognition, 
  AWS.Rekognition.Enums, 
  AWS.Rekognition.Model.VideoMetadata;

type
  TGetCelebrityRecognitionResponse = class;
  
  IGetCelebrityRecognitionResponse = interface(IAmazonWebServiceResponse)
    function GetCelebrities: TObjectList<TCelebrityRecognition>;
    procedure SetCelebrities(const Value: TObjectList<TCelebrityRecognition>);
    function GetKeepCelebrities: Boolean;
    procedure SetKeepCelebrities(const Value: Boolean);
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
    function Obj: TGetCelebrityRecognitionResponse;
    function IsSetCelebrities: Boolean;
    function IsSetJobStatus: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetVideoMetadata: Boolean;
    property Celebrities: TObjectList<TCelebrityRecognition> read GetCelebrities write SetCelebrities;
    property KeepCelebrities: Boolean read GetKeepCelebrities write SetKeepCelebrities;
    property JobStatus: TVideoJobStatus read GetJobStatus write SetJobStatus;
    property NextToken: string read GetNextToken write SetNextToken;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property VideoMetadata: TVideoMetadata read GetVideoMetadata write SetVideoMetadata;
    property KeepVideoMetadata: Boolean read GetKeepVideoMetadata write SetKeepVideoMetadata;
  end;
  
  TGetCelebrityRecognitionResponse = class(TAmazonWebServiceResponse, IGetCelebrityRecognitionResponse)
  strict private
    FCelebrities: TObjectList<TCelebrityRecognition>;
    FKeepCelebrities: Boolean;
    FJobStatus: Nullable<TVideoJobStatus>;
    FNextToken: Nullable<string>;
    FStatusMessage: Nullable<string>;
    FVideoMetadata: TVideoMetadata;
    FKeepVideoMetadata: Boolean;
    function GetCelebrities: TObjectList<TCelebrityRecognition>;
    procedure SetCelebrities(const Value: TObjectList<TCelebrityRecognition>);
    function GetKeepCelebrities: Boolean;
    procedure SetKeepCelebrities(const Value: Boolean);
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
    function Obj: TGetCelebrityRecognitionResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCelebrities: Boolean;
    function IsSetJobStatus: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetVideoMetadata: Boolean;
    property Celebrities: TObjectList<TCelebrityRecognition> read GetCelebrities write SetCelebrities;
    property KeepCelebrities: Boolean read GetKeepCelebrities write SetKeepCelebrities;
    property JobStatus: TVideoJobStatus read GetJobStatus write SetJobStatus;
    property NextToken: string read GetNextToken write SetNextToken;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property VideoMetadata: TVideoMetadata read GetVideoMetadata write SetVideoMetadata;
    property KeepVideoMetadata: Boolean read GetKeepVideoMetadata write SetKeepVideoMetadata;
  end;
  
implementation

{ TGetCelebrityRecognitionResponse }

constructor TGetCelebrityRecognitionResponse.Create;
begin
  inherited;
  FCelebrities := TObjectList<TCelebrityRecognition>.Create;
end;

destructor TGetCelebrityRecognitionResponse.Destroy;
begin
  VideoMetadata := nil;
  Celebrities := nil;
  inherited;
end;

function TGetCelebrityRecognitionResponse.Obj: TGetCelebrityRecognitionResponse;
begin
  Result := Self;
end;

function TGetCelebrityRecognitionResponse.GetCelebrities: TObjectList<TCelebrityRecognition>;
begin
  Result := FCelebrities;
end;

procedure TGetCelebrityRecognitionResponse.SetCelebrities(const Value: TObjectList<TCelebrityRecognition>);
begin
  if FCelebrities <> Value then
  begin
    if not KeepCelebrities then
      FCelebrities.Free;
    FCelebrities := Value;
  end;
end;

function TGetCelebrityRecognitionResponse.GetKeepCelebrities: Boolean;
begin
  Result := FKeepCelebrities;
end;

procedure TGetCelebrityRecognitionResponse.SetKeepCelebrities(const Value: Boolean);
begin
  FKeepCelebrities := Value;
end;

function TGetCelebrityRecognitionResponse.IsSetCelebrities: Boolean;
begin
  Result := (FCelebrities <> nil) and (FCelebrities.Count > 0);
end;

function TGetCelebrityRecognitionResponse.GetJobStatus: TVideoJobStatus;
begin
  Result := FJobStatus.ValueOrDefault;
end;

procedure TGetCelebrityRecognitionResponse.SetJobStatus(const Value: TVideoJobStatus);
begin
  FJobStatus := Value;
end;

function TGetCelebrityRecognitionResponse.IsSetJobStatus: Boolean;
begin
  Result := FJobStatus.HasValue;
end;

function TGetCelebrityRecognitionResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetCelebrityRecognitionResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetCelebrityRecognitionResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetCelebrityRecognitionResponse.GetStatusMessage: string;
begin
  Result := FStatusMessage.ValueOrDefault;
end;

procedure TGetCelebrityRecognitionResponse.SetStatusMessage(const Value: string);
begin
  FStatusMessage := Value;
end;

function TGetCelebrityRecognitionResponse.IsSetStatusMessage: Boolean;
begin
  Result := FStatusMessage.HasValue;
end;

function TGetCelebrityRecognitionResponse.GetVideoMetadata: TVideoMetadata;
begin
  Result := FVideoMetadata;
end;

procedure TGetCelebrityRecognitionResponse.SetVideoMetadata(const Value: TVideoMetadata);
begin
  if FVideoMetadata <> Value then
  begin
    if not KeepVideoMetadata then
      FVideoMetadata.Free;
    FVideoMetadata := Value;
  end;
end;

function TGetCelebrityRecognitionResponse.GetKeepVideoMetadata: Boolean;
begin
  Result := FKeepVideoMetadata;
end;

procedure TGetCelebrityRecognitionResponse.SetKeepVideoMetadata(const Value: Boolean);
begin
  FKeepVideoMetadata := Value;
end;

function TGetCelebrityRecognitionResponse.IsSetVideoMetadata: Boolean;
begin
  Result := FVideoMetadata <> nil;
end;

end.

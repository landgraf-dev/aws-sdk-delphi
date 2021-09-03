unit AWS.Rekognition.Model.GetPersonTrackingResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Enums, 
  AWS.Rekognition.Model.PersonDetection, 
  AWS.Rekognition.Model.VideoMetadata;

type
  TGetPersonTrackingResponse = class;
  
  IGetPersonTrackingResponse = interface(IAmazonWebServiceResponse)
    function GetJobStatus: TVideoJobStatus;
    procedure SetJobStatus(const Value: TVideoJobStatus);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPersons: TObjectList<TPersonDetection>;
    procedure SetPersons(const Value: TObjectList<TPersonDetection>);
    function GetKeepPersons: Boolean;
    procedure SetKeepPersons(const Value: Boolean);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetVideoMetadata: TVideoMetadata;
    procedure SetVideoMetadata(const Value: TVideoMetadata);
    function GetKeepVideoMetadata: Boolean;
    procedure SetKeepVideoMetadata(const Value: Boolean);
    function Obj: TGetPersonTrackingResponse;
    function IsSetJobStatus: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetPersons: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetVideoMetadata: Boolean;
    property JobStatus: TVideoJobStatus read GetJobStatus write SetJobStatus;
    property NextToken: string read GetNextToken write SetNextToken;
    property Persons: TObjectList<TPersonDetection> read GetPersons write SetPersons;
    property KeepPersons: Boolean read GetKeepPersons write SetKeepPersons;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property VideoMetadata: TVideoMetadata read GetVideoMetadata write SetVideoMetadata;
    property KeepVideoMetadata: Boolean read GetKeepVideoMetadata write SetKeepVideoMetadata;
  end;
  
  TGetPersonTrackingResponse = class(TAmazonWebServiceResponse, IGetPersonTrackingResponse)
  strict private
    FJobStatus: Nullable<TVideoJobStatus>;
    FNextToken: Nullable<string>;
    FPersons: TObjectList<TPersonDetection>;
    FKeepPersons: Boolean;
    FStatusMessage: Nullable<string>;
    FVideoMetadata: TVideoMetadata;
    FKeepVideoMetadata: Boolean;
    function GetJobStatus: TVideoJobStatus;
    procedure SetJobStatus(const Value: TVideoJobStatus);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPersons: TObjectList<TPersonDetection>;
    procedure SetPersons(const Value: TObjectList<TPersonDetection>);
    function GetKeepPersons: Boolean;
    procedure SetKeepPersons(const Value: Boolean);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetVideoMetadata: TVideoMetadata;
    procedure SetVideoMetadata(const Value: TVideoMetadata);
    function GetKeepVideoMetadata: Boolean;
    procedure SetKeepVideoMetadata(const Value: Boolean);
  strict protected
    function Obj: TGetPersonTrackingResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetJobStatus: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetPersons: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetVideoMetadata: Boolean;
    property JobStatus: TVideoJobStatus read GetJobStatus write SetJobStatus;
    property NextToken: string read GetNextToken write SetNextToken;
    property Persons: TObjectList<TPersonDetection> read GetPersons write SetPersons;
    property KeepPersons: Boolean read GetKeepPersons write SetKeepPersons;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property VideoMetadata: TVideoMetadata read GetVideoMetadata write SetVideoMetadata;
    property KeepVideoMetadata: Boolean read GetKeepVideoMetadata write SetKeepVideoMetadata;
  end;
  
implementation

{ TGetPersonTrackingResponse }

constructor TGetPersonTrackingResponse.Create;
begin
  inherited;
  FPersons := TObjectList<TPersonDetection>.Create;
end;

destructor TGetPersonTrackingResponse.Destroy;
begin
  VideoMetadata := nil;
  Persons := nil;
  inherited;
end;

function TGetPersonTrackingResponse.Obj: TGetPersonTrackingResponse;
begin
  Result := Self;
end;

function TGetPersonTrackingResponse.GetJobStatus: TVideoJobStatus;
begin
  Result := FJobStatus.ValueOrDefault;
end;

procedure TGetPersonTrackingResponse.SetJobStatus(const Value: TVideoJobStatus);
begin
  FJobStatus := Value;
end;

function TGetPersonTrackingResponse.IsSetJobStatus: Boolean;
begin
  Result := FJobStatus.HasValue;
end;

function TGetPersonTrackingResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetPersonTrackingResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetPersonTrackingResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetPersonTrackingResponse.GetPersons: TObjectList<TPersonDetection>;
begin
  Result := FPersons;
end;

procedure TGetPersonTrackingResponse.SetPersons(const Value: TObjectList<TPersonDetection>);
begin
  if FPersons <> Value then
  begin
    if not KeepPersons then
      FPersons.Free;
    FPersons := Value;
  end;
end;

function TGetPersonTrackingResponse.GetKeepPersons: Boolean;
begin
  Result := FKeepPersons;
end;

procedure TGetPersonTrackingResponse.SetKeepPersons(const Value: Boolean);
begin
  FKeepPersons := Value;
end;

function TGetPersonTrackingResponse.IsSetPersons: Boolean;
begin
  Result := (FPersons <> nil) and (FPersons.Count > 0);
end;

function TGetPersonTrackingResponse.GetStatusMessage: string;
begin
  Result := FStatusMessage.ValueOrDefault;
end;

procedure TGetPersonTrackingResponse.SetStatusMessage(const Value: string);
begin
  FStatusMessage := Value;
end;

function TGetPersonTrackingResponse.IsSetStatusMessage: Boolean;
begin
  Result := FStatusMessage.HasValue;
end;

function TGetPersonTrackingResponse.GetVideoMetadata: TVideoMetadata;
begin
  Result := FVideoMetadata;
end;

procedure TGetPersonTrackingResponse.SetVideoMetadata(const Value: TVideoMetadata);
begin
  if FVideoMetadata <> Value then
  begin
    if not KeepVideoMetadata then
      FVideoMetadata.Free;
    FVideoMetadata := Value;
  end;
end;

function TGetPersonTrackingResponse.GetKeepVideoMetadata: Boolean;
begin
  Result := FKeepVideoMetadata;
end;

procedure TGetPersonTrackingResponse.SetKeepVideoMetadata(const Value: Boolean);
begin
  FKeepVideoMetadata := Value;
end;

function TGetPersonTrackingResponse.IsSetVideoMetadata: Boolean;
begin
  Result := FVideoMetadata <> nil;
end;

end.

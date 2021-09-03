unit AWS.Rekognition.Model.GetFaceSearchResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Enums, 
  AWS.Rekognition.Model.PersonMatch, 
  AWS.Rekognition.Model.VideoMetadata;

type
  TGetFaceSearchResponse = class;
  
  IGetFaceSearchResponse = interface(IAmazonWebServiceResponse)
    function GetJobStatus: TVideoJobStatus;
    procedure SetJobStatus(const Value: TVideoJobStatus);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPersons: TObjectList<TPersonMatch>;
    procedure SetPersons(const Value: TObjectList<TPersonMatch>);
    function GetKeepPersons: Boolean;
    procedure SetKeepPersons(const Value: Boolean);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetVideoMetadata: TVideoMetadata;
    procedure SetVideoMetadata(const Value: TVideoMetadata);
    function GetKeepVideoMetadata: Boolean;
    procedure SetKeepVideoMetadata(const Value: Boolean);
    function Obj: TGetFaceSearchResponse;
    function IsSetJobStatus: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetPersons: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetVideoMetadata: Boolean;
    property JobStatus: TVideoJobStatus read GetJobStatus write SetJobStatus;
    property NextToken: string read GetNextToken write SetNextToken;
    property Persons: TObjectList<TPersonMatch> read GetPersons write SetPersons;
    property KeepPersons: Boolean read GetKeepPersons write SetKeepPersons;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property VideoMetadata: TVideoMetadata read GetVideoMetadata write SetVideoMetadata;
    property KeepVideoMetadata: Boolean read GetKeepVideoMetadata write SetKeepVideoMetadata;
  end;
  
  TGetFaceSearchResponse = class(TAmazonWebServiceResponse, IGetFaceSearchResponse)
  strict private
    FJobStatus: Nullable<TVideoJobStatus>;
    FNextToken: Nullable<string>;
    FPersons: TObjectList<TPersonMatch>;
    FKeepPersons: Boolean;
    FStatusMessage: Nullable<string>;
    FVideoMetadata: TVideoMetadata;
    FKeepVideoMetadata: Boolean;
    function GetJobStatus: TVideoJobStatus;
    procedure SetJobStatus(const Value: TVideoJobStatus);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPersons: TObjectList<TPersonMatch>;
    procedure SetPersons(const Value: TObjectList<TPersonMatch>);
    function GetKeepPersons: Boolean;
    procedure SetKeepPersons(const Value: Boolean);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetVideoMetadata: TVideoMetadata;
    procedure SetVideoMetadata(const Value: TVideoMetadata);
    function GetKeepVideoMetadata: Boolean;
    procedure SetKeepVideoMetadata(const Value: Boolean);
  strict protected
    function Obj: TGetFaceSearchResponse;
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
    property Persons: TObjectList<TPersonMatch> read GetPersons write SetPersons;
    property KeepPersons: Boolean read GetKeepPersons write SetKeepPersons;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property VideoMetadata: TVideoMetadata read GetVideoMetadata write SetVideoMetadata;
    property KeepVideoMetadata: Boolean read GetKeepVideoMetadata write SetKeepVideoMetadata;
  end;
  
implementation

{ TGetFaceSearchResponse }

constructor TGetFaceSearchResponse.Create;
begin
  inherited;
  FPersons := TObjectList<TPersonMatch>.Create;
end;

destructor TGetFaceSearchResponse.Destroy;
begin
  VideoMetadata := nil;
  Persons := nil;
  inherited;
end;

function TGetFaceSearchResponse.Obj: TGetFaceSearchResponse;
begin
  Result := Self;
end;

function TGetFaceSearchResponse.GetJobStatus: TVideoJobStatus;
begin
  Result := FJobStatus.ValueOrDefault;
end;

procedure TGetFaceSearchResponse.SetJobStatus(const Value: TVideoJobStatus);
begin
  FJobStatus := Value;
end;

function TGetFaceSearchResponse.IsSetJobStatus: Boolean;
begin
  Result := FJobStatus.HasValue;
end;

function TGetFaceSearchResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetFaceSearchResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetFaceSearchResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetFaceSearchResponse.GetPersons: TObjectList<TPersonMatch>;
begin
  Result := FPersons;
end;

procedure TGetFaceSearchResponse.SetPersons(const Value: TObjectList<TPersonMatch>);
begin
  if FPersons <> Value then
  begin
    if not KeepPersons then
      FPersons.Free;
    FPersons := Value;
  end;
end;

function TGetFaceSearchResponse.GetKeepPersons: Boolean;
begin
  Result := FKeepPersons;
end;

procedure TGetFaceSearchResponse.SetKeepPersons(const Value: Boolean);
begin
  FKeepPersons := Value;
end;

function TGetFaceSearchResponse.IsSetPersons: Boolean;
begin
  Result := (FPersons <> nil) and (FPersons.Count > 0);
end;

function TGetFaceSearchResponse.GetStatusMessage: string;
begin
  Result := FStatusMessage.ValueOrDefault;
end;

procedure TGetFaceSearchResponse.SetStatusMessage(const Value: string);
begin
  FStatusMessage := Value;
end;

function TGetFaceSearchResponse.IsSetStatusMessage: Boolean;
begin
  Result := FStatusMessage.HasValue;
end;

function TGetFaceSearchResponse.GetVideoMetadata: TVideoMetadata;
begin
  Result := FVideoMetadata;
end;

procedure TGetFaceSearchResponse.SetVideoMetadata(const Value: TVideoMetadata);
begin
  if FVideoMetadata <> Value then
  begin
    if not KeepVideoMetadata then
      FVideoMetadata.Free;
    FVideoMetadata := Value;
  end;
end;

function TGetFaceSearchResponse.GetKeepVideoMetadata: Boolean;
begin
  Result := FKeepVideoMetadata;
end;

procedure TGetFaceSearchResponse.SetKeepVideoMetadata(const Value: Boolean);
begin
  FKeepVideoMetadata := Value;
end;

function TGetFaceSearchResponse.IsSetVideoMetadata: Boolean;
begin
  Result := FVideoMetadata <> nil;
end;

end.

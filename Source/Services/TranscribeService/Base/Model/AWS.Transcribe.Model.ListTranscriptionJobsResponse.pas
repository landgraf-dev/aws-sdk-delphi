unit AWS.Transcribe.Model.ListTranscriptionJobsResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Enums, 
  AWS.Transcribe.Model.TranscriptionJobSummary;

type
  TListTranscriptionJobsResponse = class;
  
  IListTranscriptionJobsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatus: TTranscriptionJobStatus;
    procedure SetStatus(const Value: TTranscriptionJobStatus);
    function GetTranscriptionJobSummaries: TObjectList<TTranscriptionJobSummary>;
    procedure SetTranscriptionJobSummaries(const Value: TObjectList<TTranscriptionJobSummary>);
    function GetKeepTranscriptionJobSummaries: Boolean;
    procedure SetKeepTranscriptionJobSummaries(const Value: Boolean);
    function Obj: TListTranscriptionJobsResponse;
    function IsSetNextToken: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTranscriptionJobSummaries: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Status: TTranscriptionJobStatus read GetStatus write SetStatus;
    property TranscriptionJobSummaries: TObjectList<TTranscriptionJobSummary> read GetTranscriptionJobSummaries write SetTranscriptionJobSummaries;
    property KeepTranscriptionJobSummaries: Boolean read GetKeepTranscriptionJobSummaries write SetKeepTranscriptionJobSummaries;
  end;
  
  TListTranscriptionJobsResponse = class(TAmazonWebServiceResponse, IListTranscriptionJobsResponse)
  strict private
    FNextToken: Nullable<string>;
    FStatus: Nullable<TTranscriptionJobStatus>;
    FTranscriptionJobSummaries: TObjectList<TTranscriptionJobSummary>;
    FKeepTranscriptionJobSummaries: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatus: TTranscriptionJobStatus;
    procedure SetStatus(const Value: TTranscriptionJobStatus);
    function GetTranscriptionJobSummaries: TObjectList<TTranscriptionJobSummary>;
    procedure SetTranscriptionJobSummaries(const Value: TObjectList<TTranscriptionJobSummary>);
    function GetKeepTranscriptionJobSummaries: Boolean;
    procedure SetKeepTranscriptionJobSummaries(const Value: Boolean);
  strict protected
    function Obj: TListTranscriptionJobsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTranscriptionJobSummaries: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Status: TTranscriptionJobStatus read GetStatus write SetStatus;
    property TranscriptionJobSummaries: TObjectList<TTranscriptionJobSummary> read GetTranscriptionJobSummaries write SetTranscriptionJobSummaries;
    property KeepTranscriptionJobSummaries: Boolean read GetKeepTranscriptionJobSummaries write SetKeepTranscriptionJobSummaries;
  end;
  
implementation

{ TListTranscriptionJobsResponse }

constructor TListTranscriptionJobsResponse.Create;
begin
  inherited;
  FTranscriptionJobSummaries := TObjectList<TTranscriptionJobSummary>.Create;
end;

destructor TListTranscriptionJobsResponse.Destroy;
begin
  TranscriptionJobSummaries := nil;
  inherited;
end;

function TListTranscriptionJobsResponse.Obj: TListTranscriptionJobsResponse;
begin
  Result := Self;
end;

function TListTranscriptionJobsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListTranscriptionJobsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListTranscriptionJobsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListTranscriptionJobsResponse.GetStatus: TTranscriptionJobStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TListTranscriptionJobsResponse.SetStatus(const Value: TTranscriptionJobStatus);
begin
  FStatus := Value;
end;

function TListTranscriptionJobsResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TListTranscriptionJobsResponse.GetTranscriptionJobSummaries: TObjectList<TTranscriptionJobSummary>;
begin
  Result := FTranscriptionJobSummaries;
end;

procedure TListTranscriptionJobsResponse.SetTranscriptionJobSummaries(const Value: TObjectList<TTranscriptionJobSummary>);
begin
  if FTranscriptionJobSummaries <> Value then
  begin
    if not KeepTranscriptionJobSummaries then
      FTranscriptionJobSummaries.Free;
    FTranscriptionJobSummaries := Value;
  end;
end;

function TListTranscriptionJobsResponse.GetKeepTranscriptionJobSummaries: Boolean;
begin
  Result := FKeepTranscriptionJobSummaries;
end;

procedure TListTranscriptionJobsResponse.SetKeepTranscriptionJobSummaries(const Value: Boolean);
begin
  FKeepTranscriptionJobSummaries := Value;
end;

function TListTranscriptionJobsResponse.IsSetTranscriptionJobSummaries: Boolean;
begin
  Result := (FTranscriptionJobSummaries <> nil) and (FTranscriptionJobSummaries.Count > 0);
end;

end.

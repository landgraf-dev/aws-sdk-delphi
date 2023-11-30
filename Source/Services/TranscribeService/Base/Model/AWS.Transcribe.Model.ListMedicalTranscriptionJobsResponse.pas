unit AWS.Transcribe.Model.ListMedicalTranscriptionJobsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.MedicalTranscriptionJobSummary, 
  AWS.Nullable, 
  AWS.Transcribe.Enums;

type
  TListMedicalTranscriptionJobsResponse = class;
  
  IListMedicalTranscriptionJobsResponse = interface(IAmazonWebServiceResponse)
    function GetMedicalTranscriptionJobSummaries: TObjectList<TMedicalTranscriptionJobSummary>;
    procedure SetMedicalTranscriptionJobSummaries(const Value: TObjectList<TMedicalTranscriptionJobSummary>);
    function GetKeepMedicalTranscriptionJobSummaries: Boolean;
    procedure SetKeepMedicalTranscriptionJobSummaries(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatus: TTranscriptionJobStatus;
    procedure SetStatus(const Value: TTranscriptionJobStatus);
    function Obj: TListMedicalTranscriptionJobsResponse;
    function IsSetMedicalTranscriptionJobSummaries: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatus: Boolean;
    property MedicalTranscriptionJobSummaries: TObjectList<TMedicalTranscriptionJobSummary> read GetMedicalTranscriptionJobSummaries write SetMedicalTranscriptionJobSummaries;
    property KeepMedicalTranscriptionJobSummaries: Boolean read GetKeepMedicalTranscriptionJobSummaries write SetKeepMedicalTranscriptionJobSummaries;
    property NextToken: string read GetNextToken write SetNextToken;
    property Status: TTranscriptionJobStatus read GetStatus write SetStatus;
  end;
  
  TListMedicalTranscriptionJobsResponse = class(TAmazonWebServiceResponse, IListMedicalTranscriptionJobsResponse)
  strict private
    FMedicalTranscriptionJobSummaries: TObjectList<TMedicalTranscriptionJobSummary>;
    FKeepMedicalTranscriptionJobSummaries: Boolean;
    FNextToken: Nullable<string>;
    FStatus: Nullable<TTranscriptionJobStatus>;
    function GetMedicalTranscriptionJobSummaries: TObjectList<TMedicalTranscriptionJobSummary>;
    procedure SetMedicalTranscriptionJobSummaries(const Value: TObjectList<TMedicalTranscriptionJobSummary>);
    function GetKeepMedicalTranscriptionJobSummaries: Boolean;
    procedure SetKeepMedicalTranscriptionJobSummaries(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatus: TTranscriptionJobStatus;
    procedure SetStatus(const Value: TTranscriptionJobStatus);
  strict protected
    function Obj: TListMedicalTranscriptionJobsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetMedicalTranscriptionJobSummaries: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatus: Boolean;
    property MedicalTranscriptionJobSummaries: TObjectList<TMedicalTranscriptionJobSummary> read GetMedicalTranscriptionJobSummaries write SetMedicalTranscriptionJobSummaries;
    property KeepMedicalTranscriptionJobSummaries: Boolean read GetKeepMedicalTranscriptionJobSummaries write SetKeepMedicalTranscriptionJobSummaries;
    property NextToken: string read GetNextToken write SetNextToken;
    property Status: TTranscriptionJobStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TListMedicalTranscriptionJobsResponse }

constructor TListMedicalTranscriptionJobsResponse.Create;
begin
  inherited;
  FMedicalTranscriptionJobSummaries := TObjectList<TMedicalTranscriptionJobSummary>.Create;
end;

destructor TListMedicalTranscriptionJobsResponse.Destroy;
begin
  MedicalTranscriptionJobSummaries := nil;
  inherited;
end;

function TListMedicalTranscriptionJobsResponse.Obj: TListMedicalTranscriptionJobsResponse;
begin
  Result := Self;
end;

function TListMedicalTranscriptionJobsResponse.GetMedicalTranscriptionJobSummaries: TObjectList<TMedicalTranscriptionJobSummary>;
begin
  Result := FMedicalTranscriptionJobSummaries;
end;

procedure TListMedicalTranscriptionJobsResponse.SetMedicalTranscriptionJobSummaries(const Value: TObjectList<TMedicalTranscriptionJobSummary>);
begin
  if FMedicalTranscriptionJobSummaries <> Value then
  begin
    if not KeepMedicalTranscriptionJobSummaries then
      FMedicalTranscriptionJobSummaries.Free;
    FMedicalTranscriptionJobSummaries := Value;
  end;
end;

function TListMedicalTranscriptionJobsResponse.GetKeepMedicalTranscriptionJobSummaries: Boolean;
begin
  Result := FKeepMedicalTranscriptionJobSummaries;
end;

procedure TListMedicalTranscriptionJobsResponse.SetKeepMedicalTranscriptionJobSummaries(const Value: Boolean);
begin
  FKeepMedicalTranscriptionJobSummaries := Value;
end;

function TListMedicalTranscriptionJobsResponse.IsSetMedicalTranscriptionJobSummaries: Boolean;
begin
  Result := (FMedicalTranscriptionJobSummaries <> nil) and (FMedicalTranscriptionJobSummaries.Count > 0);
end;

function TListMedicalTranscriptionJobsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListMedicalTranscriptionJobsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListMedicalTranscriptionJobsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListMedicalTranscriptionJobsResponse.GetStatus: TTranscriptionJobStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TListMedicalTranscriptionJobsResponse.SetStatus(const Value: TTranscriptionJobStatus);
begin
  FStatus := Value;
end;

function TListMedicalTranscriptionJobsResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.

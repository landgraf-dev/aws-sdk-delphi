unit AWS.Transcribe.Model.ListTranscriptionJobsRequest;

interface

uses
  AWS.Transcribe.Model.Request, 
  AWS.Nullable, 
  AWS.Transcribe.Enums;

type
  TListTranscriptionJobsRequest = class;
  
  IListTranscriptionJobsRequest = interface
    function GetJobNameContains: string;
    procedure SetJobNameContains(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatus: TTranscriptionJobStatus;
    procedure SetStatus(const Value: TTranscriptionJobStatus);
    function Obj: TListTranscriptionJobsRequest;
    function IsSetJobNameContains: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatus: Boolean;
    property JobNameContains: string read GetJobNameContains write SetJobNameContains;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property Status: TTranscriptionJobStatus read GetStatus write SetStatus;
  end;
  
  TListTranscriptionJobsRequest = class(TAmazonTranscribeServiceRequest, IListTranscriptionJobsRequest)
  strict private
    FJobNameContains: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FStatus: Nullable<TTranscriptionJobStatus>;
    function GetJobNameContains: string;
    procedure SetJobNameContains(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatus: TTranscriptionJobStatus;
    procedure SetStatus(const Value: TTranscriptionJobStatus);
  strict protected
    function Obj: TListTranscriptionJobsRequest;
  public
    function IsSetJobNameContains: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatus: Boolean;
    property JobNameContains: string read GetJobNameContains write SetJobNameContains;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property Status: TTranscriptionJobStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TListTranscriptionJobsRequest }

function TListTranscriptionJobsRequest.Obj: TListTranscriptionJobsRequest;
begin
  Result := Self;
end;

function TListTranscriptionJobsRequest.GetJobNameContains: string;
begin
  Result := FJobNameContains.ValueOrDefault;
end;

procedure TListTranscriptionJobsRequest.SetJobNameContains(const Value: string);
begin
  FJobNameContains := Value;
end;

function TListTranscriptionJobsRequest.IsSetJobNameContains: Boolean;
begin
  Result := FJobNameContains.HasValue;
end;

function TListTranscriptionJobsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListTranscriptionJobsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListTranscriptionJobsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListTranscriptionJobsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListTranscriptionJobsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListTranscriptionJobsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListTranscriptionJobsRequest.GetStatus: TTranscriptionJobStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TListTranscriptionJobsRequest.SetStatus(const Value: TTranscriptionJobStatus);
begin
  FStatus := Value;
end;

function TListTranscriptionJobsRequest.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.

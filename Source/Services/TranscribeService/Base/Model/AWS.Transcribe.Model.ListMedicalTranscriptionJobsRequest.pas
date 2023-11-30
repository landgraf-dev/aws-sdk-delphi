unit AWS.Transcribe.Model.ListMedicalTranscriptionJobsRequest;

interface

uses
  AWS.Transcribe.Model.Request, 
  AWS.Nullable, 
  AWS.Transcribe.Enums;

type
  TListMedicalTranscriptionJobsRequest = class;
  
  IListMedicalTranscriptionJobsRequest = interface
    function GetJobNameContains: string;
    procedure SetJobNameContains(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatus: TTranscriptionJobStatus;
    procedure SetStatus(const Value: TTranscriptionJobStatus);
    function Obj: TListMedicalTranscriptionJobsRequest;
    function IsSetJobNameContains: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatus: Boolean;
    property JobNameContains: string read GetJobNameContains write SetJobNameContains;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property Status: TTranscriptionJobStatus read GetStatus write SetStatus;
  end;
  
  TListMedicalTranscriptionJobsRequest = class(TAmazonTranscribeServiceRequest, IListMedicalTranscriptionJobsRequest)
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
    function Obj: TListMedicalTranscriptionJobsRequest;
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

{ TListMedicalTranscriptionJobsRequest }

function TListMedicalTranscriptionJobsRequest.Obj: TListMedicalTranscriptionJobsRequest;
begin
  Result := Self;
end;

function TListMedicalTranscriptionJobsRequest.GetJobNameContains: string;
begin
  Result := FJobNameContains.ValueOrDefault;
end;

procedure TListMedicalTranscriptionJobsRequest.SetJobNameContains(const Value: string);
begin
  FJobNameContains := Value;
end;

function TListMedicalTranscriptionJobsRequest.IsSetJobNameContains: Boolean;
begin
  Result := FJobNameContains.HasValue;
end;

function TListMedicalTranscriptionJobsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListMedicalTranscriptionJobsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListMedicalTranscriptionJobsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListMedicalTranscriptionJobsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListMedicalTranscriptionJobsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListMedicalTranscriptionJobsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListMedicalTranscriptionJobsRequest.GetStatus: TTranscriptionJobStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TListMedicalTranscriptionJobsRequest.SetStatus(const Value: TTranscriptionJobStatus);
begin
  FStatus := Value;
end;

function TListMedicalTranscriptionJobsRequest.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.

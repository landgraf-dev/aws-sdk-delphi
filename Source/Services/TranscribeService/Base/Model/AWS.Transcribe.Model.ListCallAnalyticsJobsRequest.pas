unit AWS.Transcribe.Model.ListCallAnalyticsJobsRequest;

interface

uses
  AWS.Transcribe.Model.Request, 
  AWS.Nullable, 
  AWS.Transcribe.Enums;

type
  TListCallAnalyticsJobsRequest = class;
  
  IListCallAnalyticsJobsRequest = interface
    function GetJobNameContains: string;
    procedure SetJobNameContains(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatus: TCallAnalyticsJobStatus;
    procedure SetStatus(const Value: TCallAnalyticsJobStatus);
    function Obj: TListCallAnalyticsJobsRequest;
    function IsSetJobNameContains: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatus: Boolean;
    property JobNameContains: string read GetJobNameContains write SetJobNameContains;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property Status: TCallAnalyticsJobStatus read GetStatus write SetStatus;
  end;
  
  TListCallAnalyticsJobsRequest = class(TAmazonTranscribeServiceRequest, IListCallAnalyticsJobsRequest)
  strict private
    FJobNameContains: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FStatus: Nullable<TCallAnalyticsJobStatus>;
    function GetJobNameContains: string;
    procedure SetJobNameContains(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatus: TCallAnalyticsJobStatus;
    procedure SetStatus(const Value: TCallAnalyticsJobStatus);
  strict protected
    function Obj: TListCallAnalyticsJobsRequest;
  public
    function IsSetJobNameContains: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatus: Boolean;
    property JobNameContains: string read GetJobNameContains write SetJobNameContains;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property Status: TCallAnalyticsJobStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TListCallAnalyticsJobsRequest }

function TListCallAnalyticsJobsRequest.Obj: TListCallAnalyticsJobsRequest;
begin
  Result := Self;
end;

function TListCallAnalyticsJobsRequest.GetJobNameContains: string;
begin
  Result := FJobNameContains.ValueOrDefault;
end;

procedure TListCallAnalyticsJobsRequest.SetJobNameContains(const Value: string);
begin
  FJobNameContains := Value;
end;

function TListCallAnalyticsJobsRequest.IsSetJobNameContains: Boolean;
begin
  Result := FJobNameContains.HasValue;
end;

function TListCallAnalyticsJobsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListCallAnalyticsJobsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListCallAnalyticsJobsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListCallAnalyticsJobsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListCallAnalyticsJobsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListCallAnalyticsJobsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListCallAnalyticsJobsRequest.GetStatus: TCallAnalyticsJobStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TListCallAnalyticsJobsRequest.SetStatus(const Value: TCallAnalyticsJobStatus);
begin
  FStatus := Value;
end;

function TListCallAnalyticsJobsRequest.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.

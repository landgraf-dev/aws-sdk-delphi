unit AWS.Transcribe.Model.ListCallAnalyticsJobsResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.CallAnalyticsJobSummary, 
  AWS.Transcribe.Enums;

type
  TListCallAnalyticsJobsResponse = class;
  
  IListCallAnalyticsJobsResponse = interface(IAmazonWebServiceResponse)
    function GetCallAnalyticsJobSummaries: TObjectList<TCallAnalyticsJobSummary>;
    procedure SetCallAnalyticsJobSummaries(const Value: TObjectList<TCallAnalyticsJobSummary>);
    function GetKeepCallAnalyticsJobSummaries: Boolean;
    procedure SetKeepCallAnalyticsJobSummaries(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatus: TCallAnalyticsJobStatus;
    procedure SetStatus(const Value: TCallAnalyticsJobStatus);
    function Obj: TListCallAnalyticsJobsResponse;
    function IsSetCallAnalyticsJobSummaries: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatus: Boolean;
    property CallAnalyticsJobSummaries: TObjectList<TCallAnalyticsJobSummary> read GetCallAnalyticsJobSummaries write SetCallAnalyticsJobSummaries;
    property KeepCallAnalyticsJobSummaries: Boolean read GetKeepCallAnalyticsJobSummaries write SetKeepCallAnalyticsJobSummaries;
    property NextToken: string read GetNextToken write SetNextToken;
    property Status: TCallAnalyticsJobStatus read GetStatus write SetStatus;
  end;
  
  TListCallAnalyticsJobsResponse = class(TAmazonWebServiceResponse, IListCallAnalyticsJobsResponse)
  strict private
    FCallAnalyticsJobSummaries: TObjectList<TCallAnalyticsJobSummary>;
    FKeepCallAnalyticsJobSummaries: Boolean;
    FNextToken: Nullable<string>;
    FStatus: Nullable<TCallAnalyticsJobStatus>;
    function GetCallAnalyticsJobSummaries: TObjectList<TCallAnalyticsJobSummary>;
    procedure SetCallAnalyticsJobSummaries(const Value: TObjectList<TCallAnalyticsJobSummary>);
    function GetKeepCallAnalyticsJobSummaries: Boolean;
    procedure SetKeepCallAnalyticsJobSummaries(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatus: TCallAnalyticsJobStatus;
    procedure SetStatus(const Value: TCallAnalyticsJobStatus);
  strict protected
    function Obj: TListCallAnalyticsJobsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCallAnalyticsJobSummaries: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatus: Boolean;
    property CallAnalyticsJobSummaries: TObjectList<TCallAnalyticsJobSummary> read GetCallAnalyticsJobSummaries write SetCallAnalyticsJobSummaries;
    property KeepCallAnalyticsJobSummaries: Boolean read GetKeepCallAnalyticsJobSummaries write SetKeepCallAnalyticsJobSummaries;
    property NextToken: string read GetNextToken write SetNextToken;
    property Status: TCallAnalyticsJobStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TListCallAnalyticsJobsResponse }

constructor TListCallAnalyticsJobsResponse.Create;
begin
  inherited;
  FCallAnalyticsJobSummaries := TObjectList<TCallAnalyticsJobSummary>.Create;
end;

destructor TListCallAnalyticsJobsResponse.Destroy;
begin
  CallAnalyticsJobSummaries := nil;
  inherited;
end;

function TListCallAnalyticsJobsResponse.Obj: TListCallAnalyticsJobsResponse;
begin
  Result := Self;
end;

function TListCallAnalyticsJobsResponse.GetCallAnalyticsJobSummaries: TObjectList<TCallAnalyticsJobSummary>;
begin
  Result := FCallAnalyticsJobSummaries;
end;

procedure TListCallAnalyticsJobsResponse.SetCallAnalyticsJobSummaries(const Value: TObjectList<TCallAnalyticsJobSummary>);
begin
  if FCallAnalyticsJobSummaries <> Value then
  begin
    if not KeepCallAnalyticsJobSummaries then
      FCallAnalyticsJobSummaries.Free;
    FCallAnalyticsJobSummaries := Value;
  end;
end;

function TListCallAnalyticsJobsResponse.GetKeepCallAnalyticsJobSummaries: Boolean;
begin
  Result := FKeepCallAnalyticsJobSummaries;
end;

procedure TListCallAnalyticsJobsResponse.SetKeepCallAnalyticsJobSummaries(const Value: Boolean);
begin
  FKeepCallAnalyticsJobSummaries := Value;
end;

function TListCallAnalyticsJobsResponse.IsSetCallAnalyticsJobSummaries: Boolean;
begin
  Result := (FCallAnalyticsJobSummaries <> nil) and (FCallAnalyticsJobSummaries.Count > 0);
end;

function TListCallAnalyticsJobsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListCallAnalyticsJobsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListCallAnalyticsJobsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListCallAnalyticsJobsResponse.GetStatus: TCallAnalyticsJobStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TListCallAnalyticsJobsResponse.SetStatus(const Value: TCallAnalyticsJobStatus);
begin
  FStatus := Value;
end;

function TListCallAnalyticsJobsResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.

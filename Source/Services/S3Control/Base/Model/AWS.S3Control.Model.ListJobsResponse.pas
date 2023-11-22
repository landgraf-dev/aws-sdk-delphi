unit AWS.S3Control.Model.ListJobsResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.JobListDescriptor;

type
  TListJobsResponse = class;
  
  IListJobsResponse = interface(IAmazonWebServiceResponse)
    function GetJobs: TObjectList<TJobListDescriptor>;
    procedure SetJobs(const Value: TObjectList<TJobListDescriptor>);
    function GetKeepJobs: Boolean;
    procedure SetKeepJobs(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListJobsResponse;
    function IsSetJobs: Boolean;
    function IsSetNextToken: Boolean;
    property Jobs: TObjectList<TJobListDescriptor> read GetJobs write SetJobs;
    property KeepJobs: Boolean read GetKeepJobs write SetKeepJobs;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListJobsResponse = class(TAmazonWebServiceResponse, IListJobsResponse)
  strict private
    FJobs: TObjectList<TJobListDescriptor>;
    FKeepJobs: Boolean;
    FNextToken: Nullable<string>;
    function GetJobs: TObjectList<TJobListDescriptor>;
    procedure SetJobs(const Value: TObjectList<TJobListDescriptor>);
    function GetKeepJobs: Boolean;
    procedure SetKeepJobs(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListJobsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetJobs: Boolean;
    function IsSetNextToken: Boolean;
    property Jobs: TObjectList<TJobListDescriptor> read GetJobs write SetJobs;
    property KeepJobs: Boolean read GetKeepJobs write SetKeepJobs;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListJobsResponse }

constructor TListJobsResponse.Create;
begin
  inherited;
  FJobs := TObjectList<TJobListDescriptor>.Create;
end;

destructor TListJobsResponse.Destroy;
begin
  Jobs := nil;
  inherited;
end;

function TListJobsResponse.Obj: TListJobsResponse;
begin
  Result := Self;
end;

function TListJobsResponse.GetJobs: TObjectList<TJobListDescriptor>;
begin
  Result := FJobs;
end;

procedure TListJobsResponse.SetJobs(const Value: TObjectList<TJobListDescriptor>);
begin
  if FJobs <> Value then
  begin
    if not KeepJobs then
      FJobs.Free;
    FJobs := Value;
  end;
end;

function TListJobsResponse.GetKeepJobs: Boolean;
begin
  Result := FKeepJobs;
end;

procedure TListJobsResponse.SetKeepJobs(const Value: Boolean);
begin
  FKeepJobs := Value;
end;

function TListJobsResponse.IsSetJobs: Boolean;
begin
  Result := (FJobs <> nil) and (FJobs.Count > 0);
end;

function TListJobsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListJobsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListJobsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.

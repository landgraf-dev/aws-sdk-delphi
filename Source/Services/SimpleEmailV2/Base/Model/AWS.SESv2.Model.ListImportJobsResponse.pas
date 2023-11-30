unit AWS.SESv2.Model.ListImportJobsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.ImportJobSummary, 
  AWS.Nullable;

type
  TListImportJobsResponse = class;
  
  IListImportJobsResponse = interface(IAmazonWebServiceResponse)
    function GetImportJobs: TObjectList<TImportJobSummary>;
    procedure SetImportJobs(const Value: TObjectList<TImportJobSummary>);
    function GetKeepImportJobs: Boolean;
    procedure SetKeepImportJobs(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListImportJobsResponse;
    function IsSetImportJobs: Boolean;
    function IsSetNextToken: Boolean;
    property ImportJobs: TObjectList<TImportJobSummary> read GetImportJobs write SetImportJobs;
    property KeepImportJobs: Boolean read GetKeepImportJobs write SetKeepImportJobs;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListImportJobsResponse = class(TAmazonWebServiceResponse, IListImportJobsResponse)
  strict private
    FImportJobs: TObjectList<TImportJobSummary>;
    FKeepImportJobs: Boolean;
    FNextToken: Nullable<string>;
    function GetImportJobs: TObjectList<TImportJobSummary>;
    procedure SetImportJobs(const Value: TObjectList<TImportJobSummary>);
    function GetKeepImportJobs: Boolean;
    procedure SetKeepImportJobs(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListImportJobsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetImportJobs: Boolean;
    function IsSetNextToken: Boolean;
    property ImportJobs: TObjectList<TImportJobSummary> read GetImportJobs write SetImportJobs;
    property KeepImportJobs: Boolean read GetKeepImportJobs write SetKeepImportJobs;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListImportJobsResponse }

constructor TListImportJobsResponse.Create;
begin
  inherited;
  FImportJobs := TObjectList<TImportJobSummary>.Create;
end;

destructor TListImportJobsResponse.Destroy;
begin
  ImportJobs := nil;
  inherited;
end;

function TListImportJobsResponse.Obj: TListImportJobsResponse;
begin
  Result := Self;
end;

function TListImportJobsResponse.GetImportJobs: TObjectList<TImportJobSummary>;
begin
  Result := FImportJobs;
end;

procedure TListImportJobsResponse.SetImportJobs(const Value: TObjectList<TImportJobSummary>);
begin
  if FImportJobs <> Value then
  begin
    if not KeepImportJobs then
      FImportJobs.Free;
    FImportJobs := Value;
  end;
end;

function TListImportJobsResponse.GetKeepImportJobs: Boolean;
begin
  Result := FKeepImportJobs;
end;

procedure TListImportJobsResponse.SetKeepImportJobs(const Value: Boolean);
begin
  FKeepImportJobs := Value;
end;

function TListImportJobsResponse.IsSetImportJobs: Boolean;
begin
  Result := (FImportJobs <> nil) and (FImportJobs.Count > 0);
end;

function TListImportJobsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListImportJobsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListImportJobsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.

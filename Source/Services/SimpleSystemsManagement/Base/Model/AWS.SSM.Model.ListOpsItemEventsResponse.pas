unit AWS.SSM.Model.ListOpsItemEventsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.OpsItemEventSummary;

type
  TListOpsItemEventsResponse = class;
  
  IListOpsItemEventsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSummaries: TObjectList<TOpsItemEventSummary>;
    procedure SetSummaries(const Value: TObjectList<TOpsItemEventSummary>);
    function GetKeepSummaries: Boolean;
    procedure SetKeepSummaries(const Value: Boolean);
    function Obj: TListOpsItemEventsResponse;
    function IsSetNextToken: Boolean;
    function IsSetSummaries: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Summaries: TObjectList<TOpsItemEventSummary> read GetSummaries write SetSummaries;
    property KeepSummaries: Boolean read GetKeepSummaries write SetKeepSummaries;
  end;
  
  TListOpsItemEventsResponse = class(TAmazonWebServiceResponse, IListOpsItemEventsResponse)
  strict private
    FNextToken: Nullable<string>;
    FSummaries: TObjectList<TOpsItemEventSummary>;
    FKeepSummaries: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSummaries: TObjectList<TOpsItemEventSummary>;
    procedure SetSummaries(const Value: TObjectList<TOpsItemEventSummary>);
    function GetKeepSummaries: Boolean;
    procedure SetKeepSummaries(const Value: Boolean);
  strict protected
    function Obj: TListOpsItemEventsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetSummaries: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Summaries: TObjectList<TOpsItemEventSummary> read GetSummaries write SetSummaries;
    property KeepSummaries: Boolean read GetKeepSummaries write SetKeepSummaries;
  end;
  
implementation

{ TListOpsItemEventsResponse }

constructor TListOpsItemEventsResponse.Create;
begin
  inherited;
  FSummaries := TObjectList<TOpsItemEventSummary>.Create;
end;

destructor TListOpsItemEventsResponse.Destroy;
begin
  Summaries := nil;
  inherited;
end;

function TListOpsItemEventsResponse.Obj: TListOpsItemEventsResponse;
begin
  Result := Self;
end;

function TListOpsItemEventsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListOpsItemEventsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListOpsItemEventsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListOpsItemEventsResponse.GetSummaries: TObjectList<TOpsItemEventSummary>;
begin
  Result := FSummaries;
end;

procedure TListOpsItemEventsResponse.SetSummaries(const Value: TObjectList<TOpsItemEventSummary>);
begin
  if FSummaries <> Value then
  begin
    if not KeepSummaries then
      FSummaries.Free;
    FSummaries := Value;
  end;
end;

function TListOpsItemEventsResponse.GetKeepSummaries: Boolean;
begin
  Result := FKeepSummaries;
end;

procedure TListOpsItemEventsResponse.SetKeepSummaries(const Value: Boolean);
begin
  FKeepSummaries := Value;
end;

function TListOpsItemEventsResponse.IsSetSummaries: Boolean;
begin
  Result := (FSummaries <> nil) and (FSummaries.Count > 0);
end;

end.

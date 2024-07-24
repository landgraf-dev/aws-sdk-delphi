unit AWS.SSM.Model.ListOpsItemEventsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.OpsItemEventFilter, 
  AWS.Nullable;

type
  TListOpsItemEventsRequest = class;
  
  IListOpsItemEventsRequest = interface
    function GetFilters: TObjectList<TOpsItemEventFilter>;
    procedure SetFilters(const Value: TObjectList<TOpsItemEventFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListOpsItemEventsRequest;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TOpsItemEventFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListOpsItemEventsRequest = class(TAmazonSimpleSystemsManagementRequest, IListOpsItemEventsRequest)
  strict private
    FFilters: TObjectList<TOpsItemEventFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetFilters: TObjectList<TOpsItemEventFilter>;
    procedure SetFilters(const Value: TObjectList<TOpsItemEventFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListOpsItemEventsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TOpsItemEventFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListOpsItemEventsRequest }

constructor TListOpsItemEventsRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TOpsItemEventFilter>.Create;
end;

destructor TListOpsItemEventsRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TListOpsItemEventsRequest.Obj: TListOpsItemEventsRequest;
begin
  Result := Self;
end;

function TListOpsItemEventsRequest.GetFilters: TObjectList<TOpsItemEventFilter>;
begin
  Result := FFilters;
end;

procedure TListOpsItemEventsRequest.SetFilters(const Value: TObjectList<TOpsItemEventFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TListOpsItemEventsRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TListOpsItemEventsRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TListOpsItemEventsRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TListOpsItemEventsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListOpsItemEventsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListOpsItemEventsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListOpsItemEventsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListOpsItemEventsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListOpsItemEventsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.

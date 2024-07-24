unit AWS.SSM.Model.ListOpsItemRelatedItemsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.OpsItemRelatedItemsFilter, 
  AWS.Nullable;

type
  TListOpsItemRelatedItemsRequest = class;
  
  IListOpsItemRelatedItemsRequest = interface
    function GetFilters: TObjectList<TOpsItemRelatedItemsFilter>;
    procedure SetFilters(const Value: TObjectList<TOpsItemRelatedItemsFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
    function Obj: TListOpsItemRelatedItemsRequest;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetOpsItemId: Boolean;
    property Filters: TObjectList<TOpsItemRelatedItemsFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
  end;
  
  TListOpsItemRelatedItemsRequest = class(TAmazonSimpleSystemsManagementRequest, IListOpsItemRelatedItemsRequest)
  strict private
    FFilters: TObjectList<TOpsItemRelatedItemsFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FOpsItemId: Nullable<string>;
    function GetFilters: TObjectList<TOpsItemRelatedItemsFilter>;
    procedure SetFilters(const Value: TObjectList<TOpsItemRelatedItemsFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
  strict protected
    function Obj: TListOpsItemRelatedItemsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetOpsItemId: Boolean;
    property Filters: TObjectList<TOpsItemRelatedItemsFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
  end;
  
implementation

{ TListOpsItemRelatedItemsRequest }

constructor TListOpsItemRelatedItemsRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TOpsItemRelatedItemsFilter>.Create;
end;

destructor TListOpsItemRelatedItemsRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TListOpsItemRelatedItemsRequest.Obj: TListOpsItemRelatedItemsRequest;
begin
  Result := Self;
end;

function TListOpsItemRelatedItemsRequest.GetFilters: TObjectList<TOpsItemRelatedItemsFilter>;
begin
  Result := FFilters;
end;

procedure TListOpsItemRelatedItemsRequest.SetFilters(const Value: TObjectList<TOpsItemRelatedItemsFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TListOpsItemRelatedItemsRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TListOpsItemRelatedItemsRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TListOpsItemRelatedItemsRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TListOpsItemRelatedItemsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListOpsItemRelatedItemsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListOpsItemRelatedItemsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListOpsItemRelatedItemsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListOpsItemRelatedItemsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListOpsItemRelatedItemsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListOpsItemRelatedItemsRequest.GetOpsItemId: string;
begin
  Result := FOpsItemId.ValueOrDefault;
end;

procedure TListOpsItemRelatedItemsRequest.SetOpsItemId(const Value: string);
begin
  FOpsItemId := Value;
end;

function TListOpsItemRelatedItemsRequest.IsSetOpsItemId: Boolean;
begin
  Result := FOpsItemId.HasValue;
end;

end.

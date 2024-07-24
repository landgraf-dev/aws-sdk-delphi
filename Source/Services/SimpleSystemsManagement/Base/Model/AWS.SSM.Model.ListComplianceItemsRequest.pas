unit AWS.SSM.Model.ListComplianceItemsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.ComplianceStringFilter, 
  AWS.Nullable;

type
  TListComplianceItemsRequest = class;
  
  IListComplianceItemsRequest = interface
    function GetFilters: TObjectList<TComplianceStringFilter>;
    procedure SetFilters(const Value: TObjectList<TComplianceStringFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetResourceIds: TList<string>;
    procedure SetResourceIds(const Value: TList<string>);
    function GetKeepResourceIds: Boolean;
    procedure SetKeepResourceIds(const Value: Boolean);
    function GetResourceTypes: TList<string>;
    procedure SetResourceTypes(const Value: TList<string>);
    function GetKeepResourceTypes: Boolean;
    procedure SetKeepResourceTypes(const Value: Boolean);
    function Obj: TListComplianceItemsRequest;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetResourceIds: Boolean;
    function IsSetResourceTypes: Boolean;
    property Filters: TObjectList<TComplianceStringFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property ResourceIds: TList<string> read GetResourceIds write SetResourceIds;
    property KeepResourceIds: Boolean read GetKeepResourceIds write SetKeepResourceIds;
    property ResourceTypes: TList<string> read GetResourceTypes write SetResourceTypes;
    property KeepResourceTypes: Boolean read GetKeepResourceTypes write SetKeepResourceTypes;
  end;
  
  TListComplianceItemsRequest = class(TAmazonSimpleSystemsManagementRequest, IListComplianceItemsRequest)
  strict private
    FFilters: TObjectList<TComplianceStringFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FResourceIds: TList<string>;
    FKeepResourceIds: Boolean;
    FResourceTypes: TList<string>;
    FKeepResourceTypes: Boolean;
    function GetFilters: TObjectList<TComplianceStringFilter>;
    procedure SetFilters(const Value: TObjectList<TComplianceStringFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetResourceIds: TList<string>;
    procedure SetResourceIds(const Value: TList<string>);
    function GetKeepResourceIds: Boolean;
    procedure SetKeepResourceIds(const Value: Boolean);
    function GetResourceTypes: TList<string>;
    procedure SetResourceTypes(const Value: TList<string>);
    function GetKeepResourceTypes: Boolean;
    procedure SetKeepResourceTypes(const Value: Boolean);
  strict protected
    function Obj: TListComplianceItemsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetResourceIds: Boolean;
    function IsSetResourceTypes: Boolean;
    property Filters: TObjectList<TComplianceStringFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property ResourceIds: TList<string> read GetResourceIds write SetResourceIds;
    property KeepResourceIds: Boolean read GetKeepResourceIds write SetKeepResourceIds;
    property ResourceTypes: TList<string> read GetResourceTypes write SetResourceTypes;
    property KeepResourceTypes: Boolean read GetKeepResourceTypes write SetKeepResourceTypes;
  end;
  
implementation

{ TListComplianceItemsRequest }

constructor TListComplianceItemsRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TComplianceStringFilter>.Create;
  FResourceIds := TList<string>.Create;
  FResourceTypes := TList<string>.Create;
end;

destructor TListComplianceItemsRequest.Destroy;
begin
  ResourceTypes := nil;
  ResourceIds := nil;
  Filters := nil;
  inherited;
end;

function TListComplianceItemsRequest.Obj: TListComplianceItemsRequest;
begin
  Result := Self;
end;

function TListComplianceItemsRequest.GetFilters: TObjectList<TComplianceStringFilter>;
begin
  Result := FFilters;
end;

procedure TListComplianceItemsRequest.SetFilters(const Value: TObjectList<TComplianceStringFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TListComplianceItemsRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TListComplianceItemsRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TListComplianceItemsRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TListComplianceItemsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListComplianceItemsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListComplianceItemsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListComplianceItemsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListComplianceItemsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListComplianceItemsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListComplianceItemsRequest.GetResourceIds: TList<string>;
begin
  Result := FResourceIds;
end;

procedure TListComplianceItemsRequest.SetResourceIds(const Value: TList<string>);
begin
  if FResourceIds <> Value then
  begin
    if not KeepResourceIds then
      FResourceIds.Free;
    FResourceIds := Value;
  end;
end;

function TListComplianceItemsRequest.GetKeepResourceIds: Boolean;
begin
  Result := FKeepResourceIds;
end;

procedure TListComplianceItemsRequest.SetKeepResourceIds(const Value: Boolean);
begin
  FKeepResourceIds := Value;
end;

function TListComplianceItemsRequest.IsSetResourceIds: Boolean;
begin
  Result := (FResourceIds <> nil) and (FResourceIds.Count > 0);
end;

function TListComplianceItemsRequest.GetResourceTypes: TList<string>;
begin
  Result := FResourceTypes;
end;

procedure TListComplianceItemsRequest.SetResourceTypes(const Value: TList<string>);
begin
  if FResourceTypes <> Value then
  begin
    if not KeepResourceTypes then
      FResourceTypes.Free;
    FResourceTypes := Value;
  end;
end;

function TListComplianceItemsRequest.GetKeepResourceTypes: Boolean;
begin
  Result := FKeepResourceTypes;
end;

procedure TListComplianceItemsRequest.SetKeepResourceTypes(const Value: Boolean);
begin
  FKeepResourceTypes := Value;
end;

function TListComplianceItemsRequest.IsSetResourceTypes: Boolean;
begin
  Result := (FResourceTypes <> nil) and (FResourceTypes.Count > 0);
end;

end.

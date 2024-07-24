unit AWS.SSM.Model.ListInventoryEntriesRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.InventoryFilter, 
  AWS.Nullable;

type
  TListInventoryEntriesRequest = class;
  
  IListInventoryEntriesRequest = interface
    function GetFilters: TObjectList<TInventoryFilter>;
    procedure SetFilters(const Value: TObjectList<TInventoryFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
    function Obj: TListInventoryEntriesRequest;
    function IsSetFilters: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetTypeName: Boolean;
    property Filters: TObjectList<TInventoryFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
  TListInventoryEntriesRequest = class(TAmazonSimpleSystemsManagementRequest, IListInventoryEntriesRequest)
  strict private
    FFilters: TObjectList<TInventoryFilter>;
    FKeepFilters: Boolean;
    FInstanceId: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FTypeName: Nullable<string>;
    function GetFilters: TObjectList<TInventoryFilter>;
    procedure SetFilters(const Value: TObjectList<TInventoryFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
  strict protected
    function Obj: TListInventoryEntriesRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetTypeName: Boolean;
    property Filters: TObjectList<TInventoryFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
implementation

{ TListInventoryEntriesRequest }

constructor TListInventoryEntriesRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TInventoryFilter>.Create;
end;

destructor TListInventoryEntriesRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TListInventoryEntriesRequest.Obj: TListInventoryEntriesRequest;
begin
  Result := Self;
end;

function TListInventoryEntriesRequest.GetFilters: TObjectList<TInventoryFilter>;
begin
  Result := FFilters;
end;

procedure TListInventoryEntriesRequest.SetFilters(const Value: TObjectList<TInventoryFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TListInventoryEntriesRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TListInventoryEntriesRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TListInventoryEntriesRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TListInventoryEntriesRequest.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TListInventoryEntriesRequest.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TListInventoryEntriesRequest.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TListInventoryEntriesRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListInventoryEntriesRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListInventoryEntriesRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListInventoryEntriesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListInventoryEntriesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListInventoryEntriesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListInventoryEntriesRequest.GetTypeName: string;
begin
  Result := FTypeName.ValueOrDefault;
end;

procedure TListInventoryEntriesRequest.SetTypeName(const Value: string);
begin
  FTypeName := Value;
end;

function TListInventoryEntriesRequest.IsSetTypeName: Boolean;
begin
  Result := FTypeName.HasValue;
end;

end.

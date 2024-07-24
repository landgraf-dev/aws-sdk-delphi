unit AWS.SSM.Model.ListOpsMetadataRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.OpsMetadataFilter, 
  AWS.Nullable;

type
  TListOpsMetadataRequest = class;
  
  IListOpsMetadataRequest = interface
    function GetFilters: TObjectList<TOpsMetadataFilter>;
    procedure SetFilters(const Value: TObjectList<TOpsMetadataFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListOpsMetadataRequest;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TOpsMetadataFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListOpsMetadataRequest = class(TAmazonSimpleSystemsManagementRequest, IListOpsMetadataRequest)
  strict private
    FFilters: TObjectList<TOpsMetadataFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetFilters: TObjectList<TOpsMetadataFilter>;
    procedure SetFilters(const Value: TObjectList<TOpsMetadataFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListOpsMetadataRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TOpsMetadataFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListOpsMetadataRequest }

constructor TListOpsMetadataRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TOpsMetadataFilter>.Create;
end;

destructor TListOpsMetadataRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TListOpsMetadataRequest.Obj: TListOpsMetadataRequest;
begin
  Result := Self;
end;

function TListOpsMetadataRequest.GetFilters: TObjectList<TOpsMetadataFilter>;
begin
  Result := FFilters;
end;

procedure TListOpsMetadataRequest.SetFilters(const Value: TObjectList<TOpsMetadataFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TListOpsMetadataRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TListOpsMetadataRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TListOpsMetadataRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TListOpsMetadataRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListOpsMetadataRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListOpsMetadataRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListOpsMetadataRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListOpsMetadataRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListOpsMetadataRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.

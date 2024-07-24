unit AWS.SSM.Model.DescribeInstanceInformationRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.InstanceInformationStringFilter, 
  AWS.SSM.Model.InstanceInformationFilter, 
  AWS.Nullable;

type
  TDescribeInstanceInformationRequest = class;
  
  IDescribeInstanceInformationRequest = interface
    function GetFilters: TObjectList<TInstanceInformationStringFilter>;
    procedure SetFilters(const Value: TObjectList<TInstanceInformationStringFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetInstanceInformationFilterList: TObjectList<TInstanceInformationFilter>;
    procedure SetInstanceInformationFilterList(const Value: TObjectList<TInstanceInformationFilter>);
    function GetKeepInstanceInformationFilterList: Boolean;
    procedure SetKeepInstanceInformationFilterList(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeInstanceInformationRequest;
    function IsSetFilters: Boolean;
    function IsSetInstanceInformationFilterList: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TInstanceInformationStringFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property InstanceInformationFilterList: TObjectList<TInstanceInformationFilter> read GetInstanceInformationFilterList write SetInstanceInformationFilterList;
    property KeepInstanceInformationFilterList: Boolean read GetKeepInstanceInformationFilterList write SetKeepInstanceInformationFilterList;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeInstanceInformationRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeInstanceInformationRequest)
  strict private
    FFilters: TObjectList<TInstanceInformationStringFilter>;
    FKeepFilters: Boolean;
    FInstanceInformationFilterList: TObjectList<TInstanceInformationFilter>;
    FKeepInstanceInformationFilterList: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetFilters: TObjectList<TInstanceInformationStringFilter>;
    procedure SetFilters(const Value: TObjectList<TInstanceInformationStringFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetInstanceInformationFilterList: TObjectList<TInstanceInformationFilter>;
    procedure SetInstanceInformationFilterList(const Value: TObjectList<TInstanceInformationFilter>);
    function GetKeepInstanceInformationFilterList: Boolean;
    procedure SetKeepInstanceInformationFilterList(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeInstanceInformationRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetInstanceInformationFilterList: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filters: TObjectList<TInstanceInformationStringFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property InstanceInformationFilterList: TObjectList<TInstanceInformationFilter> read GetInstanceInformationFilterList write SetInstanceInformationFilterList;
    property KeepInstanceInformationFilterList: Boolean read GetKeepInstanceInformationFilterList write SetKeepInstanceInformationFilterList;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeInstanceInformationRequest }

constructor TDescribeInstanceInformationRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TInstanceInformationStringFilter>.Create;
  FInstanceInformationFilterList := TObjectList<TInstanceInformationFilter>.Create;
end;

destructor TDescribeInstanceInformationRequest.Destroy;
begin
  InstanceInformationFilterList := nil;
  Filters := nil;
  inherited;
end;

function TDescribeInstanceInformationRequest.Obj: TDescribeInstanceInformationRequest;
begin
  Result := Self;
end;

function TDescribeInstanceInformationRequest.GetFilters: TObjectList<TInstanceInformationStringFilter>;
begin
  Result := FFilters;
end;

procedure TDescribeInstanceInformationRequest.SetFilters(const Value: TObjectList<TInstanceInformationStringFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TDescribeInstanceInformationRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TDescribeInstanceInformationRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TDescribeInstanceInformationRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TDescribeInstanceInformationRequest.GetInstanceInformationFilterList: TObjectList<TInstanceInformationFilter>;
begin
  Result := FInstanceInformationFilterList;
end;

procedure TDescribeInstanceInformationRequest.SetInstanceInformationFilterList(const Value: TObjectList<TInstanceInformationFilter>);
begin
  if FInstanceInformationFilterList <> Value then
  begin
    if not KeepInstanceInformationFilterList then
      FInstanceInformationFilterList.Free;
    FInstanceInformationFilterList := Value;
  end;
end;

function TDescribeInstanceInformationRequest.GetKeepInstanceInformationFilterList: Boolean;
begin
  Result := FKeepInstanceInformationFilterList;
end;

procedure TDescribeInstanceInformationRequest.SetKeepInstanceInformationFilterList(const Value: Boolean);
begin
  FKeepInstanceInformationFilterList := Value;
end;

function TDescribeInstanceInformationRequest.IsSetInstanceInformationFilterList: Boolean;
begin
  Result := (FInstanceInformationFilterList <> nil) and (FInstanceInformationFilterList.Count > 0);
end;

function TDescribeInstanceInformationRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeInstanceInformationRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeInstanceInformationRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeInstanceInformationRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeInstanceInformationRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeInstanceInformationRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.

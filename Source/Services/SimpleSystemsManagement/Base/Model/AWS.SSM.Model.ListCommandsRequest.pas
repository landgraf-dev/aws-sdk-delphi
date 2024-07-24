unit AWS.SSM.Model.ListCommandsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Model.CommandFilter;

type
  TListCommandsRequest = class;
  
  IListCommandsRequest = interface
    function GetCommandId: string;
    procedure SetCommandId(const Value: string);
    function GetFilters: TObjectList<TCommandFilter>;
    procedure SetFilters(const Value: TObjectList<TCommandFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListCommandsRequest;
    function IsSetCommandId: Boolean;
    function IsSetFilters: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property CommandId: string read GetCommandId write SetCommandId;
    property Filters: TObjectList<TCommandFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListCommandsRequest = class(TAmazonSimpleSystemsManagementRequest, IListCommandsRequest)
  strict private
    FCommandId: Nullable<string>;
    FFilters: TObjectList<TCommandFilter>;
    FKeepFilters: Boolean;
    FInstanceId: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetCommandId: string;
    procedure SetCommandId(const Value: string);
    function GetFilters: TObjectList<TCommandFilter>;
    procedure SetFilters(const Value: TObjectList<TCommandFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListCommandsRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const ACommandId: string); overload;
    function IsSetCommandId: Boolean;
    function IsSetFilters: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property CommandId: string read GetCommandId write SetCommandId;
    property Filters: TObjectList<TCommandFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListCommandsRequest }

constructor TListCommandsRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TCommandFilter>.Create;
end;

destructor TListCommandsRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TListCommandsRequest.Obj: TListCommandsRequest;
begin
  Result := Self;
end;

constructor TListCommandsRequest.Create(const ACommandId: string);
begin
  Create;
  CommandId := ACommandId;
end;

function TListCommandsRequest.GetCommandId: string;
begin
  Result := FCommandId.ValueOrDefault;
end;

procedure TListCommandsRequest.SetCommandId(const Value: string);
begin
  FCommandId := Value;
end;

function TListCommandsRequest.IsSetCommandId: Boolean;
begin
  Result := FCommandId.HasValue;
end;

function TListCommandsRequest.GetFilters: TObjectList<TCommandFilter>;
begin
  Result := FFilters;
end;

procedure TListCommandsRequest.SetFilters(const Value: TObjectList<TCommandFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TListCommandsRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TListCommandsRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TListCommandsRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TListCommandsRequest.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TListCommandsRequest.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TListCommandsRequest.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TListCommandsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListCommandsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListCommandsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListCommandsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListCommandsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListCommandsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.

unit AWS.SSM.Model.ListCommandInvocationsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Model.CommandFilter;

type
  TListCommandInvocationsRequest = class;
  
  IListCommandInvocationsRequest = interface
    function GetCommandId: string;
    procedure SetCommandId(const Value: string);
    function GetDetails: Boolean;
    procedure SetDetails(const Value: Boolean);
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
    function Obj: TListCommandInvocationsRequest;
    function IsSetCommandId: Boolean;
    function IsSetDetails: Boolean;
    function IsSetFilters: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property CommandId: string read GetCommandId write SetCommandId;
    property Details: Boolean read GetDetails write SetDetails;
    property Filters: TObjectList<TCommandFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListCommandInvocationsRequest = class(TAmazonSimpleSystemsManagementRequest, IListCommandInvocationsRequest)
  strict private
    FCommandId: Nullable<string>;
    FDetails: Nullable<Boolean>;
    FFilters: TObjectList<TCommandFilter>;
    FKeepFilters: Boolean;
    FInstanceId: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetCommandId: string;
    procedure SetCommandId(const Value: string);
    function GetDetails: Boolean;
    procedure SetDetails(const Value: Boolean);
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
    function Obj: TListCommandInvocationsRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const ACommandId: string); overload;
    function IsSetCommandId: Boolean;
    function IsSetDetails: Boolean;
    function IsSetFilters: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property CommandId: string read GetCommandId write SetCommandId;
    property Details: Boolean read GetDetails write SetDetails;
    property Filters: TObjectList<TCommandFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListCommandInvocationsRequest }

constructor TListCommandInvocationsRequest.Create;
begin
  inherited;
  FFilters := TObjectList<TCommandFilter>.Create;
end;

destructor TListCommandInvocationsRequest.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TListCommandInvocationsRequest.Obj: TListCommandInvocationsRequest;
begin
  Result := Self;
end;

constructor TListCommandInvocationsRequest.Create(const ACommandId: string);
begin
  Create;
  CommandId := ACommandId;
end;

function TListCommandInvocationsRequest.GetCommandId: string;
begin
  Result := FCommandId.ValueOrDefault;
end;

procedure TListCommandInvocationsRequest.SetCommandId(const Value: string);
begin
  FCommandId := Value;
end;

function TListCommandInvocationsRequest.IsSetCommandId: Boolean;
begin
  Result := FCommandId.HasValue;
end;

function TListCommandInvocationsRequest.GetDetails: Boolean;
begin
  Result := FDetails.ValueOrDefault;
end;

procedure TListCommandInvocationsRequest.SetDetails(const Value: Boolean);
begin
  FDetails := Value;
end;

function TListCommandInvocationsRequest.IsSetDetails: Boolean;
begin
  Result := FDetails.HasValue;
end;

function TListCommandInvocationsRequest.GetFilters: TObjectList<TCommandFilter>;
begin
  Result := FFilters;
end;

procedure TListCommandInvocationsRequest.SetFilters(const Value: TObjectList<TCommandFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TListCommandInvocationsRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TListCommandInvocationsRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TListCommandInvocationsRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TListCommandInvocationsRequest.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TListCommandInvocationsRequest.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TListCommandInvocationsRequest.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TListCommandInvocationsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListCommandInvocationsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListCommandInvocationsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListCommandInvocationsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListCommandInvocationsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListCommandInvocationsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.

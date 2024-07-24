unit AWS.SSM.Model.DescribeInstancePatchStatesRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDescribeInstancePatchStatesRequest = class;
  
  IDescribeInstancePatchStatesRequest = interface
    function GetInstanceIds: TList<string>;
    procedure SetInstanceIds(const Value: TList<string>);
    function GetKeepInstanceIds: Boolean;
    procedure SetKeepInstanceIds(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeInstancePatchStatesRequest;
    function IsSetInstanceIds: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property InstanceIds: TList<string> read GetInstanceIds write SetInstanceIds;
    property KeepInstanceIds: Boolean read GetKeepInstanceIds write SetKeepInstanceIds;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeInstancePatchStatesRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeInstancePatchStatesRequest)
  strict private
    FInstanceIds: TList<string>;
    FKeepInstanceIds: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetInstanceIds: TList<string>;
    procedure SetInstanceIds(const Value: TList<string>);
    function GetKeepInstanceIds: Boolean;
    procedure SetKeepInstanceIds(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeInstancePatchStatesRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetInstanceIds: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property InstanceIds: TList<string> read GetInstanceIds write SetInstanceIds;
    property KeepInstanceIds: Boolean read GetKeepInstanceIds write SetKeepInstanceIds;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeInstancePatchStatesRequest }

constructor TDescribeInstancePatchStatesRequest.Create;
begin
  inherited;
  FInstanceIds := TList<string>.Create;
end;

destructor TDescribeInstancePatchStatesRequest.Destroy;
begin
  InstanceIds := nil;
  inherited;
end;

function TDescribeInstancePatchStatesRequest.Obj: TDescribeInstancePatchStatesRequest;
begin
  Result := Self;
end;

function TDescribeInstancePatchStatesRequest.GetInstanceIds: TList<string>;
begin
  Result := FInstanceIds;
end;

procedure TDescribeInstancePatchStatesRequest.SetInstanceIds(const Value: TList<string>);
begin
  if FInstanceIds <> Value then
  begin
    if not KeepInstanceIds then
      FInstanceIds.Free;
    FInstanceIds := Value;
  end;
end;

function TDescribeInstancePatchStatesRequest.GetKeepInstanceIds: Boolean;
begin
  Result := FKeepInstanceIds;
end;

procedure TDescribeInstancePatchStatesRequest.SetKeepInstanceIds(const Value: Boolean);
begin
  FKeepInstanceIds := Value;
end;

function TDescribeInstancePatchStatesRequest.IsSetInstanceIds: Boolean;
begin
  Result := (FInstanceIds <> nil) and (FInstanceIds.Count > 0);
end;

function TDescribeInstancePatchStatesRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeInstancePatchStatesRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeInstancePatchStatesRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeInstancePatchStatesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeInstancePatchStatesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeInstancePatchStatesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.

unit AWS.SSM.Model.DescribeInstancePatchStatesForPatchGroupResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.InstancePatchState, 
  AWS.Nullable;

type
  TDescribeInstancePatchStatesForPatchGroupResponse = class;
  
  IDescribeInstancePatchStatesForPatchGroupResponse = interface(IAmazonWebServiceResponse)
    function GetInstancePatchStates: TObjectList<TInstancePatchState>;
    procedure SetInstancePatchStates(const Value: TObjectList<TInstancePatchState>);
    function GetKeepInstancePatchStates: Boolean;
    procedure SetKeepInstancePatchStates(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeInstancePatchStatesForPatchGroupResponse;
    function IsSetInstancePatchStates: Boolean;
    function IsSetNextToken: Boolean;
    property InstancePatchStates: TObjectList<TInstancePatchState> read GetInstancePatchStates write SetInstancePatchStates;
    property KeepInstancePatchStates: Boolean read GetKeepInstancePatchStates write SetKeepInstancePatchStates;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeInstancePatchStatesForPatchGroupResponse = class(TAmazonWebServiceResponse, IDescribeInstancePatchStatesForPatchGroupResponse)
  strict private
    FInstancePatchStates: TObjectList<TInstancePatchState>;
    FKeepInstancePatchStates: Boolean;
    FNextToken: Nullable<string>;
    function GetInstancePatchStates: TObjectList<TInstancePatchState>;
    procedure SetInstancePatchStates(const Value: TObjectList<TInstancePatchState>);
    function GetKeepInstancePatchStates: Boolean;
    procedure SetKeepInstancePatchStates(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeInstancePatchStatesForPatchGroupResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetInstancePatchStates: Boolean;
    function IsSetNextToken: Boolean;
    property InstancePatchStates: TObjectList<TInstancePatchState> read GetInstancePatchStates write SetInstancePatchStates;
    property KeepInstancePatchStates: Boolean read GetKeepInstancePatchStates write SetKeepInstancePatchStates;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeInstancePatchStatesForPatchGroupResponse }

constructor TDescribeInstancePatchStatesForPatchGroupResponse.Create;
begin
  inherited;
  FInstancePatchStates := TObjectList<TInstancePatchState>.Create;
end;

destructor TDescribeInstancePatchStatesForPatchGroupResponse.Destroy;
begin
  InstancePatchStates := nil;
  inherited;
end;

function TDescribeInstancePatchStatesForPatchGroupResponse.Obj: TDescribeInstancePatchStatesForPatchGroupResponse;
begin
  Result := Self;
end;

function TDescribeInstancePatchStatesForPatchGroupResponse.GetInstancePatchStates: TObjectList<TInstancePatchState>;
begin
  Result := FInstancePatchStates;
end;

procedure TDescribeInstancePatchStatesForPatchGroupResponse.SetInstancePatchStates(const Value: TObjectList<TInstancePatchState>);
begin
  if FInstancePatchStates <> Value then
  begin
    if not KeepInstancePatchStates then
      FInstancePatchStates.Free;
    FInstancePatchStates := Value;
  end;
end;

function TDescribeInstancePatchStatesForPatchGroupResponse.GetKeepInstancePatchStates: Boolean;
begin
  Result := FKeepInstancePatchStates;
end;

procedure TDescribeInstancePatchStatesForPatchGroupResponse.SetKeepInstancePatchStates(const Value: Boolean);
begin
  FKeepInstancePatchStates := Value;
end;

function TDescribeInstancePatchStatesForPatchGroupResponse.IsSetInstancePatchStates: Boolean;
begin
  Result := (FInstancePatchStates <> nil) and (FInstancePatchStates.Count > 0);
end;

function TDescribeInstancePatchStatesForPatchGroupResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeInstancePatchStatesForPatchGroupResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeInstancePatchStatesForPatchGroupResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.

unit AWS.SSM.Model.DescribeInstancePatchStatesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.InstancePatchState, 
  AWS.Nullable;

type
  TDescribeInstancePatchStatesResponse = class;
  
  IDescribeInstancePatchStatesResponse = interface(IAmazonWebServiceResponse)
    function GetInstancePatchStates: TObjectList<TInstancePatchState>;
    procedure SetInstancePatchStates(const Value: TObjectList<TInstancePatchState>);
    function GetKeepInstancePatchStates: Boolean;
    procedure SetKeepInstancePatchStates(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeInstancePatchStatesResponse;
    function IsSetInstancePatchStates: Boolean;
    function IsSetNextToken: Boolean;
    property InstancePatchStates: TObjectList<TInstancePatchState> read GetInstancePatchStates write SetInstancePatchStates;
    property KeepInstancePatchStates: Boolean read GetKeepInstancePatchStates write SetKeepInstancePatchStates;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeInstancePatchStatesResponse = class(TAmazonWebServiceResponse, IDescribeInstancePatchStatesResponse)
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
    function Obj: TDescribeInstancePatchStatesResponse;
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

{ TDescribeInstancePatchStatesResponse }

constructor TDescribeInstancePatchStatesResponse.Create;
begin
  inherited;
  FInstancePatchStates := TObjectList<TInstancePatchState>.Create;
end;

destructor TDescribeInstancePatchStatesResponse.Destroy;
begin
  InstancePatchStates := nil;
  inherited;
end;

function TDescribeInstancePatchStatesResponse.Obj: TDescribeInstancePatchStatesResponse;
begin
  Result := Self;
end;

function TDescribeInstancePatchStatesResponse.GetInstancePatchStates: TObjectList<TInstancePatchState>;
begin
  Result := FInstancePatchStates;
end;

procedure TDescribeInstancePatchStatesResponse.SetInstancePatchStates(const Value: TObjectList<TInstancePatchState>);
begin
  if FInstancePatchStates <> Value then
  begin
    if not KeepInstancePatchStates then
      FInstancePatchStates.Free;
    FInstancePatchStates := Value;
  end;
end;

function TDescribeInstancePatchStatesResponse.GetKeepInstancePatchStates: Boolean;
begin
  Result := FKeepInstancePatchStates;
end;

procedure TDescribeInstancePatchStatesResponse.SetKeepInstancePatchStates(const Value: Boolean);
begin
  FKeepInstancePatchStates := Value;
end;

function TDescribeInstancePatchStatesResponse.IsSetInstancePatchStates: Boolean;
begin
  Result := (FInstancePatchStates <> nil) and (FInstancePatchStates.Count > 0);
end;

function TDescribeInstancePatchStatesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeInstancePatchStatesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeInstancePatchStatesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.

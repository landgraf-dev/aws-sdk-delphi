unit AWS.SSM.Model.DescribeEffectivePatchesForPatchBaselineResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.EffectivePatch, 
  AWS.Nullable;

type
  TDescribeEffectivePatchesForPatchBaselineResponse = class;
  
  IDescribeEffectivePatchesForPatchBaselineResponse = interface(IAmazonWebServiceResponse)
    function GetEffectivePatches: TObjectList<TEffectivePatch>;
    procedure SetEffectivePatches(const Value: TObjectList<TEffectivePatch>);
    function GetKeepEffectivePatches: Boolean;
    procedure SetKeepEffectivePatches(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeEffectivePatchesForPatchBaselineResponse;
    function IsSetEffectivePatches: Boolean;
    function IsSetNextToken: Boolean;
    property EffectivePatches: TObjectList<TEffectivePatch> read GetEffectivePatches write SetEffectivePatches;
    property KeepEffectivePatches: Boolean read GetKeepEffectivePatches write SetKeepEffectivePatches;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeEffectivePatchesForPatchBaselineResponse = class(TAmazonWebServiceResponse, IDescribeEffectivePatchesForPatchBaselineResponse)
  strict private
    FEffectivePatches: TObjectList<TEffectivePatch>;
    FKeepEffectivePatches: Boolean;
    FNextToken: Nullable<string>;
    function GetEffectivePatches: TObjectList<TEffectivePatch>;
    procedure SetEffectivePatches(const Value: TObjectList<TEffectivePatch>);
    function GetKeepEffectivePatches: Boolean;
    procedure SetKeepEffectivePatches(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeEffectivePatchesForPatchBaselineResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetEffectivePatches: Boolean;
    function IsSetNextToken: Boolean;
    property EffectivePatches: TObjectList<TEffectivePatch> read GetEffectivePatches write SetEffectivePatches;
    property KeepEffectivePatches: Boolean read GetKeepEffectivePatches write SetKeepEffectivePatches;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeEffectivePatchesForPatchBaselineResponse }

constructor TDescribeEffectivePatchesForPatchBaselineResponse.Create;
begin
  inherited;
  FEffectivePatches := TObjectList<TEffectivePatch>.Create;
end;

destructor TDescribeEffectivePatchesForPatchBaselineResponse.Destroy;
begin
  EffectivePatches := nil;
  inherited;
end;

function TDescribeEffectivePatchesForPatchBaselineResponse.Obj: TDescribeEffectivePatchesForPatchBaselineResponse;
begin
  Result := Self;
end;

function TDescribeEffectivePatchesForPatchBaselineResponse.GetEffectivePatches: TObjectList<TEffectivePatch>;
begin
  Result := FEffectivePatches;
end;

procedure TDescribeEffectivePatchesForPatchBaselineResponse.SetEffectivePatches(const Value: TObjectList<TEffectivePatch>);
begin
  if FEffectivePatches <> Value then
  begin
    if not KeepEffectivePatches then
      FEffectivePatches.Free;
    FEffectivePatches := Value;
  end;
end;

function TDescribeEffectivePatchesForPatchBaselineResponse.GetKeepEffectivePatches: Boolean;
begin
  Result := FKeepEffectivePatches;
end;

procedure TDescribeEffectivePatchesForPatchBaselineResponse.SetKeepEffectivePatches(const Value: Boolean);
begin
  FKeepEffectivePatches := Value;
end;

function TDescribeEffectivePatchesForPatchBaselineResponse.IsSetEffectivePatches: Boolean;
begin
  Result := (FEffectivePatches <> nil) and (FEffectivePatches.Count > 0);
end;

function TDescribeEffectivePatchesForPatchBaselineResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeEffectivePatchesForPatchBaselineResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeEffectivePatchesForPatchBaselineResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.

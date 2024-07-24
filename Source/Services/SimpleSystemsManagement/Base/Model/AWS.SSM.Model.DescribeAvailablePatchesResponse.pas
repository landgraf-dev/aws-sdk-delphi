unit AWS.SSM.Model.DescribeAvailablePatchesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.Patch;

type
  TDescribeAvailablePatchesResponse = class;
  
  IDescribeAvailablePatchesResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPatches: TObjectList<TPatch>;
    procedure SetPatches(const Value: TObjectList<TPatch>);
    function GetKeepPatches: Boolean;
    procedure SetKeepPatches(const Value: Boolean);
    function Obj: TDescribeAvailablePatchesResponse;
    function IsSetNextToken: Boolean;
    function IsSetPatches: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Patches: TObjectList<TPatch> read GetPatches write SetPatches;
    property KeepPatches: Boolean read GetKeepPatches write SetKeepPatches;
  end;
  
  TDescribeAvailablePatchesResponse = class(TAmazonWebServiceResponse, IDescribeAvailablePatchesResponse)
  strict private
    FNextToken: Nullable<string>;
    FPatches: TObjectList<TPatch>;
    FKeepPatches: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPatches: TObjectList<TPatch>;
    procedure SetPatches(const Value: TObjectList<TPatch>);
    function GetKeepPatches: Boolean;
    procedure SetKeepPatches(const Value: Boolean);
  strict protected
    function Obj: TDescribeAvailablePatchesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetPatches: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Patches: TObjectList<TPatch> read GetPatches write SetPatches;
    property KeepPatches: Boolean read GetKeepPatches write SetKeepPatches;
  end;
  
implementation

{ TDescribeAvailablePatchesResponse }

constructor TDescribeAvailablePatchesResponse.Create;
begin
  inherited;
  FPatches := TObjectList<TPatch>.Create;
end;

destructor TDescribeAvailablePatchesResponse.Destroy;
begin
  Patches := nil;
  inherited;
end;

function TDescribeAvailablePatchesResponse.Obj: TDescribeAvailablePatchesResponse;
begin
  Result := Self;
end;

function TDescribeAvailablePatchesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeAvailablePatchesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeAvailablePatchesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeAvailablePatchesResponse.GetPatches: TObjectList<TPatch>;
begin
  Result := FPatches;
end;

procedure TDescribeAvailablePatchesResponse.SetPatches(const Value: TObjectList<TPatch>);
begin
  if FPatches <> Value then
  begin
    if not KeepPatches then
      FPatches.Free;
    FPatches := Value;
  end;
end;

function TDescribeAvailablePatchesResponse.GetKeepPatches: Boolean;
begin
  Result := FKeepPatches;
end;

procedure TDescribeAvailablePatchesResponse.SetKeepPatches(const Value: Boolean);
begin
  FKeepPatches := Value;
end;

function TDescribeAvailablePatchesResponse.IsSetPatches: Boolean;
begin
  Result := (FPatches <> nil) and (FPatches.Count > 0);
end;

end.

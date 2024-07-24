unit AWS.SSM.Model.DescribeInstancePatchesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.PatchComplianceData;

type
  TDescribeInstancePatchesResponse = class;
  
  IDescribeInstancePatchesResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPatches: TObjectList<TPatchComplianceData>;
    procedure SetPatches(const Value: TObjectList<TPatchComplianceData>);
    function GetKeepPatches: Boolean;
    procedure SetKeepPatches(const Value: Boolean);
    function Obj: TDescribeInstancePatchesResponse;
    function IsSetNextToken: Boolean;
    function IsSetPatches: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Patches: TObjectList<TPatchComplianceData> read GetPatches write SetPatches;
    property KeepPatches: Boolean read GetKeepPatches write SetKeepPatches;
  end;
  
  TDescribeInstancePatchesResponse = class(TAmazonWebServiceResponse, IDescribeInstancePatchesResponse)
  strict private
    FNextToken: Nullable<string>;
    FPatches: TObjectList<TPatchComplianceData>;
    FKeepPatches: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPatches: TObjectList<TPatchComplianceData>;
    procedure SetPatches(const Value: TObjectList<TPatchComplianceData>);
    function GetKeepPatches: Boolean;
    procedure SetKeepPatches(const Value: Boolean);
  strict protected
    function Obj: TDescribeInstancePatchesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetPatches: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Patches: TObjectList<TPatchComplianceData> read GetPatches write SetPatches;
    property KeepPatches: Boolean read GetKeepPatches write SetKeepPatches;
  end;
  
implementation

{ TDescribeInstancePatchesResponse }

constructor TDescribeInstancePatchesResponse.Create;
begin
  inherited;
  FPatches := TObjectList<TPatchComplianceData>.Create;
end;

destructor TDescribeInstancePatchesResponse.Destroy;
begin
  Patches := nil;
  inherited;
end;

function TDescribeInstancePatchesResponse.Obj: TDescribeInstancePatchesResponse;
begin
  Result := Self;
end;

function TDescribeInstancePatchesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeInstancePatchesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeInstancePatchesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeInstancePatchesResponse.GetPatches: TObjectList<TPatchComplianceData>;
begin
  Result := FPatches;
end;

procedure TDescribeInstancePatchesResponse.SetPatches(const Value: TObjectList<TPatchComplianceData>);
begin
  if FPatches <> Value then
  begin
    if not KeepPatches then
      FPatches.Free;
    FPatches := Value;
  end;
end;

function TDescribeInstancePatchesResponse.GetKeepPatches: Boolean;
begin
  Result := FKeepPatches;
end;

procedure TDescribeInstancePatchesResponse.SetKeepPatches(const Value: Boolean);
begin
  FKeepPatches := Value;
end;

function TDescribeInstancePatchesResponse.IsSetPatches: Boolean;
begin
  Result := (FPatches <> nil) and (FPatches.Count > 0);
end;

end.

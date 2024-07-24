unit AWS.SSM.Model.DescribePatchGroupsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.PatchGroupPatchBaselineMapping, 
  AWS.Nullable;

type
  TDescribePatchGroupsResponse = class;
  
  IDescribePatchGroupsResponse = interface(IAmazonWebServiceResponse)
    function GetMappings: TObjectList<TPatchGroupPatchBaselineMapping>;
    procedure SetMappings(const Value: TObjectList<TPatchGroupPatchBaselineMapping>);
    function GetKeepMappings: Boolean;
    procedure SetKeepMappings(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribePatchGroupsResponse;
    function IsSetMappings: Boolean;
    function IsSetNextToken: Boolean;
    property Mappings: TObjectList<TPatchGroupPatchBaselineMapping> read GetMappings write SetMappings;
    property KeepMappings: Boolean read GetKeepMappings write SetKeepMappings;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribePatchGroupsResponse = class(TAmazonWebServiceResponse, IDescribePatchGroupsResponse)
  strict private
    FMappings: TObjectList<TPatchGroupPatchBaselineMapping>;
    FKeepMappings: Boolean;
    FNextToken: Nullable<string>;
    function GetMappings: TObjectList<TPatchGroupPatchBaselineMapping>;
    procedure SetMappings(const Value: TObjectList<TPatchGroupPatchBaselineMapping>);
    function GetKeepMappings: Boolean;
    procedure SetKeepMappings(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribePatchGroupsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetMappings: Boolean;
    function IsSetNextToken: Boolean;
    property Mappings: TObjectList<TPatchGroupPatchBaselineMapping> read GetMappings write SetMappings;
    property KeepMappings: Boolean read GetKeepMappings write SetKeepMappings;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribePatchGroupsResponse }

constructor TDescribePatchGroupsResponse.Create;
begin
  inherited;
  FMappings := TObjectList<TPatchGroupPatchBaselineMapping>.Create;
end;

destructor TDescribePatchGroupsResponse.Destroy;
begin
  Mappings := nil;
  inherited;
end;

function TDescribePatchGroupsResponse.Obj: TDescribePatchGroupsResponse;
begin
  Result := Self;
end;

function TDescribePatchGroupsResponse.GetMappings: TObjectList<TPatchGroupPatchBaselineMapping>;
begin
  Result := FMappings;
end;

procedure TDescribePatchGroupsResponse.SetMappings(const Value: TObjectList<TPatchGroupPatchBaselineMapping>);
begin
  if FMappings <> Value then
  begin
    if not KeepMappings then
      FMappings.Free;
    FMappings := Value;
  end;
end;

function TDescribePatchGroupsResponse.GetKeepMappings: Boolean;
begin
  Result := FKeepMappings;
end;

procedure TDescribePatchGroupsResponse.SetKeepMappings(const Value: Boolean);
begin
  FKeepMappings := Value;
end;

function TDescribePatchGroupsResponse.IsSetMappings: Boolean;
begin
  Result := (FMappings <> nil) and (FMappings.Count > 0);
end;

function TDescribePatchGroupsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribePatchGroupsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribePatchGroupsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.

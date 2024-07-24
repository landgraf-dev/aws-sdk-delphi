unit AWS.SSM.Model.DescribePatchBaselinesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.PatchBaselineIdentity, 
  AWS.Nullable;

type
  TDescribePatchBaselinesResponse = class;
  
  IDescribePatchBaselinesResponse = interface(IAmazonWebServiceResponse)
    function GetBaselineIdentities: TObjectList<TPatchBaselineIdentity>;
    procedure SetBaselineIdentities(const Value: TObjectList<TPatchBaselineIdentity>);
    function GetKeepBaselineIdentities: Boolean;
    procedure SetKeepBaselineIdentities(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribePatchBaselinesResponse;
    function IsSetBaselineIdentities: Boolean;
    function IsSetNextToken: Boolean;
    property BaselineIdentities: TObjectList<TPatchBaselineIdentity> read GetBaselineIdentities write SetBaselineIdentities;
    property KeepBaselineIdentities: Boolean read GetKeepBaselineIdentities write SetKeepBaselineIdentities;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribePatchBaselinesResponse = class(TAmazonWebServiceResponse, IDescribePatchBaselinesResponse)
  strict private
    FBaselineIdentities: TObjectList<TPatchBaselineIdentity>;
    FKeepBaselineIdentities: Boolean;
    FNextToken: Nullable<string>;
    function GetBaselineIdentities: TObjectList<TPatchBaselineIdentity>;
    procedure SetBaselineIdentities(const Value: TObjectList<TPatchBaselineIdentity>);
    function GetKeepBaselineIdentities: Boolean;
    procedure SetKeepBaselineIdentities(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribePatchBaselinesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBaselineIdentities: Boolean;
    function IsSetNextToken: Boolean;
    property BaselineIdentities: TObjectList<TPatchBaselineIdentity> read GetBaselineIdentities write SetBaselineIdentities;
    property KeepBaselineIdentities: Boolean read GetKeepBaselineIdentities write SetKeepBaselineIdentities;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribePatchBaselinesResponse }

constructor TDescribePatchBaselinesResponse.Create;
begin
  inherited;
  FBaselineIdentities := TObjectList<TPatchBaselineIdentity>.Create;
end;

destructor TDescribePatchBaselinesResponse.Destroy;
begin
  BaselineIdentities := nil;
  inherited;
end;

function TDescribePatchBaselinesResponse.Obj: TDescribePatchBaselinesResponse;
begin
  Result := Self;
end;

function TDescribePatchBaselinesResponse.GetBaselineIdentities: TObjectList<TPatchBaselineIdentity>;
begin
  Result := FBaselineIdentities;
end;

procedure TDescribePatchBaselinesResponse.SetBaselineIdentities(const Value: TObjectList<TPatchBaselineIdentity>);
begin
  if FBaselineIdentities <> Value then
  begin
    if not KeepBaselineIdentities then
      FBaselineIdentities.Free;
    FBaselineIdentities := Value;
  end;
end;

function TDescribePatchBaselinesResponse.GetKeepBaselineIdentities: Boolean;
begin
  Result := FKeepBaselineIdentities;
end;

procedure TDescribePatchBaselinesResponse.SetKeepBaselineIdentities(const Value: Boolean);
begin
  FKeepBaselineIdentities := Value;
end;

function TDescribePatchBaselinesResponse.IsSetBaselineIdentities: Boolean;
begin
  Result := (FBaselineIdentities <> nil) and (FBaselineIdentities.Count > 0);
end;

function TDescribePatchBaselinesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribePatchBaselinesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribePatchBaselinesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.

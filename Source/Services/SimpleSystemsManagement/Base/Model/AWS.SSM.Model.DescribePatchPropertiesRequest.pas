unit AWS.SSM.Model.DescribePatchPropertiesRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TDescribePatchPropertiesRequest = class;
  
  IDescribePatchPropertiesRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetOperatingSystem: TOperatingSystem;
    procedure SetOperatingSystem(const Value: TOperatingSystem);
    function GetPatchSet: TPatchSet;
    procedure SetPatchSet(const Value: TPatchSet);
    function GetProperty: TPatchProperty;
    procedure SetProperty(const Value: TPatchProperty);
    function Obj: TDescribePatchPropertiesRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetOperatingSystem: Boolean;
    function IsSetPatchSet: Boolean;
    function IsSetProperty: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property OperatingSystem: TOperatingSystem read GetOperatingSystem write SetOperatingSystem;
    property PatchSet: TPatchSet read GetPatchSet write SetPatchSet;
    property &Property: TPatchProperty read GetProperty write SetProperty;
  end;
  
  TDescribePatchPropertiesRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribePatchPropertiesRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FOperatingSystem: Nullable<TOperatingSystem>;
    FPatchSet: Nullable<TPatchSet>;
    FProperty: Nullable<TPatchProperty>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetOperatingSystem: TOperatingSystem;
    procedure SetOperatingSystem(const Value: TOperatingSystem);
    function GetPatchSet: TPatchSet;
    procedure SetPatchSet(const Value: TPatchSet);
    function GetProperty: TPatchProperty;
    procedure SetProperty(const Value: TPatchProperty);
  strict protected
    function Obj: TDescribePatchPropertiesRequest;
  public
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetOperatingSystem: Boolean;
    function IsSetPatchSet: Boolean;
    function IsSetProperty: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property OperatingSystem: TOperatingSystem read GetOperatingSystem write SetOperatingSystem;
    property PatchSet: TPatchSet read GetPatchSet write SetPatchSet;
    property &Property: TPatchProperty read GetProperty write SetProperty;
  end;
  
implementation

{ TDescribePatchPropertiesRequest }

function TDescribePatchPropertiesRequest.Obj: TDescribePatchPropertiesRequest;
begin
  Result := Self;
end;

function TDescribePatchPropertiesRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribePatchPropertiesRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribePatchPropertiesRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribePatchPropertiesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribePatchPropertiesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribePatchPropertiesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribePatchPropertiesRequest.GetOperatingSystem: TOperatingSystem;
begin
  Result := FOperatingSystem.ValueOrDefault;
end;

procedure TDescribePatchPropertiesRequest.SetOperatingSystem(const Value: TOperatingSystem);
begin
  FOperatingSystem := Value;
end;

function TDescribePatchPropertiesRequest.IsSetOperatingSystem: Boolean;
begin
  Result := FOperatingSystem.HasValue;
end;

function TDescribePatchPropertiesRequest.GetPatchSet: TPatchSet;
begin
  Result := FPatchSet.ValueOrDefault;
end;

procedure TDescribePatchPropertiesRequest.SetPatchSet(const Value: TPatchSet);
begin
  FPatchSet := Value;
end;

function TDescribePatchPropertiesRequest.IsSetPatchSet: Boolean;
begin
  Result := FPatchSet.HasValue;
end;

function TDescribePatchPropertiesRequest.GetProperty: TPatchProperty;
begin
  Result := FProperty.ValueOrDefault;
end;

procedure TDescribePatchPropertiesRequest.SetProperty(const Value: TPatchProperty);
begin
  FProperty := Value;
end;

function TDescribePatchPropertiesRequest.IsSetProperty: Boolean;
begin
  Result := FProperty.HasValue;
end;

end.

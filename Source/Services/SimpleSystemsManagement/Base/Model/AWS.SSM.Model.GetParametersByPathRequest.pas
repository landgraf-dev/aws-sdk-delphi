unit AWS.SSM.Model.GetParametersByPathRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Model.ParameterStringFilter;

type
  TGetParametersByPathRequest = class;
  
  IGetParametersByPathRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetParameterFilters: TObjectList<TParameterStringFilter>;
    procedure SetParameterFilters(const Value: TObjectList<TParameterStringFilter>);
    function GetKeepParameterFilters: Boolean;
    procedure SetKeepParameterFilters(const Value: Boolean);
    function GetPath: string;
    procedure SetPath(const Value: string);
    function GetRecursive: Boolean;
    procedure SetRecursive(const Value: Boolean);
    function GetWithDecryption: Boolean;
    procedure SetWithDecryption(const Value: Boolean);
    function Obj: TGetParametersByPathRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetParameterFilters: Boolean;
    function IsSetPath: Boolean;
    function IsSetRecursive: Boolean;
    function IsSetWithDecryption: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property ParameterFilters: TObjectList<TParameterStringFilter> read GetParameterFilters write SetParameterFilters;
    property KeepParameterFilters: Boolean read GetKeepParameterFilters write SetKeepParameterFilters;
    property Path: string read GetPath write SetPath;
    property Recursive: Boolean read GetRecursive write SetRecursive;
    property WithDecryption: Boolean read GetWithDecryption write SetWithDecryption;
  end;
  
  TGetParametersByPathRequest = class(TAmazonSimpleSystemsManagementRequest, IGetParametersByPathRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FParameterFilters: TObjectList<TParameterStringFilter>;
    FKeepParameterFilters: Boolean;
    FPath: Nullable<string>;
    FRecursive: Nullable<Boolean>;
    FWithDecryption: Nullable<Boolean>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetParameterFilters: TObjectList<TParameterStringFilter>;
    procedure SetParameterFilters(const Value: TObjectList<TParameterStringFilter>);
    function GetKeepParameterFilters: Boolean;
    procedure SetKeepParameterFilters(const Value: Boolean);
    function GetPath: string;
    procedure SetPath(const Value: string);
    function GetRecursive: Boolean;
    procedure SetRecursive(const Value: Boolean);
    function GetWithDecryption: Boolean;
    procedure SetWithDecryption(const Value: Boolean);
  strict protected
    function Obj: TGetParametersByPathRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetParameterFilters: Boolean;
    function IsSetPath: Boolean;
    function IsSetRecursive: Boolean;
    function IsSetWithDecryption: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property ParameterFilters: TObjectList<TParameterStringFilter> read GetParameterFilters write SetParameterFilters;
    property KeepParameterFilters: Boolean read GetKeepParameterFilters write SetKeepParameterFilters;
    property Path: string read GetPath write SetPath;
    property Recursive: Boolean read GetRecursive write SetRecursive;
    property WithDecryption: Boolean read GetWithDecryption write SetWithDecryption;
  end;
  
implementation

{ TGetParametersByPathRequest }

constructor TGetParametersByPathRequest.Create;
begin
  inherited;
  FParameterFilters := TObjectList<TParameterStringFilter>.Create;
end;

destructor TGetParametersByPathRequest.Destroy;
begin
  ParameterFilters := nil;
  inherited;
end;

function TGetParametersByPathRequest.Obj: TGetParametersByPathRequest;
begin
  Result := Self;
end;

function TGetParametersByPathRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TGetParametersByPathRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TGetParametersByPathRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TGetParametersByPathRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetParametersByPathRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetParametersByPathRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetParametersByPathRequest.GetParameterFilters: TObjectList<TParameterStringFilter>;
begin
  Result := FParameterFilters;
end;

procedure TGetParametersByPathRequest.SetParameterFilters(const Value: TObjectList<TParameterStringFilter>);
begin
  if FParameterFilters <> Value then
  begin
    if not KeepParameterFilters then
      FParameterFilters.Free;
    FParameterFilters := Value;
  end;
end;

function TGetParametersByPathRequest.GetKeepParameterFilters: Boolean;
begin
  Result := FKeepParameterFilters;
end;

procedure TGetParametersByPathRequest.SetKeepParameterFilters(const Value: Boolean);
begin
  FKeepParameterFilters := Value;
end;

function TGetParametersByPathRequest.IsSetParameterFilters: Boolean;
begin
  Result := (FParameterFilters <> nil) and (FParameterFilters.Count > 0);
end;

function TGetParametersByPathRequest.GetPath: string;
begin
  Result := FPath.ValueOrDefault;
end;

procedure TGetParametersByPathRequest.SetPath(const Value: string);
begin
  FPath := Value;
end;

function TGetParametersByPathRequest.IsSetPath: Boolean;
begin
  Result := FPath.HasValue;
end;

function TGetParametersByPathRequest.GetRecursive: Boolean;
begin
  Result := FRecursive.ValueOrDefault;
end;

procedure TGetParametersByPathRequest.SetRecursive(const Value: Boolean);
begin
  FRecursive := Value;
end;

function TGetParametersByPathRequest.IsSetRecursive: Boolean;
begin
  Result := FRecursive.HasValue;
end;

function TGetParametersByPathRequest.GetWithDecryption: Boolean;
begin
  Result := FWithDecryption.ValueOrDefault;
end;

procedure TGetParametersByPathRequest.SetWithDecryption(const Value: Boolean);
begin
  FWithDecryption := Value;
end;

function TGetParametersByPathRequest.IsSetWithDecryption: Boolean;
begin
  Result := FWithDecryption.HasValue;
end;

end.

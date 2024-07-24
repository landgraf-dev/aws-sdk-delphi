unit AWS.SSM.Model.DescribeParametersResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.ParameterMetadata;

type
  TDescribeParametersResponse = class;
  
  IDescribeParametersResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetParameters: TObjectList<TParameterMetadata>;
    procedure SetParameters(const Value: TObjectList<TParameterMetadata>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function Obj: TDescribeParametersResponse;
    function IsSetNextToken: Boolean;
    function IsSetParameters: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Parameters: TObjectList<TParameterMetadata> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
  end;
  
  TDescribeParametersResponse = class(TAmazonWebServiceResponse, IDescribeParametersResponse)
  strict private
    FNextToken: Nullable<string>;
    FParameters: TObjectList<TParameterMetadata>;
    FKeepParameters: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetParameters: TObjectList<TParameterMetadata>;
    procedure SetParameters(const Value: TObjectList<TParameterMetadata>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
  strict protected
    function Obj: TDescribeParametersResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetParameters: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Parameters: TObjectList<TParameterMetadata> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
  end;
  
implementation

{ TDescribeParametersResponse }

constructor TDescribeParametersResponse.Create;
begin
  inherited;
  FParameters := TObjectList<TParameterMetadata>.Create;
end;

destructor TDescribeParametersResponse.Destroy;
begin
  Parameters := nil;
  inherited;
end;

function TDescribeParametersResponse.Obj: TDescribeParametersResponse;
begin
  Result := Self;
end;

function TDescribeParametersResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeParametersResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeParametersResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeParametersResponse.GetParameters: TObjectList<TParameterMetadata>;
begin
  Result := FParameters;
end;

procedure TDescribeParametersResponse.SetParameters(const Value: TObjectList<TParameterMetadata>);
begin
  if FParameters <> Value then
  begin
    if not KeepParameters then
      FParameters.Free;
    FParameters := Value;
  end;
end;

function TDescribeParametersResponse.GetKeepParameters: Boolean;
begin
  Result := FKeepParameters;
end;

procedure TDescribeParametersResponse.SetKeepParameters(const Value: Boolean);
begin
  FKeepParameters := Value;
end;

function TDescribeParametersResponse.IsSetParameters: Boolean;
begin
  Result := (FParameters <> nil) and (FParameters.Count > 0);
end;

end.

unit AWS.SSM.Model.GetParametersByPathResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.Parameter;

type
  TGetParametersByPathResponse = class;
  
  IGetParametersByPathResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetParameters: TObjectList<TParameter>;
    procedure SetParameters(const Value: TObjectList<TParameter>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function Obj: TGetParametersByPathResponse;
    function IsSetNextToken: Boolean;
    function IsSetParameters: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Parameters: TObjectList<TParameter> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
  end;
  
  TGetParametersByPathResponse = class(TAmazonWebServiceResponse, IGetParametersByPathResponse)
  strict private
    FNextToken: Nullable<string>;
    FParameters: TObjectList<TParameter>;
    FKeepParameters: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetParameters: TObjectList<TParameter>;
    procedure SetParameters(const Value: TObjectList<TParameter>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
  strict protected
    function Obj: TGetParametersByPathResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetParameters: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Parameters: TObjectList<TParameter> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
  end;
  
implementation

{ TGetParametersByPathResponse }

constructor TGetParametersByPathResponse.Create;
begin
  inherited;
  FParameters := TObjectList<TParameter>.Create;
end;

destructor TGetParametersByPathResponse.Destroy;
begin
  Parameters := nil;
  inherited;
end;

function TGetParametersByPathResponse.Obj: TGetParametersByPathResponse;
begin
  Result := Self;
end;

function TGetParametersByPathResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetParametersByPathResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetParametersByPathResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetParametersByPathResponse.GetParameters: TObjectList<TParameter>;
begin
  Result := FParameters;
end;

procedure TGetParametersByPathResponse.SetParameters(const Value: TObjectList<TParameter>);
begin
  if FParameters <> Value then
  begin
    if not KeepParameters then
      FParameters.Free;
    FParameters := Value;
  end;
end;

function TGetParametersByPathResponse.GetKeepParameters: Boolean;
begin
  Result := FKeepParameters;
end;

procedure TGetParametersByPathResponse.SetKeepParameters(const Value: Boolean);
begin
  FKeepParameters := Value;
end;

function TGetParametersByPathResponse.IsSetParameters: Boolean;
begin
  Result := (FParameters <> nil) and (FParameters.Count > 0);
end;

end.

unit AWS.SSM.Model.GetParameterHistoryResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.ParameterHistory;

type
  TGetParameterHistoryResponse = class;
  
  IGetParameterHistoryResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetParameters: TObjectList<TParameterHistory>;
    procedure SetParameters(const Value: TObjectList<TParameterHistory>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function Obj: TGetParameterHistoryResponse;
    function IsSetNextToken: Boolean;
    function IsSetParameters: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Parameters: TObjectList<TParameterHistory> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
  end;
  
  TGetParameterHistoryResponse = class(TAmazonWebServiceResponse, IGetParameterHistoryResponse)
  strict private
    FNextToken: Nullable<string>;
    FParameters: TObjectList<TParameterHistory>;
    FKeepParameters: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetParameters: TObjectList<TParameterHistory>;
    procedure SetParameters(const Value: TObjectList<TParameterHistory>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
  strict protected
    function Obj: TGetParameterHistoryResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetParameters: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Parameters: TObjectList<TParameterHistory> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
  end;
  
implementation

{ TGetParameterHistoryResponse }

constructor TGetParameterHistoryResponse.Create;
begin
  inherited;
  FParameters := TObjectList<TParameterHistory>.Create;
end;

destructor TGetParameterHistoryResponse.Destroy;
begin
  Parameters := nil;
  inherited;
end;

function TGetParameterHistoryResponse.Obj: TGetParameterHistoryResponse;
begin
  Result := Self;
end;

function TGetParameterHistoryResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetParameterHistoryResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetParameterHistoryResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetParameterHistoryResponse.GetParameters: TObjectList<TParameterHistory>;
begin
  Result := FParameters;
end;

procedure TGetParameterHistoryResponse.SetParameters(const Value: TObjectList<TParameterHistory>);
begin
  if FParameters <> Value then
  begin
    if not KeepParameters then
      FParameters.Free;
    FParameters := Value;
  end;
end;

function TGetParameterHistoryResponse.GetKeepParameters: Boolean;
begin
  Result := FKeepParameters;
end;

procedure TGetParameterHistoryResponse.SetKeepParameters(const Value: Boolean);
begin
  FKeepParameters := Value;
end;

function TGetParameterHistoryResponse.IsSetParameters: Boolean;
begin
  Result := (FParameters <> nil) and (FParameters.Count > 0);
end;

end.

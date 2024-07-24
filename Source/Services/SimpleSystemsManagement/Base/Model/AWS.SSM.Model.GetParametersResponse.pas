unit AWS.SSM.Model.GetParametersResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.Parameter;

type
  TGetParametersResponse = class;
  
  IGetParametersResponse = interface(IAmazonWebServiceResponse)
    function GetInvalidParameters: TList<string>;
    procedure SetInvalidParameters(const Value: TList<string>);
    function GetKeepInvalidParameters: Boolean;
    procedure SetKeepInvalidParameters(const Value: Boolean);
    function GetParameters: TObjectList<TParameter>;
    procedure SetParameters(const Value: TObjectList<TParameter>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function Obj: TGetParametersResponse;
    function IsSetInvalidParameters: Boolean;
    function IsSetParameters: Boolean;
    property InvalidParameters: TList<string> read GetInvalidParameters write SetInvalidParameters;
    property KeepInvalidParameters: Boolean read GetKeepInvalidParameters write SetKeepInvalidParameters;
    property Parameters: TObjectList<TParameter> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
  end;
  
  TGetParametersResponse = class(TAmazonWebServiceResponse, IGetParametersResponse)
  strict private
    FInvalidParameters: TList<string>;
    FKeepInvalidParameters: Boolean;
    FParameters: TObjectList<TParameter>;
    FKeepParameters: Boolean;
    function GetInvalidParameters: TList<string>;
    procedure SetInvalidParameters(const Value: TList<string>);
    function GetKeepInvalidParameters: Boolean;
    procedure SetKeepInvalidParameters(const Value: Boolean);
    function GetParameters: TObjectList<TParameter>;
    procedure SetParameters(const Value: TObjectList<TParameter>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
  strict protected
    function Obj: TGetParametersResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetInvalidParameters: Boolean;
    function IsSetParameters: Boolean;
    property InvalidParameters: TList<string> read GetInvalidParameters write SetInvalidParameters;
    property KeepInvalidParameters: Boolean read GetKeepInvalidParameters write SetKeepInvalidParameters;
    property Parameters: TObjectList<TParameter> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
  end;
  
implementation

{ TGetParametersResponse }

constructor TGetParametersResponse.Create;
begin
  inherited;
  FInvalidParameters := TList<string>.Create;
  FParameters := TObjectList<TParameter>.Create;
end;

destructor TGetParametersResponse.Destroy;
begin
  Parameters := nil;
  InvalidParameters := nil;
  inherited;
end;

function TGetParametersResponse.Obj: TGetParametersResponse;
begin
  Result := Self;
end;

function TGetParametersResponse.GetInvalidParameters: TList<string>;
begin
  Result := FInvalidParameters;
end;

procedure TGetParametersResponse.SetInvalidParameters(const Value: TList<string>);
begin
  if FInvalidParameters <> Value then
  begin
    if not KeepInvalidParameters then
      FInvalidParameters.Free;
    FInvalidParameters := Value;
  end;
end;

function TGetParametersResponse.GetKeepInvalidParameters: Boolean;
begin
  Result := FKeepInvalidParameters;
end;

procedure TGetParametersResponse.SetKeepInvalidParameters(const Value: Boolean);
begin
  FKeepInvalidParameters := Value;
end;

function TGetParametersResponse.IsSetInvalidParameters: Boolean;
begin
  Result := (FInvalidParameters <> nil) and (FInvalidParameters.Count > 0);
end;

function TGetParametersResponse.GetParameters: TObjectList<TParameter>;
begin
  Result := FParameters;
end;

procedure TGetParametersResponse.SetParameters(const Value: TObjectList<TParameter>);
begin
  if FParameters <> Value then
  begin
    if not KeepParameters then
      FParameters.Free;
    FParameters := Value;
  end;
end;

function TGetParametersResponse.GetKeepParameters: Boolean;
begin
  Result := FKeepParameters;
end;

procedure TGetParametersResponse.SetKeepParameters(const Value: Boolean);
begin
  FKeepParameters := Value;
end;

function TGetParametersResponse.IsSetParameters: Boolean;
begin
  Result := (FParameters <> nil) and (FParameters.Count > 0);
end;

end.

unit AWS.SSM.Model.DeleteParametersResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TDeleteParametersResponse = class;
  
  IDeleteParametersResponse = interface(IAmazonWebServiceResponse)
    function GetDeletedParameters: TList<string>;
    procedure SetDeletedParameters(const Value: TList<string>);
    function GetKeepDeletedParameters: Boolean;
    procedure SetKeepDeletedParameters(const Value: Boolean);
    function GetInvalidParameters: TList<string>;
    procedure SetInvalidParameters(const Value: TList<string>);
    function GetKeepInvalidParameters: Boolean;
    procedure SetKeepInvalidParameters(const Value: Boolean);
    function Obj: TDeleteParametersResponse;
    function IsSetDeletedParameters: Boolean;
    function IsSetInvalidParameters: Boolean;
    property DeletedParameters: TList<string> read GetDeletedParameters write SetDeletedParameters;
    property KeepDeletedParameters: Boolean read GetKeepDeletedParameters write SetKeepDeletedParameters;
    property InvalidParameters: TList<string> read GetInvalidParameters write SetInvalidParameters;
    property KeepInvalidParameters: Boolean read GetKeepInvalidParameters write SetKeepInvalidParameters;
  end;
  
  TDeleteParametersResponse = class(TAmazonWebServiceResponse, IDeleteParametersResponse)
  strict private
    FDeletedParameters: TList<string>;
    FKeepDeletedParameters: Boolean;
    FInvalidParameters: TList<string>;
    FKeepInvalidParameters: Boolean;
    function GetDeletedParameters: TList<string>;
    procedure SetDeletedParameters(const Value: TList<string>);
    function GetKeepDeletedParameters: Boolean;
    procedure SetKeepDeletedParameters(const Value: Boolean);
    function GetInvalidParameters: TList<string>;
    procedure SetInvalidParameters(const Value: TList<string>);
    function GetKeepInvalidParameters: Boolean;
    procedure SetKeepInvalidParameters(const Value: Boolean);
  strict protected
    function Obj: TDeleteParametersResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDeletedParameters: Boolean;
    function IsSetInvalidParameters: Boolean;
    property DeletedParameters: TList<string> read GetDeletedParameters write SetDeletedParameters;
    property KeepDeletedParameters: Boolean read GetKeepDeletedParameters write SetKeepDeletedParameters;
    property InvalidParameters: TList<string> read GetInvalidParameters write SetInvalidParameters;
    property KeepInvalidParameters: Boolean read GetKeepInvalidParameters write SetKeepInvalidParameters;
  end;
  
implementation

{ TDeleteParametersResponse }

constructor TDeleteParametersResponse.Create;
begin
  inherited;
  FDeletedParameters := TList<string>.Create;
  FInvalidParameters := TList<string>.Create;
end;

destructor TDeleteParametersResponse.Destroy;
begin
  InvalidParameters := nil;
  DeletedParameters := nil;
  inherited;
end;

function TDeleteParametersResponse.Obj: TDeleteParametersResponse;
begin
  Result := Self;
end;

function TDeleteParametersResponse.GetDeletedParameters: TList<string>;
begin
  Result := FDeletedParameters;
end;

procedure TDeleteParametersResponse.SetDeletedParameters(const Value: TList<string>);
begin
  if FDeletedParameters <> Value then
  begin
    if not KeepDeletedParameters then
      FDeletedParameters.Free;
    FDeletedParameters := Value;
  end;
end;

function TDeleteParametersResponse.GetKeepDeletedParameters: Boolean;
begin
  Result := FKeepDeletedParameters;
end;

procedure TDeleteParametersResponse.SetKeepDeletedParameters(const Value: Boolean);
begin
  FKeepDeletedParameters := Value;
end;

function TDeleteParametersResponse.IsSetDeletedParameters: Boolean;
begin
  Result := (FDeletedParameters <> nil) and (FDeletedParameters.Count > 0);
end;

function TDeleteParametersResponse.GetInvalidParameters: TList<string>;
begin
  Result := FInvalidParameters;
end;

procedure TDeleteParametersResponse.SetInvalidParameters(const Value: TList<string>);
begin
  if FInvalidParameters <> Value then
  begin
    if not KeepInvalidParameters then
      FInvalidParameters.Free;
    FInvalidParameters := Value;
  end;
end;

function TDeleteParametersResponse.GetKeepInvalidParameters: Boolean;
begin
  Result := FKeepInvalidParameters;
end;

procedure TDeleteParametersResponse.SetKeepInvalidParameters(const Value: Boolean);
begin
  FKeepInvalidParameters := Value;
end;

function TDeleteParametersResponse.IsSetInvalidParameters: Boolean;
begin
  Result := (FInvalidParameters <> nil) and (FInvalidParameters.Count > 0);
end;

end.

unit AWS.SSM.Model.UnlabelParameterVersionResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TUnlabelParameterVersionResponse = class;
  
  IUnlabelParameterVersionResponse = interface(IAmazonWebServiceResponse)
    function GetInvalidLabels: TList<string>;
    procedure SetInvalidLabels(const Value: TList<string>);
    function GetKeepInvalidLabels: Boolean;
    procedure SetKeepInvalidLabels(const Value: Boolean);
    function GetRemovedLabels: TList<string>;
    procedure SetRemovedLabels(const Value: TList<string>);
    function GetKeepRemovedLabels: Boolean;
    procedure SetKeepRemovedLabels(const Value: Boolean);
    function Obj: TUnlabelParameterVersionResponse;
    function IsSetInvalidLabels: Boolean;
    function IsSetRemovedLabels: Boolean;
    property InvalidLabels: TList<string> read GetInvalidLabels write SetInvalidLabels;
    property KeepInvalidLabels: Boolean read GetKeepInvalidLabels write SetKeepInvalidLabels;
    property RemovedLabels: TList<string> read GetRemovedLabels write SetRemovedLabels;
    property KeepRemovedLabels: Boolean read GetKeepRemovedLabels write SetKeepRemovedLabels;
  end;
  
  TUnlabelParameterVersionResponse = class(TAmazonWebServiceResponse, IUnlabelParameterVersionResponse)
  strict private
    FInvalidLabels: TList<string>;
    FKeepInvalidLabels: Boolean;
    FRemovedLabels: TList<string>;
    FKeepRemovedLabels: Boolean;
    function GetInvalidLabels: TList<string>;
    procedure SetInvalidLabels(const Value: TList<string>);
    function GetKeepInvalidLabels: Boolean;
    procedure SetKeepInvalidLabels(const Value: Boolean);
    function GetRemovedLabels: TList<string>;
    procedure SetRemovedLabels(const Value: TList<string>);
    function GetKeepRemovedLabels: Boolean;
    procedure SetKeepRemovedLabels(const Value: Boolean);
  strict protected
    function Obj: TUnlabelParameterVersionResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetInvalidLabels: Boolean;
    function IsSetRemovedLabels: Boolean;
    property InvalidLabels: TList<string> read GetInvalidLabels write SetInvalidLabels;
    property KeepInvalidLabels: Boolean read GetKeepInvalidLabels write SetKeepInvalidLabels;
    property RemovedLabels: TList<string> read GetRemovedLabels write SetRemovedLabels;
    property KeepRemovedLabels: Boolean read GetKeepRemovedLabels write SetKeepRemovedLabels;
  end;
  
implementation

{ TUnlabelParameterVersionResponse }

constructor TUnlabelParameterVersionResponse.Create;
begin
  inherited;
  FInvalidLabels := TList<string>.Create;
  FRemovedLabels := TList<string>.Create;
end;

destructor TUnlabelParameterVersionResponse.Destroy;
begin
  RemovedLabels := nil;
  InvalidLabels := nil;
  inherited;
end;

function TUnlabelParameterVersionResponse.Obj: TUnlabelParameterVersionResponse;
begin
  Result := Self;
end;

function TUnlabelParameterVersionResponse.GetInvalidLabels: TList<string>;
begin
  Result := FInvalidLabels;
end;

procedure TUnlabelParameterVersionResponse.SetInvalidLabels(const Value: TList<string>);
begin
  if FInvalidLabels <> Value then
  begin
    if not KeepInvalidLabels then
      FInvalidLabels.Free;
    FInvalidLabels := Value;
  end;
end;

function TUnlabelParameterVersionResponse.GetKeepInvalidLabels: Boolean;
begin
  Result := FKeepInvalidLabels;
end;

procedure TUnlabelParameterVersionResponse.SetKeepInvalidLabels(const Value: Boolean);
begin
  FKeepInvalidLabels := Value;
end;

function TUnlabelParameterVersionResponse.IsSetInvalidLabels: Boolean;
begin
  Result := (FInvalidLabels <> nil) and (FInvalidLabels.Count > 0);
end;

function TUnlabelParameterVersionResponse.GetRemovedLabels: TList<string>;
begin
  Result := FRemovedLabels;
end;

procedure TUnlabelParameterVersionResponse.SetRemovedLabels(const Value: TList<string>);
begin
  if FRemovedLabels <> Value then
  begin
    if not KeepRemovedLabels then
      FRemovedLabels.Free;
    FRemovedLabels := Value;
  end;
end;

function TUnlabelParameterVersionResponse.GetKeepRemovedLabels: Boolean;
begin
  Result := FKeepRemovedLabels;
end;

procedure TUnlabelParameterVersionResponse.SetKeepRemovedLabels(const Value: Boolean);
begin
  FKeepRemovedLabels := Value;
end;

function TUnlabelParameterVersionResponse.IsSetRemovedLabels: Boolean;
begin
  Result := (FRemovedLabels <> nil) and (FRemovedLabels.Count > 0);
end;

end.

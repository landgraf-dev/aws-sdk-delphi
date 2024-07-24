unit AWS.SSM.Model.UnlabelParameterVersionRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TUnlabelParameterVersionRequest = class;
  
  IUnlabelParameterVersionRequest = interface
    function GetLabels: TList<string>;
    procedure SetLabels(const Value: TList<string>);
    function GetKeepLabels: Boolean;
    procedure SetKeepLabels(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetParameterVersion: Int64;
    procedure SetParameterVersion(const Value: Int64);
    function Obj: TUnlabelParameterVersionRequest;
    function IsSetLabels: Boolean;
    function IsSetName: Boolean;
    function IsSetParameterVersion: Boolean;
    property Labels: TList<string> read GetLabels write SetLabels;
    property KeepLabels: Boolean read GetKeepLabels write SetKeepLabels;
    property Name: string read GetName write SetName;
    property ParameterVersion: Int64 read GetParameterVersion write SetParameterVersion;
  end;
  
  TUnlabelParameterVersionRequest = class(TAmazonSimpleSystemsManagementRequest, IUnlabelParameterVersionRequest)
  strict private
    FLabels: TList<string>;
    FKeepLabels: Boolean;
    FName: Nullable<string>;
    FParameterVersion: Nullable<Int64>;
    function GetLabels: TList<string>;
    procedure SetLabels(const Value: TList<string>);
    function GetKeepLabels: Boolean;
    procedure SetKeepLabels(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetParameterVersion: Int64;
    procedure SetParameterVersion(const Value: Int64);
  strict protected
    function Obj: TUnlabelParameterVersionRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetLabels: Boolean;
    function IsSetName: Boolean;
    function IsSetParameterVersion: Boolean;
    property Labels: TList<string> read GetLabels write SetLabels;
    property KeepLabels: Boolean read GetKeepLabels write SetKeepLabels;
    property Name: string read GetName write SetName;
    property ParameterVersion: Int64 read GetParameterVersion write SetParameterVersion;
  end;
  
implementation

{ TUnlabelParameterVersionRequest }

constructor TUnlabelParameterVersionRequest.Create;
begin
  inherited;
  FLabels := TList<string>.Create;
end;

destructor TUnlabelParameterVersionRequest.Destroy;
begin
  Labels := nil;
  inherited;
end;

function TUnlabelParameterVersionRequest.Obj: TUnlabelParameterVersionRequest;
begin
  Result := Self;
end;

function TUnlabelParameterVersionRequest.GetLabels: TList<string>;
begin
  Result := FLabels;
end;

procedure TUnlabelParameterVersionRequest.SetLabels(const Value: TList<string>);
begin
  if FLabels <> Value then
  begin
    if not KeepLabels then
      FLabels.Free;
    FLabels := Value;
  end;
end;

function TUnlabelParameterVersionRequest.GetKeepLabels: Boolean;
begin
  Result := FKeepLabels;
end;

procedure TUnlabelParameterVersionRequest.SetKeepLabels(const Value: Boolean);
begin
  FKeepLabels := Value;
end;

function TUnlabelParameterVersionRequest.IsSetLabels: Boolean;
begin
  Result := (FLabels <> nil) and (FLabels.Count > 0);
end;

function TUnlabelParameterVersionRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TUnlabelParameterVersionRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TUnlabelParameterVersionRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TUnlabelParameterVersionRequest.GetParameterVersion: Int64;
begin
  Result := FParameterVersion.ValueOrDefault;
end;

procedure TUnlabelParameterVersionRequest.SetParameterVersion(const Value: Int64);
begin
  FParameterVersion := Value;
end;

function TUnlabelParameterVersionRequest.IsSetParameterVersion: Boolean;
begin
  Result := FParameterVersion.HasValue;
end;

end.

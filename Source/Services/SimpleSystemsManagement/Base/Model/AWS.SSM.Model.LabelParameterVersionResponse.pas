unit AWS.SSM.Model.LabelParameterVersionResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TLabelParameterVersionResponse = class;
  
  ILabelParameterVersionResponse = interface(IAmazonWebServiceResponse)
    function GetInvalidLabels: TList<string>;
    procedure SetInvalidLabels(const Value: TList<string>);
    function GetKeepInvalidLabels: Boolean;
    procedure SetKeepInvalidLabels(const Value: Boolean);
    function GetParameterVersion: Int64;
    procedure SetParameterVersion(const Value: Int64);
    function Obj: TLabelParameterVersionResponse;
    function IsSetInvalidLabels: Boolean;
    function IsSetParameterVersion: Boolean;
    property InvalidLabels: TList<string> read GetInvalidLabels write SetInvalidLabels;
    property KeepInvalidLabels: Boolean read GetKeepInvalidLabels write SetKeepInvalidLabels;
    property ParameterVersion: Int64 read GetParameterVersion write SetParameterVersion;
  end;
  
  TLabelParameterVersionResponse = class(TAmazonWebServiceResponse, ILabelParameterVersionResponse)
  strict private
    FInvalidLabels: TList<string>;
    FKeepInvalidLabels: Boolean;
    FParameterVersion: Nullable<Int64>;
    function GetInvalidLabels: TList<string>;
    procedure SetInvalidLabels(const Value: TList<string>);
    function GetKeepInvalidLabels: Boolean;
    procedure SetKeepInvalidLabels(const Value: Boolean);
    function GetParameterVersion: Int64;
    procedure SetParameterVersion(const Value: Int64);
  strict protected
    function Obj: TLabelParameterVersionResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetInvalidLabels: Boolean;
    function IsSetParameterVersion: Boolean;
    property InvalidLabels: TList<string> read GetInvalidLabels write SetInvalidLabels;
    property KeepInvalidLabels: Boolean read GetKeepInvalidLabels write SetKeepInvalidLabels;
    property ParameterVersion: Int64 read GetParameterVersion write SetParameterVersion;
  end;
  
implementation

{ TLabelParameterVersionResponse }

constructor TLabelParameterVersionResponse.Create;
begin
  inherited;
  FInvalidLabels := TList<string>.Create;
end;

destructor TLabelParameterVersionResponse.Destroy;
begin
  InvalidLabels := nil;
  inherited;
end;

function TLabelParameterVersionResponse.Obj: TLabelParameterVersionResponse;
begin
  Result := Self;
end;

function TLabelParameterVersionResponse.GetInvalidLabels: TList<string>;
begin
  Result := FInvalidLabels;
end;

procedure TLabelParameterVersionResponse.SetInvalidLabels(const Value: TList<string>);
begin
  if FInvalidLabels <> Value then
  begin
    if not KeepInvalidLabels then
      FInvalidLabels.Free;
    FInvalidLabels := Value;
  end;
end;

function TLabelParameterVersionResponse.GetKeepInvalidLabels: Boolean;
begin
  Result := FKeepInvalidLabels;
end;

procedure TLabelParameterVersionResponse.SetKeepInvalidLabels(const Value: Boolean);
begin
  FKeepInvalidLabels := Value;
end;

function TLabelParameterVersionResponse.IsSetInvalidLabels: Boolean;
begin
  Result := (FInvalidLabels <> nil) and (FInvalidLabels.Count > 0);
end;

function TLabelParameterVersionResponse.GetParameterVersion: Int64;
begin
  Result := FParameterVersion.ValueOrDefault;
end;

procedure TLabelParameterVersionResponse.SetParameterVersion(const Value: Int64);
begin
  FParameterVersion := Value;
end;

function TLabelParameterVersionResponse.IsSetParameterVersion: Boolean;
begin
  Result := FParameterVersion.HasValue;
end;

end.

unit AWS.SSM.Model.LabelParameterVersionRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TLabelParameterVersionRequest = class;
  
  ILabelParameterVersionRequest = interface
    function GetLabels: TList<string>;
    procedure SetLabels(const Value: TList<string>);
    function GetKeepLabels: Boolean;
    procedure SetKeepLabels(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetParameterVersion: Int64;
    procedure SetParameterVersion(const Value: Int64);
    function Obj: TLabelParameterVersionRequest;
    function IsSetLabels: Boolean;
    function IsSetName: Boolean;
    function IsSetParameterVersion: Boolean;
    property Labels: TList<string> read GetLabels write SetLabels;
    property KeepLabels: Boolean read GetKeepLabels write SetKeepLabels;
    property Name: string read GetName write SetName;
    property ParameterVersion: Int64 read GetParameterVersion write SetParameterVersion;
  end;
  
  TLabelParameterVersionRequest = class(TAmazonSimpleSystemsManagementRequest, ILabelParameterVersionRequest)
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
    function Obj: TLabelParameterVersionRequest;
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

{ TLabelParameterVersionRequest }

constructor TLabelParameterVersionRequest.Create;
begin
  inherited;
  FLabels := TList<string>.Create;
end;

destructor TLabelParameterVersionRequest.Destroy;
begin
  Labels := nil;
  inherited;
end;

function TLabelParameterVersionRequest.Obj: TLabelParameterVersionRequest;
begin
  Result := Self;
end;

function TLabelParameterVersionRequest.GetLabels: TList<string>;
begin
  Result := FLabels;
end;

procedure TLabelParameterVersionRequest.SetLabels(const Value: TList<string>);
begin
  if FLabels <> Value then
  begin
    if not KeepLabels then
      FLabels.Free;
    FLabels := Value;
  end;
end;

function TLabelParameterVersionRequest.GetKeepLabels: Boolean;
begin
  Result := FKeepLabels;
end;

procedure TLabelParameterVersionRequest.SetKeepLabels(const Value: Boolean);
begin
  FKeepLabels := Value;
end;

function TLabelParameterVersionRequest.IsSetLabels: Boolean;
begin
  Result := (FLabels <> nil) and (FLabels.Count > 0);
end;

function TLabelParameterVersionRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TLabelParameterVersionRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TLabelParameterVersionRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TLabelParameterVersionRequest.GetParameterVersion: Int64;
begin
  Result := FParameterVersion.ValueOrDefault;
end;

procedure TLabelParameterVersionRequest.SetParameterVersion(const Value: Int64);
begin
  FParameterVersion := Value;
end;

function TLabelParameterVersionRequest.IsSetParameterVersion: Boolean;
begin
  Result := FParameterVersion.HasValue;
end;

end.

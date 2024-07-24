unit AWS.SSM.Model.RegisterTargetWithMaintenanceWindowRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.Target;

type
  TRegisterTargetWithMaintenanceWindowRequest = class;
  
  IRegisterTargetWithMaintenanceWindowRequest = interface
    function GetClientToken: string;
    procedure SetClientToken(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOwnerInformation: string;
    procedure SetOwnerInformation(const Value: string);
    function GetResourceType: TMaintenanceWindowResourceType;
    procedure SetResourceType(const Value: TMaintenanceWindowResourceType);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function Obj: TRegisterTargetWithMaintenanceWindowRequest;
    function IsSetClientToken: Boolean;
    function IsSetDescription: Boolean;
    function IsSetName: Boolean;
    function IsSetOwnerInformation: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetTargets: Boolean;
    function IsSetWindowId: Boolean;
    property ClientToken: string read GetClientToken write SetClientToken;
    property Description: string read GetDescription write SetDescription;
    property Name: string read GetName write SetName;
    property OwnerInformation: string read GetOwnerInformation write SetOwnerInformation;
    property ResourceType: TMaintenanceWindowResourceType read GetResourceType write SetResourceType;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
  TRegisterTargetWithMaintenanceWindowRequest = class(TAmazonSimpleSystemsManagementRequest, IRegisterTargetWithMaintenanceWindowRequest)
  strict private
    FClientToken: Nullable<string>;
    FDescription: Nullable<string>;
    FName: Nullable<string>;
    FOwnerInformation: Nullable<string>;
    FResourceType: Nullable<TMaintenanceWindowResourceType>;
    FTargets: TObjectList<TTarget>;
    FKeepTargets: Boolean;
    FWindowId: Nullable<string>;
    function GetClientToken: string;
    procedure SetClientToken(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOwnerInformation: string;
    procedure SetOwnerInformation(const Value: string);
    function GetResourceType: TMaintenanceWindowResourceType;
    procedure SetResourceType(const Value: TMaintenanceWindowResourceType);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
  strict protected
    function Obj: TRegisterTargetWithMaintenanceWindowRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetClientToken: Boolean;
    function IsSetDescription: Boolean;
    function IsSetName: Boolean;
    function IsSetOwnerInformation: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetTargets: Boolean;
    function IsSetWindowId: Boolean;
    property ClientToken: string read GetClientToken write SetClientToken;
    property Description: string read GetDescription write SetDescription;
    property Name: string read GetName write SetName;
    property OwnerInformation: string read GetOwnerInformation write SetOwnerInformation;
    property ResourceType: TMaintenanceWindowResourceType read GetResourceType write SetResourceType;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
implementation

{ TRegisterTargetWithMaintenanceWindowRequest }

constructor TRegisterTargetWithMaintenanceWindowRequest.Create;
begin
  inherited;
  FTargets := TObjectList<TTarget>.Create;
end;

destructor TRegisterTargetWithMaintenanceWindowRequest.Destroy;
begin
  Targets := nil;
  inherited;
end;

function TRegisterTargetWithMaintenanceWindowRequest.Obj: TRegisterTargetWithMaintenanceWindowRequest;
begin
  Result := Self;
end;

function TRegisterTargetWithMaintenanceWindowRequest.GetClientToken: string;
begin
  Result := FClientToken.ValueOrDefault;
end;

procedure TRegisterTargetWithMaintenanceWindowRequest.SetClientToken(const Value: string);
begin
  FClientToken := Value;
end;

function TRegisterTargetWithMaintenanceWindowRequest.IsSetClientToken: Boolean;
begin
  Result := FClientToken.HasValue;
end;

function TRegisterTargetWithMaintenanceWindowRequest.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TRegisterTargetWithMaintenanceWindowRequest.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TRegisterTargetWithMaintenanceWindowRequest.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TRegisterTargetWithMaintenanceWindowRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TRegisterTargetWithMaintenanceWindowRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TRegisterTargetWithMaintenanceWindowRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TRegisterTargetWithMaintenanceWindowRequest.GetOwnerInformation: string;
begin
  Result := FOwnerInformation.ValueOrDefault;
end;

procedure TRegisterTargetWithMaintenanceWindowRequest.SetOwnerInformation(const Value: string);
begin
  FOwnerInformation := Value;
end;

function TRegisterTargetWithMaintenanceWindowRequest.IsSetOwnerInformation: Boolean;
begin
  Result := FOwnerInformation.HasValue;
end;

function TRegisterTargetWithMaintenanceWindowRequest.GetResourceType: TMaintenanceWindowResourceType;
begin
  Result := FResourceType.ValueOrDefault;
end;

procedure TRegisterTargetWithMaintenanceWindowRequest.SetResourceType(const Value: TMaintenanceWindowResourceType);
begin
  FResourceType := Value;
end;

function TRegisterTargetWithMaintenanceWindowRequest.IsSetResourceType: Boolean;
begin
  Result := FResourceType.HasValue;
end;

function TRegisterTargetWithMaintenanceWindowRequest.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TRegisterTargetWithMaintenanceWindowRequest.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TRegisterTargetWithMaintenanceWindowRequest.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TRegisterTargetWithMaintenanceWindowRequest.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TRegisterTargetWithMaintenanceWindowRequest.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

function TRegisterTargetWithMaintenanceWindowRequest.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TRegisterTargetWithMaintenanceWindowRequest.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TRegisterTargetWithMaintenanceWindowRequest.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

end.

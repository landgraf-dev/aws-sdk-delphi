unit AWS.SSM.Model.UpdateMaintenanceWindowTargetRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Model.Target;

type
  TUpdateMaintenanceWindowTargetRequest = class;
  
  IUpdateMaintenanceWindowTargetRequest = interface
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOwnerInformation: string;
    procedure SetOwnerInformation(const Value: string);
    function GetReplace: Boolean;
    procedure SetReplace(const Value: Boolean);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTargetId: string;
    procedure SetWindowTargetId(const Value: string);
    function Obj: TUpdateMaintenanceWindowTargetRequest;
    function IsSetDescription: Boolean;
    function IsSetName: Boolean;
    function IsSetOwnerInformation: Boolean;
    function IsSetReplace: Boolean;
    function IsSetTargets: Boolean;
    function IsSetWindowId: Boolean;
    function IsSetWindowTargetId: Boolean;
    property Description: string read GetDescription write SetDescription;
    property Name: string read GetName write SetName;
    property OwnerInformation: string read GetOwnerInformation write SetOwnerInformation;
    property Replace: Boolean read GetReplace write SetReplace;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTargetId: string read GetWindowTargetId write SetWindowTargetId;
  end;
  
  TUpdateMaintenanceWindowTargetRequest = class(TAmazonSimpleSystemsManagementRequest, IUpdateMaintenanceWindowTargetRequest)
  strict private
    FDescription: Nullable<string>;
    FName: Nullable<string>;
    FOwnerInformation: Nullable<string>;
    FReplace: Nullable<Boolean>;
    FTargets: TObjectList<TTarget>;
    FKeepTargets: Boolean;
    FWindowId: Nullable<string>;
    FWindowTargetId: Nullable<string>;
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOwnerInformation: string;
    procedure SetOwnerInformation(const Value: string);
    function GetReplace: Boolean;
    procedure SetReplace(const Value: Boolean);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTargetId: string;
    procedure SetWindowTargetId(const Value: string);
  strict protected
    function Obj: TUpdateMaintenanceWindowTargetRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDescription: Boolean;
    function IsSetName: Boolean;
    function IsSetOwnerInformation: Boolean;
    function IsSetReplace: Boolean;
    function IsSetTargets: Boolean;
    function IsSetWindowId: Boolean;
    function IsSetWindowTargetId: Boolean;
    property Description: string read GetDescription write SetDescription;
    property Name: string read GetName write SetName;
    property OwnerInformation: string read GetOwnerInformation write SetOwnerInformation;
    property Replace: Boolean read GetReplace write SetReplace;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTargetId: string read GetWindowTargetId write SetWindowTargetId;
  end;
  
implementation

{ TUpdateMaintenanceWindowTargetRequest }

constructor TUpdateMaintenanceWindowTargetRequest.Create;
begin
  inherited;
  FTargets := TObjectList<TTarget>.Create;
end;

destructor TUpdateMaintenanceWindowTargetRequest.Destroy;
begin
  Targets := nil;
  inherited;
end;

function TUpdateMaintenanceWindowTargetRequest.Obj: TUpdateMaintenanceWindowTargetRequest;
begin
  Result := Self;
end;

function TUpdateMaintenanceWindowTargetRequest.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTargetRequest.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TUpdateMaintenanceWindowTargetRequest.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TUpdateMaintenanceWindowTargetRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTargetRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TUpdateMaintenanceWindowTargetRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TUpdateMaintenanceWindowTargetRequest.GetOwnerInformation: string;
begin
  Result := FOwnerInformation.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTargetRequest.SetOwnerInformation(const Value: string);
begin
  FOwnerInformation := Value;
end;

function TUpdateMaintenanceWindowTargetRequest.IsSetOwnerInformation: Boolean;
begin
  Result := FOwnerInformation.HasValue;
end;

function TUpdateMaintenanceWindowTargetRequest.GetReplace: Boolean;
begin
  Result := FReplace.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTargetRequest.SetReplace(const Value: Boolean);
begin
  FReplace := Value;
end;

function TUpdateMaintenanceWindowTargetRequest.IsSetReplace: Boolean;
begin
  Result := FReplace.HasValue;
end;

function TUpdateMaintenanceWindowTargetRequest.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TUpdateMaintenanceWindowTargetRequest.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TUpdateMaintenanceWindowTargetRequest.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TUpdateMaintenanceWindowTargetRequest.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TUpdateMaintenanceWindowTargetRequest.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

function TUpdateMaintenanceWindowTargetRequest.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTargetRequest.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TUpdateMaintenanceWindowTargetRequest.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

function TUpdateMaintenanceWindowTargetRequest.GetWindowTargetId: string;
begin
  Result := FWindowTargetId.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTargetRequest.SetWindowTargetId(const Value: string);
begin
  FWindowTargetId := Value;
end;

function TUpdateMaintenanceWindowTargetRequest.IsSetWindowTargetId: Boolean;
begin
  Result := FWindowTargetId.HasValue;
end;

end.

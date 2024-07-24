unit AWS.SSM.Model.UpdateMaintenanceWindowTargetResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.Target;

type
  TUpdateMaintenanceWindowTargetResponse = class;
  
  IUpdateMaintenanceWindowTargetResponse = interface(IAmazonWebServiceResponse)
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOwnerInformation: string;
    procedure SetOwnerInformation(const Value: string);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTargetId: string;
    procedure SetWindowTargetId(const Value: string);
    function Obj: TUpdateMaintenanceWindowTargetResponse;
    function IsSetDescription: Boolean;
    function IsSetName: Boolean;
    function IsSetOwnerInformation: Boolean;
    function IsSetTargets: Boolean;
    function IsSetWindowId: Boolean;
    function IsSetWindowTargetId: Boolean;
    property Description: string read GetDescription write SetDescription;
    property Name: string read GetName write SetName;
    property OwnerInformation: string read GetOwnerInformation write SetOwnerInformation;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTargetId: string read GetWindowTargetId write SetWindowTargetId;
  end;
  
  TUpdateMaintenanceWindowTargetResponse = class(TAmazonWebServiceResponse, IUpdateMaintenanceWindowTargetResponse)
  strict private
    FDescription: Nullable<string>;
    FName: Nullable<string>;
    FOwnerInformation: Nullable<string>;
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
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTargetId: string;
    procedure SetWindowTargetId(const Value: string);
  strict protected
    function Obj: TUpdateMaintenanceWindowTargetResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDescription: Boolean;
    function IsSetName: Boolean;
    function IsSetOwnerInformation: Boolean;
    function IsSetTargets: Boolean;
    function IsSetWindowId: Boolean;
    function IsSetWindowTargetId: Boolean;
    property Description: string read GetDescription write SetDescription;
    property Name: string read GetName write SetName;
    property OwnerInformation: string read GetOwnerInformation write SetOwnerInformation;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTargetId: string read GetWindowTargetId write SetWindowTargetId;
  end;
  
implementation

{ TUpdateMaintenanceWindowTargetResponse }

constructor TUpdateMaintenanceWindowTargetResponse.Create;
begin
  inherited;
  FTargets := TObjectList<TTarget>.Create;
end;

destructor TUpdateMaintenanceWindowTargetResponse.Destroy;
begin
  Targets := nil;
  inherited;
end;

function TUpdateMaintenanceWindowTargetResponse.Obj: TUpdateMaintenanceWindowTargetResponse;
begin
  Result := Self;
end;

function TUpdateMaintenanceWindowTargetResponse.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTargetResponse.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TUpdateMaintenanceWindowTargetResponse.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TUpdateMaintenanceWindowTargetResponse.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTargetResponse.SetName(const Value: string);
begin
  FName := Value;
end;

function TUpdateMaintenanceWindowTargetResponse.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TUpdateMaintenanceWindowTargetResponse.GetOwnerInformation: string;
begin
  Result := FOwnerInformation.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTargetResponse.SetOwnerInformation(const Value: string);
begin
  FOwnerInformation := Value;
end;

function TUpdateMaintenanceWindowTargetResponse.IsSetOwnerInformation: Boolean;
begin
  Result := FOwnerInformation.HasValue;
end;

function TUpdateMaintenanceWindowTargetResponse.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TUpdateMaintenanceWindowTargetResponse.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TUpdateMaintenanceWindowTargetResponse.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TUpdateMaintenanceWindowTargetResponse.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TUpdateMaintenanceWindowTargetResponse.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

function TUpdateMaintenanceWindowTargetResponse.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTargetResponse.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TUpdateMaintenanceWindowTargetResponse.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

function TUpdateMaintenanceWindowTargetResponse.GetWindowTargetId: string;
begin
  Result := FWindowTargetId.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTargetResponse.SetWindowTargetId(const Value: string);
begin
  FWindowTargetId := Value;
end;

function TUpdateMaintenanceWindowTargetResponse.IsSetWindowTargetId: Boolean;
begin
  Result := FWindowTargetId.HasValue;
end;

end.

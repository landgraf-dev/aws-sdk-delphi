unit AWS.SSM.Model.UpdateAssociationStatusRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.AssociationStatus, 
  AWS.Nullable;

type
  TUpdateAssociationStatusRequest = class;
  
  IUpdateAssociationStatusRequest = interface
    function GetAssociationStatus: TAssociationStatus;
    procedure SetAssociationStatus(const Value: TAssociationStatus);
    function GetKeepAssociationStatus: Boolean;
    procedure SetKeepAssociationStatus(const Value: Boolean);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TUpdateAssociationStatusRequest;
    function IsSetAssociationStatus: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetName: Boolean;
    property AssociationStatus: TAssociationStatus read GetAssociationStatus write SetAssociationStatus;
    property KeepAssociationStatus: Boolean read GetKeepAssociationStatus write SetKeepAssociationStatus;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property Name: string read GetName write SetName;
  end;
  
  TUpdateAssociationStatusRequest = class(TAmazonSimpleSystemsManagementRequest, IUpdateAssociationStatusRequest)
  strict private
    FAssociationStatus: TAssociationStatus;
    FKeepAssociationStatus: Boolean;
    FInstanceId: Nullable<string>;
    FName: Nullable<string>;
    function GetAssociationStatus: TAssociationStatus;
    procedure SetAssociationStatus(const Value: TAssociationStatus);
    function GetKeepAssociationStatus: Boolean;
    procedure SetKeepAssociationStatus(const Value: Boolean);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TUpdateAssociationStatusRequest;
  public
    destructor Destroy; override;
    constructor Create(const AAssociationStatus: TAssociationStatus; const AInstanceId: string; const AName: string); overload;
    function IsSetAssociationStatus: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetName: Boolean;
    property AssociationStatus: TAssociationStatus read GetAssociationStatus write SetAssociationStatus;
    property KeepAssociationStatus: Boolean read GetKeepAssociationStatus write SetKeepAssociationStatus;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TUpdateAssociationStatusRequest }

destructor TUpdateAssociationStatusRequest.Destroy;
begin
  AssociationStatus := nil;
  inherited;
end;

function TUpdateAssociationStatusRequest.Obj: TUpdateAssociationStatusRequest;
begin
  Result := Self;
end;

constructor TUpdateAssociationStatusRequest.Create(const AAssociationStatus: TAssociationStatus; const AInstanceId: string; const AName: string);
begin
  Create;
  AssociationStatus := AAssociationStatus;
  InstanceId := AInstanceId;
  Name := AName;
end;

function TUpdateAssociationStatusRequest.GetAssociationStatus: TAssociationStatus;
begin
  Result := FAssociationStatus;
end;

procedure TUpdateAssociationStatusRequest.SetAssociationStatus(const Value: TAssociationStatus);
begin
  if FAssociationStatus <> Value then
  begin
    if not KeepAssociationStatus then
      FAssociationStatus.Free;
    FAssociationStatus := Value;
  end;
end;

function TUpdateAssociationStatusRequest.GetKeepAssociationStatus: Boolean;
begin
  Result := FKeepAssociationStatus;
end;

procedure TUpdateAssociationStatusRequest.SetKeepAssociationStatus(const Value: Boolean);
begin
  FKeepAssociationStatus := Value;
end;

function TUpdateAssociationStatusRequest.IsSetAssociationStatus: Boolean;
begin
  Result := FAssociationStatus <> nil;
end;

function TUpdateAssociationStatusRequest.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TUpdateAssociationStatusRequest.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TUpdateAssociationStatusRequest.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TUpdateAssociationStatusRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TUpdateAssociationStatusRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TUpdateAssociationStatusRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.

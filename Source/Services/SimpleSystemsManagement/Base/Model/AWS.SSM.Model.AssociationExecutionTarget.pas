unit AWS.SSM.Model.AssociationExecutionTarget;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Model.OutputSource;

type
  TAssociationExecutionTarget = class;
  
  IAssociationExecutionTarget = interface
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetAssociationVersion: string;
    procedure SetAssociationVersion(const Value: string);
    function GetDetailedStatus: string;
    procedure SetDetailedStatus(const Value: string);
    function GetExecutionId: string;
    procedure SetExecutionId(const Value: string);
    function GetLastExecutionDate: TDateTime;
    procedure SetLastExecutionDate(const Value: TDateTime);
    function GetOutputSource: TOutputSource;
    procedure SetOutputSource(const Value: TOutputSource);
    function GetKeepOutputSource: Boolean;
    procedure SetKeepOutputSource(const Value: Boolean);
    function GetResourceId: string;
    procedure SetResourceId(const Value: string);
    function GetResourceType: string;
    procedure SetResourceType(const Value: string);
    function GetStatus: string;
    procedure SetStatus(const Value: string);
    function Obj: TAssociationExecutionTarget;
    function IsSetAssociationId: Boolean;
    function IsSetAssociationVersion: Boolean;
    function IsSetDetailedStatus: Boolean;
    function IsSetExecutionId: Boolean;
    function IsSetLastExecutionDate: Boolean;
    function IsSetOutputSource: Boolean;
    function IsSetResourceId: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetStatus: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AssociationVersion: string read GetAssociationVersion write SetAssociationVersion;
    property DetailedStatus: string read GetDetailedStatus write SetDetailedStatus;
    property ExecutionId: string read GetExecutionId write SetExecutionId;
    property LastExecutionDate: TDateTime read GetLastExecutionDate write SetLastExecutionDate;
    property OutputSource: TOutputSource read GetOutputSource write SetOutputSource;
    property KeepOutputSource: Boolean read GetKeepOutputSource write SetKeepOutputSource;
    property ResourceId: string read GetResourceId write SetResourceId;
    property ResourceType: string read GetResourceType write SetResourceType;
    property Status: string read GetStatus write SetStatus;
  end;
  
  TAssociationExecutionTarget = class
  strict private
    FAssociationId: Nullable<string>;
    FAssociationVersion: Nullable<string>;
    FDetailedStatus: Nullable<string>;
    FExecutionId: Nullable<string>;
    FLastExecutionDate: Nullable<TDateTime>;
    FOutputSource: TOutputSource;
    FKeepOutputSource: Boolean;
    FResourceId: Nullable<string>;
    FResourceType: Nullable<string>;
    FStatus: Nullable<string>;
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetAssociationVersion: string;
    procedure SetAssociationVersion(const Value: string);
    function GetDetailedStatus: string;
    procedure SetDetailedStatus(const Value: string);
    function GetExecutionId: string;
    procedure SetExecutionId(const Value: string);
    function GetLastExecutionDate: TDateTime;
    procedure SetLastExecutionDate(const Value: TDateTime);
    function GetOutputSource: TOutputSource;
    procedure SetOutputSource(const Value: TOutputSource);
    function GetKeepOutputSource: Boolean;
    procedure SetKeepOutputSource(const Value: Boolean);
    function GetResourceId: string;
    procedure SetResourceId(const Value: string);
    function GetResourceType: string;
    procedure SetResourceType(const Value: string);
    function GetStatus: string;
    procedure SetStatus(const Value: string);
  strict protected
    function Obj: TAssociationExecutionTarget;
  public
    destructor Destroy; override;
    function IsSetAssociationId: Boolean;
    function IsSetAssociationVersion: Boolean;
    function IsSetDetailedStatus: Boolean;
    function IsSetExecutionId: Boolean;
    function IsSetLastExecutionDate: Boolean;
    function IsSetOutputSource: Boolean;
    function IsSetResourceId: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetStatus: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AssociationVersion: string read GetAssociationVersion write SetAssociationVersion;
    property DetailedStatus: string read GetDetailedStatus write SetDetailedStatus;
    property ExecutionId: string read GetExecutionId write SetExecutionId;
    property LastExecutionDate: TDateTime read GetLastExecutionDate write SetLastExecutionDate;
    property OutputSource: TOutputSource read GetOutputSource write SetOutputSource;
    property KeepOutputSource: Boolean read GetKeepOutputSource write SetKeepOutputSource;
    property ResourceId: string read GetResourceId write SetResourceId;
    property ResourceType: string read GetResourceType write SetResourceType;
    property Status: string read GetStatus write SetStatus;
  end;
  
implementation

{ TAssociationExecutionTarget }

destructor TAssociationExecutionTarget.Destroy;
begin
  OutputSource := nil;
  inherited;
end;

function TAssociationExecutionTarget.Obj: TAssociationExecutionTarget;
begin
  Result := Self;
end;

function TAssociationExecutionTarget.GetAssociationId: string;
begin
  Result := FAssociationId.ValueOrDefault;
end;

procedure TAssociationExecutionTarget.SetAssociationId(const Value: string);
begin
  FAssociationId := Value;
end;

function TAssociationExecutionTarget.IsSetAssociationId: Boolean;
begin
  Result := FAssociationId.HasValue;
end;

function TAssociationExecutionTarget.GetAssociationVersion: string;
begin
  Result := FAssociationVersion.ValueOrDefault;
end;

procedure TAssociationExecutionTarget.SetAssociationVersion(const Value: string);
begin
  FAssociationVersion := Value;
end;

function TAssociationExecutionTarget.IsSetAssociationVersion: Boolean;
begin
  Result := FAssociationVersion.HasValue;
end;

function TAssociationExecutionTarget.GetDetailedStatus: string;
begin
  Result := FDetailedStatus.ValueOrDefault;
end;

procedure TAssociationExecutionTarget.SetDetailedStatus(const Value: string);
begin
  FDetailedStatus := Value;
end;

function TAssociationExecutionTarget.IsSetDetailedStatus: Boolean;
begin
  Result := FDetailedStatus.HasValue;
end;

function TAssociationExecutionTarget.GetExecutionId: string;
begin
  Result := FExecutionId.ValueOrDefault;
end;

procedure TAssociationExecutionTarget.SetExecutionId(const Value: string);
begin
  FExecutionId := Value;
end;

function TAssociationExecutionTarget.IsSetExecutionId: Boolean;
begin
  Result := FExecutionId.HasValue;
end;

function TAssociationExecutionTarget.GetLastExecutionDate: TDateTime;
begin
  Result := FLastExecutionDate.ValueOrDefault;
end;

procedure TAssociationExecutionTarget.SetLastExecutionDate(const Value: TDateTime);
begin
  FLastExecutionDate := Value;
end;

function TAssociationExecutionTarget.IsSetLastExecutionDate: Boolean;
begin
  Result := FLastExecutionDate.HasValue;
end;

function TAssociationExecutionTarget.GetOutputSource: TOutputSource;
begin
  Result := FOutputSource;
end;

procedure TAssociationExecutionTarget.SetOutputSource(const Value: TOutputSource);
begin
  if FOutputSource <> Value then
  begin
    if not KeepOutputSource then
      FOutputSource.Free;
    FOutputSource := Value;
  end;
end;

function TAssociationExecutionTarget.GetKeepOutputSource: Boolean;
begin
  Result := FKeepOutputSource;
end;

procedure TAssociationExecutionTarget.SetKeepOutputSource(const Value: Boolean);
begin
  FKeepOutputSource := Value;
end;

function TAssociationExecutionTarget.IsSetOutputSource: Boolean;
begin
  Result := FOutputSource <> nil;
end;

function TAssociationExecutionTarget.GetResourceId: string;
begin
  Result := FResourceId.ValueOrDefault;
end;

procedure TAssociationExecutionTarget.SetResourceId(const Value: string);
begin
  FResourceId := Value;
end;

function TAssociationExecutionTarget.IsSetResourceId: Boolean;
begin
  Result := FResourceId.HasValue;
end;

function TAssociationExecutionTarget.GetResourceType: string;
begin
  Result := FResourceType.ValueOrDefault;
end;

procedure TAssociationExecutionTarget.SetResourceType(const Value: string);
begin
  FResourceType := Value;
end;

function TAssociationExecutionTarget.IsSetResourceType: Boolean;
begin
  Result := FResourceType.HasValue;
end;

function TAssociationExecutionTarget.GetStatus: string;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TAssociationExecutionTarget.SetStatus(const Value: string);
begin
  FStatus := Value;
end;

function TAssociationExecutionTarget.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.

unit AWS.SSM.Model.AssociationExecution;

interface

uses
  AWS.Nullable;

type
  TAssociationExecution = class;
  
  IAssociationExecution = interface
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetAssociationVersion: string;
    procedure SetAssociationVersion(const Value: string);
    function GetCreatedTime: TDateTime;
    procedure SetCreatedTime(const Value: TDateTime);
    function GetDetailedStatus: string;
    procedure SetDetailedStatus(const Value: string);
    function GetExecutionId: string;
    procedure SetExecutionId(const Value: string);
    function GetLastExecutionDate: TDateTime;
    procedure SetLastExecutionDate(const Value: TDateTime);
    function GetResourceCountByStatus: string;
    procedure SetResourceCountByStatus(const Value: string);
    function GetStatus: string;
    procedure SetStatus(const Value: string);
    function Obj: TAssociationExecution;
    function IsSetAssociationId: Boolean;
    function IsSetAssociationVersion: Boolean;
    function IsSetCreatedTime: Boolean;
    function IsSetDetailedStatus: Boolean;
    function IsSetExecutionId: Boolean;
    function IsSetLastExecutionDate: Boolean;
    function IsSetResourceCountByStatus: Boolean;
    function IsSetStatus: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AssociationVersion: string read GetAssociationVersion write SetAssociationVersion;
    property CreatedTime: TDateTime read GetCreatedTime write SetCreatedTime;
    property DetailedStatus: string read GetDetailedStatus write SetDetailedStatus;
    property ExecutionId: string read GetExecutionId write SetExecutionId;
    property LastExecutionDate: TDateTime read GetLastExecutionDate write SetLastExecutionDate;
    property ResourceCountByStatus: string read GetResourceCountByStatus write SetResourceCountByStatus;
    property Status: string read GetStatus write SetStatus;
  end;
  
  TAssociationExecution = class
  strict private
    FAssociationId: Nullable<string>;
    FAssociationVersion: Nullable<string>;
    FCreatedTime: Nullable<TDateTime>;
    FDetailedStatus: Nullable<string>;
    FExecutionId: Nullable<string>;
    FLastExecutionDate: Nullable<TDateTime>;
    FResourceCountByStatus: Nullable<string>;
    FStatus: Nullable<string>;
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetAssociationVersion: string;
    procedure SetAssociationVersion(const Value: string);
    function GetCreatedTime: TDateTime;
    procedure SetCreatedTime(const Value: TDateTime);
    function GetDetailedStatus: string;
    procedure SetDetailedStatus(const Value: string);
    function GetExecutionId: string;
    procedure SetExecutionId(const Value: string);
    function GetLastExecutionDate: TDateTime;
    procedure SetLastExecutionDate(const Value: TDateTime);
    function GetResourceCountByStatus: string;
    procedure SetResourceCountByStatus(const Value: string);
    function GetStatus: string;
    procedure SetStatus(const Value: string);
  strict protected
    function Obj: TAssociationExecution;
  public
    function IsSetAssociationId: Boolean;
    function IsSetAssociationVersion: Boolean;
    function IsSetCreatedTime: Boolean;
    function IsSetDetailedStatus: Boolean;
    function IsSetExecutionId: Boolean;
    function IsSetLastExecutionDate: Boolean;
    function IsSetResourceCountByStatus: Boolean;
    function IsSetStatus: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AssociationVersion: string read GetAssociationVersion write SetAssociationVersion;
    property CreatedTime: TDateTime read GetCreatedTime write SetCreatedTime;
    property DetailedStatus: string read GetDetailedStatus write SetDetailedStatus;
    property ExecutionId: string read GetExecutionId write SetExecutionId;
    property LastExecutionDate: TDateTime read GetLastExecutionDate write SetLastExecutionDate;
    property ResourceCountByStatus: string read GetResourceCountByStatus write SetResourceCountByStatus;
    property Status: string read GetStatus write SetStatus;
  end;
  
implementation

{ TAssociationExecution }

function TAssociationExecution.Obj: TAssociationExecution;
begin
  Result := Self;
end;

function TAssociationExecution.GetAssociationId: string;
begin
  Result := FAssociationId.ValueOrDefault;
end;

procedure TAssociationExecution.SetAssociationId(const Value: string);
begin
  FAssociationId := Value;
end;

function TAssociationExecution.IsSetAssociationId: Boolean;
begin
  Result := FAssociationId.HasValue;
end;

function TAssociationExecution.GetAssociationVersion: string;
begin
  Result := FAssociationVersion.ValueOrDefault;
end;

procedure TAssociationExecution.SetAssociationVersion(const Value: string);
begin
  FAssociationVersion := Value;
end;

function TAssociationExecution.IsSetAssociationVersion: Boolean;
begin
  Result := FAssociationVersion.HasValue;
end;

function TAssociationExecution.GetCreatedTime: TDateTime;
begin
  Result := FCreatedTime.ValueOrDefault;
end;

procedure TAssociationExecution.SetCreatedTime(const Value: TDateTime);
begin
  FCreatedTime := Value;
end;

function TAssociationExecution.IsSetCreatedTime: Boolean;
begin
  Result := FCreatedTime.HasValue;
end;

function TAssociationExecution.GetDetailedStatus: string;
begin
  Result := FDetailedStatus.ValueOrDefault;
end;

procedure TAssociationExecution.SetDetailedStatus(const Value: string);
begin
  FDetailedStatus := Value;
end;

function TAssociationExecution.IsSetDetailedStatus: Boolean;
begin
  Result := FDetailedStatus.HasValue;
end;

function TAssociationExecution.GetExecutionId: string;
begin
  Result := FExecutionId.ValueOrDefault;
end;

procedure TAssociationExecution.SetExecutionId(const Value: string);
begin
  FExecutionId := Value;
end;

function TAssociationExecution.IsSetExecutionId: Boolean;
begin
  Result := FExecutionId.HasValue;
end;

function TAssociationExecution.GetLastExecutionDate: TDateTime;
begin
  Result := FLastExecutionDate.ValueOrDefault;
end;

procedure TAssociationExecution.SetLastExecutionDate(const Value: TDateTime);
begin
  FLastExecutionDate := Value;
end;

function TAssociationExecution.IsSetLastExecutionDate: Boolean;
begin
  Result := FLastExecutionDate.HasValue;
end;

function TAssociationExecution.GetResourceCountByStatus: string;
begin
  Result := FResourceCountByStatus.ValueOrDefault;
end;

procedure TAssociationExecution.SetResourceCountByStatus(const Value: string);
begin
  FResourceCountByStatus := Value;
end;

function TAssociationExecution.IsSetResourceCountByStatus: Boolean;
begin
  Result := FResourceCountByStatus.HasValue;
end;

function TAssociationExecution.GetStatus: string;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TAssociationExecution.SetStatus(const Value: string);
begin
  FStatus := Value;
end;

function TAssociationExecution.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.

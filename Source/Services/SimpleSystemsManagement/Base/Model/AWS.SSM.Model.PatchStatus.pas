unit AWS.SSM.Model.PatchStatus;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TPatchStatus = class;
  
  IPatchStatus = interface
    function GetApprovalDate: TDateTime;
    procedure SetApprovalDate(const Value: TDateTime);
    function GetComplianceLevel: TPatchComplianceLevel;
    procedure SetComplianceLevel(const Value: TPatchComplianceLevel);
    function GetDeploymentStatus: TPatchDeploymentStatus;
    procedure SetDeploymentStatus(const Value: TPatchDeploymentStatus);
    function Obj: TPatchStatus;
    function IsSetApprovalDate: Boolean;
    function IsSetComplianceLevel: Boolean;
    function IsSetDeploymentStatus: Boolean;
    property ApprovalDate: TDateTime read GetApprovalDate write SetApprovalDate;
    property ComplianceLevel: TPatchComplianceLevel read GetComplianceLevel write SetComplianceLevel;
    property DeploymentStatus: TPatchDeploymentStatus read GetDeploymentStatus write SetDeploymentStatus;
  end;
  
  TPatchStatus = class
  strict private
    FApprovalDate: Nullable<TDateTime>;
    FComplianceLevel: Nullable<TPatchComplianceLevel>;
    FDeploymentStatus: Nullable<TPatchDeploymentStatus>;
    function GetApprovalDate: TDateTime;
    procedure SetApprovalDate(const Value: TDateTime);
    function GetComplianceLevel: TPatchComplianceLevel;
    procedure SetComplianceLevel(const Value: TPatchComplianceLevel);
    function GetDeploymentStatus: TPatchDeploymentStatus;
    procedure SetDeploymentStatus(const Value: TPatchDeploymentStatus);
  strict protected
    function Obj: TPatchStatus;
  public
    function IsSetApprovalDate: Boolean;
    function IsSetComplianceLevel: Boolean;
    function IsSetDeploymentStatus: Boolean;
    property ApprovalDate: TDateTime read GetApprovalDate write SetApprovalDate;
    property ComplianceLevel: TPatchComplianceLevel read GetComplianceLevel write SetComplianceLevel;
    property DeploymentStatus: TPatchDeploymentStatus read GetDeploymentStatus write SetDeploymentStatus;
  end;
  
implementation

{ TPatchStatus }

function TPatchStatus.Obj: TPatchStatus;
begin
  Result := Self;
end;

function TPatchStatus.GetApprovalDate: TDateTime;
begin
  Result := FApprovalDate.ValueOrDefault;
end;

procedure TPatchStatus.SetApprovalDate(const Value: TDateTime);
begin
  FApprovalDate := Value;
end;

function TPatchStatus.IsSetApprovalDate: Boolean;
begin
  Result := FApprovalDate.HasValue;
end;

function TPatchStatus.GetComplianceLevel: TPatchComplianceLevel;
begin
  Result := FComplianceLevel.ValueOrDefault;
end;

procedure TPatchStatus.SetComplianceLevel(const Value: TPatchComplianceLevel);
begin
  FComplianceLevel := Value;
end;

function TPatchStatus.IsSetComplianceLevel: Boolean;
begin
  Result := FComplianceLevel.HasValue;
end;

function TPatchStatus.GetDeploymentStatus: TPatchDeploymentStatus;
begin
  Result := FDeploymentStatus.ValueOrDefault;
end;

procedure TPatchStatus.SetDeploymentStatus(const Value: TPatchDeploymentStatus);
begin
  FDeploymentStatus := Value;
end;

function TPatchStatus.IsSetDeploymentStatus: Boolean;
begin
  Result := FDeploymentStatus.HasValue;
end;

end.

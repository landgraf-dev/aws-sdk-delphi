unit AWS.SSM.Model.ResourceComplianceSummaryItem;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Model.CompliantSummary, 
  AWS.SSM.Model.ComplianceExecutionSummary, 
  AWS.SSM.Model.NonCompliantSummary, 
  AWS.SSM.Enums;

type
  TResourceComplianceSummaryItem = class;
  
  IResourceComplianceSummaryItem = interface
    function GetComplianceType: string;
    procedure SetComplianceType(const Value: string);
    function GetCompliantSummary: TCompliantSummary;
    procedure SetCompliantSummary(const Value: TCompliantSummary);
    function GetKeepCompliantSummary: Boolean;
    procedure SetKeepCompliantSummary(const Value: Boolean);
    function GetExecutionSummary: TComplianceExecutionSummary;
    procedure SetExecutionSummary(const Value: TComplianceExecutionSummary);
    function GetKeepExecutionSummary: Boolean;
    procedure SetKeepExecutionSummary(const Value: Boolean);
    function GetNonCompliantSummary: TNonCompliantSummary;
    procedure SetNonCompliantSummary(const Value: TNonCompliantSummary);
    function GetKeepNonCompliantSummary: Boolean;
    procedure SetKeepNonCompliantSummary(const Value: Boolean);
    function GetOverallSeverity: TComplianceSeverity;
    procedure SetOverallSeverity(const Value: TComplianceSeverity);
    function GetResourceId: string;
    procedure SetResourceId(const Value: string);
    function GetResourceType: string;
    procedure SetResourceType(const Value: string);
    function GetStatus: TComplianceStatus;
    procedure SetStatus(const Value: TComplianceStatus);
    function Obj: TResourceComplianceSummaryItem;
    function IsSetComplianceType: Boolean;
    function IsSetCompliantSummary: Boolean;
    function IsSetExecutionSummary: Boolean;
    function IsSetNonCompliantSummary: Boolean;
    function IsSetOverallSeverity: Boolean;
    function IsSetResourceId: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetStatus: Boolean;
    property ComplianceType: string read GetComplianceType write SetComplianceType;
    property CompliantSummary: TCompliantSummary read GetCompliantSummary write SetCompliantSummary;
    property KeepCompliantSummary: Boolean read GetKeepCompliantSummary write SetKeepCompliantSummary;
    property ExecutionSummary: TComplianceExecutionSummary read GetExecutionSummary write SetExecutionSummary;
    property KeepExecutionSummary: Boolean read GetKeepExecutionSummary write SetKeepExecutionSummary;
    property NonCompliantSummary: TNonCompliantSummary read GetNonCompliantSummary write SetNonCompliantSummary;
    property KeepNonCompliantSummary: Boolean read GetKeepNonCompliantSummary write SetKeepNonCompliantSummary;
    property OverallSeverity: TComplianceSeverity read GetOverallSeverity write SetOverallSeverity;
    property ResourceId: string read GetResourceId write SetResourceId;
    property ResourceType: string read GetResourceType write SetResourceType;
    property Status: TComplianceStatus read GetStatus write SetStatus;
  end;
  
  TResourceComplianceSummaryItem = class
  strict private
    FComplianceType: Nullable<string>;
    FCompliantSummary: TCompliantSummary;
    FKeepCompliantSummary: Boolean;
    FExecutionSummary: TComplianceExecutionSummary;
    FKeepExecutionSummary: Boolean;
    FNonCompliantSummary: TNonCompliantSummary;
    FKeepNonCompliantSummary: Boolean;
    FOverallSeverity: Nullable<TComplianceSeverity>;
    FResourceId: Nullable<string>;
    FResourceType: Nullable<string>;
    FStatus: Nullable<TComplianceStatus>;
    function GetComplianceType: string;
    procedure SetComplianceType(const Value: string);
    function GetCompliantSummary: TCompliantSummary;
    procedure SetCompliantSummary(const Value: TCompliantSummary);
    function GetKeepCompliantSummary: Boolean;
    procedure SetKeepCompliantSummary(const Value: Boolean);
    function GetExecutionSummary: TComplianceExecutionSummary;
    procedure SetExecutionSummary(const Value: TComplianceExecutionSummary);
    function GetKeepExecutionSummary: Boolean;
    procedure SetKeepExecutionSummary(const Value: Boolean);
    function GetNonCompliantSummary: TNonCompliantSummary;
    procedure SetNonCompliantSummary(const Value: TNonCompliantSummary);
    function GetKeepNonCompliantSummary: Boolean;
    procedure SetKeepNonCompliantSummary(const Value: Boolean);
    function GetOverallSeverity: TComplianceSeverity;
    procedure SetOverallSeverity(const Value: TComplianceSeverity);
    function GetResourceId: string;
    procedure SetResourceId(const Value: string);
    function GetResourceType: string;
    procedure SetResourceType(const Value: string);
    function GetStatus: TComplianceStatus;
    procedure SetStatus(const Value: TComplianceStatus);
  strict protected
    function Obj: TResourceComplianceSummaryItem;
  public
    destructor Destroy; override;
    function IsSetComplianceType: Boolean;
    function IsSetCompliantSummary: Boolean;
    function IsSetExecutionSummary: Boolean;
    function IsSetNonCompliantSummary: Boolean;
    function IsSetOverallSeverity: Boolean;
    function IsSetResourceId: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetStatus: Boolean;
    property ComplianceType: string read GetComplianceType write SetComplianceType;
    property CompliantSummary: TCompliantSummary read GetCompliantSummary write SetCompliantSummary;
    property KeepCompliantSummary: Boolean read GetKeepCompliantSummary write SetKeepCompliantSummary;
    property ExecutionSummary: TComplianceExecutionSummary read GetExecutionSummary write SetExecutionSummary;
    property KeepExecutionSummary: Boolean read GetKeepExecutionSummary write SetKeepExecutionSummary;
    property NonCompliantSummary: TNonCompliantSummary read GetNonCompliantSummary write SetNonCompliantSummary;
    property KeepNonCompliantSummary: Boolean read GetKeepNonCompliantSummary write SetKeepNonCompliantSummary;
    property OverallSeverity: TComplianceSeverity read GetOverallSeverity write SetOverallSeverity;
    property ResourceId: string read GetResourceId write SetResourceId;
    property ResourceType: string read GetResourceType write SetResourceType;
    property Status: TComplianceStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TResourceComplianceSummaryItem }

destructor TResourceComplianceSummaryItem.Destroy;
begin
  NonCompliantSummary := nil;
  ExecutionSummary := nil;
  CompliantSummary := nil;
  inherited;
end;

function TResourceComplianceSummaryItem.Obj: TResourceComplianceSummaryItem;
begin
  Result := Self;
end;

function TResourceComplianceSummaryItem.GetComplianceType: string;
begin
  Result := FComplianceType.ValueOrDefault;
end;

procedure TResourceComplianceSummaryItem.SetComplianceType(const Value: string);
begin
  FComplianceType := Value;
end;

function TResourceComplianceSummaryItem.IsSetComplianceType: Boolean;
begin
  Result := FComplianceType.HasValue;
end;

function TResourceComplianceSummaryItem.GetCompliantSummary: TCompliantSummary;
begin
  Result := FCompliantSummary;
end;

procedure TResourceComplianceSummaryItem.SetCompliantSummary(const Value: TCompliantSummary);
begin
  if FCompliantSummary <> Value then
  begin
    if not KeepCompliantSummary then
      FCompliantSummary.Free;
    FCompliantSummary := Value;
  end;
end;

function TResourceComplianceSummaryItem.GetKeepCompliantSummary: Boolean;
begin
  Result := FKeepCompliantSummary;
end;

procedure TResourceComplianceSummaryItem.SetKeepCompliantSummary(const Value: Boolean);
begin
  FKeepCompliantSummary := Value;
end;

function TResourceComplianceSummaryItem.IsSetCompliantSummary: Boolean;
begin
  Result := FCompliantSummary <> nil;
end;

function TResourceComplianceSummaryItem.GetExecutionSummary: TComplianceExecutionSummary;
begin
  Result := FExecutionSummary;
end;

procedure TResourceComplianceSummaryItem.SetExecutionSummary(const Value: TComplianceExecutionSummary);
begin
  if FExecutionSummary <> Value then
  begin
    if not KeepExecutionSummary then
      FExecutionSummary.Free;
    FExecutionSummary := Value;
  end;
end;

function TResourceComplianceSummaryItem.GetKeepExecutionSummary: Boolean;
begin
  Result := FKeepExecutionSummary;
end;

procedure TResourceComplianceSummaryItem.SetKeepExecutionSummary(const Value: Boolean);
begin
  FKeepExecutionSummary := Value;
end;

function TResourceComplianceSummaryItem.IsSetExecutionSummary: Boolean;
begin
  Result := FExecutionSummary <> nil;
end;

function TResourceComplianceSummaryItem.GetNonCompliantSummary: TNonCompliantSummary;
begin
  Result := FNonCompliantSummary;
end;

procedure TResourceComplianceSummaryItem.SetNonCompliantSummary(const Value: TNonCompliantSummary);
begin
  if FNonCompliantSummary <> Value then
  begin
    if not KeepNonCompliantSummary then
      FNonCompliantSummary.Free;
    FNonCompliantSummary := Value;
  end;
end;

function TResourceComplianceSummaryItem.GetKeepNonCompliantSummary: Boolean;
begin
  Result := FKeepNonCompliantSummary;
end;

procedure TResourceComplianceSummaryItem.SetKeepNonCompliantSummary(const Value: Boolean);
begin
  FKeepNonCompliantSummary := Value;
end;

function TResourceComplianceSummaryItem.IsSetNonCompliantSummary: Boolean;
begin
  Result := FNonCompliantSummary <> nil;
end;

function TResourceComplianceSummaryItem.GetOverallSeverity: TComplianceSeverity;
begin
  Result := FOverallSeverity.ValueOrDefault;
end;

procedure TResourceComplianceSummaryItem.SetOverallSeverity(const Value: TComplianceSeverity);
begin
  FOverallSeverity := Value;
end;

function TResourceComplianceSummaryItem.IsSetOverallSeverity: Boolean;
begin
  Result := FOverallSeverity.HasValue;
end;

function TResourceComplianceSummaryItem.GetResourceId: string;
begin
  Result := FResourceId.ValueOrDefault;
end;

procedure TResourceComplianceSummaryItem.SetResourceId(const Value: string);
begin
  FResourceId := Value;
end;

function TResourceComplianceSummaryItem.IsSetResourceId: Boolean;
begin
  Result := FResourceId.HasValue;
end;

function TResourceComplianceSummaryItem.GetResourceType: string;
begin
  Result := FResourceType.ValueOrDefault;
end;

procedure TResourceComplianceSummaryItem.SetResourceType(const Value: string);
begin
  FResourceType := Value;
end;

function TResourceComplianceSummaryItem.IsSetResourceType: Boolean;
begin
  Result := FResourceType.HasValue;
end;

function TResourceComplianceSummaryItem.GetStatus: TComplianceStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TResourceComplianceSummaryItem.SetStatus(const Value: TComplianceStatus);
begin
  FStatus := Value;
end;

function TResourceComplianceSummaryItem.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.

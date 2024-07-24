unit AWS.SSM.Model.ComplianceItem;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Model.ComplianceExecutionSummary, 
  AWS.SSM.Enums;

type
  TComplianceItem = class;
  
  IComplianceItem = interface
    function GetComplianceType: string;
    procedure SetComplianceType(const Value: string);
    function GetDetails: TDictionary<string, string>;
    procedure SetDetails(const Value: TDictionary<string, string>);
    function GetKeepDetails: Boolean;
    procedure SetKeepDetails(const Value: Boolean);
    function GetExecutionSummary: TComplianceExecutionSummary;
    procedure SetExecutionSummary(const Value: TComplianceExecutionSummary);
    function GetKeepExecutionSummary: Boolean;
    procedure SetKeepExecutionSummary(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetResourceId: string;
    procedure SetResourceId(const Value: string);
    function GetResourceType: string;
    procedure SetResourceType(const Value: string);
    function GetSeverity: TComplianceSeverity;
    procedure SetSeverity(const Value: TComplianceSeverity);
    function GetStatus: TComplianceStatus;
    procedure SetStatus(const Value: TComplianceStatus);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
    function Obj: TComplianceItem;
    function IsSetComplianceType: Boolean;
    function IsSetDetails: Boolean;
    function IsSetExecutionSummary: Boolean;
    function IsSetId: Boolean;
    function IsSetResourceId: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetSeverity: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTitle: Boolean;
    property ComplianceType: string read GetComplianceType write SetComplianceType;
    property Details: TDictionary<string, string> read GetDetails write SetDetails;
    property KeepDetails: Boolean read GetKeepDetails write SetKeepDetails;
    property ExecutionSummary: TComplianceExecutionSummary read GetExecutionSummary write SetExecutionSummary;
    property KeepExecutionSummary: Boolean read GetKeepExecutionSummary write SetKeepExecutionSummary;
    property Id: string read GetId write SetId;
    property ResourceId: string read GetResourceId write SetResourceId;
    property ResourceType: string read GetResourceType write SetResourceType;
    property Severity: TComplianceSeverity read GetSeverity write SetSeverity;
    property Status: TComplianceStatus read GetStatus write SetStatus;
    property Title: string read GetTitle write SetTitle;
  end;
  
  TComplianceItem = class
  strict private
    FComplianceType: Nullable<string>;
    FDetails: TDictionary<string, string>;
    FKeepDetails: Boolean;
    FExecutionSummary: TComplianceExecutionSummary;
    FKeepExecutionSummary: Boolean;
    FId: Nullable<string>;
    FResourceId: Nullable<string>;
    FResourceType: Nullable<string>;
    FSeverity: Nullable<TComplianceSeverity>;
    FStatus: Nullable<TComplianceStatus>;
    FTitle: Nullable<string>;
    function GetComplianceType: string;
    procedure SetComplianceType(const Value: string);
    function GetDetails: TDictionary<string, string>;
    procedure SetDetails(const Value: TDictionary<string, string>);
    function GetKeepDetails: Boolean;
    procedure SetKeepDetails(const Value: Boolean);
    function GetExecutionSummary: TComplianceExecutionSummary;
    procedure SetExecutionSummary(const Value: TComplianceExecutionSummary);
    function GetKeepExecutionSummary: Boolean;
    procedure SetKeepExecutionSummary(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetResourceId: string;
    procedure SetResourceId(const Value: string);
    function GetResourceType: string;
    procedure SetResourceType(const Value: string);
    function GetSeverity: TComplianceSeverity;
    procedure SetSeverity(const Value: TComplianceSeverity);
    function GetStatus: TComplianceStatus;
    procedure SetStatus(const Value: TComplianceStatus);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
  strict protected
    function Obj: TComplianceItem;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetComplianceType: Boolean;
    function IsSetDetails: Boolean;
    function IsSetExecutionSummary: Boolean;
    function IsSetId: Boolean;
    function IsSetResourceId: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetSeverity: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTitle: Boolean;
    property ComplianceType: string read GetComplianceType write SetComplianceType;
    property Details: TDictionary<string, string> read GetDetails write SetDetails;
    property KeepDetails: Boolean read GetKeepDetails write SetKeepDetails;
    property ExecutionSummary: TComplianceExecutionSummary read GetExecutionSummary write SetExecutionSummary;
    property KeepExecutionSummary: Boolean read GetKeepExecutionSummary write SetKeepExecutionSummary;
    property Id: string read GetId write SetId;
    property ResourceId: string read GetResourceId write SetResourceId;
    property ResourceType: string read GetResourceType write SetResourceType;
    property Severity: TComplianceSeverity read GetSeverity write SetSeverity;
    property Status: TComplianceStatus read GetStatus write SetStatus;
    property Title: string read GetTitle write SetTitle;
  end;
  
implementation

{ TComplianceItem }

constructor TComplianceItem.Create;
begin
  inherited;
  FDetails := TDictionary<string, string>.Create;
end;

destructor TComplianceItem.Destroy;
begin
  ExecutionSummary := nil;
  Details := nil;
  inherited;
end;

function TComplianceItem.Obj: TComplianceItem;
begin
  Result := Self;
end;

function TComplianceItem.GetComplianceType: string;
begin
  Result := FComplianceType.ValueOrDefault;
end;

procedure TComplianceItem.SetComplianceType(const Value: string);
begin
  FComplianceType := Value;
end;

function TComplianceItem.IsSetComplianceType: Boolean;
begin
  Result := FComplianceType.HasValue;
end;

function TComplianceItem.GetDetails: TDictionary<string, string>;
begin
  Result := FDetails;
end;

procedure TComplianceItem.SetDetails(const Value: TDictionary<string, string>);
begin
  if FDetails <> Value then
  begin
    if not KeepDetails then
      FDetails.Free;
    FDetails := Value;
  end;
end;

function TComplianceItem.GetKeepDetails: Boolean;
begin
  Result := FKeepDetails;
end;

procedure TComplianceItem.SetKeepDetails(const Value: Boolean);
begin
  FKeepDetails := Value;
end;

function TComplianceItem.IsSetDetails: Boolean;
begin
  Result := (FDetails <> nil) and (FDetails.Count > 0);
end;

function TComplianceItem.GetExecutionSummary: TComplianceExecutionSummary;
begin
  Result := FExecutionSummary;
end;

procedure TComplianceItem.SetExecutionSummary(const Value: TComplianceExecutionSummary);
begin
  if FExecutionSummary <> Value then
  begin
    if not KeepExecutionSummary then
      FExecutionSummary.Free;
    FExecutionSummary := Value;
  end;
end;

function TComplianceItem.GetKeepExecutionSummary: Boolean;
begin
  Result := FKeepExecutionSummary;
end;

procedure TComplianceItem.SetKeepExecutionSummary(const Value: Boolean);
begin
  FKeepExecutionSummary := Value;
end;

function TComplianceItem.IsSetExecutionSummary: Boolean;
begin
  Result := FExecutionSummary <> nil;
end;

function TComplianceItem.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TComplianceItem.SetId(const Value: string);
begin
  FId := Value;
end;

function TComplianceItem.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TComplianceItem.GetResourceId: string;
begin
  Result := FResourceId.ValueOrDefault;
end;

procedure TComplianceItem.SetResourceId(const Value: string);
begin
  FResourceId := Value;
end;

function TComplianceItem.IsSetResourceId: Boolean;
begin
  Result := FResourceId.HasValue;
end;

function TComplianceItem.GetResourceType: string;
begin
  Result := FResourceType.ValueOrDefault;
end;

procedure TComplianceItem.SetResourceType(const Value: string);
begin
  FResourceType := Value;
end;

function TComplianceItem.IsSetResourceType: Boolean;
begin
  Result := FResourceType.HasValue;
end;

function TComplianceItem.GetSeverity: TComplianceSeverity;
begin
  Result := FSeverity.ValueOrDefault;
end;

procedure TComplianceItem.SetSeverity(const Value: TComplianceSeverity);
begin
  FSeverity := Value;
end;

function TComplianceItem.IsSetSeverity: Boolean;
begin
  Result := FSeverity.HasValue;
end;

function TComplianceItem.GetStatus: TComplianceStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TComplianceItem.SetStatus(const Value: TComplianceStatus);
begin
  FStatus := Value;
end;

function TComplianceItem.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TComplianceItem.GetTitle: string;
begin
  Result := FTitle.ValueOrDefault;
end;

procedure TComplianceItem.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

function TComplianceItem.IsSetTitle: Boolean;
begin
  Result := FTitle.HasValue;
end;

end.

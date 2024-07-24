unit AWS.SSM.Model.ComplianceSummaryItem;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Model.CompliantSummary, 
  AWS.SSM.Model.NonCompliantSummary;

type
  TComplianceSummaryItem = class;
  
  IComplianceSummaryItem = interface
    function GetComplianceType: string;
    procedure SetComplianceType(const Value: string);
    function GetCompliantSummary: TCompliantSummary;
    procedure SetCompliantSummary(const Value: TCompliantSummary);
    function GetKeepCompliantSummary: Boolean;
    procedure SetKeepCompliantSummary(const Value: Boolean);
    function GetNonCompliantSummary: TNonCompliantSummary;
    procedure SetNonCompliantSummary(const Value: TNonCompliantSummary);
    function GetKeepNonCompliantSummary: Boolean;
    procedure SetKeepNonCompliantSummary(const Value: Boolean);
    function Obj: TComplianceSummaryItem;
    function IsSetComplianceType: Boolean;
    function IsSetCompliantSummary: Boolean;
    function IsSetNonCompliantSummary: Boolean;
    property ComplianceType: string read GetComplianceType write SetComplianceType;
    property CompliantSummary: TCompliantSummary read GetCompliantSummary write SetCompliantSummary;
    property KeepCompliantSummary: Boolean read GetKeepCompliantSummary write SetKeepCompliantSummary;
    property NonCompliantSummary: TNonCompliantSummary read GetNonCompliantSummary write SetNonCompliantSummary;
    property KeepNonCompliantSummary: Boolean read GetKeepNonCompliantSummary write SetKeepNonCompliantSummary;
  end;
  
  TComplianceSummaryItem = class
  strict private
    FComplianceType: Nullable<string>;
    FCompliantSummary: TCompliantSummary;
    FKeepCompliantSummary: Boolean;
    FNonCompliantSummary: TNonCompliantSummary;
    FKeepNonCompliantSummary: Boolean;
    function GetComplianceType: string;
    procedure SetComplianceType(const Value: string);
    function GetCompliantSummary: TCompliantSummary;
    procedure SetCompliantSummary(const Value: TCompliantSummary);
    function GetKeepCompliantSummary: Boolean;
    procedure SetKeepCompliantSummary(const Value: Boolean);
    function GetNonCompliantSummary: TNonCompliantSummary;
    procedure SetNonCompliantSummary(const Value: TNonCompliantSummary);
    function GetKeepNonCompliantSummary: Boolean;
    procedure SetKeepNonCompliantSummary(const Value: Boolean);
  strict protected
    function Obj: TComplianceSummaryItem;
  public
    destructor Destroy; override;
    function IsSetComplianceType: Boolean;
    function IsSetCompliantSummary: Boolean;
    function IsSetNonCompliantSummary: Boolean;
    property ComplianceType: string read GetComplianceType write SetComplianceType;
    property CompliantSummary: TCompliantSummary read GetCompliantSummary write SetCompliantSummary;
    property KeepCompliantSummary: Boolean read GetKeepCompliantSummary write SetKeepCompliantSummary;
    property NonCompliantSummary: TNonCompliantSummary read GetNonCompliantSummary write SetNonCompliantSummary;
    property KeepNonCompliantSummary: Boolean read GetKeepNonCompliantSummary write SetKeepNonCompliantSummary;
  end;
  
implementation

{ TComplianceSummaryItem }

destructor TComplianceSummaryItem.Destroy;
begin
  NonCompliantSummary := nil;
  CompliantSummary := nil;
  inherited;
end;

function TComplianceSummaryItem.Obj: TComplianceSummaryItem;
begin
  Result := Self;
end;

function TComplianceSummaryItem.GetComplianceType: string;
begin
  Result := FComplianceType.ValueOrDefault;
end;

procedure TComplianceSummaryItem.SetComplianceType(const Value: string);
begin
  FComplianceType := Value;
end;

function TComplianceSummaryItem.IsSetComplianceType: Boolean;
begin
  Result := FComplianceType.HasValue;
end;

function TComplianceSummaryItem.GetCompliantSummary: TCompliantSummary;
begin
  Result := FCompliantSummary;
end;

procedure TComplianceSummaryItem.SetCompliantSummary(const Value: TCompliantSummary);
begin
  if FCompliantSummary <> Value then
  begin
    if not KeepCompliantSummary then
      FCompliantSummary.Free;
    FCompliantSummary := Value;
  end;
end;

function TComplianceSummaryItem.GetKeepCompliantSummary: Boolean;
begin
  Result := FKeepCompliantSummary;
end;

procedure TComplianceSummaryItem.SetKeepCompliantSummary(const Value: Boolean);
begin
  FKeepCompliantSummary := Value;
end;

function TComplianceSummaryItem.IsSetCompliantSummary: Boolean;
begin
  Result := FCompliantSummary <> nil;
end;

function TComplianceSummaryItem.GetNonCompliantSummary: TNonCompliantSummary;
begin
  Result := FNonCompliantSummary;
end;

procedure TComplianceSummaryItem.SetNonCompliantSummary(const Value: TNonCompliantSummary);
begin
  if FNonCompliantSummary <> Value then
  begin
    if not KeepNonCompliantSummary then
      FNonCompliantSummary.Free;
    FNonCompliantSummary := Value;
  end;
end;

function TComplianceSummaryItem.GetKeepNonCompliantSummary: Boolean;
begin
  Result := FKeepNonCompliantSummary;
end;

procedure TComplianceSummaryItem.SetKeepNonCompliantSummary(const Value: Boolean);
begin
  FKeepNonCompliantSummary := Value;
end;

function TComplianceSummaryItem.IsSetNonCompliantSummary: Boolean;
begin
  Result := FNonCompliantSummary <> nil;
end;

end.

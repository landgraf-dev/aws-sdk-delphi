unit AWS.SSM.Model.ComplianceExecutionSummary;

interface

uses
  AWS.Nullable;

type
  TComplianceExecutionSummary = class;
  
  IComplianceExecutionSummary = interface
    function GetExecutionId: string;
    procedure SetExecutionId(const Value: string);
    function GetExecutionTime: TDateTime;
    procedure SetExecutionTime(const Value: TDateTime);
    function GetExecutionType: string;
    procedure SetExecutionType(const Value: string);
    function Obj: TComplianceExecutionSummary;
    function IsSetExecutionId: Boolean;
    function IsSetExecutionTime: Boolean;
    function IsSetExecutionType: Boolean;
    property ExecutionId: string read GetExecutionId write SetExecutionId;
    property ExecutionTime: TDateTime read GetExecutionTime write SetExecutionTime;
    property ExecutionType: string read GetExecutionType write SetExecutionType;
  end;
  
  TComplianceExecutionSummary = class
  strict private
    FExecutionId: Nullable<string>;
    FExecutionTime: Nullable<TDateTime>;
    FExecutionType: Nullable<string>;
    function GetExecutionId: string;
    procedure SetExecutionId(const Value: string);
    function GetExecutionTime: TDateTime;
    procedure SetExecutionTime(const Value: TDateTime);
    function GetExecutionType: string;
    procedure SetExecutionType(const Value: string);
  strict protected
    function Obj: TComplianceExecutionSummary;
  public
    function IsSetExecutionId: Boolean;
    function IsSetExecutionTime: Boolean;
    function IsSetExecutionType: Boolean;
    property ExecutionId: string read GetExecutionId write SetExecutionId;
    property ExecutionTime: TDateTime read GetExecutionTime write SetExecutionTime;
    property ExecutionType: string read GetExecutionType write SetExecutionType;
  end;
  
implementation

{ TComplianceExecutionSummary }

function TComplianceExecutionSummary.Obj: TComplianceExecutionSummary;
begin
  Result := Self;
end;

function TComplianceExecutionSummary.GetExecutionId: string;
begin
  Result := FExecutionId.ValueOrDefault;
end;

procedure TComplianceExecutionSummary.SetExecutionId(const Value: string);
begin
  FExecutionId := Value;
end;

function TComplianceExecutionSummary.IsSetExecutionId: Boolean;
begin
  Result := FExecutionId.HasValue;
end;

function TComplianceExecutionSummary.GetExecutionTime: TDateTime;
begin
  Result := FExecutionTime.ValueOrDefault;
end;

procedure TComplianceExecutionSummary.SetExecutionTime(const Value: TDateTime);
begin
  FExecutionTime := Value;
end;

function TComplianceExecutionSummary.IsSetExecutionTime: Boolean;
begin
  Result := FExecutionTime.HasValue;
end;

function TComplianceExecutionSummary.GetExecutionType: string;
begin
  Result := FExecutionType.ValueOrDefault;
end;

procedure TComplianceExecutionSummary.SetExecutionType(const Value: string);
begin
  FExecutionType := Value;
end;

function TComplianceExecutionSummary.IsSetExecutionType: Boolean;
begin
  Result := FExecutionType.HasValue;
end;

end.

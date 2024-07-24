unit AWS.SSM.Model.OpsItemSummary;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Model.OpsItemDataValue, 
  AWS.SSM.Enums;

type
  TOpsItemSummary = class;
  
  IOpsItemSummary = interface
    function GetActualEndTime: TDateTime;
    procedure SetActualEndTime(const Value: TDateTime);
    function GetActualStartTime: TDateTime;
    procedure SetActualStartTime(const Value: TDateTime);
    function GetCategory: string;
    procedure SetCategory(const Value: string);
    function GetCreatedBy: string;
    procedure SetCreatedBy(const Value: string);
    function GetCreatedTime: TDateTime;
    procedure SetCreatedTime(const Value: TDateTime);
    function GetLastModifiedBy: string;
    procedure SetLastModifiedBy(const Value: string);
    function GetLastModifiedTime: TDateTime;
    procedure SetLastModifiedTime(const Value: TDateTime);
    function GetOperationalData: TObjectDictionary<string, TOpsItemDataValue>;
    procedure SetOperationalData(const Value: TObjectDictionary<string, TOpsItemDataValue>);
    function GetKeepOperationalData: Boolean;
    procedure SetKeepOperationalData(const Value: Boolean);
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
    function GetOpsItemType: string;
    procedure SetOpsItemType(const Value: string);
    function GetPlannedEndTime: TDateTime;
    procedure SetPlannedEndTime(const Value: TDateTime);
    function GetPlannedStartTime: TDateTime;
    procedure SetPlannedStartTime(const Value: TDateTime);
    function GetPriority: Integer;
    procedure SetPriority(const Value: Integer);
    function GetSeverity: string;
    procedure SetSeverity(const Value: string);
    function GetSource: string;
    procedure SetSource(const Value: string);
    function GetStatus: TOpsItemStatus;
    procedure SetStatus(const Value: TOpsItemStatus);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
    function Obj: TOpsItemSummary;
    function IsSetActualEndTime: Boolean;
    function IsSetActualStartTime: Boolean;
    function IsSetCategory: Boolean;
    function IsSetCreatedBy: Boolean;
    function IsSetCreatedTime: Boolean;
    function IsSetLastModifiedBy: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetOperationalData: Boolean;
    function IsSetOpsItemId: Boolean;
    function IsSetOpsItemType: Boolean;
    function IsSetPlannedEndTime: Boolean;
    function IsSetPlannedStartTime: Boolean;
    function IsSetPriority: Boolean;
    function IsSetSeverity: Boolean;
    function IsSetSource: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTitle: Boolean;
    property ActualEndTime: TDateTime read GetActualEndTime write SetActualEndTime;
    property ActualStartTime: TDateTime read GetActualStartTime write SetActualStartTime;
    property Category: string read GetCategory write SetCategory;
    property CreatedBy: string read GetCreatedBy write SetCreatedBy;
    property CreatedTime: TDateTime read GetCreatedTime write SetCreatedTime;
    property LastModifiedBy: string read GetLastModifiedBy write SetLastModifiedBy;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property OperationalData: TObjectDictionary<string, TOpsItemDataValue> read GetOperationalData write SetOperationalData;
    property KeepOperationalData: Boolean read GetKeepOperationalData write SetKeepOperationalData;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
    property OpsItemType: string read GetOpsItemType write SetOpsItemType;
    property PlannedEndTime: TDateTime read GetPlannedEndTime write SetPlannedEndTime;
    property PlannedStartTime: TDateTime read GetPlannedStartTime write SetPlannedStartTime;
    property Priority: Integer read GetPriority write SetPriority;
    property Severity: string read GetSeverity write SetSeverity;
    property Source: string read GetSource write SetSource;
    property Status: TOpsItemStatus read GetStatus write SetStatus;
    property Title: string read GetTitle write SetTitle;
  end;
  
  TOpsItemSummary = class
  strict private
    FActualEndTime: Nullable<TDateTime>;
    FActualStartTime: Nullable<TDateTime>;
    FCategory: Nullable<string>;
    FCreatedBy: Nullable<string>;
    FCreatedTime: Nullable<TDateTime>;
    FLastModifiedBy: Nullable<string>;
    FLastModifiedTime: Nullable<TDateTime>;
    FOperationalData: TObjectDictionary<string, TOpsItemDataValue>;
    FKeepOperationalData: Boolean;
    FOpsItemId: Nullable<string>;
    FOpsItemType: Nullable<string>;
    FPlannedEndTime: Nullable<TDateTime>;
    FPlannedStartTime: Nullable<TDateTime>;
    FPriority: Nullable<Integer>;
    FSeverity: Nullable<string>;
    FSource: Nullable<string>;
    FStatus: Nullable<TOpsItemStatus>;
    FTitle: Nullable<string>;
    function GetActualEndTime: TDateTime;
    procedure SetActualEndTime(const Value: TDateTime);
    function GetActualStartTime: TDateTime;
    procedure SetActualStartTime(const Value: TDateTime);
    function GetCategory: string;
    procedure SetCategory(const Value: string);
    function GetCreatedBy: string;
    procedure SetCreatedBy(const Value: string);
    function GetCreatedTime: TDateTime;
    procedure SetCreatedTime(const Value: TDateTime);
    function GetLastModifiedBy: string;
    procedure SetLastModifiedBy(const Value: string);
    function GetLastModifiedTime: TDateTime;
    procedure SetLastModifiedTime(const Value: TDateTime);
    function GetOperationalData: TObjectDictionary<string, TOpsItemDataValue>;
    procedure SetOperationalData(const Value: TObjectDictionary<string, TOpsItemDataValue>);
    function GetKeepOperationalData: Boolean;
    procedure SetKeepOperationalData(const Value: Boolean);
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
    function GetOpsItemType: string;
    procedure SetOpsItemType(const Value: string);
    function GetPlannedEndTime: TDateTime;
    procedure SetPlannedEndTime(const Value: TDateTime);
    function GetPlannedStartTime: TDateTime;
    procedure SetPlannedStartTime(const Value: TDateTime);
    function GetPriority: Integer;
    procedure SetPriority(const Value: Integer);
    function GetSeverity: string;
    procedure SetSeverity(const Value: string);
    function GetSource: string;
    procedure SetSource(const Value: string);
    function GetStatus: TOpsItemStatus;
    procedure SetStatus(const Value: TOpsItemStatus);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
  strict protected
    function Obj: TOpsItemSummary;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetActualEndTime: Boolean;
    function IsSetActualStartTime: Boolean;
    function IsSetCategory: Boolean;
    function IsSetCreatedBy: Boolean;
    function IsSetCreatedTime: Boolean;
    function IsSetLastModifiedBy: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetOperationalData: Boolean;
    function IsSetOpsItemId: Boolean;
    function IsSetOpsItemType: Boolean;
    function IsSetPlannedEndTime: Boolean;
    function IsSetPlannedStartTime: Boolean;
    function IsSetPriority: Boolean;
    function IsSetSeverity: Boolean;
    function IsSetSource: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTitle: Boolean;
    property ActualEndTime: TDateTime read GetActualEndTime write SetActualEndTime;
    property ActualStartTime: TDateTime read GetActualStartTime write SetActualStartTime;
    property Category: string read GetCategory write SetCategory;
    property CreatedBy: string read GetCreatedBy write SetCreatedBy;
    property CreatedTime: TDateTime read GetCreatedTime write SetCreatedTime;
    property LastModifiedBy: string read GetLastModifiedBy write SetLastModifiedBy;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property OperationalData: TObjectDictionary<string, TOpsItemDataValue> read GetOperationalData write SetOperationalData;
    property KeepOperationalData: Boolean read GetKeepOperationalData write SetKeepOperationalData;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
    property OpsItemType: string read GetOpsItemType write SetOpsItemType;
    property PlannedEndTime: TDateTime read GetPlannedEndTime write SetPlannedEndTime;
    property PlannedStartTime: TDateTime read GetPlannedStartTime write SetPlannedStartTime;
    property Priority: Integer read GetPriority write SetPriority;
    property Severity: string read GetSeverity write SetSeverity;
    property Source: string read GetSource write SetSource;
    property Status: TOpsItemStatus read GetStatus write SetStatus;
    property Title: string read GetTitle write SetTitle;
  end;
  
implementation

{ TOpsItemSummary }

constructor TOpsItemSummary.Create;
begin
  inherited;
  FOperationalData := TObjectDictionary<string, TOpsItemDataValue>.Create([doOwnsValues]);
end;

destructor TOpsItemSummary.Destroy;
begin
  OperationalData := nil;
  inherited;
end;

function TOpsItemSummary.Obj: TOpsItemSummary;
begin
  Result := Self;
end;

function TOpsItemSummary.GetActualEndTime: TDateTime;
begin
  Result := FActualEndTime.ValueOrDefault;
end;

procedure TOpsItemSummary.SetActualEndTime(const Value: TDateTime);
begin
  FActualEndTime := Value;
end;

function TOpsItemSummary.IsSetActualEndTime: Boolean;
begin
  Result := FActualEndTime.HasValue;
end;

function TOpsItemSummary.GetActualStartTime: TDateTime;
begin
  Result := FActualStartTime.ValueOrDefault;
end;

procedure TOpsItemSummary.SetActualStartTime(const Value: TDateTime);
begin
  FActualStartTime := Value;
end;

function TOpsItemSummary.IsSetActualStartTime: Boolean;
begin
  Result := FActualStartTime.HasValue;
end;

function TOpsItemSummary.GetCategory: string;
begin
  Result := FCategory.ValueOrDefault;
end;

procedure TOpsItemSummary.SetCategory(const Value: string);
begin
  FCategory := Value;
end;

function TOpsItemSummary.IsSetCategory: Boolean;
begin
  Result := FCategory.HasValue;
end;

function TOpsItemSummary.GetCreatedBy: string;
begin
  Result := FCreatedBy.ValueOrDefault;
end;

procedure TOpsItemSummary.SetCreatedBy(const Value: string);
begin
  FCreatedBy := Value;
end;

function TOpsItemSummary.IsSetCreatedBy: Boolean;
begin
  Result := FCreatedBy.HasValue;
end;

function TOpsItemSummary.GetCreatedTime: TDateTime;
begin
  Result := FCreatedTime.ValueOrDefault;
end;

procedure TOpsItemSummary.SetCreatedTime(const Value: TDateTime);
begin
  FCreatedTime := Value;
end;

function TOpsItemSummary.IsSetCreatedTime: Boolean;
begin
  Result := FCreatedTime.HasValue;
end;

function TOpsItemSummary.GetLastModifiedBy: string;
begin
  Result := FLastModifiedBy.ValueOrDefault;
end;

procedure TOpsItemSummary.SetLastModifiedBy(const Value: string);
begin
  FLastModifiedBy := Value;
end;

function TOpsItemSummary.IsSetLastModifiedBy: Boolean;
begin
  Result := FLastModifiedBy.HasValue;
end;

function TOpsItemSummary.GetLastModifiedTime: TDateTime;
begin
  Result := FLastModifiedTime.ValueOrDefault;
end;

procedure TOpsItemSummary.SetLastModifiedTime(const Value: TDateTime);
begin
  FLastModifiedTime := Value;
end;

function TOpsItemSummary.IsSetLastModifiedTime: Boolean;
begin
  Result := FLastModifiedTime.HasValue;
end;

function TOpsItemSummary.GetOperationalData: TObjectDictionary<string, TOpsItemDataValue>;
begin
  Result := FOperationalData;
end;

procedure TOpsItemSummary.SetOperationalData(const Value: TObjectDictionary<string, TOpsItemDataValue>);
begin
  if FOperationalData <> Value then
  begin
    if not KeepOperationalData then
      FOperationalData.Free;
    FOperationalData := Value;
  end;
end;

function TOpsItemSummary.GetKeepOperationalData: Boolean;
begin
  Result := FKeepOperationalData;
end;

procedure TOpsItemSummary.SetKeepOperationalData(const Value: Boolean);
begin
  FKeepOperationalData := Value;
end;

function TOpsItemSummary.IsSetOperationalData: Boolean;
begin
  Result := (FOperationalData <> nil) and (FOperationalData.Count > 0);
end;

function TOpsItemSummary.GetOpsItemId: string;
begin
  Result := FOpsItemId.ValueOrDefault;
end;

procedure TOpsItemSummary.SetOpsItemId(const Value: string);
begin
  FOpsItemId := Value;
end;

function TOpsItemSummary.IsSetOpsItemId: Boolean;
begin
  Result := FOpsItemId.HasValue;
end;

function TOpsItemSummary.GetOpsItemType: string;
begin
  Result := FOpsItemType.ValueOrDefault;
end;

procedure TOpsItemSummary.SetOpsItemType(const Value: string);
begin
  FOpsItemType := Value;
end;

function TOpsItemSummary.IsSetOpsItemType: Boolean;
begin
  Result := FOpsItemType.HasValue;
end;

function TOpsItemSummary.GetPlannedEndTime: TDateTime;
begin
  Result := FPlannedEndTime.ValueOrDefault;
end;

procedure TOpsItemSummary.SetPlannedEndTime(const Value: TDateTime);
begin
  FPlannedEndTime := Value;
end;

function TOpsItemSummary.IsSetPlannedEndTime: Boolean;
begin
  Result := FPlannedEndTime.HasValue;
end;

function TOpsItemSummary.GetPlannedStartTime: TDateTime;
begin
  Result := FPlannedStartTime.ValueOrDefault;
end;

procedure TOpsItemSummary.SetPlannedStartTime(const Value: TDateTime);
begin
  FPlannedStartTime := Value;
end;

function TOpsItemSummary.IsSetPlannedStartTime: Boolean;
begin
  Result := FPlannedStartTime.HasValue;
end;

function TOpsItemSummary.GetPriority: Integer;
begin
  Result := FPriority.ValueOrDefault;
end;

procedure TOpsItemSummary.SetPriority(const Value: Integer);
begin
  FPriority := Value;
end;

function TOpsItemSummary.IsSetPriority: Boolean;
begin
  Result := FPriority.HasValue;
end;

function TOpsItemSummary.GetSeverity: string;
begin
  Result := FSeverity.ValueOrDefault;
end;

procedure TOpsItemSummary.SetSeverity(const Value: string);
begin
  FSeverity := Value;
end;

function TOpsItemSummary.IsSetSeverity: Boolean;
begin
  Result := FSeverity.HasValue;
end;

function TOpsItemSummary.GetSource: string;
begin
  Result := FSource.ValueOrDefault;
end;

procedure TOpsItemSummary.SetSource(const Value: string);
begin
  FSource := Value;
end;

function TOpsItemSummary.IsSetSource: Boolean;
begin
  Result := FSource.HasValue;
end;

function TOpsItemSummary.GetStatus: TOpsItemStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TOpsItemSummary.SetStatus(const Value: TOpsItemStatus);
begin
  FStatus := Value;
end;

function TOpsItemSummary.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TOpsItemSummary.GetTitle: string;
begin
  Result := FTitle.ValueOrDefault;
end;

procedure TOpsItemSummary.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

function TOpsItemSummary.IsSetTitle: Boolean;
begin
  Result := FTitle.HasValue;
end;

end.

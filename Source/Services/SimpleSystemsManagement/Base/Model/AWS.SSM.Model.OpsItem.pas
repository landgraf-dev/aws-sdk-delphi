unit AWS.SSM.Model.OpsItem;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Model.OpsItemNotification, 
  AWS.SSM.Model.OpsItemDataValue, 
  AWS.SSM.Model.RelatedOpsItem, 
  AWS.SSM.Enums;

type
  TOpsItem = class;
  
  IOpsItem = interface
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
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetLastModifiedBy: string;
    procedure SetLastModifiedBy(const Value: string);
    function GetLastModifiedTime: TDateTime;
    procedure SetLastModifiedTime(const Value: TDateTime);
    function GetNotifications: TObjectList<TOpsItemNotification>;
    procedure SetNotifications(const Value: TObjectList<TOpsItemNotification>);
    function GetKeepNotifications: Boolean;
    procedure SetKeepNotifications(const Value: Boolean);
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
    function GetRelatedOpsItems: TObjectList<TRelatedOpsItem>;
    procedure SetRelatedOpsItems(const Value: TObjectList<TRelatedOpsItem>);
    function GetKeepRelatedOpsItems: Boolean;
    procedure SetKeepRelatedOpsItems(const Value: Boolean);
    function GetSeverity: string;
    procedure SetSeverity(const Value: string);
    function GetSource: string;
    procedure SetSource(const Value: string);
    function GetStatus: TOpsItemStatus;
    procedure SetStatus(const Value: TOpsItemStatus);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
    function GetVersion: string;
    procedure SetVersion(const Value: string);
    function Obj: TOpsItem;
    function IsSetActualEndTime: Boolean;
    function IsSetActualStartTime: Boolean;
    function IsSetCategory: Boolean;
    function IsSetCreatedBy: Boolean;
    function IsSetCreatedTime: Boolean;
    function IsSetDescription: Boolean;
    function IsSetLastModifiedBy: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetNotifications: Boolean;
    function IsSetOperationalData: Boolean;
    function IsSetOpsItemId: Boolean;
    function IsSetOpsItemType: Boolean;
    function IsSetPlannedEndTime: Boolean;
    function IsSetPlannedStartTime: Boolean;
    function IsSetPriority: Boolean;
    function IsSetRelatedOpsItems: Boolean;
    function IsSetSeverity: Boolean;
    function IsSetSource: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTitle: Boolean;
    function IsSetVersion: Boolean;
    property ActualEndTime: TDateTime read GetActualEndTime write SetActualEndTime;
    property ActualStartTime: TDateTime read GetActualStartTime write SetActualStartTime;
    property Category: string read GetCategory write SetCategory;
    property CreatedBy: string read GetCreatedBy write SetCreatedBy;
    property CreatedTime: TDateTime read GetCreatedTime write SetCreatedTime;
    property Description: string read GetDescription write SetDescription;
    property LastModifiedBy: string read GetLastModifiedBy write SetLastModifiedBy;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property Notifications: TObjectList<TOpsItemNotification> read GetNotifications write SetNotifications;
    property KeepNotifications: Boolean read GetKeepNotifications write SetKeepNotifications;
    property OperationalData: TObjectDictionary<string, TOpsItemDataValue> read GetOperationalData write SetOperationalData;
    property KeepOperationalData: Boolean read GetKeepOperationalData write SetKeepOperationalData;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
    property OpsItemType: string read GetOpsItemType write SetOpsItemType;
    property PlannedEndTime: TDateTime read GetPlannedEndTime write SetPlannedEndTime;
    property PlannedStartTime: TDateTime read GetPlannedStartTime write SetPlannedStartTime;
    property Priority: Integer read GetPriority write SetPriority;
    property RelatedOpsItems: TObjectList<TRelatedOpsItem> read GetRelatedOpsItems write SetRelatedOpsItems;
    property KeepRelatedOpsItems: Boolean read GetKeepRelatedOpsItems write SetKeepRelatedOpsItems;
    property Severity: string read GetSeverity write SetSeverity;
    property Source: string read GetSource write SetSource;
    property Status: TOpsItemStatus read GetStatus write SetStatus;
    property Title: string read GetTitle write SetTitle;
    property Version: string read GetVersion write SetVersion;
  end;
  
  TOpsItem = class
  strict private
    FActualEndTime: Nullable<TDateTime>;
    FActualStartTime: Nullable<TDateTime>;
    FCategory: Nullable<string>;
    FCreatedBy: Nullable<string>;
    FCreatedTime: Nullable<TDateTime>;
    FDescription: Nullable<string>;
    FLastModifiedBy: Nullable<string>;
    FLastModifiedTime: Nullable<TDateTime>;
    FNotifications: TObjectList<TOpsItemNotification>;
    FKeepNotifications: Boolean;
    FOperationalData: TObjectDictionary<string, TOpsItemDataValue>;
    FKeepOperationalData: Boolean;
    FOpsItemId: Nullable<string>;
    FOpsItemType: Nullable<string>;
    FPlannedEndTime: Nullable<TDateTime>;
    FPlannedStartTime: Nullable<TDateTime>;
    FPriority: Nullable<Integer>;
    FRelatedOpsItems: TObjectList<TRelatedOpsItem>;
    FKeepRelatedOpsItems: Boolean;
    FSeverity: Nullable<string>;
    FSource: Nullable<string>;
    FStatus: Nullable<TOpsItemStatus>;
    FTitle: Nullable<string>;
    FVersion: Nullable<string>;
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
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetLastModifiedBy: string;
    procedure SetLastModifiedBy(const Value: string);
    function GetLastModifiedTime: TDateTime;
    procedure SetLastModifiedTime(const Value: TDateTime);
    function GetNotifications: TObjectList<TOpsItemNotification>;
    procedure SetNotifications(const Value: TObjectList<TOpsItemNotification>);
    function GetKeepNotifications: Boolean;
    procedure SetKeepNotifications(const Value: Boolean);
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
    function GetRelatedOpsItems: TObjectList<TRelatedOpsItem>;
    procedure SetRelatedOpsItems(const Value: TObjectList<TRelatedOpsItem>);
    function GetKeepRelatedOpsItems: Boolean;
    procedure SetKeepRelatedOpsItems(const Value: Boolean);
    function GetSeverity: string;
    procedure SetSeverity(const Value: string);
    function GetSource: string;
    procedure SetSource(const Value: string);
    function GetStatus: TOpsItemStatus;
    procedure SetStatus(const Value: TOpsItemStatus);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
    function GetVersion: string;
    procedure SetVersion(const Value: string);
  strict protected
    function Obj: TOpsItem;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetActualEndTime: Boolean;
    function IsSetActualStartTime: Boolean;
    function IsSetCategory: Boolean;
    function IsSetCreatedBy: Boolean;
    function IsSetCreatedTime: Boolean;
    function IsSetDescription: Boolean;
    function IsSetLastModifiedBy: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetNotifications: Boolean;
    function IsSetOperationalData: Boolean;
    function IsSetOpsItemId: Boolean;
    function IsSetOpsItemType: Boolean;
    function IsSetPlannedEndTime: Boolean;
    function IsSetPlannedStartTime: Boolean;
    function IsSetPriority: Boolean;
    function IsSetRelatedOpsItems: Boolean;
    function IsSetSeverity: Boolean;
    function IsSetSource: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTitle: Boolean;
    function IsSetVersion: Boolean;
    property ActualEndTime: TDateTime read GetActualEndTime write SetActualEndTime;
    property ActualStartTime: TDateTime read GetActualStartTime write SetActualStartTime;
    property Category: string read GetCategory write SetCategory;
    property CreatedBy: string read GetCreatedBy write SetCreatedBy;
    property CreatedTime: TDateTime read GetCreatedTime write SetCreatedTime;
    property Description: string read GetDescription write SetDescription;
    property LastModifiedBy: string read GetLastModifiedBy write SetLastModifiedBy;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property Notifications: TObjectList<TOpsItemNotification> read GetNotifications write SetNotifications;
    property KeepNotifications: Boolean read GetKeepNotifications write SetKeepNotifications;
    property OperationalData: TObjectDictionary<string, TOpsItemDataValue> read GetOperationalData write SetOperationalData;
    property KeepOperationalData: Boolean read GetKeepOperationalData write SetKeepOperationalData;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
    property OpsItemType: string read GetOpsItemType write SetOpsItemType;
    property PlannedEndTime: TDateTime read GetPlannedEndTime write SetPlannedEndTime;
    property PlannedStartTime: TDateTime read GetPlannedStartTime write SetPlannedStartTime;
    property Priority: Integer read GetPriority write SetPriority;
    property RelatedOpsItems: TObjectList<TRelatedOpsItem> read GetRelatedOpsItems write SetRelatedOpsItems;
    property KeepRelatedOpsItems: Boolean read GetKeepRelatedOpsItems write SetKeepRelatedOpsItems;
    property Severity: string read GetSeverity write SetSeverity;
    property Source: string read GetSource write SetSource;
    property Status: TOpsItemStatus read GetStatus write SetStatus;
    property Title: string read GetTitle write SetTitle;
    property Version: string read GetVersion write SetVersion;
  end;
  
implementation

{ TOpsItem }

constructor TOpsItem.Create;
begin
  inherited;
  FNotifications := TObjectList<TOpsItemNotification>.Create;
  FOperationalData := TObjectDictionary<string, TOpsItemDataValue>.Create([doOwnsValues]);
  FRelatedOpsItems := TObjectList<TRelatedOpsItem>.Create;
end;

destructor TOpsItem.Destroy;
begin
  RelatedOpsItems := nil;
  OperationalData := nil;
  Notifications := nil;
  inherited;
end;

function TOpsItem.Obj: TOpsItem;
begin
  Result := Self;
end;

function TOpsItem.GetActualEndTime: TDateTime;
begin
  Result := FActualEndTime.ValueOrDefault;
end;

procedure TOpsItem.SetActualEndTime(const Value: TDateTime);
begin
  FActualEndTime := Value;
end;

function TOpsItem.IsSetActualEndTime: Boolean;
begin
  Result := FActualEndTime.HasValue;
end;

function TOpsItem.GetActualStartTime: TDateTime;
begin
  Result := FActualStartTime.ValueOrDefault;
end;

procedure TOpsItem.SetActualStartTime(const Value: TDateTime);
begin
  FActualStartTime := Value;
end;

function TOpsItem.IsSetActualStartTime: Boolean;
begin
  Result := FActualStartTime.HasValue;
end;

function TOpsItem.GetCategory: string;
begin
  Result := FCategory.ValueOrDefault;
end;

procedure TOpsItem.SetCategory(const Value: string);
begin
  FCategory := Value;
end;

function TOpsItem.IsSetCategory: Boolean;
begin
  Result := FCategory.HasValue;
end;

function TOpsItem.GetCreatedBy: string;
begin
  Result := FCreatedBy.ValueOrDefault;
end;

procedure TOpsItem.SetCreatedBy(const Value: string);
begin
  FCreatedBy := Value;
end;

function TOpsItem.IsSetCreatedBy: Boolean;
begin
  Result := FCreatedBy.HasValue;
end;

function TOpsItem.GetCreatedTime: TDateTime;
begin
  Result := FCreatedTime.ValueOrDefault;
end;

procedure TOpsItem.SetCreatedTime(const Value: TDateTime);
begin
  FCreatedTime := Value;
end;

function TOpsItem.IsSetCreatedTime: Boolean;
begin
  Result := FCreatedTime.HasValue;
end;

function TOpsItem.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TOpsItem.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TOpsItem.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TOpsItem.GetLastModifiedBy: string;
begin
  Result := FLastModifiedBy.ValueOrDefault;
end;

procedure TOpsItem.SetLastModifiedBy(const Value: string);
begin
  FLastModifiedBy := Value;
end;

function TOpsItem.IsSetLastModifiedBy: Boolean;
begin
  Result := FLastModifiedBy.HasValue;
end;

function TOpsItem.GetLastModifiedTime: TDateTime;
begin
  Result := FLastModifiedTime.ValueOrDefault;
end;

procedure TOpsItem.SetLastModifiedTime(const Value: TDateTime);
begin
  FLastModifiedTime := Value;
end;

function TOpsItem.IsSetLastModifiedTime: Boolean;
begin
  Result := FLastModifiedTime.HasValue;
end;

function TOpsItem.GetNotifications: TObjectList<TOpsItemNotification>;
begin
  Result := FNotifications;
end;

procedure TOpsItem.SetNotifications(const Value: TObjectList<TOpsItemNotification>);
begin
  if FNotifications <> Value then
  begin
    if not KeepNotifications then
      FNotifications.Free;
    FNotifications := Value;
  end;
end;

function TOpsItem.GetKeepNotifications: Boolean;
begin
  Result := FKeepNotifications;
end;

procedure TOpsItem.SetKeepNotifications(const Value: Boolean);
begin
  FKeepNotifications := Value;
end;

function TOpsItem.IsSetNotifications: Boolean;
begin
  Result := (FNotifications <> nil) and (FNotifications.Count > 0);
end;

function TOpsItem.GetOperationalData: TObjectDictionary<string, TOpsItemDataValue>;
begin
  Result := FOperationalData;
end;

procedure TOpsItem.SetOperationalData(const Value: TObjectDictionary<string, TOpsItemDataValue>);
begin
  if FOperationalData <> Value then
  begin
    if not KeepOperationalData then
      FOperationalData.Free;
    FOperationalData := Value;
  end;
end;

function TOpsItem.GetKeepOperationalData: Boolean;
begin
  Result := FKeepOperationalData;
end;

procedure TOpsItem.SetKeepOperationalData(const Value: Boolean);
begin
  FKeepOperationalData := Value;
end;

function TOpsItem.IsSetOperationalData: Boolean;
begin
  Result := (FOperationalData <> nil) and (FOperationalData.Count > 0);
end;

function TOpsItem.GetOpsItemId: string;
begin
  Result := FOpsItemId.ValueOrDefault;
end;

procedure TOpsItem.SetOpsItemId(const Value: string);
begin
  FOpsItemId := Value;
end;

function TOpsItem.IsSetOpsItemId: Boolean;
begin
  Result := FOpsItemId.HasValue;
end;

function TOpsItem.GetOpsItemType: string;
begin
  Result := FOpsItemType.ValueOrDefault;
end;

procedure TOpsItem.SetOpsItemType(const Value: string);
begin
  FOpsItemType := Value;
end;

function TOpsItem.IsSetOpsItemType: Boolean;
begin
  Result := FOpsItemType.HasValue;
end;

function TOpsItem.GetPlannedEndTime: TDateTime;
begin
  Result := FPlannedEndTime.ValueOrDefault;
end;

procedure TOpsItem.SetPlannedEndTime(const Value: TDateTime);
begin
  FPlannedEndTime := Value;
end;

function TOpsItem.IsSetPlannedEndTime: Boolean;
begin
  Result := FPlannedEndTime.HasValue;
end;

function TOpsItem.GetPlannedStartTime: TDateTime;
begin
  Result := FPlannedStartTime.ValueOrDefault;
end;

procedure TOpsItem.SetPlannedStartTime(const Value: TDateTime);
begin
  FPlannedStartTime := Value;
end;

function TOpsItem.IsSetPlannedStartTime: Boolean;
begin
  Result := FPlannedStartTime.HasValue;
end;

function TOpsItem.GetPriority: Integer;
begin
  Result := FPriority.ValueOrDefault;
end;

procedure TOpsItem.SetPriority(const Value: Integer);
begin
  FPriority := Value;
end;

function TOpsItem.IsSetPriority: Boolean;
begin
  Result := FPriority.HasValue;
end;

function TOpsItem.GetRelatedOpsItems: TObjectList<TRelatedOpsItem>;
begin
  Result := FRelatedOpsItems;
end;

procedure TOpsItem.SetRelatedOpsItems(const Value: TObjectList<TRelatedOpsItem>);
begin
  if FRelatedOpsItems <> Value then
  begin
    if not KeepRelatedOpsItems then
      FRelatedOpsItems.Free;
    FRelatedOpsItems := Value;
  end;
end;

function TOpsItem.GetKeepRelatedOpsItems: Boolean;
begin
  Result := FKeepRelatedOpsItems;
end;

procedure TOpsItem.SetKeepRelatedOpsItems(const Value: Boolean);
begin
  FKeepRelatedOpsItems := Value;
end;

function TOpsItem.IsSetRelatedOpsItems: Boolean;
begin
  Result := (FRelatedOpsItems <> nil) and (FRelatedOpsItems.Count > 0);
end;

function TOpsItem.GetSeverity: string;
begin
  Result := FSeverity.ValueOrDefault;
end;

procedure TOpsItem.SetSeverity(const Value: string);
begin
  FSeverity := Value;
end;

function TOpsItem.IsSetSeverity: Boolean;
begin
  Result := FSeverity.HasValue;
end;

function TOpsItem.GetSource: string;
begin
  Result := FSource.ValueOrDefault;
end;

procedure TOpsItem.SetSource(const Value: string);
begin
  FSource := Value;
end;

function TOpsItem.IsSetSource: Boolean;
begin
  Result := FSource.HasValue;
end;

function TOpsItem.GetStatus: TOpsItemStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TOpsItem.SetStatus(const Value: TOpsItemStatus);
begin
  FStatus := Value;
end;

function TOpsItem.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TOpsItem.GetTitle: string;
begin
  Result := FTitle.ValueOrDefault;
end;

procedure TOpsItem.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

function TOpsItem.IsSetTitle: Boolean;
begin
  Result := FTitle.HasValue;
end;

function TOpsItem.GetVersion: string;
begin
  Result := FVersion.ValueOrDefault;
end;

procedure TOpsItem.SetVersion(const Value: string);
begin
  FVersion := Value;
end;

function TOpsItem.IsSetVersion: Boolean;
begin
  Result := FVersion.HasValue;
end;

end.

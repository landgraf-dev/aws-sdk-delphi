unit AWS.SSM.Model.UpdateOpsItemRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Model.OpsItemNotification, 
  AWS.SSM.Model.OpsItemDataValue, 
  AWS.SSM.Model.RelatedOpsItem, 
  AWS.SSM.Enums;

type
  TUpdateOpsItemRequest = class;
  
  IUpdateOpsItemRequest = interface
    function GetActualEndTime: TDateTime;
    procedure SetActualEndTime(const Value: TDateTime);
    function GetActualStartTime: TDateTime;
    procedure SetActualStartTime(const Value: TDateTime);
    function GetCategory: string;
    procedure SetCategory(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetNotifications: TObjectList<TOpsItemNotification>;
    procedure SetNotifications(const Value: TObjectList<TOpsItemNotification>);
    function GetKeepNotifications: Boolean;
    procedure SetKeepNotifications(const Value: Boolean);
    function GetOperationalData: TObjectDictionary<string, TOpsItemDataValue>;
    procedure SetOperationalData(const Value: TObjectDictionary<string, TOpsItemDataValue>);
    function GetKeepOperationalData: Boolean;
    procedure SetKeepOperationalData(const Value: Boolean);
    function GetOperationalDataToDelete: TList<string>;
    procedure SetOperationalDataToDelete(const Value: TList<string>);
    function GetKeepOperationalDataToDelete: Boolean;
    procedure SetKeepOperationalDataToDelete(const Value: Boolean);
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
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
    function GetStatus: TOpsItemStatus;
    procedure SetStatus(const Value: TOpsItemStatus);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
    function Obj: TUpdateOpsItemRequest;
    function IsSetActualEndTime: Boolean;
    function IsSetActualStartTime: Boolean;
    function IsSetCategory: Boolean;
    function IsSetDescription: Boolean;
    function IsSetNotifications: Boolean;
    function IsSetOperationalData: Boolean;
    function IsSetOperationalDataToDelete: Boolean;
    function IsSetOpsItemId: Boolean;
    function IsSetPlannedEndTime: Boolean;
    function IsSetPlannedStartTime: Boolean;
    function IsSetPriority: Boolean;
    function IsSetRelatedOpsItems: Boolean;
    function IsSetSeverity: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTitle: Boolean;
    property ActualEndTime: TDateTime read GetActualEndTime write SetActualEndTime;
    property ActualStartTime: TDateTime read GetActualStartTime write SetActualStartTime;
    property Category: string read GetCategory write SetCategory;
    property Description: string read GetDescription write SetDescription;
    property Notifications: TObjectList<TOpsItemNotification> read GetNotifications write SetNotifications;
    property KeepNotifications: Boolean read GetKeepNotifications write SetKeepNotifications;
    property OperationalData: TObjectDictionary<string, TOpsItemDataValue> read GetOperationalData write SetOperationalData;
    property KeepOperationalData: Boolean read GetKeepOperationalData write SetKeepOperationalData;
    property OperationalDataToDelete: TList<string> read GetOperationalDataToDelete write SetOperationalDataToDelete;
    property KeepOperationalDataToDelete: Boolean read GetKeepOperationalDataToDelete write SetKeepOperationalDataToDelete;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
    property PlannedEndTime: TDateTime read GetPlannedEndTime write SetPlannedEndTime;
    property PlannedStartTime: TDateTime read GetPlannedStartTime write SetPlannedStartTime;
    property Priority: Integer read GetPriority write SetPriority;
    property RelatedOpsItems: TObjectList<TRelatedOpsItem> read GetRelatedOpsItems write SetRelatedOpsItems;
    property KeepRelatedOpsItems: Boolean read GetKeepRelatedOpsItems write SetKeepRelatedOpsItems;
    property Severity: string read GetSeverity write SetSeverity;
    property Status: TOpsItemStatus read GetStatus write SetStatus;
    property Title: string read GetTitle write SetTitle;
  end;
  
  TUpdateOpsItemRequest = class(TAmazonSimpleSystemsManagementRequest, IUpdateOpsItemRequest)
  strict private
    FActualEndTime: Nullable<TDateTime>;
    FActualStartTime: Nullable<TDateTime>;
    FCategory: Nullable<string>;
    FDescription: Nullable<string>;
    FNotifications: TObjectList<TOpsItemNotification>;
    FKeepNotifications: Boolean;
    FOperationalData: TObjectDictionary<string, TOpsItemDataValue>;
    FKeepOperationalData: Boolean;
    FOperationalDataToDelete: TList<string>;
    FKeepOperationalDataToDelete: Boolean;
    FOpsItemId: Nullable<string>;
    FPlannedEndTime: Nullable<TDateTime>;
    FPlannedStartTime: Nullable<TDateTime>;
    FPriority: Nullable<Integer>;
    FRelatedOpsItems: TObjectList<TRelatedOpsItem>;
    FKeepRelatedOpsItems: Boolean;
    FSeverity: Nullable<string>;
    FStatus: Nullable<TOpsItemStatus>;
    FTitle: Nullable<string>;
    function GetActualEndTime: TDateTime;
    procedure SetActualEndTime(const Value: TDateTime);
    function GetActualStartTime: TDateTime;
    procedure SetActualStartTime(const Value: TDateTime);
    function GetCategory: string;
    procedure SetCategory(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetNotifications: TObjectList<TOpsItemNotification>;
    procedure SetNotifications(const Value: TObjectList<TOpsItemNotification>);
    function GetKeepNotifications: Boolean;
    procedure SetKeepNotifications(const Value: Boolean);
    function GetOperationalData: TObjectDictionary<string, TOpsItemDataValue>;
    procedure SetOperationalData(const Value: TObjectDictionary<string, TOpsItemDataValue>);
    function GetKeepOperationalData: Boolean;
    procedure SetKeepOperationalData(const Value: Boolean);
    function GetOperationalDataToDelete: TList<string>;
    procedure SetOperationalDataToDelete(const Value: TList<string>);
    function GetKeepOperationalDataToDelete: Boolean;
    procedure SetKeepOperationalDataToDelete(const Value: Boolean);
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
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
    function GetStatus: TOpsItemStatus;
    procedure SetStatus(const Value: TOpsItemStatus);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
  strict protected
    function Obj: TUpdateOpsItemRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetActualEndTime: Boolean;
    function IsSetActualStartTime: Boolean;
    function IsSetCategory: Boolean;
    function IsSetDescription: Boolean;
    function IsSetNotifications: Boolean;
    function IsSetOperationalData: Boolean;
    function IsSetOperationalDataToDelete: Boolean;
    function IsSetOpsItemId: Boolean;
    function IsSetPlannedEndTime: Boolean;
    function IsSetPlannedStartTime: Boolean;
    function IsSetPriority: Boolean;
    function IsSetRelatedOpsItems: Boolean;
    function IsSetSeverity: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTitle: Boolean;
    property ActualEndTime: TDateTime read GetActualEndTime write SetActualEndTime;
    property ActualStartTime: TDateTime read GetActualStartTime write SetActualStartTime;
    property Category: string read GetCategory write SetCategory;
    property Description: string read GetDescription write SetDescription;
    property Notifications: TObjectList<TOpsItemNotification> read GetNotifications write SetNotifications;
    property KeepNotifications: Boolean read GetKeepNotifications write SetKeepNotifications;
    property OperationalData: TObjectDictionary<string, TOpsItemDataValue> read GetOperationalData write SetOperationalData;
    property KeepOperationalData: Boolean read GetKeepOperationalData write SetKeepOperationalData;
    property OperationalDataToDelete: TList<string> read GetOperationalDataToDelete write SetOperationalDataToDelete;
    property KeepOperationalDataToDelete: Boolean read GetKeepOperationalDataToDelete write SetKeepOperationalDataToDelete;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
    property PlannedEndTime: TDateTime read GetPlannedEndTime write SetPlannedEndTime;
    property PlannedStartTime: TDateTime read GetPlannedStartTime write SetPlannedStartTime;
    property Priority: Integer read GetPriority write SetPriority;
    property RelatedOpsItems: TObjectList<TRelatedOpsItem> read GetRelatedOpsItems write SetRelatedOpsItems;
    property KeepRelatedOpsItems: Boolean read GetKeepRelatedOpsItems write SetKeepRelatedOpsItems;
    property Severity: string read GetSeverity write SetSeverity;
    property Status: TOpsItemStatus read GetStatus write SetStatus;
    property Title: string read GetTitle write SetTitle;
  end;
  
implementation

{ TUpdateOpsItemRequest }

constructor TUpdateOpsItemRequest.Create;
begin
  inherited;
  FNotifications := TObjectList<TOpsItemNotification>.Create;
  FOperationalData := TObjectDictionary<string, TOpsItemDataValue>.Create([doOwnsValues]);
  FOperationalDataToDelete := TList<string>.Create;
  FRelatedOpsItems := TObjectList<TRelatedOpsItem>.Create;
end;

destructor TUpdateOpsItemRequest.Destroy;
begin
  RelatedOpsItems := nil;
  OperationalDataToDelete := nil;
  OperationalData := nil;
  Notifications := nil;
  inherited;
end;

function TUpdateOpsItemRequest.Obj: TUpdateOpsItemRequest;
begin
  Result := Self;
end;

function TUpdateOpsItemRequest.GetActualEndTime: TDateTime;
begin
  Result := FActualEndTime.ValueOrDefault;
end;

procedure TUpdateOpsItemRequest.SetActualEndTime(const Value: TDateTime);
begin
  FActualEndTime := Value;
end;

function TUpdateOpsItemRequest.IsSetActualEndTime: Boolean;
begin
  Result := FActualEndTime.HasValue;
end;

function TUpdateOpsItemRequest.GetActualStartTime: TDateTime;
begin
  Result := FActualStartTime.ValueOrDefault;
end;

procedure TUpdateOpsItemRequest.SetActualStartTime(const Value: TDateTime);
begin
  FActualStartTime := Value;
end;

function TUpdateOpsItemRequest.IsSetActualStartTime: Boolean;
begin
  Result := FActualStartTime.HasValue;
end;

function TUpdateOpsItemRequest.GetCategory: string;
begin
  Result := FCategory.ValueOrDefault;
end;

procedure TUpdateOpsItemRequest.SetCategory(const Value: string);
begin
  FCategory := Value;
end;

function TUpdateOpsItemRequest.IsSetCategory: Boolean;
begin
  Result := FCategory.HasValue;
end;

function TUpdateOpsItemRequest.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TUpdateOpsItemRequest.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TUpdateOpsItemRequest.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TUpdateOpsItemRequest.GetNotifications: TObjectList<TOpsItemNotification>;
begin
  Result := FNotifications;
end;

procedure TUpdateOpsItemRequest.SetNotifications(const Value: TObjectList<TOpsItemNotification>);
begin
  if FNotifications <> Value then
  begin
    if not KeepNotifications then
      FNotifications.Free;
    FNotifications := Value;
  end;
end;

function TUpdateOpsItemRequest.GetKeepNotifications: Boolean;
begin
  Result := FKeepNotifications;
end;

procedure TUpdateOpsItemRequest.SetKeepNotifications(const Value: Boolean);
begin
  FKeepNotifications := Value;
end;

function TUpdateOpsItemRequest.IsSetNotifications: Boolean;
begin
  Result := (FNotifications <> nil) and (FNotifications.Count > 0);
end;

function TUpdateOpsItemRequest.GetOperationalData: TObjectDictionary<string, TOpsItemDataValue>;
begin
  Result := FOperationalData;
end;

procedure TUpdateOpsItemRequest.SetOperationalData(const Value: TObjectDictionary<string, TOpsItemDataValue>);
begin
  if FOperationalData <> Value then
  begin
    if not KeepOperationalData then
      FOperationalData.Free;
    FOperationalData := Value;
  end;
end;

function TUpdateOpsItemRequest.GetKeepOperationalData: Boolean;
begin
  Result := FKeepOperationalData;
end;

procedure TUpdateOpsItemRequest.SetKeepOperationalData(const Value: Boolean);
begin
  FKeepOperationalData := Value;
end;

function TUpdateOpsItemRequest.IsSetOperationalData: Boolean;
begin
  Result := (FOperationalData <> nil) and (FOperationalData.Count > 0);
end;

function TUpdateOpsItemRequest.GetOperationalDataToDelete: TList<string>;
begin
  Result := FOperationalDataToDelete;
end;

procedure TUpdateOpsItemRequest.SetOperationalDataToDelete(const Value: TList<string>);
begin
  if FOperationalDataToDelete <> Value then
  begin
    if not KeepOperationalDataToDelete then
      FOperationalDataToDelete.Free;
    FOperationalDataToDelete := Value;
  end;
end;

function TUpdateOpsItemRequest.GetKeepOperationalDataToDelete: Boolean;
begin
  Result := FKeepOperationalDataToDelete;
end;

procedure TUpdateOpsItemRequest.SetKeepOperationalDataToDelete(const Value: Boolean);
begin
  FKeepOperationalDataToDelete := Value;
end;

function TUpdateOpsItemRequest.IsSetOperationalDataToDelete: Boolean;
begin
  Result := (FOperationalDataToDelete <> nil) and (FOperationalDataToDelete.Count > 0);
end;

function TUpdateOpsItemRequest.GetOpsItemId: string;
begin
  Result := FOpsItemId.ValueOrDefault;
end;

procedure TUpdateOpsItemRequest.SetOpsItemId(const Value: string);
begin
  FOpsItemId := Value;
end;

function TUpdateOpsItemRequest.IsSetOpsItemId: Boolean;
begin
  Result := FOpsItemId.HasValue;
end;

function TUpdateOpsItemRequest.GetPlannedEndTime: TDateTime;
begin
  Result := FPlannedEndTime.ValueOrDefault;
end;

procedure TUpdateOpsItemRequest.SetPlannedEndTime(const Value: TDateTime);
begin
  FPlannedEndTime := Value;
end;

function TUpdateOpsItemRequest.IsSetPlannedEndTime: Boolean;
begin
  Result := FPlannedEndTime.HasValue;
end;

function TUpdateOpsItemRequest.GetPlannedStartTime: TDateTime;
begin
  Result := FPlannedStartTime.ValueOrDefault;
end;

procedure TUpdateOpsItemRequest.SetPlannedStartTime(const Value: TDateTime);
begin
  FPlannedStartTime := Value;
end;

function TUpdateOpsItemRequest.IsSetPlannedStartTime: Boolean;
begin
  Result := FPlannedStartTime.HasValue;
end;

function TUpdateOpsItemRequest.GetPriority: Integer;
begin
  Result := FPriority.ValueOrDefault;
end;

procedure TUpdateOpsItemRequest.SetPriority(const Value: Integer);
begin
  FPriority := Value;
end;

function TUpdateOpsItemRequest.IsSetPriority: Boolean;
begin
  Result := FPriority.HasValue;
end;

function TUpdateOpsItemRequest.GetRelatedOpsItems: TObjectList<TRelatedOpsItem>;
begin
  Result := FRelatedOpsItems;
end;

procedure TUpdateOpsItemRequest.SetRelatedOpsItems(const Value: TObjectList<TRelatedOpsItem>);
begin
  if FRelatedOpsItems <> Value then
  begin
    if not KeepRelatedOpsItems then
      FRelatedOpsItems.Free;
    FRelatedOpsItems := Value;
  end;
end;

function TUpdateOpsItemRequest.GetKeepRelatedOpsItems: Boolean;
begin
  Result := FKeepRelatedOpsItems;
end;

procedure TUpdateOpsItemRequest.SetKeepRelatedOpsItems(const Value: Boolean);
begin
  FKeepRelatedOpsItems := Value;
end;

function TUpdateOpsItemRequest.IsSetRelatedOpsItems: Boolean;
begin
  Result := (FRelatedOpsItems <> nil) and (FRelatedOpsItems.Count > 0);
end;

function TUpdateOpsItemRequest.GetSeverity: string;
begin
  Result := FSeverity.ValueOrDefault;
end;

procedure TUpdateOpsItemRequest.SetSeverity(const Value: string);
begin
  FSeverity := Value;
end;

function TUpdateOpsItemRequest.IsSetSeverity: Boolean;
begin
  Result := FSeverity.HasValue;
end;

function TUpdateOpsItemRequest.GetStatus: TOpsItemStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TUpdateOpsItemRequest.SetStatus(const Value: TOpsItemStatus);
begin
  FStatus := Value;
end;

function TUpdateOpsItemRequest.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TUpdateOpsItemRequest.GetTitle: string;
begin
  Result := FTitle.ValueOrDefault;
end;

procedure TUpdateOpsItemRequest.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

function TUpdateOpsItemRequest.IsSetTitle: Boolean;
begin
  Result := FTitle.HasValue;
end;

end.

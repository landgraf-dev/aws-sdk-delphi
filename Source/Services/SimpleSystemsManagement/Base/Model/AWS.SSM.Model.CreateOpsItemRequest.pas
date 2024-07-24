unit AWS.SSM.Model.CreateOpsItemRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Model.OpsItemNotification, 
  AWS.SSM.Model.OpsItemDataValue, 
  AWS.SSM.Model.RelatedOpsItem, 
  AWS.SSM.Model.Tag;

type
  TCreateOpsItemRequest = class;
  
  ICreateOpsItemRequest = interface
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
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
    function Obj: TCreateOpsItemRequest;
    function IsSetActualEndTime: Boolean;
    function IsSetActualStartTime: Boolean;
    function IsSetCategory: Boolean;
    function IsSetDescription: Boolean;
    function IsSetNotifications: Boolean;
    function IsSetOperationalData: Boolean;
    function IsSetOpsItemType: Boolean;
    function IsSetPlannedEndTime: Boolean;
    function IsSetPlannedStartTime: Boolean;
    function IsSetPriority: Boolean;
    function IsSetRelatedOpsItems: Boolean;
    function IsSetSeverity: Boolean;
    function IsSetSource: Boolean;
    function IsSetTags: Boolean;
    function IsSetTitle: Boolean;
    property ActualEndTime: TDateTime read GetActualEndTime write SetActualEndTime;
    property ActualStartTime: TDateTime read GetActualStartTime write SetActualStartTime;
    property Category: string read GetCategory write SetCategory;
    property Description: string read GetDescription write SetDescription;
    property Notifications: TObjectList<TOpsItemNotification> read GetNotifications write SetNotifications;
    property KeepNotifications: Boolean read GetKeepNotifications write SetKeepNotifications;
    property OperationalData: TObjectDictionary<string, TOpsItemDataValue> read GetOperationalData write SetOperationalData;
    property KeepOperationalData: Boolean read GetKeepOperationalData write SetKeepOperationalData;
    property OpsItemType: string read GetOpsItemType write SetOpsItemType;
    property PlannedEndTime: TDateTime read GetPlannedEndTime write SetPlannedEndTime;
    property PlannedStartTime: TDateTime read GetPlannedStartTime write SetPlannedStartTime;
    property Priority: Integer read GetPriority write SetPriority;
    property RelatedOpsItems: TObjectList<TRelatedOpsItem> read GetRelatedOpsItems write SetRelatedOpsItems;
    property KeepRelatedOpsItems: Boolean read GetKeepRelatedOpsItems write SetKeepRelatedOpsItems;
    property Severity: string read GetSeverity write SetSeverity;
    property Source: string read GetSource write SetSource;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property Title: string read GetTitle write SetTitle;
  end;
  
  TCreateOpsItemRequest = class(TAmazonSimpleSystemsManagementRequest, ICreateOpsItemRequest)
  strict private
    FActualEndTime: Nullable<TDateTime>;
    FActualStartTime: Nullable<TDateTime>;
    FCategory: Nullable<string>;
    FDescription: Nullable<string>;
    FNotifications: TObjectList<TOpsItemNotification>;
    FKeepNotifications: Boolean;
    FOperationalData: TObjectDictionary<string, TOpsItemDataValue>;
    FKeepOperationalData: Boolean;
    FOpsItemType: Nullable<string>;
    FPlannedEndTime: Nullable<TDateTime>;
    FPlannedStartTime: Nullable<TDateTime>;
    FPriority: Nullable<Integer>;
    FRelatedOpsItems: TObjectList<TRelatedOpsItem>;
    FKeepRelatedOpsItems: Boolean;
    FSeverity: Nullable<string>;
    FSource: Nullable<string>;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
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
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
  strict protected
    function Obj: TCreateOpsItemRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetActualEndTime: Boolean;
    function IsSetActualStartTime: Boolean;
    function IsSetCategory: Boolean;
    function IsSetDescription: Boolean;
    function IsSetNotifications: Boolean;
    function IsSetOperationalData: Boolean;
    function IsSetOpsItemType: Boolean;
    function IsSetPlannedEndTime: Boolean;
    function IsSetPlannedStartTime: Boolean;
    function IsSetPriority: Boolean;
    function IsSetRelatedOpsItems: Boolean;
    function IsSetSeverity: Boolean;
    function IsSetSource: Boolean;
    function IsSetTags: Boolean;
    function IsSetTitle: Boolean;
    property ActualEndTime: TDateTime read GetActualEndTime write SetActualEndTime;
    property ActualStartTime: TDateTime read GetActualStartTime write SetActualStartTime;
    property Category: string read GetCategory write SetCategory;
    property Description: string read GetDescription write SetDescription;
    property Notifications: TObjectList<TOpsItemNotification> read GetNotifications write SetNotifications;
    property KeepNotifications: Boolean read GetKeepNotifications write SetKeepNotifications;
    property OperationalData: TObjectDictionary<string, TOpsItemDataValue> read GetOperationalData write SetOperationalData;
    property KeepOperationalData: Boolean read GetKeepOperationalData write SetKeepOperationalData;
    property OpsItemType: string read GetOpsItemType write SetOpsItemType;
    property PlannedEndTime: TDateTime read GetPlannedEndTime write SetPlannedEndTime;
    property PlannedStartTime: TDateTime read GetPlannedStartTime write SetPlannedStartTime;
    property Priority: Integer read GetPriority write SetPriority;
    property RelatedOpsItems: TObjectList<TRelatedOpsItem> read GetRelatedOpsItems write SetRelatedOpsItems;
    property KeepRelatedOpsItems: Boolean read GetKeepRelatedOpsItems write SetKeepRelatedOpsItems;
    property Severity: string read GetSeverity write SetSeverity;
    property Source: string read GetSource write SetSource;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property Title: string read GetTitle write SetTitle;
  end;
  
implementation

{ TCreateOpsItemRequest }

constructor TCreateOpsItemRequest.Create;
begin
  inherited;
  FNotifications := TObjectList<TOpsItemNotification>.Create;
  FOperationalData := TObjectDictionary<string, TOpsItemDataValue>.Create([doOwnsValues]);
  FRelatedOpsItems := TObjectList<TRelatedOpsItem>.Create;
  FTags := TObjectList<TTag>.Create;
end;

destructor TCreateOpsItemRequest.Destroy;
begin
  Tags := nil;
  RelatedOpsItems := nil;
  OperationalData := nil;
  Notifications := nil;
  inherited;
end;

function TCreateOpsItemRequest.Obj: TCreateOpsItemRequest;
begin
  Result := Self;
end;

function TCreateOpsItemRequest.GetActualEndTime: TDateTime;
begin
  Result := FActualEndTime.ValueOrDefault;
end;

procedure TCreateOpsItemRequest.SetActualEndTime(const Value: TDateTime);
begin
  FActualEndTime := Value;
end;

function TCreateOpsItemRequest.IsSetActualEndTime: Boolean;
begin
  Result := FActualEndTime.HasValue;
end;

function TCreateOpsItemRequest.GetActualStartTime: TDateTime;
begin
  Result := FActualStartTime.ValueOrDefault;
end;

procedure TCreateOpsItemRequest.SetActualStartTime(const Value: TDateTime);
begin
  FActualStartTime := Value;
end;

function TCreateOpsItemRequest.IsSetActualStartTime: Boolean;
begin
  Result := FActualStartTime.HasValue;
end;

function TCreateOpsItemRequest.GetCategory: string;
begin
  Result := FCategory.ValueOrDefault;
end;

procedure TCreateOpsItemRequest.SetCategory(const Value: string);
begin
  FCategory := Value;
end;

function TCreateOpsItemRequest.IsSetCategory: Boolean;
begin
  Result := FCategory.HasValue;
end;

function TCreateOpsItemRequest.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TCreateOpsItemRequest.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TCreateOpsItemRequest.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TCreateOpsItemRequest.GetNotifications: TObjectList<TOpsItemNotification>;
begin
  Result := FNotifications;
end;

procedure TCreateOpsItemRequest.SetNotifications(const Value: TObjectList<TOpsItemNotification>);
begin
  if FNotifications <> Value then
  begin
    if not KeepNotifications then
      FNotifications.Free;
    FNotifications := Value;
  end;
end;

function TCreateOpsItemRequest.GetKeepNotifications: Boolean;
begin
  Result := FKeepNotifications;
end;

procedure TCreateOpsItemRequest.SetKeepNotifications(const Value: Boolean);
begin
  FKeepNotifications := Value;
end;

function TCreateOpsItemRequest.IsSetNotifications: Boolean;
begin
  Result := (FNotifications <> nil) and (FNotifications.Count > 0);
end;

function TCreateOpsItemRequest.GetOperationalData: TObjectDictionary<string, TOpsItemDataValue>;
begin
  Result := FOperationalData;
end;

procedure TCreateOpsItemRequest.SetOperationalData(const Value: TObjectDictionary<string, TOpsItemDataValue>);
begin
  if FOperationalData <> Value then
  begin
    if not KeepOperationalData then
      FOperationalData.Free;
    FOperationalData := Value;
  end;
end;

function TCreateOpsItemRequest.GetKeepOperationalData: Boolean;
begin
  Result := FKeepOperationalData;
end;

procedure TCreateOpsItemRequest.SetKeepOperationalData(const Value: Boolean);
begin
  FKeepOperationalData := Value;
end;

function TCreateOpsItemRequest.IsSetOperationalData: Boolean;
begin
  Result := (FOperationalData <> nil) and (FOperationalData.Count > 0);
end;

function TCreateOpsItemRequest.GetOpsItemType: string;
begin
  Result := FOpsItemType.ValueOrDefault;
end;

procedure TCreateOpsItemRequest.SetOpsItemType(const Value: string);
begin
  FOpsItemType := Value;
end;

function TCreateOpsItemRequest.IsSetOpsItemType: Boolean;
begin
  Result := FOpsItemType.HasValue;
end;

function TCreateOpsItemRequest.GetPlannedEndTime: TDateTime;
begin
  Result := FPlannedEndTime.ValueOrDefault;
end;

procedure TCreateOpsItemRequest.SetPlannedEndTime(const Value: TDateTime);
begin
  FPlannedEndTime := Value;
end;

function TCreateOpsItemRequest.IsSetPlannedEndTime: Boolean;
begin
  Result := FPlannedEndTime.HasValue;
end;

function TCreateOpsItemRequest.GetPlannedStartTime: TDateTime;
begin
  Result := FPlannedStartTime.ValueOrDefault;
end;

procedure TCreateOpsItemRequest.SetPlannedStartTime(const Value: TDateTime);
begin
  FPlannedStartTime := Value;
end;

function TCreateOpsItemRequest.IsSetPlannedStartTime: Boolean;
begin
  Result := FPlannedStartTime.HasValue;
end;

function TCreateOpsItemRequest.GetPriority: Integer;
begin
  Result := FPriority.ValueOrDefault;
end;

procedure TCreateOpsItemRequest.SetPriority(const Value: Integer);
begin
  FPriority := Value;
end;

function TCreateOpsItemRequest.IsSetPriority: Boolean;
begin
  Result := FPriority.HasValue;
end;

function TCreateOpsItemRequest.GetRelatedOpsItems: TObjectList<TRelatedOpsItem>;
begin
  Result := FRelatedOpsItems;
end;

procedure TCreateOpsItemRequest.SetRelatedOpsItems(const Value: TObjectList<TRelatedOpsItem>);
begin
  if FRelatedOpsItems <> Value then
  begin
    if not KeepRelatedOpsItems then
      FRelatedOpsItems.Free;
    FRelatedOpsItems := Value;
  end;
end;

function TCreateOpsItemRequest.GetKeepRelatedOpsItems: Boolean;
begin
  Result := FKeepRelatedOpsItems;
end;

procedure TCreateOpsItemRequest.SetKeepRelatedOpsItems(const Value: Boolean);
begin
  FKeepRelatedOpsItems := Value;
end;

function TCreateOpsItemRequest.IsSetRelatedOpsItems: Boolean;
begin
  Result := (FRelatedOpsItems <> nil) and (FRelatedOpsItems.Count > 0);
end;

function TCreateOpsItemRequest.GetSeverity: string;
begin
  Result := FSeverity.ValueOrDefault;
end;

procedure TCreateOpsItemRequest.SetSeverity(const Value: string);
begin
  FSeverity := Value;
end;

function TCreateOpsItemRequest.IsSetSeverity: Boolean;
begin
  Result := FSeverity.HasValue;
end;

function TCreateOpsItemRequest.GetSource: string;
begin
  Result := FSource.ValueOrDefault;
end;

procedure TCreateOpsItemRequest.SetSource(const Value: string);
begin
  FSource := Value;
end;

function TCreateOpsItemRequest.IsSetSource: Boolean;
begin
  Result := FSource.HasValue;
end;

function TCreateOpsItemRequest.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TCreateOpsItemRequest.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TCreateOpsItemRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TCreateOpsItemRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TCreateOpsItemRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

function TCreateOpsItemRequest.GetTitle: string;
begin
  Result := FTitle.ValueOrDefault;
end;

procedure TCreateOpsItemRequest.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

function TCreateOpsItemRequest.IsSetTitle: Boolean;
begin
  Result := FTitle.HasValue;
end;

end.

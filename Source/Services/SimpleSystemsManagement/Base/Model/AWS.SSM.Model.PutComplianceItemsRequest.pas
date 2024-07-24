unit AWS.SSM.Model.PutComplianceItemsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Model.ComplianceExecutionSummary, 
  AWS.SSM.Model.ComplianceItemEntry, 
  AWS.SSM.Enums;

type
  TPutComplianceItemsRequest = class;
  
  IPutComplianceItemsRequest = interface
    function GetComplianceType: string;
    procedure SetComplianceType(const Value: string);
    function GetExecutionSummary: TComplianceExecutionSummary;
    procedure SetExecutionSummary(const Value: TComplianceExecutionSummary);
    function GetKeepExecutionSummary: Boolean;
    procedure SetKeepExecutionSummary(const Value: Boolean);
    function GetItemContentHash: string;
    procedure SetItemContentHash(const Value: string);
    function GetItems: TObjectList<TComplianceItemEntry>;
    procedure SetItems(const Value: TObjectList<TComplianceItemEntry>);
    function GetKeepItems: Boolean;
    procedure SetKeepItems(const Value: Boolean);
    function GetResourceId: string;
    procedure SetResourceId(const Value: string);
    function GetResourceType: string;
    procedure SetResourceType(const Value: string);
    function GetUploadType: TComplianceUploadType;
    procedure SetUploadType(const Value: TComplianceUploadType);
    function Obj: TPutComplianceItemsRequest;
    function IsSetComplianceType: Boolean;
    function IsSetExecutionSummary: Boolean;
    function IsSetItemContentHash: Boolean;
    function IsSetItems: Boolean;
    function IsSetResourceId: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetUploadType: Boolean;
    property ComplianceType: string read GetComplianceType write SetComplianceType;
    property ExecutionSummary: TComplianceExecutionSummary read GetExecutionSummary write SetExecutionSummary;
    property KeepExecutionSummary: Boolean read GetKeepExecutionSummary write SetKeepExecutionSummary;
    property ItemContentHash: string read GetItemContentHash write SetItemContentHash;
    property Items: TObjectList<TComplianceItemEntry> read GetItems write SetItems;
    property KeepItems: Boolean read GetKeepItems write SetKeepItems;
    property ResourceId: string read GetResourceId write SetResourceId;
    property ResourceType: string read GetResourceType write SetResourceType;
    property UploadType: TComplianceUploadType read GetUploadType write SetUploadType;
  end;
  
  TPutComplianceItemsRequest = class(TAmazonSimpleSystemsManagementRequest, IPutComplianceItemsRequest)
  strict private
    FComplianceType: Nullable<string>;
    FExecutionSummary: TComplianceExecutionSummary;
    FKeepExecutionSummary: Boolean;
    FItemContentHash: Nullable<string>;
    FItems: TObjectList<TComplianceItemEntry>;
    FKeepItems: Boolean;
    FResourceId: Nullable<string>;
    FResourceType: Nullable<string>;
    FUploadType: Nullable<TComplianceUploadType>;
    function GetComplianceType: string;
    procedure SetComplianceType(const Value: string);
    function GetExecutionSummary: TComplianceExecutionSummary;
    procedure SetExecutionSummary(const Value: TComplianceExecutionSummary);
    function GetKeepExecutionSummary: Boolean;
    procedure SetKeepExecutionSummary(const Value: Boolean);
    function GetItemContentHash: string;
    procedure SetItemContentHash(const Value: string);
    function GetItems: TObjectList<TComplianceItemEntry>;
    procedure SetItems(const Value: TObjectList<TComplianceItemEntry>);
    function GetKeepItems: Boolean;
    procedure SetKeepItems(const Value: Boolean);
    function GetResourceId: string;
    procedure SetResourceId(const Value: string);
    function GetResourceType: string;
    procedure SetResourceType(const Value: string);
    function GetUploadType: TComplianceUploadType;
    procedure SetUploadType(const Value: TComplianceUploadType);
  strict protected
    function Obj: TPutComplianceItemsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetComplianceType: Boolean;
    function IsSetExecutionSummary: Boolean;
    function IsSetItemContentHash: Boolean;
    function IsSetItems: Boolean;
    function IsSetResourceId: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetUploadType: Boolean;
    property ComplianceType: string read GetComplianceType write SetComplianceType;
    property ExecutionSummary: TComplianceExecutionSummary read GetExecutionSummary write SetExecutionSummary;
    property KeepExecutionSummary: Boolean read GetKeepExecutionSummary write SetKeepExecutionSummary;
    property ItemContentHash: string read GetItemContentHash write SetItemContentHash;
    property Items: TObjectList<TComplianceItemEntry> read GetItems write SetItems;
    property KeepItems: Boolean read GetKeepItems write SetKeepItems;
    property ResourceId: string read GetResourceId write SetResourceId;
    property ResourceType: string read GetResourceType write SetResourceType;
    property UploadType: TComplianceUploadType read GetUploadType write SetUploadType;
  end;
  
implementation

{ TPutComplianceItemsRequest }

constructor TPutComplianceItemsRequest.Create;
begin
  inherited;
  FItems := TObjectList<TComplianceItemEntry>.Create;
end;

destructor TPutComplianceItemsRequest.Destroy;
begin
  Items := nil;
  ExecutionSummary := nil;
  inherited;
end;

function TPutComplianceItemsRequest.Obj: TPutComplianceItemsRequest;
begin
  Result := Self;
end;

function TPutComplianceItemsRequest.GetComplianceType: string;
begin
  Result := FComplianceType.ValueOrDefault;
end;

procedure TPutComplianceItemsRequest.SetComplianceType(const Value: string);
begin
  FComplianceType := Value;
end;

function TPutComplianceItemsRequest.IsSetComplianceType: Boolean;
begin
  Result := FComplianceType.HasValue;
end;

function TPutComplianceItemsRequest.GetExecutionSummary: TComplianceExecutionSummary;
begin
  Result := FExecutionSummary;
end;

procedure TPutComplianceItemsRequest.SetExecutionSummary(const Value: TComplianceExecutionSummary);
begin
  if FExecutionSummary <> Value then
  begin
    if not KeepExecutionSummary then
      FExecutionSummary.Free;
    FExecutionSummary := Value;
  end;
end;

function TPutComplianceItemsRequest.GetKeepExecutionSummary: Boolean;
begin
  Result := FKeepExecutionSummary;
end;

procedure TPutComplianceItemsRequest.SetKeepExecutionSummary(const Value: Boolean);
begin
  FKeepExecutionSummary := Value;
end;

function TPutComplianceItemsRequest.IsSetExecutionSummary: Boolean;
begin
  Result := FExecutionSummary <> nil;
end;

function TPutComplianceItemsRequest.GetItemContentHash: string;
begin
  Result := FItemContentHash.ValueOrDefault;
end;

procedure TPutComplianceItemsRequest.SetItemContentHash(const Value: string);
begin
  FItemContentHash := Value;
end;

function TPutComplianceItemsRequest.IsSetItemContentHash: Boolean;
begin
  Result := FItemContentHash.HasValue;
end;

function TPutComplianceItemsRequest.GetItems: TObjectList<TComplianceItemEntry>;
begin
  Result := FItems;
end;

procedure TPutComplianceItemsRequest.SetItems(const Value: TObjectList<TComplianceItemEntry>);
begin
  if FItems <> Value then
  begin
    if not KeepItems then
      FItems.Free;
    FItems := Value;
  end;
end;

function TPutComplianceItemsRequest.GetKeepItems: Boolean;
begin
  Result := FKeepItems;
end;

procedure TPutComplianceItemsRequest.SetKeepItems(const Value: Boolean);
begin
  FKeepItems := Value;
end;

function TPutComplianceItemsRequest.IsSetItems: Boolean;
begin
  Result := (FItems <> nil) and (FItems.Count > 0);
end;

function TPutComplianceItemsRequest.GetResourceId: string;
begin
  Result := FResourceId.ValueOrDefault;
end;

procedure TPutComplianceItemsRequest.SetResourceId(const Value: string);
begin
  FResourceId := Value;
end;

function TPutComplianceItemsRequest.IsSetResourceId: Boolean;
begin
  Result := FResourceId.HasValue;
end;

function TPutComplianceItemsRequest.GetResourceType: string;
begin
  Result := FResourceType.ValueOrDefault;
end;

procedure TPutComplianceItemsRequest.SetResourceType(const Value: string);
begin
  FResourceType := Value;
end;

function TPutComplianceItemsRequest.IsSetResourceType: Boolean;
begin
  Result := FResourceType.HasValue;
end;

function TPutComplianceItemsRequest.GetUploadType: TComplianceUploadType;
begin
  Result := FUploadType.ValueOrDefault;
end;

procedure TPutComplianceItemsRequest.SetUploadType(const Value: TComplianceUploadType);
begin
  FUploadType := Value;
end;

function TPutComplianceItemsRequest.IsSetUploadType: Boolean;
begin
  Result := FUploadType.HasValue;
end;

end.

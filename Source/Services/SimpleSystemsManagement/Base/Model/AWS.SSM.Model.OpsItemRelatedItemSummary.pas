unit AWS.SSM.Model.OpsItemRelatedItemSummary;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Model.OpsItemIdentity;

type
  TOpsItemRelatedItemSummary = class;
  
  IOpsItemRelatedItemSummary = interface
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetAssociationType: string;
    procedure SetAssociationType(const Value: string);
    function GetCreatedBy: TOpsItemIdentity;
    procedure SetCreatedBy(const Value: TOpsItemIdentity);
    function GetKeepCreatedBy: Boolean;
    procedure SetKeepCreatedBy(const Value: Boolean);
    function GetCreatedTime: TDateTime;
    procedure SetCreatedTime(const Value: TDateTime);
    function GetLastModifiedBy: TOpsItemIdentity;
    procedure SetLastModifiedBy(const Value: TOpsItemIdentity);
    function GetKeepLastModifiedBy: Boolean;
    procedure SetKeepLastModifiedBy(const Value: Boolean);
    function GetLastModifiedTime: TDateTime;
    procedure SetLastModifiedTime(const Value: TDateTime);
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
    function GetResourceType: string;
    procedure SetResourceType(const Value: string);
    function GetResourceUri: string;
    procedure SetResourceUri(const Value: string);
    function Obj: TOpsItemRelatedItemSummary;
    function IsSetAssociationId: Boolean;
    function IsSetAssociationType: Boolean;
    function IsSetCreatedBy: Boolean;
    function IsSetCreatedTime: Boolean;
    function IsSetLastModifiedBy: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetOpsItemId: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetResourceUri: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AssociationType: string read GetAssociationType write SetAssociationType;
    property CreatedBy: TOpsItemIdentity read GetCreatedBy write SetCreatedBy;
    property KeepCreatedBy: Boolean read GetKeepCreatedBy write SetKeepCreatedBy;
    property CreatedTime: TDateTime read GetCreatedTime write SetCreatedTime;
    property LastModifiedBy: TOpsItemIdentity read GetLastModifiedBy write SetLastModifiedBy;
    property KeepLastModifiedBy: Boolean read GetKeepLastModifiedBy write SetKeepLastModifiedBy;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
    property ResourceType: string read GetResourceType write SetResourceType;
    property ResourceUri: string read GetResourceUri write SetResourceUri;
  end;
  
  TOpsItemRelatedItemSummary = class
  strict private
    FAssociationId: Nullable<string>;
    FAssociationType: Nullable<string>;
    FCreatedBy: TOpsItemIdentity;
    FKeepCreatedBy: Boolean;
    FCreatedTime: Nullable<TDateTime>;
    FLastModifiedBy: TOpsItemIdentity;
    FKeepLastModifiedBy: Boolean;
    FLastModifiedTime: Nullable<TDateTime>;
    FOpsItemId: Nullable<string>;
    FResourceType: Nullable<string>;
    FResourceUri: Nullable<string>;
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetAssociationType: string;
    procedure SetAssociationType(const Value: string);
    function GetCreatedBy: TOpsItemIdentity;
    procedure SetCreatedBy(const Value: TOpsItemIdentity);
    function GetKeepCreatedBy: Boolean;
    procedure SetKeepCreatedBy(const Value: Boolean);
    function GetCreatedTime: TDateTime;
    procedure SetCreatedTime(const Value: TDateTime);
    function GetLastModifiedBy: TOpsItemIdentity;
    procedure SetLastModifiedBy(const Value: TOpsItemIdentity);
    function GetKeepLastModifiedBy: Boolean;
    procedure SetKeepLastModifiedBy(const Value: Boolean);
    function GetLastModifiedTime: TDateTime;
    procedure SetLastModifiedTime(const Value: TDateTime);
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
    function GetResourceType: string;
    procedure SetResourceType(const Value: string);
    function GetResourceUri: string;
    procedure SetResourceUri(const Value: string);
  strict protected
    function Obj: TOpsItemRelatedItemSummary;
  public
    destructor Destroy; override;
    function IsSetAssociationId: Boolean;
    function IsSetAssociationType: Boolean;
    function IsSetCreatedBy: Boolean;
    function IsSetCreatedTime: Boolean;
    function IsSetLastModifiedBy: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetOpsItemId: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetResourceUri: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AssociationType: string read GetAssociationType write SetAssociationType;
    property CreatedBy: TOpsItemIdentity read GetCreatedBy write SetCreatedBy;
    property KeepCreatedBy: Boolean read GetKeepCreatedBy write SetKeepCreatedBy;
    property CreatedTime: TDateTime read GetCreatedTime write SetCreatedTime;
    property LastModifiedBy: TOpsItemIdentity read GetLastModifiedBy write SetLastModifiedBy;
    property KeepLastModifiedBy: Boolean read GetKeepLastModifiedBy write SetKeepLastModifiedBy;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
    property ResourceType: string read GetResourceType write SetResourceType;
    property ResourceUri: string read GetResourceUri write SetResourceUri;
  end;
  
implementation

{ TOpsItemRelatedItemSummary }

destructor TOpsItemRelatedItemSummary.Destroy;
begin
  LastModifiedBy := nil;
  CreatedBy := nil;
  inherited;
end;

function TOpsItemRelatedItemSummary.Obj: TOpsItemRelatedItemSummary;
begin
  Result := Self;
end;

function TOpsItemRelatedItemSummary.GetAssociationId: string;
begin
  Result := FAssociationId.ValueOrDefault;
end;

procedure TOpsItemRelatedItemSummary.SetAssociationId(const Value: string);
begin
  FAssociationId := Value;
end;

function TOpsItemRelatedItemSummary.IsSetAssociationId: Boolean;
begin
  Result := FAssociationId.HasValue;
end;

function TOpsItemRelatedItemSummary.GetAssociationType: string;
begin
  Result := FAssociationType.ValueOrDefault;
end;

procedure TOpsItemRelatedItemSummary.SetAssociationType(const Value: string);
begin
  FAssociationType := Value;
end;

function TOpsItemRelatedItemSummary.IsSetAssociationType: Boolean;
begin
  Result := FAssociationType.HasValue;
end;

function TOpsItemRelatedItemSummary.GetCreatedBy: TOpsItemIdentity;
begin
  Result := FCreatedBy;
end;

procedure TOpsItemRelatedItemSummary.SetCreatedBy(const Value: TOpsItemIdentity);
begin
  if FCreatedBy <> Value then
  begin
    if not KeepCreatedBy then
      FCreatedBy.Free;
    FCreatedBy := Value;
  end;
end;

function TOpsItemRelatedItemSummary.GetKeepCreatedBy: Boolean;
begin
  Result := FKeepCreatedBy;
end;

procedure TOpsItemRelatedItemSummary.SetKeepCreatedBy(const Value: Boolean);
begin
  FKeepCreatedBy := Value;
end;

function TOpsItemRelatedItemSummary.IsSetCreatedBy: Boolean;
begin
  Result := FCreatedBy <> nil;
end;

function TOpsItemRelatedItemSummary.GetCreatedTime: TDateTime;
begin
  Result := FCreatedTime.ValueOrDefault;
end;

procedure TOpsItemRelatedItemSummary.SetCreatedTime(const Value: TDateTime);
begin
  FCreatedTime := Value;
end;

function TOpsItemRelatedItemSummary.IsSetCreatedTime: Boolean;
begin
  Result := FCreatedTime.HasValue;
end;

function TOpsItemRelatedItemSummary.GetLastModifiedBy: TOpsItemIdentity;
begin
  Result := FLastModifiedBy;
end;

procedure TOpsItemRelatedItemSummary.SetLastModifiedBy(const Value: TOpsItemIdentity);
begin
  if FLastModifiedBy <> Value then
  begin
    if not KeepLastModifiedBy then
      FLastModifiedBy.Free;
    FLastModifiedBy := Value;
  end;
end;

function TOpsItemRelatedItemSummary.GetKeepLastModifiedBy: Boolean;
begin
  Result := FKeepLastModifiedBy;
end;

procedure TOpsItemRelatedItemSummary.SetKeepLastModifiedBy(const Value: Boolean);
begin
  FKeepLastModifiedBy := Value;
end;

function TOpsItemRelatedItemSummary.IsSetLastModifiedBy: Boolean;
begin
  Result := FLastModifiedBy <> nil;
end;

function TOpsItemRelatedItemSummary.GetLastModifiedTime: TDateTime;
begin
  Result := FLastModifiedTime.ValueOrDefault;
end;

procedure TOpsItemRelatedItemSummary.SetLastModifiedTime(const Value: TDateTime);
begin
  FLastModifiedTime := Value;
end;

function TOpsItemRelatedItemSummary.IsSetLastModifiedTime: Boolean;
begin
  Result := FLastModifiedTime.HasValue;
end;

function TOpsItemRelatedItemSummary.GetOpsItemId: string;
begin
  Result := FOpsItemId.ValueOrDefault;
end;

procedure TOpsItemRelatedItemSummary.SetOpsItemId(const Value: string);
begin
  FOpsItemId := Value;
end;

function TOpsItemRelatedItemSummary.IsSetOpsItemId: Boolean;
begin
  Result := FOpsItemId.HasValue;
end;

function TOpsItemRelatedItemSummary.GetResourceType: string;
begin
  Result := FResourceType.ValueOrDefault;
end;

procedure TOpsItemRelatedItemSummary.SetResourceType(const Value: string);
begin
  FResourceType := Value;
end;

function TOpsItemRelatedItemSummary.IsSetResourceType: Boolean;
begin
  Result := FResourceType.HasValue;
end;

function TOpsItemRelatedItemSummary.GetResourceUri: string;
begin
  Result := FResourceUri.ValueOrDefault;
end;

procedure TOpsItemRelatedItemSummary.SetResourceUri(const Value: string);
begin
  FResourceUri := Value;
end;

function TOpsItemRelatedItemSummary.IsSetResourceUri: Boolean;
begin
  Result := FResourceUri.HasValue;
end;

end.

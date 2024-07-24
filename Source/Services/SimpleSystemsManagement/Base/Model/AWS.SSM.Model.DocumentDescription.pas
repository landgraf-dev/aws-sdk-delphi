unit AWS.SSM.Model.DocumentDescription;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Model.AttachmentInformation, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.DocumentParameter, 
  AWS.SSM.Model.DocumentRequires, 
  AWS.SSM.Model.ReviewInformation, 
  AWS.SSM.Model.Tag;

type
  TDocumentDescription = class;
  
  IDocumentDescription = interface
    function GetApprovedVersion: string;
    procedure SetApprovedVersion(const Value: string);
    function GetAttachmentsInformation: TObjectList<TAttachmentInformation>;
    procedure SetAttachmentsInformation(const Value: TObjectList<TAttachmentInformation>);
    function GetKeepAttachmentsInformation: Boolean;
    procedure SetKeepAttachmentsInformation(const Value: Boolean);
    function GetAuthor: string;
    procedure SetAuthor(const Value: string);
    function GetCategory: TList<string>;
    procedure SetCategory(const Value: TList<string>);
    function GetKeepCategory: Boolean;
    procedure SetKeepCategory(const Value: Boolean);
    function GetCategoryEnum: TList<string>;
    procedure SetCategoryEnum(const Value: TList<string>);
    function GetKeepCategoryEnum: Boolean;
    procedure SetKeepCategoryEnum(const Value: Boolean);
    function GetCreatedDate: TDateTime;
    procedure SetCreatedDate(const Value: TDateTime);
    function GetDefaultVersion: string;
    procedure SetDefaultVersion(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetDocumentFormat: TDocumentFormat;
    procedure SetDocumentFormat(const Value: TDocumentFormat);
    function GetDocumentType: TDocumentType;
    procedure SetDocumentType(const Value: TDocumentType);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetHash: string;
    procedure SetHash(const Value: string);
    function GetHashType: TDocumentHashType;
    procedure SetHashType(const Value: TDocumentHashType);
    function GetLatestVersion: string;
    procedure SetLatestVersion(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOwner: string;
    procedure SetOwner(const Value: string);
    function GetParameters: TObjectList<TDocumentParameter>;
    procedure SetParameters(const Value: TObjectList<TDocumentParameter>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function GetPendingReviewVersion: string;
    procedure SetPendingReviewVersion(const Value: string);
    function GetPlatformTypes: TList<string>;
    procedure SetPlatformTypes(const Value: TList<string>);
    function GetKeepPlatformTypes: Boolean;
    procedure SetKeepPlatformTypes(const Value: Boolean);
    function GetRequires: TObjectList<TDocumentRequires>;
    procedure SetRequires(const Value: TObjectList<TDocumentRequires>);
    function GetKeepRequires: Boolean;
    procedure SetKeepRequires(const Value: Boolean);
    function GetReviewInformation: TObjectList<TReviewInformation>;
    procedure SetReviewInformation(const Value: TObjectList<TReviewInformation>);
    function GetKeepReviewInformation: Boolean;
    procedure SetKeepReviewInformation(const Value: Boolean);
    function GetReviewStatus: TReviewStatus;
    procedure SetReviewStatus(const Value: TReviewStatus);
    function GetSchemaVersion: string;
    procedure SetSchemaVersion(const Value: string);
    function GetSha1: string;
    procedure SetSha1(const Value: string);
    function GetStatus: TDocumentStatus;
    procedure SetStatus(const Value: TDocumentStatus);
    function GetStatusInformation: string;
    procedure SetStatusInformation(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTargetType: string;
    procedure SetTargetType(const Value: string);
    function GetVersionName: string;
    procedure SetVersionName(const Value: string);
    function Obj: TDocumentDescription;
    function IsSetApprovedVersion: Boolean;
    function IsSetAttachmentsInformation: Boolean;
    function IsSetAuthor: Boolean;
    function IsSetCategory: Boolean;
    function IsSetCategoryEnum: Boolean;
    function IsSetCreatedDate: Boolean;
    function IsSetDefaultVersion: Boolean;
    function IsSetDescription: Boolean;
    function IsSetDisplayName: Boolean;
    function IsSetDocumentFormat: Boolean;
    function IsSetDocumentType: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetHash: Boolean;
    function IsSetHashType: Boolean;
    function IsSetLatestVersion: Boolean;
    function IsSetName: Boolean;
    function IsSetOwner: Boolean;
    function IsSetParameters: Boolean;
    function IsSetPendingReviewVersion: Boolean;
    function IsSetPlatformTypes: Boolean;
    function IsSetRequires: Boolean;
    function IsSetReviewInformation: Boolean;
    function IsSetReviewStatus: Boolean;
    function IsSetSchemaVersion: Boolean;
    function IsSetSha1: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusInformation: Boolean;
    function IsSetTags: Boolean;
    function IsSetTargetType: Boolean;
    function IsSetVersionName: Boolean;
    property ApprovedVersion: string read GetApprovedVersion write SetApprovedVersion;
    property AttachmentsInformation: TObjectList<TAttachmentInformation> read GetAttachmentsInformation write SetAttachmentsInformation;
    property KeepAttachmentsInformation: Boolean read GetKeepAttachmentsInformation write SetKeepAttachmentsInformation;
    property Author: string read GetAuthor write SetAuthor;
    property Category: TList<string> read GetCategory write SetCategory;
    property KeepCategory: Boolean read GetKeepCategory write SetKeepCategory;
    property CategoryEnum: TList<string> read GetCategoryEnum write SetCategoryEnum;
    property KeepCategoryEnum: Boolean read GetKeepCategoryEnum write SetKeepCategoryEnum;
    property CreatedDate: TDateTime read GetCreatedDate write SetCreatedDate;
    property DefaultVersion: string read GetDefaultVersion write SetDefaultVersion;
    property Description: string read GetDescription write SetDescription;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property DocumentFormat: TDocumentFormat read GetDocumentFormat write SetDocumentFormat;
    property DocumentType: TDocumentType read GetDocumentType write SetDocumentType;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Hash: string read GetHash write SetHash;
    property HashType: TDocumentHashType read GetHashType write SetHashType;
    property LatestVersion: string read GetLatestVersion write SetLatestVersion;
    property Name: string read GetName write SetName;
    property Owner: string read GetOwner write SetOwner;
    property Parameters: TObjectList<TDocumentParameter> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
    property PendingReviewVersion: string read GetPendingReviewVersion write SetPendingReviewVersion;
    property PlatformTypes: TList<string> read GetPlatformTypes write SetPlatformTypes;
    property KeepPlatformTypes: Boolean read GetKeepPlatformTypes write SetKeepPlatformTypes;
    property Requires: TObjectList<TDocumentRequires> read GetRequires write SetRequires;
    property KeepRequires: Boolean read GetKeepRequires write SetKeepRequires;
    property ReviewInformation: TObjectList<TReviewInformation> read GetReviewInformation write SetReviewInformation;
    property KeepReviewInformation: Boolean read GetKeepReviewInformation write SetKeepReviewInformation;
    property ReviewStatus: TReviewStatus read GetReviewStatus write SetReviewStatus;
    property SchemaVersion: string read GetSchemaVersion write SetSchemaVersion;
    property Sha1: string read GetSha1 write SetSha1;
    property Status: TDocumentStatus read GetStatus write SetStatus;
    property StatusInformation: string read GetStatusInformation write SetStatusInformation;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property TargetType: string read GetTargetType write SetTargetType;
    property VersionName: string read GetVersionName write SetVersionName;
  end;
  
  TDocumentDescription = class
  strict private
    FApprovedVersion: Nullable<string>;
    FAttachmentsInformation: TObjectList<TAttachmentInformation>;
    FKeepAttachmentsInformation: Boolean;
    FAuthor: Nullable<string>;
    FCategory: TList<string>;
    FKeepCategory: Boolean;
    FCategoryEnum: TList<string>;
    FKeepCategoryEnum: Boolean;
    FCreatedDate: Nullable<TDateTime>;
    FDefaultVersion: Nullable<string>;
    FDescription: Nullable<string>;
    FDisplayName: Nullable<string>;
    FDocumentFormat: Nullable<TDocumentFormat>;
    FDocumentType: Nullable<TDocumentType>;
    FDocumentVersion: Nullable<string>;
    FHash: Nullable<string>;
    FHashType: Nullable<TDocumentHashType>;
    FLatestVersion: Nullable<string>;
    FName: Nullable<string>;
    FOwner: Nullable<string>;
    FParameters: TObjectList<TDocumentParameter>;
    FKeepParameters: Boolean;
    FPendingReviewVersion: Nullable<string>;
    FPlatformTypes: TList<string>;
    FKeepPlatformTypes: Boolean;
    FRequires: TObjectList<TDocumentRequires>;
    FKeepRequires: Boolean;
    FReviewInformation: TObjectList<TReviewInformation>;
    FKeepReviewInformation: Boolean;
    FReviewStatus: Nullable<TReviewStatus>;
    FSchemaVersion: Nullable<string>;
    FSha1: Nullable<string>;
    FStatus: Nullable<TDocumentStatus>;
    FStatusInformation: Nullable<string>;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    FTargetType: Nullable<string>;
    FVersionName: Nullable<string>;
    function GetApprovedVersion: string;
    procedure SetApprovedVersion(const Value: string);
    function GetAttachmentsInformation: TObjectList<TAttachmentInformation>;
    procedure SetAttachmentsInformation(const Value: TObjectList<TAttachmentInformation>);
    function GetKeepAttachmentsInformation: Boolean;
    procedure SetKeepAttachmentsInformation(const Value: Boolean);
    function GetAuthor: string;
    procedure SetAuthor(const Value: string);
    function GetCategory: TList<string>;
    procedure SetCategory(const Value: TList<string>);
    function GetKeepCategory: Boolean;
    procedure SetKeepCategory(const Value: Boolean);
    function GetCategoryEnum: TList<string>;
    procedure SetCategoryEnum(const Value: TList<string>);
    function GetKeepCategoryEnum: Boolean;
    procedure SetKeepCategoryEnum(const Value: Boolean);
    function GetCreatedDate: TDateTime;
    procedure SetCreatedDate(const Value: TDateTime);
    function GetDefaultVersion: string;
    procedure SetDefaultVersion(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetDocumentFormat: TDocumentFormat;
    procedure SetDocumentFormat(const Value: TDocumentFormat);
    function GetDocumentType: TDocumentType;
    procedure SetDocumentType(const Value: TDocumentType);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetHash: string;
    procedure SetHash(const Value: string);
    function GetHashType: TDocumentHashType;
    procedure SetHashType(const Value: TDocumentHashType);
    function GetLatestVersion: string;
    procedure SetLatestVersion(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOwner: string;
    procedure SetOwner(const Value: string);
    function GetParameters: TObjectList<TDocumentParameter>;
    procedure SetParameters(const Value: TObjectList<TDocumentParameter>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function GetPendingReviewVersion: string;
    procedure SetPendingReviewVersion(const Value: string);
    function GetPlatformTypes: TList<string>;
    procedure SetPlatformTypes(const Value: TList<string>);
    function GetKeepPlatformTypes: Boolean;
    procedure SetKeepPlatformTypes(const Value: Boolean);
    function GetRequires: TObjectList<TDocumentRequires>;
    procedure SetRequires(const Value: TObjectList<TDocumentRequires>);
    function GetKeepRequires: Boolean;
    procedure SetKeepRequires(const Value: Boolean);
    function GetReviewInformation: TObjectList<TReviewInformation>;
    procedure SetReviewInformation(const Value: TObjectList<TReviewInformation>);
    function GetKeepReviewInformation: Boolean;
    procedure SetKeepReviewInformation(const Value: Boolean);
    function GetReviewStatus: TReviewStatus;
    procedure SetReviewStatus(const Value: TReviewStatus);
    function GetSchemaVersion: string;
    procedure SetSchemaVersion(const Value: string);
    function GetSha1: string;
    procedure SetSha1(const Value: string);
    function GetStatus: TDocumentStatus;
    procedure SetStatus(const Value: TDocumentStatus);
    function GetStatusInformation: string;
    procedure SetStatusInformation(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTargetType: string;
    procedure SetTargetType(const Value: string);
    function GetVersionName: string;
    procedure SetVersionName(const Value: string);
  strict protected
    function Obj: TDocumentDescription;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetApprovedVersion: Boolean;
    function IsSetAttachmentsInformation: Boolean;
    function IsSetAuthor: Boolean;
    function IsSetCategory: Boolean;
    function IsSetCategoryEnum: Boolean;
    function IsSetCreatedDate: Boolean;
    function IsSetDefaultVersion: Boolean;
    function IsSetDescription: Boolean;
    function IsSetDisplayName: Boolean;
    function IsSetDocumentFormat: Boolean;
    function IsSetDocumentType: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetHash: Boolean;
    function IsSetHashType: Boolean;
    function IsSetLatestVersion: Boolean;
    function IsSetName: Boolean;
    function IsSetOwner: Boolean;
    function IsSetParameters: Boolean;
    function IsSetPendingReviewVersion: Boolean;
    function IsSetPlatformTypes: Boolean;
    function IsSetRequires: Boolean;
    function IsSetReviewInformation: Boolean;
    function IsSetReviewStatus: Boolean;
    function IsSetSchemaVersion: Boolean;
    function IsSetSha1: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusInformation: Boolean;
    function IsSetTags: Boolean;
    function IsSetTargetType: Boolean;
    function IsSetVersionName: Boolean;
    property ApprovedVersion: string read GetApprovedVersion write SetApprovedVersion;
    property AttachmentsInformation: TObjectList<TAttachmentInformation> read GetAttachmentsInformation write SetAttachmentsInformation;
    property KeepAttachmentsInformation: Boolean read GetKeepAttachmentsInformation write SetKeepAttachmentsInformation;
    property Author: string read GetAuthor write SetAuthor;
    property Category: TList<string> read GetCategory write SetCategory;
    property KeepCategory: Boolean read GetKeepCategory write SetKeepCategory;
    property CategoryEnum: TList<string> read GetCategoryEnum write SetCategoryEnum;
    property KeepCategoryEnum: Boolean read GetKeepCategoryEnum write SetKeepCategoryEnum;
    property CreatedDate: TDateTime read GetCreatedDate write SetCreatedDate;
    property DefaultVersion: string read GetDefaultVersion write SetDefaultVersion;
    property Description: string read GetDescription write SetDescription;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property DocumentFormat: TDocumentFormat read GetDocumentFormat write SetDocumentFormat;
    property DocumentType: TDocumentType read GetDocumentType write SetDocumentType;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Hash: string read GetHash write SetHash;
    property HashType: TDocumentHashType read GetHashType write SetHashType;
    property LatestVersion: string read GetLatestVersion write SetLatestVersion;
    property Name: string read GetName write SetName;
    property Owner: string read GetOwner write SetOwner;
    property Parameters: TObjectList<TDocumentParameter> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
    property PendingReviewVersion: string read GetPendingReviewVersion write SetPendingReviewVersion;
    property PlatformTypes: TList<string> read GetPlatformTypes write SetPlatformTypes;
    property KeepPlatformTypes: Boolean read GetKeepPlatformTypes write SetKeepPlatformTypes;
    property Requires: TObjectList<TDocumentRequires> read GetRequires write SetRequires;
    property KeepRequires: Boolean read GetKeepRequires write SetKeepRequires;
    property ReviewInformation: TObjectList<TReviewInformation> read GetReviewInformation write SetReviewInformation;
    property KeepReviewInformation: Boolean read GetKeepReviewInformation write SetKeepReviewInformation;
    property ReviewStatus: TReviewStatus read GetReviewStatus write SetReviewStatus;
    property SchemaVersion: string read GetSchemaVersion write SetSchemaVersion;
    property Sha1: string read GetSha1 write SetSha1;
    property Status: TDocumentStatus read GetStatus write SetStatus;
    property StatusInformation: string read GetStatusInformation write SetStatusInformation;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property TargetType: string read GetTargetType write SetTargetType;
    property VersionName: string read GetVersionName write SetVersionName;
  end;
  
implementation

{ TDocumentDescription }

constructor TDocumentDescription.Create;
begin
  inherited;
  FAttachmentsInformation := TObjectList<TAttachmentInformation>.Create;
  FCategory := TList<string>.Create;
  FCategoryEnum := TList<string>.Create;
  FParameters := TObjectList<TDocumentParameter>.Create;
  FPlatformTypes := TList<string>.Create;
  FRequires := TObjectList<TDocumentRequires>.Create;
  FReviewInformation := TObjectList<TReviewInformation>.Create;
  FTags := TObjectList<TTag>.Create;
end;

destructor TDocumentDescription.Destroy;
begin
  Tags := nil;
  ReviewInformation := nil;
  Requires := nil;
  PlatformTypes := nil;
  Parameters := nil;
  CategoryEnum := nil;
  Category := nil;
  AttachmentsInformation := nil;
  inherited;
end;

function TDocumentDescription.Obj: TDocumentDescription;
begin
  Result := Self;
end;

function TDocumentDescription.GetApprovedVersion: string;
begin
  Result := FApprovedVersion.ValueOrDefault;
end;

procedure TDocumentDescription.SetApprovedVersion(const Value: string);
begin
  FApprovedVersion := Value;
end;

function TDocumentDescription.IsSetApprovedVersion: Boolean;
begin
  Result := FApprovedVersion.HasValue;
end;

function TDocumentDescription.GetAttachmentsInformation: TObjectList<TAttachmentInformation>;
begin
  Result := FAttachmentsInformation;
end;

procedure TDocumentDescription.SetAttachmentsInformation(const Value: TObjectList<TAttachmentInformation>);
begin
  if FAttachmentsInformation <> Value then
  begin
    if not KeepAttachmentsInformation then
      FAttachmentsInformation.Free;
    FAttachmentsInformation := Value;
  end;
end;

function TDocumentDescription.GetKeepAttachmentsInformation: Boolean;
begin
  Result := FKeepAttachmentsInformation;
end;

procedure TDocumentDescription.SetKeepAttachmentsInformation(const Value: Boolean);
begin
  FKeepAttachmentsInformation := Value;
end;

function TDocumentDescription.IsSetAttachmentsInformation: Boolean;
begin
  Result := (FAttachmentsInformation <> nil) and (FAttachmentsInformation.Count > 0);
end;

function TDocumentDescription.GetAuthor: string;
begin
  Result := FAuthor.ValueOrDefault;
end;

procedure TDocumentDescription.SetAuthor(const Value: string);
begin
  FAuthor := Value;
end;

function TDocumentDescription.IsSetAuthor: Boolean;
begin
  Result := FAuthor.HasValue;
end;

function TDocumentDescription.GetCategory: TList<string>;
begin
  Result := FCategory;
end;

procedure TDocumentDescription.SetCategory(const Value: TList<string>);
begin
  if FCategory <> Value then
  begin
    if not KeepCategory then
      FCategory.Free;
    FCategory := Value;
  end;
end;

function TDocumentDescription.GetKeepCategory: Boolean;
begin
  Result := FKeepCategory;
end;

procedure TDocumentDescription.SetKeepCategory(const Value: Boolean);
begin
  FKeepCategory := Value;
end;

function TDocumentDescription.IsSetCategory: Boolean;
begin
  Result := (FCategory <> nil) and (FCategory.Count > 0);
end;

function TDocumentDescription.GetCategoryEnum: TList<string>;
begin
  Result := FCategoryEnum;
end;

procedure TDocumentDescription.SetCategoryEnum(const Value: TList<string>);
begin
  if FCategoryEnum <> Value then
  begin
    if not KeepCategoryEnum then
      FCategoryEnum.Free;
    FCategoryEnum := Value;
  end;
end;

function TDocumentDescription.GetKeepCategoryEnum: Boolean;
begin
  Result := FKeepCategoryEnum;
end;

procedure TDocumentDescription.SetKeepCategoryEnum(const Value: Boolean);
begin
  FKeepCategoryEnum := Value;
end;

function TDocumentDescription.IsSetCategoryEnum: Boolean;
begin
  Result := (FCategoryEnum <> nil) and (FCategoryEnum.Count > 0);
end;

function TDocumentDescription.GetCreatedDate: TDateTime;
begin
  Result := FCreatedDate.ValueOrDefault;
end;

procedure TDocumentDescription.SetCreatedDate(const Value: TDateTime);
begin
  FCreatedDate := Value;
end;

function TDocumentDescription.IsSetCreatedDate: Boolean;
begin
  Result := FCreatedDate.HasValue;
end;

function TDocumentDescription.GetDefaultVersion: string;
begin
  Result := FDefaultVersion.ValueOrDefault;
end;

procedure TDocumentDescription.SetDefaultVersion(const Value: string);
begin
  FDefaultVersion := Value;
end;

function TDocumentDescription.IsSetDefaultVersion: Boolean;
begin
  Result := FDefaultVersion.HasValue;
end;

function TDocumentDescription.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TDocumentDescription.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TDocumentDescription.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TDocumentDescription.GetDisplayName: string;
begin
  Result := FDisplayName.ValueOrDefault;
end;

procedure TDocumentDescription.SetDisplayName(const Value: string);
begin
  FDisplayName := Value;
end;

function TDocumentDescription.IsSetDisplayName: Boolean;
begin
  Result := FDisplayName.HasValue;
end;

function TDocumentDescription.GetDocumentFormat: TDocumentFormat;
begin
  Result := FDocumentFormat.ValueOrDefault;
end;

procedure TDocumentDescription.SetDocumentFormat(const Value: TDocumentFormat);
begin
  FDocumentFormat := Value;
end;

function TDocumentDescription.IsSetDocumentFormat: Boolean;
begin
  Result := FDocumentFormat.HasValue;
end;

function TDocumentDescription.GetDocumentType: TDocumentType;
begin
  Result := FDocumentType.ValueOrDefault;
end;

procedure TDocumentDescription.SetDocumentType(const Value: TDocumentType);
begin
  FDocumentType := Value;
end;

function TDocumentDescription.IsSetDocumentType: Boolean;
begin
  Result := FDocumentType.HasValue;
end;

function TDocumentDescription.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TDocumentDescription.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TDocumentDescription.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TDocumentDescription.GetHash: string;
begin
  Result := FHash.ValueOrDefault;
end;

procedure TDocumentDescription.SetHash(const Value: string);
begin
  FHash := Value;
end;

function TDocumentDescription.IsSetHash: Boolean;
begin
  Result := FHash.HasValue;
end;

function TDocumentDescription.GetHashType: TDocumentHashType;
begin
  Result := FHashType.ValueOrDefault;
end;

procedure TDocumentDescription.SetHashType(const Value: TDocumentHashType);
begin
  FHashType := Value;
end;

function TDocumentDescription.IsSetHashType: Boolean;
begin
  Result := FHashType.HasValue;
end;

function TDocumentDescription.GetLatestVersion: string;
begin
  Result := FLatestVersion.ValueOrDefault;
end;

procedure TDocumentDescription.SetLatestVersion(const Value: string);
begin
  FLatestVersion := Value;
end;

function TDocumentDescription.IsSetLatestVersion: Boolean;
begin
  Result := FLatestVersion.HasValue;
end;

function TDocumentDescription.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDocumentDescription.SetName(const Value: string);
begin
  FName := Value;
end;

function TDocumentDescription.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TDocumentDescription.GetOwner: string;
begin
  Result := FOwner.ValueOrDefault;
end;

procedure TDocumentDescription.SetOwner(const Value: string);
begin
  FOwner := Value;
end;

function TDocumentDescription.IsSetOwner: Boolean;
begin
  Result := FOwner.HasValue;
end;

function TDocumentDescription.GetParameters: TObjectList<TDocumentParameter>;
begin
  Result := FParameters;
end;

procedure TDocumentDescription.SetParameters(const Value: TObjectList<TDocumentParameter>);
begin
  if FParameters <> Value then
  begin
    if not KeepParameters then
      FParameters.Free;
    FParameters := Value;
  end;
end;

function TDocumentDescription.GetKeepParameters: Boolean;
begin
  Result := FKeepParameters;
end;

procedure TDocumentDescription.SetKeepParameters(const Value: Boolean);
begin
  FKeepParameters := Value;
end;

function TDocumentDescription.IsSetParameters: Boolean;
begin
  Result := (FParameters <> nil) and (FParameters.Count > 0);
end;

function TDocumentDescription.GetPendingReviewVersion: string;
begin
  Result := FPendingReviewVersion.ValueOrDefault;
end;

procedure TDocumentDescription.SetPendingReviewVersion(const Value: string);
begin
  FPendingReviewVersion := Value;
end;

function TDocumentDescription.IsSetPendingReviewVersion: Boolean;
begin
  Result := FPendingReviewVersion.HasValue;
end;

function TDocumentDescription.GetPlatformTypes: TList<string>;
begin
  Result := FPlatformTypes;
end;

procedure TDocumentDescription.SetPlatformTypes(const Value: TList<string>);
begin
  if FPlatformTypes <> Value then
  begin
    if not KeepPlatformTypes then
      FPlatformTypes.Free;
    FPlatformTypes := Value;
  end;
end;

function TDocumentDescription.GetKeepPlatformTypes: Boolean;
begin
  Result := FKeepPlatformTypes;
end;

procedure TDocumentDescription.SetKeepPlatformTypes(const Value: Boolean);
begin
  FKeepPlatformTypes := Value;
end;

function TDocumentDescription.IsSetPlatformTypes: Boolean;
begin
  Result := (FPlatformTypes <> nil) and (FPlatformTypes.Count > 0);
end;

function TDocumentDescription.GetRequires: TObjectList<TDocumentRequires>;
begin
  Result := FRequires;
end;

procedure TDocumentDescription.SetRequires(const Value: TObjectList<TDocumentRequires>);
begin
  if FRequires <> Value then
  begin
    if not KeepRequires then
      FRequires.Free;
    FRequires := Value;
  end;
end;

function TDocumentDescription.GetKeepRequires: Boolean;
begin
  Result := FKeepRequires;
end;

procedure TDocumentDescription.SetKeepRequires(const Value: Boolean);
begin
  FKeepRequires := Value;
end;

function TDocumentDescription.IsSetRequires: Boolean;
begin
  Result := (FRequires <> nil) and (FRequires.Count > 0);
end;

function TDocumentDescription.GetReviewInformation: TObjectList<TReviewInformation>;
begin
  Result := FReviewInformation;
end;

procedure TDocumentDescription.SetReviewInformation(const Value: TObjectList<TReviewInformation>);
begin
  if FReviewInformation <> Value then
  begin
    if not KeepReviewInformation then
      FReviewInformation.Free;
    FReviewInformation := Value;
  end;
end;

function TDocumentDescription.GetKeepReviewInformation: Boolean;
begin
  Result := FKeepReviewInformation;
end;

procedure TDocumentDescription.SetKeepReviewInformation(const Value: Boolean);
begin
  FKeepReviewInformation := Value;
end;

function TDocumentDescription.IsSetReviewInformation: Boolean;
begin
  Result := (FReviewInformation <> nil) and (FReviewInformation.Count > 0);
end;

function TDocumentDescription.GetReviewStatus: TReviewStatus;
begin
  Result := FReviewStatus.ValueOrDefault;
end;

procedure TDocumentDescription.SetReviewStatus(const Value: TReviewStatus);
begin
  FReviewStatus := Value;
end;

function TDocumentDescription.IsSetReviewStatus: Boolean;
begin
  Result := FReviewStatus.HasValue;
end;

function TDocumentDescription.GetSchemaVersion: string;
begin
  Result := FSchemaVersion.ValueOrDefault;
end;

procedure TDocumentDescription.SetSchemaVersion(const Value: string);
begin
  FSchemaVersion := Value;
end;

function TDocumentDescription.IsSetSchemaVersion: Boolean;
begin
  Result := FSchemaVersion.HasValue;
end;

function TDocumentDescription.GetSha1: string;
begin
  Result := FSha1.ValueOrDefault;
end;

procedure TDocumentDescription.SetSha1(const Value: string);
begin
  FSha1 := Value;
end;

function TDocumentDescription.IsSetSha1: Boolean;
begin
  Result := FSha1.HasValue;
end;

function TDocumentDescription.GetStatus: TDocumentStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TDocumentDescription.SetStatus(const Value: TDocumentStatus);
begin
  FStatus := Value;
end;

function TDocumentDescription.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TDocumentDescription.GetStatusInformation: string;
begin
  Result := FStatusInformation.ValueOrDefault;
end;

procedure TDocumentDescription.SetStatusInformation(const Value: string);
begin
  FStatusInformation := Value;
end;

function TDocumentDescription.IsSetStatusInformation: Boolean;
begin
  Result := FStatusInformation.HasValue;
end;

function TDocumentDescription.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TDocumentDescription.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TDocumentDescription.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TDocumentDescription.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TDocumentDescription.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

function TDocumentDescription.GetTargetType: string;
begin
  Result := FTargetType.ValueOrDefault;
end;

procedure TDocumentDescription.SetTargetType(const Value: string);
begin
  FTargetType := Value;
end;

function TDocumentDescription.IsSetTargetType: Boolean;
begin
  Result := FTargetType.HasValue;
end;

function TDocumentDescription.GetVersionName: string;
begin
  Result := FVersionName.ValueOrDefault;
end;

procedure TDocumentDescription.SetVersionName(const Value: string);
begin
  FVersionName := Value;
end;

function TDocumentDescription.IsSetVersionName: Boolean;
begin
  Result := FVersionName.HasValue;
end;

end.

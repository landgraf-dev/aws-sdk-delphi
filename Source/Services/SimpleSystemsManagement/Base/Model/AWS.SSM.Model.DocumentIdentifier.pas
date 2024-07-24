unit AWS.SSM.Model.DocumentIdentifier;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.DocumentRequires, 
  AWS.SSM.Model.Tag;

type
  TDocumentIdentifier = class;
  
  IDocumentIdentifier = interface
    function GetAuthor: string;
    procedure SetAuthor(const Value: string);
    function GetCreatedDate: TDateTime;
    procedure SetCreatedDate(const Value: TDateTime);
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetDocumentFormat: TDocumentFormat;
    procedure SetDocumentFormat(const Value: TDocumentFormat);
    function GetDocumentType: TDocumentType;
    procedure SetDocumentType(const Value: TDocumentType);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOwner: string;
    procedure SetOwner(const Value: string);
    function GetPlatformTypes: TList<string>;
    procedure SetPlatformTypes(const Value: TList<string>);
    function GetKeepPlatformTypes: Boolean;
    procedure SetKeepPlatformTypes(const Value: Boolean);
    function GetRequires: TObjectList<TDocumentRequires>;
    procedure SetRequires(const Value: TObjectList<TDocumentRequires>);
    function GetKeepRequires: Boolean;
    procedure SetKeepRequires(const Value: Boolean);
    function GetReviewStatus: TReviewStatus;
    procedure SetReviewStatus(const Value: TReviewStatus);
    function GetSchemaVersion: string;
    procedure SetSchemaVersion(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTargetType: string;
    procedure SetTargetType(const Value: string);
    function GetVersionName: string;
    procedure SetVersionName(const Value: string);
    function Obj: TDocumentIdentifier;
    function IsSetAuthor: Boolean;
    function IsSetCreatedDate: Boolean;
    function IsSetDisplayName: Boolean;
    function IsSetDocumentFormat: Boolean;
    function IsSetDocumentType: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetName: Boolean;
    function IsSetOwner: Boolean;
    function IsSetPlatformTypes: Boolean;
    function IsSetRequires: Boolean;
    function IsSetReviewStatus: Boolean;
    function IsSetSchemaVersion: Boolean;
    function IsSetTags: Boolean;
    function IsSetTargetType: Boolean;
    function IsSetVersionName: Boolean;
    property Author: string read GetAuthor write SetAuthor;
    property CreatedDate: TDateTime read GetCreatedDate write SetCreatedDate;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property DocumentFormat: TDocumentFormat read GetDocumentFormat write SetDocumentFormat;
    property DocumentType: TDocumentType read GetDocumentType write SetDocumentType;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Name: string read GetName write SetName;
    property Owner: string read GetOwner write SetOwner;
    property PlatformTypes: TList<string> read GetPlatformTypes write SetPlatformTypes;
    property KeepPlatformTypes: Boolean read GetKeepPlatformTypes write SetKeepPlatformTypes;
    property Requires: TObjectList<TDocumentRequires> read GetRequires write SetRequires;
    property KeepRequires: Boolean read GetKeepRequires write SetKeepRequires;
    property ReviewStatus: TReviewStatus read GetReviewStatus write SetReviewStatus;
    property SchemaVersion: string read GetSchemaVersion write SetSchemaVersion;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property TargetType: string read GetTargetType write SetTargetType;
    property VersionName: string read GetVersionName write SetVersionName;
  end;
  
  TDocumentIdentifier = class
  strict private
    FAuthor: Nullable<string>;
    FCreatedDate: Nullable<TDateTime>;
    FDisplayName: Nullable<string>;
    FDocumentFormat: Nullable<TDocumentFormat>;
    FDocumentType: Nullable<TDocumentType>;
    FDocumentVersion: Nullable<string>;
    FName: Nullable<string>;
    FOwner: Nullable<string>;
    FPlatformTypes: TList<string>;
    FKeepPlatformTypes: Boolean;
    FRequires: TObjectList<TDocumentRequires>;
    FKeepRequires: Boolean;
    FReviewStatus: Nullable<TReviewStatus>;
    FSchemaVersion: Nullable<string>;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    FTargetType: Nullable<string>;
    FVersionName: Nullable<string>;
    function GetAuthor: string;
    procedure SetAuthor(const Value: string);
    function GetCreatedDate: TDateTime;
    procedure SetCreatedDate(const Value: TDateTime);
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetDocumentFormat: TDocumentFormat;
    procedure SetDocumentFormat(const Value: TDocumentFormat);
    function GetDocumentType: TDocumentType;
    procedure SetDocumentType(const Value: TDocumentType);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOwner: string;
    procedure SetOwner(const Value: string);
    function GetPlatformTypes: TList<string>;
    procedure SetPlatformTypes(const Value: TList<string>);
    function GetKeepPlatformTypes: Boolean;
    procedure SetKeepPlatformTypes(const Value: Boolean);
    function GetRequires: TObjectList<TDocumentRequires>;
    procedure SetRequires(const Value: TObjectList<TDocumentRequires>);
    function GetKeepRequires: Boolean;
    procedure SetKeepRequires(const Value: Boolean);
    function GetReviewStatus: TReviewStatus;
    procedure SetReviewStatus(const Value: TReviewStatus);
    function GetSchemaVersion: string;
    procedure SetSchemaVersion(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTargetType: string;
    procedure SetTargetType(const Value: string);
    function GetVersionName: string;
    procedure SetVersionName(const Value: string);
  strict protected
    function Obj: TDocumentIdentifier;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const AName: string); overload;
    function IsSetAuthor: Boolean;
    function IsSetCreatedDate: Boolean;
    function IsSetDisplayName: Boolean;
    function IsSetDocumentFormat: Boolean;
    function IsSetDocumentType: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetName: Boolean;
    function IsSetOwner: Boolean;
    function IsSetPlatformTypes: Boolean;
    function IsSetRequires: Boolean;
    function IsSetReviewStatus: Boolean;
    function IsSetSchemaVersion: Boolean;
    function IsSetTags: Boolean;
    function IsSetTargetType: Boolean;
    function IsSetVersionName: Boolean;
    property Author: string read GetAuthor write SetAuthor;
    property CreatedDate: TDateTime read GetCreatedDate write SetCreatedDate;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property DocumentFormat: TDocumentFormat read GetDocumentFormat write SetDocumentFormat;
    property DocumentType: TDocumentType read GetDocumentType write SetDocumentType;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Name: string read GetName write SetName;
    property Owner: string read GetOwner write SetOwner;
    property PlatformTypes: TList<string> read GetPlatformTypes write SetPlatformTypes;
    property KeepPlatformTypes: Boolean read GetKeepPlatformTypes write SetKeepPlatformTypes;
    property Requires: TObjectList<TDocumentRequires> read GetRequires write SetRequires;
    property KeepRequires: Boolean read GetKeepRequires write SetKeepRequires;
    property ReviewStatus: TReviewStatus read GetReviewStatus write SetReviewStatus;
    property SchemaVersion: string read GetSchemaVersion write SetSchemaVersion;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property TargetType: string read GetTargetType write SetTargetType;
    property VersionName: string read GetVersionName write SetVersionName;
  end;
  
implementation

{ TDocumentIdentifier }

constructor TDocumentIdentifier.Create;
begin
  inherited;
  FPlatformTypes := TList<string>.Create;
  FRequires := TObjectList<TDocumentRequires>.Create;
  FTags := TObjectList<TTag>.Create;
end;

destructor TDocumentIdentifier.Destroy;
begin
  Tags := nil;
  Requires := nil;
  PlatformTypes := nil;
  inherited;
end;

function TDocumentIdentifier.Obj: TDocumentIdentifier;
begin
  Result := Self;
end;

constructor TDocumentIdentifier.Create(const AName: string);
begin
  Create;
  Name := AName;
end;

function TDocumentIdentifier.GetAuthor: string;
begin
  Result := FAuthor.ValueOrDefault;
end;

procedure TDocumentIdentifier.SetAuthor(const Value: string);
begin
  FAuthor := Value;
end;

function TDocumentIdentifier.IsSetAuthor: Boolean;
begin
  Result := FAuthor.HasValue;
end;

function TDocumentIdentifier.GetCreatedDate: TDateTime;
begin
  Result := FCreatedDate.ValueOrDefault;
end;

procedure TDocumentIdentifier.SetCreatedDate(const Value: TDateTime);
begin
  FCreatedDate := Value;
end;

function TDocumentIdentifier.IsSetCreatedDate: Boolean;
begin
  Result := FCreatedDate.HasValue;
end;

function TDocumentIdentifier.GetDisplayName: string;
begin
  Result := FDisplayName.ValueOrDefault;
end;

procedure TDocumentIdentifier.SetDisplayName(const Value: string);
begin
  FDisplayName := Value;
end;

function TDocumentIdentifier.IsSetDisplayName: Boolean;
begin
  Result := FDisplayName.HasValue;
end;

function TDocumentIdentifier.GetDocumentFormat: TDocumentFormat;
begin
  Result := FDocumentFormat.ValueOrDefault;
end;

procedure TDocumentIdentifier.SetDocumentFormat(const Value: TDocumentFormat);
begin
  FDocumentFormat := Value;
end;

function TDocumentIdentifier.IsSetDocumentFormat: Boolean;
begin
  Result := FDocumentFormat.HasValue;
end;

function TDocumentIdentifier.GetDocumentType: TDocumentType;
begin
  Result := FDocumentType.ValueOrDefault;
end;

procedure TDocumentIdentifier.SetDocumentType(const Value: TDocumentType);
begin
  FDocumentType := Value;
end;

function TDocumentIdentifier.IsSetDocumentType: Boolean;
begin
  Result := FDocumentType.HasValue;
end;

function TDocumentIdentifier.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TDocumentIdentifier.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TDocumentIdentifier.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TDocumentIdentifier.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDocumentIdentifier.SetName(const Value: string);
begin
  FName := Value;
end;

function TDocumentIdentifier.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TDocumentIdentifier.GetOwner: string;
begin
  Result := FOwner.ValueOrDefault;
end;

procedure TDocumentIdentifier.SetOwner(const Value: string);
begin
  FOwner := Value;
end;

function TDocumentIdentifier.IsSetOwner: Boolean;
begin
  Result := FOwner.HasValue;
end;

function TDocumentIdentifier.GetPlatformTypes: TList<string>;
begin
  Result := FPlatformTypes;
end;

procedure TDocumentIdentifier.SetPlatformTypes(const Value: TList<string>);
begin
  if FPlatformTypes <> Value then
  begin
    if not KeepPlatformTypes then
      FPlatformTypes.Free;
    FPlatformTypes := Value;
  end;
end;

function TDocumentIdentifier.GetKeepPlatformTypes: Boolean;
begin
  Result := FKeepPlatformTypes;
end;

procedure TDocumentIdentifier.SetKeepPlatformTypes(const Value: Boolean);
begin
  FKeepPlatformTypes := Value;
end;

function TDocumentIdentifier.IsSetPlatformTypes: Boolean;
begin
  Result := (FPlatformTypes <> nil) and (FPlatformTypes.Count > 0);
end;

function TDocumentIdentifier.GetRequires: TObjectList<TDocumentRequires>;
begin
  Result := FRequires;
end;

procedure TDocumentIdentifier.SetRequires(const Value: TObjectList<TDocumentRequires>);
begin
  if FRequires <> Value then
  begin
    if not KeepRequires then
      FRequires.Free;
    FRequires := Value;
  end;
end;

function TDocumentIdentifier.GetKeepRequires: Boolean;
begin
  Result := FKeepRequires;
end;

procedure TDocumentIdentifier.SetKeepRequires(const Value: Boolean);
begin
  FKeepRequires := Value;
end;

function TDocumentIdentifier.IsSetRequires: Boolean;
begin
  Result := (FRequires <> nil) and (FRequires.Count > 0);
end;

function TDocumentIdentifier.GetReviewStatus: TReviewStatus;
begin
  Result := FReviewStatus.ValueOrDefault;
end;

procedure TDocumentIdentifier.SetReviewStatus(const Value: TReviewStatus);
begin
  FReviewStatus := Value;
end;

function TDocumentIdentifier.IsSetReviewStatus: Boolean;
begin
  Result := FReviewStatus.HasValue;
end;

function TDocumentIdentifier.GetSchemaVersion: string;
begin
  Result := FSchemaVersion.ValueOrDefault;
end;

procedure TDocumentIdentifier.SetSchemaVersion(const Value: string);
begin
  FSchemaVersion := Value;
end;

function TDocumentIdentifier.IsSetSchemaVersion: Boolean;
begin
  Result := FSchemaVersion.HasValue;
end;

function TDocumentIdentifier.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TDocumentIdentifier.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TDocumentIdentifier.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TDocumentIdentifier.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TDocumentIdentifier.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

function TDocumentIdentifier.GetTargetType: string;
begin
  Result := FTargetType.ValueOrDefault;
end;

procedure TDocumentIdentifier.SetTargetType(const Value: string);
begin
  FTargetType := Value;
end;

function TDocumentIdentifier.IsSetTargetType: Boolean;
begin
  Result := FTargetType.HasValue;
end;

function TDocumentIdentifier.GetVersionName: string;
begin
  Result := FVersionName.ValueOrDefault;
end;

procedure TDocumentIdentifier.SetVersionName(const Value: string);
begin
  FVersionName := Value;
end;

function TDocumentIdentifier.IsSetVersionName: Boolean;
begin
  Result := FVersionName.HasValue;
end;

end.

unit AWS.SSM.Model.CreateDocumentRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.AttachmentsSource, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.DocumentRequires, 
  AWS.SSM.Model.Tag;

type
  TCreateDocumentRequest = class;
  
  ICreateDocumentRequest = interface
    function GetAttachments: TObjectList<TAttachmentsSource>;
    procedure SetAttachments(const Value: TObjectList<TAttachmentsSource>);
    function GetKeepAttachments: Boolean;
    procedure SetKeepAttachments(const Value: Boolean);
    function GetContent: string;
    procedure SetContent(const Value: string);
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetDocumentFormat: TDocumentFormat;
    procedure SetDocumentFormat(const Value: TDocumentFormat);
    function GetDocumentType: TDocumentType;
    procedure SetDocumentType(const Value: TDocumentType);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetRequires: TObjectList<TDocumentRequires>;
    procedure SetRequires(const Value: TObjectList<TDocumentRequires>);
    function GetKeepRequires: Boolean;
    procedure SetKeepRequires(const Value: Boolean);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTargetType: string;
    procedure SetTargetType(const Value: string);
    function GetVersionName: string;
    procedure SetVersionName(const Value: string);
    function Obj: TCreateDocumentRequest;
    function IsSetAttachments: Boolean;
    function IsSetContent: Boolean;
    function IsSetDisplayName: Boolean;
    function IsSetDocumentFormat: Boolean;
    function IsSetDocumentType: Boolean;
    function IsSetName: Boolean;
    function IsSetRequires: Boolean;
    function IsSetTags: Boolean;
    function IsSetTargetType: Boolean;
    function IsSetVersionName: Boolean;
    property Attachments: TObjectList<TAttachmentsSource> read GetAttachments write SetAttachments;
    property KeepAttachments: Boolean read GetKeepAttachments write SetKeepAttachments;
    property Content: string read GetContent write SetContent;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property DocumentFormat: TDocumentFormat read GetDocumentFormat write SetDocumentFormat;
    property DocumentType: TDocumentType read GetDocumentType write SetDocumentType;
    property Name: string read GetName write SetName;
    property Requires: TObjectList<TDocumentRequires> read GetRequires write SetRequires;
    property KeepRequires: Boolean read GetKeepRequires write SetKeepRequires;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property TargetType: string read GetTargetType write SetTargetType;
    property VersionName: string read GetVersionName write SetVersionName;
  end;
  
  TCreateDocumentRequest = class(TAmazonSimpleSystemsManagementRequest, ICreateDocumentRequest)
  strict private
    FAttachments: TObjectList<TAttachmentsSource>;
    FKeepAttachments: Boolean;
    FContent: Nullable<string>;
    FDisplayName: Nullable<string>;
    FDocumentFormat: Nullable<TDocumentFormat>;
    FDocumentType: Nullable<TDocumentType>;
    FName: Nullable<string>;
    FRequires: TObjectList<TDocumentRequires>;
    FKeepRequires: Boolean;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    FTargetType: Nullable<string>;
    FVersionName: Nullable<string>;
    function GetAttachments: TObjectList<TAttachmentsSource>;
    procedure SetAttachments(const Value: TObjectList<TAttachmentsSource>);
    function GetKeepAttachments: Boolean;
    procedure SetKeepAttachments(const Value: Boolean);
    function GetContent: string;
    procedure SetContent(const Value: string);
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetDocumentFormat: TDocumentFormat;
    procedure SetDocumentFormat(const Value: TDocumentFormat);
    function GetDocumentType: TDocumentType;
    procedure SetDocumentType(const Value: TDocumentType);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetRequires: TObjectList<TDocumentRequires>;
    procedure SetRequires(const Value: TObjectList<TDocumentRequires>);
    function GetKeepRequires: Boolean;
    procedure SetKeepRequires(const Value: Boolean);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTargetType: string;
    procedure SetTargetType(const Value: string);
    function GetVersionName: string;
    procedure SetVersionName(const Value: string);
  strict protected
    function Obj: TCreateDocumentRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const AName: string; const AContent: string); overload;
    function IsSetAttachments: Boolean;
    function IsSetContent: Boolean;
    function IsSetDisplayName: Boolean;
    function IsSetDocumentFormat: Boolean;
    function IsSetDocumentType: Boolean;
    function IsSetName: Boolean;
    function IsSetRequires: Boolean;
    function IsSetTags: Boolean;
    function IsSetTargetType: Boolean;
    function IsSetVersionName: Boolean;
    property Attachments: TObjectList<TAttachmentsSource> read GetAttachments write SetAttachments;
    property KeepAttachments: Boolean read GetKeepAttachments write SetKeepAttachments;
    property Content: string read GetContent write SetContent;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property DocumentFormat: TDocumentFormat read GetDocumentFormat write SetDocumentFormat;
    property DocumentType: TDocumentType read GetDocumentType write SetDocumentType;
    property Name: string read GetName write SetName;
    property Requires: TObjectList<TDocumentRequires> read GetRequires write SetRequires;
    property KeepRequires: Boolean read GetKeepRequires write SetKeepRequires;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property TargetType: string read GetTargetType write SetTargetType;
    property VersionName: string read GetVersionName write SetVersionName;
  end;
  
implementation

{ TCreateDocumentRequest }

constructor TCreateDocumentRequest.Create;
begin
  inherited;
  FAttachments := TObjectList<TAttachmentsSource>.Create;
  FRequires := TObjectList<TDocumentRequires>.Create;
  FTags := TObjectList<TTag>.Create;
end;

destructor TCreateDocumentRequest.Destroy;
begin
  Tags := nil;
  Requires := nil;
  Attachments := nil;
  inherited;
end;

function TCreateDocumentRequest.Obj: TCreateDocumentRequest;
begin
  Result := Self;
end;

constructor TCreateDocumentRequest.Create(const AName: string; const AContent: string);
begin
  Create;
  Name := AName;
  Content := AContent;
end;

function TCreateDocumentRequest.GetAttachments: TObjectList<TAttachmentsSource>;
begin
  Result := FAttachments;
end;

procedure TCreateDocumentRequest.SetAttachments(const Value: TObjectList<TAttachmentsSource>);
begin
  if FAttachments <> Value then
  begin
    if not KeepAttachments then
      FAttachments.Free;
    FAttachments := Value;
  end;
end;

function TCreateDocumentRequest.GetKeepAttachments: Boolean;
begin
  Result := FKeepAttachments;
end;

procedure TCreateDocumentRequest.SetKeepAttachments(const Value: Boolean);
begin
  FKeepAttachments := Value;
end;

function TCreateDocumentRequest.IsSetAttachments: Boolean;
begin
  Result := (FAttachments <> nil) and (FAttachments.Count > 0);
end;

function TCreateDocumentRequest.GetContent: string;
begin
  Result := FContent.ValueOrDefault;
end;

procedure TCreateDocumentRequest.SetContent(const Value: string);
begin
  FContent := Value;
end;

function TCreateDocumentRequest.IsSetContent: Boolean;
begin
  Result := FContent.HasValue;
end;

function TCreateDocumentRequest.GetDisplayName: string;
begin
  Result := FDisplayName.ValueOrDefault;
end;

procedure TCreateDocumentRequest.SetDisplayName(const Value: string);
begin
  FDisplayName := Value;
end;

function TCreateDocumentRequest.IsSetDisplayName: Boolean;
begin
  Result := FDisplayName.HasValue;
end;

function TCreateDocumentRequest.GetDocumentFormat: TDocumentFormat;
begin
  Result := FDocumentFormat.ValueOrDefault;
end;

procedure TCreateDocumentRequest.SetDocumentFormat(const Value: TDocumentFormat);
begin
  FDocumentFormat := Value;
end;

function TCreateDocumentRequest.IsSetDocumentFormat: Boolean;
begin
  Result := FDocumentFormat.HasValue;
end;

function TCreateDocumentRequest.GetDocumentType: TDocumentType;
begin
  Result := FDocumentType.ValueOrDefault;
end;

procedure TCreateDocumentRequest.SetDocumentType(const Value: TDocumentType);
begin
  FDocumentType := Value;
end;

function TCreateDocumentRequest.IsSetDocumentType: Boolean;
begin
  Result := FDocumentType.HasValue;
end;

function TCreateDocumentRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TCreateDocumentRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TCreateDocumentRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TCreateDocumentRequest.GetRequires: TObjectList<TDocumentRequires>;
begin
  Result := FRequires;
end;

procedure TCreateDocumentRequest.SetRequires(const Value: TObjectList<TDocumentRequires>);
begin
  if FRequires <> Value then
  begin
    if not KeepRequires then
      FRequires.Free;
    FRequires := Value;
  end;
end;

function TCreateDocumentRequest.GetKeepRequires: Boolean;
begin
  Result := FKeepRequires;
end;

procedure TCreateDocumentRequest.SetKeepRequires(const Value: Boolean);
begin
  FKeepRequires := Value;
end;

function TCreateDocumentRequest.IsSetRequires: Boolean;
begin
  Result := (FRequires <> nil) and (FRequires.Count > 0);
end;

function TCreateDocumentRequest.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TCreateDocumentRequest.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TCreateDocumentRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TCreateDocumentRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TCreateDocumentRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

function TCreateDocumentRequest.GetTargetType: string;
begin
  Result := FTargetType.ValueOrDefault;
end;

procedure TCreateDocumentRequest.SetTargetType(const Value: string);
begin
  FTargetType := Value;
end;

function TCreateDocumentRequest.IsSetTargetType: Boolean;
begin
  Result := FTargetType.HasValue;
end;

function TCreateDocumentRequest.GetVersionName: string;
begin
  Result := FVersionName.ValueOrDefault;
end;

procedure TCreateDocumentRequest.SetVersionName(const Value: string);
begin
  FVersionName := Value;
end;

function TCreateDocumentRequest.IsSetVersionName: Boolean;
begin
  Result := FVersionName.HasValue;
end;

end.

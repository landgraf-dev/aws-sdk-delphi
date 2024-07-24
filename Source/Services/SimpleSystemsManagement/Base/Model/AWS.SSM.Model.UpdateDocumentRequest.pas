unit AWS.SSM.Model.UpdateDocumentRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.AttachmentsSource, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TUpdateDocumentRequest = class;
  
  IUpdateDocumentRequest = interface
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
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetTargetType: string;
    procedure SetTargetType(const Value: string);
    function GetVersionName: string;
    procedure SetVersionName(const Value: string);
    function Obj: TUpdateDocumentRequest;
    function IsSetAttachments: Boolean;
    function IsSetContent: Boolean;
    function IsSetDisplayName: Boolean;
    function IsSetDocumentFormat: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetName: Boolean;
    function IsSetTargetType: Boolean;
    function IsSetVersionName: Boolean;
    property Attachments: TObjectList<TAttachmentsSource> read GetAttachments write SetAttachments;
    property KeepAttachments: Boolean read GetKeepAttachments write SetKeepAttachments;
    property Content: string read GetContent write SetContent;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property DocumentFormat: TDocumentFormat read GetDocumentFormat write SetDocumentFormat;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Name: string read GetName write SetName;
    property TargetType: string read GetTargetType write SetTargetType;
    property VersionName: string read GetVersionName write SetVersionName;
  end;
  
  TUpdateDocumentRequest = class(TAmazonSimpleSystemsManagementRequest, IUpdateDocumentRequest)
  strict private
    FAttachments: TObjectList<TAttachmentsSource>;
    FKeepAttachments: Boolean;
    FContent: Nullable<string>;
    FDisplayName: Nullable<string>;
    FDocumentFormat: Nullable<TDocumentFormat>;
    FDocumentVersion: Nullable<string>;
    FName: Nullable<string>;
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
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetTargetType: string;
    procedure SetTargetType(const Value: string);
    function GetVersionName: string;
    procedure SetVersionName(const Value: string);
  strict protected
    function Obj: TUpdateDocumentRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttachments: Boolean;
    function IsSetContent: Boolean;
    function IsSetDisplayName: Boolean;
    function IsSetDocumentFormat: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetName: Boolean;
    function IsSetTargetType: Boolean;
    function IsSetVersionName: Boolean;
    property Attachments: TObjectList<TAttachmentsSource> read GetAttachments write SetAttachments;
    property KeepAttachments: Boolean read GetKeepAttachments write SetKeepAttachments;
    property Content: string read GetContent write SetContent;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property DocumentFormat: TDocumentFormat read GetDocumentFormat write SetDocumentFormat;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Name: string read GetName write SetName;
    property TargetType: string read GetTargetType write SetTargetType;
    property VersionName: string read GetVersionName write SetVersionName;
  end;
  
implementation

{ TUpdateDocumentRequest }

constructor TUpdateDocumentRequest.Create;
begin
  inherited;
  FAttachments := TObjectList<TAttachmentsSource>.Create;
end;

destructor TUpdateDocumentRequest.Destroy;
begin
  Attachments := nil;
  inherited;
end;

function TUpdateDocumentRequest.Obj: TUpdateDocumentRequest;
begin
  Result := Self;
end;

function TUpdateDocumentRequest.GetAttachments: TObjectList<TAttachmentsSource>;
begin
  Result := FAttachments;
end;

procedure TUpdateDocumentRequest.SetAttachments(const Value: TObjectList<TAttachmentsSource>);
begin
  if FAttachments <> Value then
  begin
    if not KeepAttachments then
      FAttachments.Free;
    FAttachments := Value;
  end;
end;

function TUpdateDocumentRequest.GetKeepAttachments: Boolean;
begin
  Result := FKeepAttachments;
end;

procedure TUpdateDocumentRequest.SetKeepAttachments(const Value: Boolean);
begin
  FKeepAttachments := Value;
end;

function TUpdateDocumentRequest.IsSetAttachments: Boolean;
begin
  Result := (FAttachments <> nil) and (FAttachments.Count > 0);
end;

function TUpdateDocumentRequest.GetContent: string;
begin
  Result := FContent.ValueOrDefault;
end;

procedure TUpdateDocumentRequest.SetContent(const Value: string);
begin
  FContent := Value;
end;

function TUpdateDocumentRequest.IsSetContent: Boolean;
begin
  Result := FContent.HasValue;
end;

function TUpdateDocumentRequest.GetDisplayName: string;
begin
  Result := FDisplayName.ValueOrDefault;
end;

procedure TUpdateDocumentRequest.SetDisplayName(const Value: string);
begin
  FDisplayName := Value;
end;

function TUpdateDocumentRequest.IsSetDisplayName: Boolean;
begin
  Result := FDisplayName.HasValue;
end;

function TUpdateDocumentRequest.GetDocumentFormat: TDocumentFormat;
begin
  Result := FDocumentFormat.ValueOrDefault;
end;

procedure TUpdateDocumentRequest.SetDocumentFormat(const Value: TDocumentFormat);
begin
  FDocumentFormat := Value;
end;

function TUpdateDocumentRequest.IsSetDocumentFormat: Boolean;
begin
  Result := FDocumentFormat.HasValue;
end;

function TUpdateDocumentRequest.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TUpdateDocumentRequest.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TUpdateDocumentRequest.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TUpdateDocumentRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TUpdateDocumentRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TUpdateDocumentRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TUpdateDocumentRequest.GetTargetType: string;
begin
  Result := FTargetType.ValueOrDefault;
end;

procedure TUpdateDocumentRequest.SetTargetType(const Value: string);
begin
  FTargetType := Value;
end;

function TUpdateDocumentRequest.IsSetTargetType: Boolean;
begin
  Result := FTargetType.HasValue;
end;

function TUpdateDocumentRequest.GetVersionName: string;
begin
  Result := FVersionName.ValueOrDefault;
end;

procedure TUpdateDocumentRequest.SetVersionName(const Value: string);
begin
  FVersionName := Value;
end;

function TUpdateDocumentRequest.IsSetVersionName: Boolean;
begin
  Result := FVersionName.HasValue;
end;

end.

unit AWS.SSM.Model.GetDocumentResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.AttachmentContent, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.DocumentRequires;

type
  TGetDocumentResponse = class;
  
  IGetDocumentResponse = interface(IAmazonWebServiceResponse)
    function GetAttachmentsContent: TObjectList<TAttachmentContent>;
    procedure SetAttachmentsContent(const Value: TObjectList<TAttachmentContent>);
    function GetKeepAttachmentsContent: Boolean;
    procedure SetKeepAttachmentsContent(const Value: Boolean);
    function GetContent: string;
    procedure SetContent(const Value: string);
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
    function GetRequires: TObjectList<TDocumentRequires>;
    procedure SetRequires(const Value: TObjectList<TDocumentRequires>);
    function GetKeepRequires: Boolean;
    procedure SetKeepRequires(const Value: Boolean);
    function GetReviewStatus: TReviewStatus;
    procedure SetReviewStatus(const Value: TReviewStatus);
    function GetStatus: TDocumentStatus;
    procedure SetStatus(const Value: TDocumentStatus);
    function GetStatusInformation: string;
    procedure SetStatusInformation(const Value: string);
    function GetVersionName: string;
    procedure SetVersionName(const Value: string);
    function Obj: TGetDocumentResponse;
    function IsSetAttachmentsContent: Boolean;
    function IsSetContent: Boolean;
    function IsSetCreatedDate: Boolean;
    function IsSetDisplayName: Boolean;
    function IsSetDocumentFormat: Boolean;
    function IsSetDocumentType: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetName: Boolean;
    function IsSetRequires: Boolean;
    function IsSetReviewStatus: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusInformation: Boolean;
    function IsSetVersionName: Boolean;
    property AttachmentsContent: TObjectList<TAttachmentContent> read GetAttachmentsContent write SetAttachmentsContent;
    property KeepAttachmentsContent: Boolean read GetKeepAttachmentsContent write SetKeepAttachmentsContent;
    property Content: string read GetContent write SetContent;
    property CreatedDate: TDateTime read GetCreatedDate write SetCreatedDate;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property DocumentFormat: TDocumentFormat read GetDocumentFormat write SetDocumentFormat;
    property DocumentType: TDocumentType read GetDocumentType write SetDocumentType;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Name: string read GetName write SetName;
    property Requires: TObjectList<TDocumentRequires> read GetRequires write SetRequires;
    property KeepRequires: Boolean read GetKeepRequires write SetKeepRequires;
    property ReviewStatus: TReviewStatus read GetReviewStatus write SetReviewStatus;
    property Status: TDocumentStatus read GetStatus write SetStatus;
    property StatusInformation: string read GetStatusInformation write SetStatusInformation;
    property VersionName: string read GetVersionName write SetVersionName;
  end;
  
  TGetDocumentResponse = class(TAmazonWebServiceResponse, IGetDocumentResponse)
  strict private
    FAttachmentsContent: TObjectList<TAttachmentContent>;
    FKeepAttachmentsContent: Boolean;
    FContent: Nullable<string>;
    FCreatedDate: Nullable<TDateTime>;
    FDisplayName: Nullable<string>;
    FDocumentFormat: Nullable<TDocumentFormat>;
    FDocumentType: Nullable<TDocumentType>;
    FDocumentVersion: Nullable<string>;
    FName: Nullable<string>;
    FRequires: TObjectList<TDocumentRequires>;
    FKeepRequires: Boolean;
    FReviewStatus: Nullable<TReviewStatus>;
    FStatus: Nullable<TDocumentStatus>;
    FStatusInformation: Nullable<string>;
    FVersionName: Nullable<string>;
    function GetAttachmentsContent: TObjectList<TAttachmentContent>;
    procedure SetAttachmentsContent(const Value: TObjectList<TAttachmentContent>);
    function GetKeepAttachmentsContent: Boolean;
    procedure SetKeepAttachmentsContent(const Value: Boolean);
    function GetContent: string;
    procedure SetContent(const Value: string);
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
    function GetRequires: TObjectList<TDocumentRequires>;
    procedure SetRequires(const Value: TObjectList<TDocumentRequires>);
    function GetKeepRequires: Boolean;
    procedure SetKeepRequires(const Value: Boolean);
    function GetReviewStatus: TReviewStatus;
    procedure SetReviewStatus(const Value: TReviewStatus);
    function GetStatus: TDocumentStatus;
    procedure SetStatus(const Value: TDocumentStatus);
    function GetStatusInformation: string;
    procedure SetStatusInformation(const Value: string);
    function GetVersionName: string;
    procedure SetVersionName(const Value: string);
  strict protected
    function Obj: TGetDocumentResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttachmentsContent: Boolean;
    function IsSetContent: Boolean;
    function IsSetCreatedDate: Boolean;
    function IsSetDisplayName: Boolean;
    function IsSetDocumentFormat: Boolean;
    function IsSetDocumentType: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetName: Boolean;
    function IsSetRequires: Boolean;
    function IsSetReviewStatus: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusInformation: Boolean;
    function IsSetVersionName: Boolean;
    property AttachmentsContent: TObjectList<TAttachmentContent> read GetAttachmentsContent write SetAttachmentsContent;
    property KeepAttachmentsContent: Boolean read GetKeepAttachmentsContent write SetKeepAttachmentsContent;
    property Content: string read GetContent write SetContent;
    property CreatedDate: TDateTime read GetCreatedDate write SetCreatedDate;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property DocumentFormat: TDocumentFormat read GetDocumentFormat write SetDocumentFormat;
    property DocumentType: TDocumentType read GetDocumentType write SetDocumentType;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Name: string read GetName write SetName;
    property Requires: TObjectList<TDocumentRequires> read GetRequires write SetRequires;
    property KeepRequires: Boolean read GetKeepRequires write SetKeepRequires;
    property ReviewStatus: TReviewStatus read GetReviewStatus write SetReviewStatus;
    property Status: TDocumentStatus read GetStatus write SetStatus;
    property StatusInformation: string read GetStatusInformation write SetStatusInformation;
    property VersionName: string read GetVersionName write SetVersionName;
  end;
  
implementation

{ TGetDocumentResponse }

constructor TGetDocumentResponse.Create;
begin
  inherited;
  FAttachmentsContent := TObjectList<TAttachmentContent>.Create;
  FRequires := TObjectList<TDocumentRequires>.Create;
end;

destructor TGetDocumentResponse.Destroy;
begin
  Requires := nil;
  AttachmentsContent := nil;
  inherited;
end;

function TGetDocumentResponse.Obj: TGetDocumentResponse;
begin
  Result := Self;
end;

function TGetDocumentResponse.GetAttachmentsContent: TObjectList<TAttachmentContent>;
begin
  Result := FAttachmentsContent;
end;

procedure TGetDocumentResponse.SetAttachmentsContent(const Value: TObjectList<TAttachmentContent>);
begin
  if FAttachmentsContent <> Value then
  begin
    if not KeepAttachmentsContent then
      FAttachmentsContent.Free;
    FAttachmentsContent := Value;
  end;
end;

function TGetDocumentResponse.GetKeepAttachmentsContent: Boolean;
begin
  Result := FKeepAttachmentsContent;
end;

procedure TGetDocumentResponse.SetKeepAttachmentsContent(const Value: Boolean);
begin
  FKeepAttachmentsContent := Value;
end;

function TGetDocumentResponse.IsSetAttachmentsContent: Boolean;
begin
  Result := (FAttachmentsContent <> nil) and (FAttachmentsContent.Count > 0);
end;

function TGetDocumentResponse.GetContent: string;
begin
  Result := FContent.ValueOrDefault;
end;

procedure TGetDocumentResponse.SetContent(const Value: string);
begin
  FContent := Value;
end;

function TGetDocumentResponse.IsSetContent: Boolean;
begin
  Result := FContent.HasValue;
end;

function TGetDocumentResponse.GetCreatedDate: TDateTime;
begin
  Result := FCreatedDate.ValueOrDefault;
end;

procedure TGetDocumentResponse.SetCreatedDate(const Value: TDateTime);
begin
  FCreatedDate := Value;
end;

function TGetDocumentResponse.IsSetCreatedDate: Boolean;
begin
  Result := FCreatedDate.HasValue;
end;

function TGetDocumentResponse.GetDisplayName: string;
begin
  Result := FDisplayName.ValueOrDefault;
end;

procedure TGetDocumentResponse.SetDisplayName(const Value: string);
begin
  FDisplayName := Value;
end;

function TGetDocumentResponse.IsSetDisplayName: Boolean;
begin
  Result := FDisplayName.HasValue;
end;

function TGetDocumentResponse.GetDocumentFormat: TDocumentFormat;
begin
  Result := FDocumentFormat.ValueOrDefault;
end;

procedure TGetDocumentResponse.SetDocumentFormat(const Value: TDocumentFormat);
begin
  FDocumentFormat := Value;
end;

function TGetDocumentResponse.IsSetDocumentFormat: Boolean;
begin
  Result := FDocumentFormat.HasValue;
end;

function TGetDocumentResponse.GetDocumentType: TDocumentType;
begin
  Result := FDocumentType.ValueOrDefault;
end;

procedure TGetDocumentResponse.SetDocumentType(const Value: TDocumentType);
begin
  FDocumentType := Value;
end;

function TGetDocumentResponse.IsSetDocumentType: Boolean;
begin
  Result := FDocumentType.HasValue;
end;

function TGetDocumentResponse.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TGetDocumentResponse.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TGetDocumentResponse.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TGetDocumentResponse.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TGetDocumentResponse.SetName(const Value: string);
begin
  FName := Value;
end;

function TGetDocumentResponse.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TGetDocumentResponse.GetRequires: TObjectList<TDocumentRequires>;
begin
  Result := FRequires;
end;

procedure TGetDocumentResponse.SetRequires(const Value: TObjectList<TDocumentRequires>);
begin
  if FRequires <> Value then
  begin
    if not KeepRequires then
      FRequires.Free;
    FRequires := Value;
  end;
end;

function TGetDocumentResponse.GetKeepRequires: Boolean;
begin
  Result := FKeepRequires;
end;

procedure TGetDocumentResponse.SetKeepRequires(const Value: Boolean);
begin
  FKeepRequires := Value;
end;

function TGetDocumentResponse.IsSetRequires: Boolean;
begin
  Result := (FRequires <> nil) and (FRequires.Count > 0);
end;

function TGetDocumentResponse.GetReviewStatus: TReviewStatus;
begin
  Result := FReviewStatus.ValueOrDefault;
end;

procedure TGetDocumentResponse.SetReviewStatus(const Value: TReviewStatus);
begin
  FReviewStatus := Value;
end;

function TGetDocumentResponse.IsSetReviewStatus: Boolean;
begin
  Result := FReviewStatus.HasValue;
end;

function TGetDocumentResponse.GetStatus: TDocumentStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TGetDocumentResponse.SetStatus(const Value: TDocumentStatus);
begin
  FStatus := Value;
end;

function TGetDocumentResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TGetDocumentResponse.GetStatusInformation: string;
begin
  Result := FStatusInformation.ValueOrDefault;
end;

procedure TGetDocumentResponse.SetStatusInformation(const Value: string);
begin
  FStatusInformation := Value;
end;

function TGetDocumentResponse.IsSetStatusInformation: Boolean;
begin
  Result := FStatusInformation.HasValue;
end;

function TGetDocumentResponse.GetVersionName: string;
begin
  Result := FVersionName.ValueOrDefault;
end;

procedure TGetDocumentResponse.SetVersionName(const Value: string);
begin
  FVersionName := Value;
end;

function TGetDocumentResponse.IsSetVersionName: Boolean;
begin
  Result := FVersionName.HasValue;
end;

end.

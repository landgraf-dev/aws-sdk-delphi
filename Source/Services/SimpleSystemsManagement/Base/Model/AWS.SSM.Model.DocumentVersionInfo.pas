unit AWS.SSM.Model.DocumentVersionInfo;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TDocumentVersionInfo = class;
  
  IDocumentVersionInfo = interface
    function GetCreatedDate: TDateTime;
    procedure SetCreatedDate(const Value: TDateTime);
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetDocumentFormat: TDocumentFormat;
    procedure SetDocumentFormat(const Value: TDocumentFormat);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetIsDefaultVersion: Boolean;
    procedure SetIsDefaultVersion(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetReviewStatus: TReviewStatus;
    procedure SetReviewStatus(const Value: TReviewStatus);
    function GetStatus: TDocumentStatus;
    procedure SetStatus(const Value: TDocumentStatus);
    function GetStatusInformation: string;
    procedure SetStatusInformation(const Value: string);
    function GetVersionName: string;
    procedure SetVersionName(const Value: string);
    function Obj: TDocumentVersionInfo;
    function IsSetCreatedDate: Boolean;
    function IsSetDisplayName: Boolean;
    function IsSetDocumentFormat: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetIsDefaultVersion: Boolean;
    function IsSetName: Boolean;
    function IsSetReviewStatus: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusInformation: Boolean;
    function IsSetVersionName: Boolean;
    property CreatedDate: TDateTime read GetCreatedDate write SetCreatedDate;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property DocumentFormat: TDocumentFormat read GetDocumentFormat write SetDocumentFormat;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property IsDefaultVersion: Boolean read GetIsDefaultVersion write SetIsDefaultVersion;
    property Name: string read GetName write SetName;
    property ReviewStatus: TReviewStatus read GetReviewStatus write SetReviewStatus;
    property Status: TDocumentStatus read GetStatus write SetStatus;
    property StatusInformation: string read GetStatusInformation write SetStatusInformation;
    property VersionName: string read GetVersionName write SetVersionName;
  end;
  
  TDocumentVersionInfo = class
  strict private
    FCreatedDate: Nullable<TDateTime>;
    FDisplayName: Nullable<string>;
    FDocumentFormat: Nullable<TDocumentFormat>;
    FDocumentVersion: Nullable<string>;
    FIsDefaultVersion: Nullable<Boolean>;
    FName: Nullable<string>;
    FReviewStatus: Nullable<TReviewStatus>;
    FStatus: Nullable<TDocumentStatus>;
    FStatusInformation: Nullable<string>;
    FVersionName: Nullable<string>;
    function GetCreatedDate: TDateTime;
    procedure SetCreatedDate(const Value: TDateTime);
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetDocumentFormat: TDocumentFormat;
    procedure SetDocumentFormat(const Value: TDocumentFormat);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetIsDefaultVersion: Boolean;
    procedure SetIsDefaultVersion(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetReviewStatus: TReviewStatus;
    procedure SetReviewStatus(const Value: TReviewStatus);
    function GetStatus: TDocumentStatus;
    procedure SetStatus(const Value: TDocumentStatus);
    function GetStatusInformation: string;
    procedure SetStatusInformation(const Value: string);
    function GetVersionName: string;
    procedure SetVersionName(const Value: string);
  strict protected
    function Obj: TDocumentVersionInfo;
  public
    function IsSetCreatedDate: Boolean;
    function IsSetDisplayName: Boolean;
    function IsSetDocumentFormat: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetIsDefaultVersion: Boolean;
    function IsSetName: Boolean;
    function IsSetReviewStatus: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusInformation: Boolean;
    function IsSetVersionName: Boolean;
    property CreatedDate: TDateTime read GetCreatedDate write SetCreatedDate;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property DocumentFormat: TDocumentFormat read GetDocumentFormat write SetDocumentFormat;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property IsDefaultVersion: Boolean read GetIsDefaultVersion write SetIsDefaultVersion;
    property Name: string read GetName write SetName;
    property ReviewStatus: TReviewStatus read GetReviewStatus write SetReviewStatus;
    property Status: TDocumentStatus read GetStatus write SetStatus;
    property StatusInformation: string read GetStatusInformation write SetStatusInformation;
    property VersionName: string read GetVersionName write SetVersionName;
  end;
  
implementation

{ TDocumentVersionInfo }

function TDocumentVersionInfo.Obj: TDocumentVersionInfo;
begin
  Result := Self;
end;

function TDocumentVersionInfo.GetCreatedDate: TDateTime;
begin
  Result := FCreatedDate.ValueOrDefault;
end;

procedure TDocumentVersionInfo.SetCreatedDate(const Value: TDateTime);
begin
  FCreatedDate := Value;
end;

function TDocumentVersionInfo.IsSetCreatedDate: Boolean;
begin
  Result := FCreatedDate.HasValue;
end;

function TDocumentVersionInfo.GetDisplayName: string;
begin
  Result := FDisplayName.ValueOrDefault;
end;

procedure TDocumentVersionInfo.SetDisplayName(const Value: string);
begin
  FDisplayName := Value;
end;

function TDocumentVersionInfo.IsSetDisplayName: Boolean;
begin
  Result := FDisplayName.HasValue;
end;

function TDocumentVersionInfo.GetDocumentFormat: TDocumentFormat;
begin
  Result := FDocumentFormat.ValueOrDefault;
end;

procedure TDocumentVersionInfo.SetDocumentFormat(const Value: TDocumentFormat);
begin
  FDocumentFormat := Value;
end;

function TDocumentVersionInfo.IsSetDocumentFormat: Boolean;
begin
  Result := FDocumentFormat.HasValue;
end;

function TDocumentVersionInfo.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TDocumentVersionInfo.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TDocumentVersionInfo.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TDocumentVersionInfo.GetIsDefaultVersion: Boolean;
begin
  Result := FIsDefaultVersion.ValueOrDefault;
end;

procedure TDocumentVersionInfo.SetIsDefaultVersion(const Value: Boolean);
begin
  FIsDefaultVersion := Value;
end;

function TDocumentVersionInfo.IsSetIsDefaultVersion: Boolean;
begin
  Result := FIsDefaultVersion.HasValue;
end;

function TDocumentVersionInfo.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDocumentVersionInfo.SetName(const Value: string);
begin
  FName := Value;
end;

function TDocumentVersionInfo.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TDocumentVersionInfo.GetReviewStatus: TReviewStatus;
begin
  Result := FReviewStatus.ValueOrDefault;
end;

procedure TDocumentVersionInfo.SetReviewStatus(const Value: TReviewStatus);
begin
  FReviewStatus := Value;
end;

function TDocumentVersionInfo.IsSetReviewStatus: Boolean;
begin
  Result := FReviewStatus.HasValue;
end;

function TDocumentVersionInfo.GetStatus: TDocumentStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TDocumentVersionInfo.SetStatus(const Value: TDocumentStatus);
begin
  FStatus := Value;
end;

function TDocumentVersionInfo.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TDocumentVersionInfo.GetStatusInformation: string;
begin
  Result := FStatusInformation.ValueOrDefault;
end;

procedure TDocumentVersionInfo.SetStatusInformation(const Value: string);
begin
  FStatusInformation := Value;
end;

function TDocumentVersionInfo.IsSetStatusInformation: Boolean;
begin
  Result := FStatusInformation.HasValue;
end;

function TDocumentVersionInfo.GetVersionName: string;
begin
  Result := FVersionName.ValueOrDefault;
end;

procedure TDocumentVersionInfo.SetVersionName(const Value: string);
begin
  FVersionName := Value;
end;

function TDocumentVersionInfo.IsSetVersionName: Boolean;
begin
  Result := FVersionName.HasValue;
end;

end.

unit AWS.SSM.Model.GetDocumentRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TGetDocumentRequest = class;
  
  IGetDocumentRequest = interface
    function GetDocumentFormat: TDocumentFormat;
    procedure SetDocumentFormat(const Value: TDocumentFormat);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetVersionName: string;
    procedure SetVersionName(const Value: string);
    function Obj: TGetDocumentRequest;
    function IsSetDocumentFormat: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetName: Boolean;
    function IsSetVersionName: Boolean;
    property DocumentFormat: TDocumentFormat read GetDocumentFormat write SetDocumentFormat;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Name: string read GetName write SetName;
    property VersionName: string read GetVersionName write SetVersionName;
  end;
  
  TGetDocumentRequest = class(TAmazonSimpleSystemsManagementRequest, IGetDocumentRequest)
  strict private
    FDocumentFormat: Nullable<TDocumentFormat>;
    FDocumentVersion: Nullable<string>;
    FName: Nullable<string>;
    FVersionName: Nullable<string>;
    function GetDocumentFormat: TDocumentFormat;
    procedure SetDocumentFormat(const Value: TDocumentFormat);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetVersionName: string;
    procedure SetVersionName(const Value: string);
  strict protected
    function Obj: TGetDocumentRequest;
  public
    constructor Create(const AName: string); overload;
    function IsSetDocumentFormat: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetName: Boolean;
    function IsSetVersionName: Boolean;
    property DocumentFormat: TDocumentFormat read GetDocumentFormat write SetDocumentFormat;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Name: string read GetName write SetName;
    property VersionName: string read GetVersionName write SetVersionName;
  end;
  
implementation

{ TGetDocumentRequest }

function TGetDocumentRequest.Obj: TGetDocumentRequest;
begin
  Result := Self;
end;

constructor TGetDocumentRequest.Create(const AName: string);
begin
  Create;
  Name := AName;
end;

function TGetDocumentRequest.GetDocumentFormat: TDocumentFormat;
begin
  Result := FDocumentFormat.ValueOrDefault;
end;

procedure TGetDocumentRequest.SetDocumentFormat(const Value: TDocumentFormat);
begin
  FDocumentFormat := Value;
end;

function TGetDocumentRequest.IsSetDocumentFormat: Boolean;
begin
  Result := FDocumentFormat.HasValue;
end;

function TGetDocumentRequest.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TGetDocumentRequest.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TGetDocumentRequest.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TGetDocumentRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TGetDocumentRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TGetDocumentRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TGetDocumentRequest.GetVersionName: string;
begin
  Result := FVersionName.ValueOrDefault;
end;

procedure TGetDocumentRequest.SetVersionName(const Value: string);
begin
  FVersionName := Value;
end;

function TGetDocumentRequest.IsSetVersionName: Boolean;
begin
  Result := FVersionName.HasValue;
end;

end.

unit AWS.SSM.Model.DescribeDocumentRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDescribeDocumentRequest = class;
  
  IDescribeDocumentRequest = interface
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetVersionName: string;
    procedure SetVersionName(const Value: string);
    function Obj: TDescribeDocumentRequest;
    function IsSetDocumentVersion: Boolean;
    function IsSetName: Boolean;
    function IsSetVersionName: Boolean;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Name: string read GetName write SetName;
    property VersionName: string read GetVersionName write SetVersionName;
  end;
  
  TDescribeDocumentRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeDocumentRequest)
  strict private
    FDocumentVersion: Nullable<string>;
    FName: Nullable<string>;
    FVersionName: Nullable<string>;
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetVersionName: string;
    procedure SetVersionName(const Value: string);
  strict protected
    function Obj: TDescribeDocumentRequest;
  public
    constructor Create(const AName: string); overload;
    function IsSetDocumentVersion: Boolean;
    function IsSetName: Boolean;
    function IsSetVersionName: Boolean;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Name: string read GetName write SetName;
    property VersionName: string read GetVersionName write SetVersionName;
  end;
  
implementation

{ TDescribeDocumentRequest }

function TDescribeDocumentRequest.Obj: TDescribeDocumentRequest;
begin
  Result := Self;
end;

constructor TDescribeDocumentRequest.Create(const AName: string);
begin
  Create;
  Name := AName;
end;

function TDescribeDocumentRequest.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TDescribeDocumentRequest.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TDescribeDocumentRequest.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TDescribeDocumentRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDescribeDocumentRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TDescribeDocumentRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TDescribeDocumentRequest.GetVersionName: string;
begin
  Result := FVersionName.ValueOrDefault;
end;

procedure TDescribeDocumentRequest.SetVersionName(const Value: string);
begin
  FVersionName := Value;
end;

function TDescribeDocumentRequest.IsSetVersionName: Boolean;
begin
  Result := FVersionName.HasValue;
end;

end.

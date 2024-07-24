unit AWS.SSM.Model.DeleteDocumentRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDeleteDocumentRequest = class;
  
  IDeleteDocumentRequest = interface
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetForce: Boolean;
    procedure SetForce(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetVersionName: string;
    procedure SetVersionName(const Value: string);
    function Obj: TDeleteDocumentRequest;
    function IsSetDocumentVersion: Boolean;
    function IsSetForce: Boolean;
    function IsSetName: Boolean;
    function IsSetVersionName: Boolean;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Force: Boolean read GetForce write SetForce;
    property Name: string read GetName write SetName;
    property VersionName: string read GetVersionName write SetVersionName;
  end;
  
  TDeleteDocumentRequest = class(TAmazonSimpleSystemsManagementRequest, IDeleteDocumentRequest)
  strict private
    FDocumentVersion: Nullable<string>;
    FForce: Nullable<Boolean>;
    FName: Nullable<string>;
    FVersionName: Nullable<string>;
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetForce: Boolean;
    procedure SetForce(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetVersionName: string;
    procedure SetVersionName(const Value: string);
  strict protected
    function Obj: TDeleteDocumentRequest;
  public
    constructor Create(const AName: string); overload;
    function IsSetDocumentVersion: Boolean;
    function IsSetForce: Boolean;
    function IsSetName: Boolean;
    function IsSetVersionName: Boolean;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Force: Boolean read GetForce write SetForce;
    property Name: string read GetName write SetName;
    property VersionName: string read GetVersionName write SetVersionName;
  end;
  
implementation

{ TDeleteDocumentRequest }

function TDeleteDocumentRequest.Obj: TDeleteDocumentRequest;
begin
  Result := Self;
end;

constructor TDeleteDocumentRequest.Create(const AName: string);
begin
  Create;
  Name := AName;
end;

function TDeleteDocumentRequest.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TDeleteDocumentRequest.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TDeleteDocumentRequest.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TDeleteDocumentRequest.GetForce: Boolean;
begin
  Result := FForce.ValueOrDefault;
end;

procedure TDeleteDocumentRequest.SetForce(const Value: Boolean);
begin
  FForce := Value;
end;

function TDeleteDocumentRequest.IsSetForce: Boolean;
begin
  Result := FForce.HasValue;
end;

function TDeleteDocumentRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDeleteDocumentRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TDeleteDocumentRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TDeleteDocumentRequest.GetVersionName: string;
begin
  Result := FVersionName.ValueOrDefault;
end;

procedure TDeleteDocumentRequest.SetVersionName(const Value: string);
begin
  FVersionName := Value;
end;

function TDeleteDocumentRequest.IsSetVersionName: Boolean;
begin
  Result := FVersionName.HasValue;
end;

end.

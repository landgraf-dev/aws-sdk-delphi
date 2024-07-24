unit AWS.SSM.Model.UpdateDocumentDefaultVersionRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TUpdateDocumentDefaultVersionRequest = class;
  
  IUpdateDocumentDefaultVersionRequest = interface
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TUpdateDocumentDefaultVersionRequest;
    function IsSetDocumentVersion: Boolean;
    function IsSetName: Boolean;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Name: string read GetName write SetName;
  end;
  
  TUpdateDocumentDefaultVersionRequest = class(TAmazonSimpleSystemsManagementRequest, IUpdateDocumentDefaultVersionRequest)
  strict private
    FDocumentVersion: Nullable<string>;
    FName: Nullable<string>;
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TUpdateDocumentDefaultVersionRequest;
  public
    function IsSetDocumentVersion: Boolean;
    function IsSetName: Boolean;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TUpdateDocumentDefaultVersionRequest }

function TUpdateDocumentDefaultVersionRequest.Obj: TUpdateDocumentDefaultVersionRequest;
begin
  Result := Self;
end;

function TUpdateDocumentDefaultVersionRequest.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TUpdateDocumentDefaultVersionRequest.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TUpdateDocumentDefaultVersionRequest.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TUpdateDocumentDefaultVersionRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TUpdateDocumentDefaultVersionRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TUpdateDocumentDefaultVersionRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.

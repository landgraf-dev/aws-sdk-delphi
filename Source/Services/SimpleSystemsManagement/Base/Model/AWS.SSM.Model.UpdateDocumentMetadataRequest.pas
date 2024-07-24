unit AWS.SSM.Model.UpdateDocumentMetadataRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.DocumentReviews, 
  AWS.Nullable;

type
  TUpdateDocumentMetadataRequest = class;
  
  IUpdateDocumentMetadataRequest = interface
    function GetDocumentReviews: TDocumentReviews;
    procedure SetDocumentReviews(const Value: TDocumentReviews);
    function GetKeepDocumentReviews: Boolean;
    procedure SetKeepDocumentReviews(const Value: Boolean);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TUpdateDocumentMetadataRequest;
    function IsSetDocumentReviews: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetName: Boolean;
    property DocumentReviews: TDocumentReviews read GetDocumentReviews write SetDocumentReviews;
    property KeepDocumentReviews: Boolean read GetKeepDocumentReviews write SetKeepDocumentReviews;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Name: string read GetName write SetName;
  end;
  
  TUpdateDocumentMetadataRequest = class(TAmazonSimpleSystemsManagementRequest, IUpdateDocumentMetadataRequest)
  strict private
    FDocumentReviews: TDocumentReviews;
    FKeepDocumentReviews: Boolean;
    FDocumentVersion: Nullable<string>;
    FName: Nullable<string>;
    function GetDocumentReviews: TDocumentReviews;
    procedure SetDocumentReviews(const Value: TDocumentReviews);
    function GetKeepDocumentReviews: Boolean;
    procedure SetKeepDocumentReviews(const Value: Boolean);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TUpdateDocumentMetadataRequest;
  public
    destructor Destroy; override;
    function IsSetDocumentReviews: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetName: Boolean;
    property DocumentReviews: TDocumentReviews read GetDocumentReviews write SetDocumentReviews;
    property KeepDocumentReviews: Boolean read GetKeepDocumentReviews write SetKeepDocumentReviews;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TUpdateDocumentMetadataRequest }

destructor TUpdateDocumentMetadataRequest.Destroy;
begin
  DocumentReviews := nil;
  inherited;
end;

function TUpdateDocumentMetadataRequest.Obj: TUpdateDocumentMetadataRequest;
begin
  Result := Self;
end;

function TUpdateDocumentMetadataRequest.GetDocumentReviews: TDocumentReviews;
begin
  Result := FDocumentReviews;
end;

procedure TUpdateDocumentMetadataRequest.SetDocumentReviews(const Value: TDocumentReviews);
begin
  if FDocumentReviews <> Value then
  begin
    if not KeepDocumentReviews then
      FDocumentReviews.Free;
    FDocumentReviews := Value;
  end;
end;

function TUpdateDocumentMetadataRequest.GetKeepDocumentReviews: Boolean;
begin
  Result := FKeepDocumentReviews;
end;

procedure TUpdateDocumentMetadataRequest.SetKeepDocumentReviews(const Value: Boolean);
begin
  FKeepDocumentReviews := Value;
end;

function TUpdateDocumentMetadataRequest.IsSetDocumentReviews: Boolean;
begin
  Result := FDocumentReviews <> nil;
end;

function TUpdateDocumentMetadataRequest.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TUpdateDocumentMetadataRequest.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TUpdateDocumentMetadataRequest.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TUpdateDocumentMetadataRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TUpdateDocumentMetadataRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TUpdateDocumentMetadataRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.

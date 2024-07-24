unit AWS.SSM.Model.AssociateOpsItemRelatedItemRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TAssociateOpsItemRelatedItemRequest = class;
  
  IAssociateOpsItemRelatedItemRequest = interface
    function GetAssociationType: string;
    procedure SetAssociationType(const Value: string);
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
    function GetResourceType: string;
    procedure SetResourceType(const Value: string);
    function GetResourceUri: string;
    procedure SetResourceUri(const Value: string);
    function Obj: TAssociateOpsItemRelatedItemRequest;
    function IsSetAssociationType: Boolean;
    function IsSetOpsItemId: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetResourceUri: Boolean;
    property AssociationType: string read GetAssociationType write SetAssociationType;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
    property ResourceType: string read GetResourceType write SetResourceType;
    property ResourceUri: string read GetResourceUri write SetResourceUri;
  end;
  
  TAssociateOpsItemRelatedItemRequest = class(TAmazonSimpleSystemsManagementRequest, IAssociateOpsItemRelatedItemRequest)
  strict private
    FAssociationType: Nullable<string>;
    FOpsItemId: Nullable<string>;
    FResourceType: Nullable<string>;
    FResourceUri: Nullable<string>;
    function GetAssociationType: string;
    procedure SetAssociationType(const Value: string);
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
    function GetResourceType: string;
    procedure SetResourceType(const Value: string);
    function GetResourceUri: string;
    procedure SetResourceUri(const Value: string);
  strict protected
    function Obj: TAssociateOpsItemRelatedItemRequest;
  public
    function IsSetAssociationType: Boolean;
    function IsSetOpsItemId: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetResourceUri: Boolean;
    property AssociationType: string read GetAssociationType write SetAssociationType;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
    property ResourceType: string read GetResourceType write SetResourceType;
    property ResourceUri: string read GetResourceUri write SetResourceUri;
  end;
  
implementation

{ TAssociateOpsItemRelatedItemRequest }

function TAssociateOpsItemRelatedItemRequest.Obj: TAssociateOpsItemRelatedItemRequest;
begin
  Result := Self;
end;

function TAssociateOpsItemRelatedItemRequest.GetAssociationType: string;
begin
  Result := FAssociationType.ValueOrDefault;
end;

procedure TAssociateOpsItemRelatedItemRequest.SetAssociationType(const Value: string);
begin
  FAssociationType := Value;
end;

function TAssociateOpsItemRelatedItemRequest.IsSetAssociationType: Boolean;
begin
  Result := FAssociationType.HasValue;
end;

function TAssociateOpsItemRelatedItemRequest.GetOpsItemId: string;
begin
  Result := FOpsItemId.ValueOrDefault;
end;

procedure TAssociateOpsItemRelatedItemRequest.SetOpsItemId(const Value: string);
begin
  FOpsItemId := Value;
end;

function TAssociateOpsItemRelatedItemRequest.IsSetOpsItemId: Boolean;
begin
  Result := FOpsItemId.HasValue;
end;

function TAssociateOpsItemRelatedItemRequest.GetResourceType: string;
begin
  Result := FResourceType.ValueOrDefault;
end;

procedure TAssociateOpsItemRelatedItemRequest.SetResourceType(const Value: string);
begin
  FResourceType := Value;
end;

function TAssociateOpsItemRelatedItemRequest.IsSetResourceType: Boolean;
begin
  Result := FResourceType.HasValue;
end;

function TAssociateOpsItemRelatedItemRequest.GetResourceUri: string;
begin
  Result := FResourceUri.ValueOrDefault;
end;

procedure TAssociateOpsItemRelatedItemRequest.SetResourceUri(const Value: string);
begin
  FResourceUri := Value;
end;

function TAssociateOpsItemRelatedItemRequest.IsSetResourceUri: Boolean;
begin
  Result := FResourceUri.HasValue;
end;

end.

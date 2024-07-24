unit AWS.SSM.Model.DisassociateOpsItemRelatedItemRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDisassociateOpsItemRelatedItemRequest = class;
  
  IDisassociateOpsItemRelatedItemRequest = interface
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
    function Obj: TDisassociateOpsItemRelatedItemRequest;
    function IsSetAssociationId: Boolean;
    function IsSetOpsItemId: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
  end;
  
  TDisassociateOpsItemRelatedItemRequest = class(TAmazonSimpleSystemsManagementRequest, IDisassociateOpsItemRelatedItemRequest)
  strict private
    FAssociationId: Nullable<string>;
    FOpsItemId: Nullable<string>;
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
  strict protected
    function Obj: TDisassociateOpsItemRelatedItemRequest;
  public
    function IsSetAssociationId: Boolean;
    function IsSetOpsItemId: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
  end;
  
implementation

{ TDisassociateOpsItemRelatedItemRequest }

function TDisassociateOpsItemRelatedItemRequest.Obj: TDisassociateOpsItemRelatedItemRequest;
begin
  Result := Self;
end;

function TDisassociateOpsItemRelatedItemRequest.GetAssociationId: string;
begin
  Result := FAssociationId.ValueOrDefault;
end;

procedure TDisassociateOpsItemRelatedItemRequest.SetAssociationId(const Value: string);
begin
  FAssociationId := Value;
end;

function TDisassociateOpsItemRelatedItemRequest.IsSetAssociationId: Boolean;
begin
  Result := FAssociationId.HasValue;
end;

function TDisassociateOpsItemRelatedItemRequest.GetOpsItemId: string;
begin
  Result := FOpsItemId.ValueOrDefault;
end;

procedure TDisassociateOpsItemRelatedItemRequest.SetOpsItemId(const Value: string);
begin
  FOpsItemId := Value;
end;

function TDisassociateOpsItemRelatedItemRequest.IsSetOpsItemId: Boolean;
begin
  Result := FOpsItemId.HasValue;
end;

end.

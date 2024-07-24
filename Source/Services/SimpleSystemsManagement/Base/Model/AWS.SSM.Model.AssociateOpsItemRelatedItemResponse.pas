unit AWS.SSM.Model.AssociateOpsItemRelatedItemResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TAssociateOpsItemRelatedItemResponse = class;
  
  IAssociateOpsItemRelatedItemResponse = interface(IAmazonWebServiceResponse)
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function Obj: TAssociateOpsItemRelatedItemResponse;
    function IsSetAssociationId: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
  end;
  
  TAssociateOpsItemRelatedItemResponse = class(TAmazonWebServiceResponse, IAssociateOpsItemRelatedItemResponse)
  strict private
    FAssociationId: Nullable<string>;
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
  strict protected
    function Obj: TAssociateOpsItemRelatedItemResponse;
  public
    function IsSetAssociationId: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
  end;
  
implementation

{ TAssociateOpsItemRelatedItemResponse }

function TAssociateOpsItemRelatedItemResponse.Obj: TAssociateOpsItemRelatedItemResponse;
begin
  Result := Self;
end;

function TAssociateOpsItemRelatedItemResponse.GetAssociationId: string;
begin
  Result := FAssociationId.ValueOrDefault;
end;

procedure TAssociateOpsItemRelatedItemResponse.SetAssociationId(const Value: string);
begin
  FAssociationId := Value;
end;

function TAssociateOpsItemRelatedItemResponse.IsSetAssociationId: Boolean;
begin
  Result := FAssociationId.HasValue;
end;

end.

unit AWS.SSM.Transform.RelatedOpsItemMarshaller;

interface

uses
  AWS.SSM.Model.RelatedOpsItem, 
  AWS.Transform.RequestMarshaller;

type
  IRelatedOpsItemMarshaller = IRequestMarshaller<TRelatedOpsItem, TJsonMarshallerContext>;
  
  TRelatedOpsItemMarshaller = class(TInterfacedObject, IRequestMarshaller<TRelatedOpsItem, TJsonMarshallerContext>)
  strict private
    class var FInstance: IRelatedOpsItemMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TRelatedOpsItem; Context: TJsonMarshallerContext);
    class function Instance: IRelatedOpsItemMarshaller; static;
  end;
  
implementation

{ TRelatedOpsItemMarshaller }

procedure TRelatedOpsItemMarshaller.Marshall(ARequestObject: TRelatedOpsItem; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetOpsItemId then
  begin
    Context.Writer.WriteName('OpsItemId');
    Context.Writer.WriteString(ARequestObject.OpsItemId);
  end;
end;

class constructor TRelatedOpsItemMarshaller.Create;
begin
  FInstance := TRelatedOpsItemMarshaller.Create;
end;

class function TRelatedOpsItemMarshaller.Instance: IRelatedOpsItemMarshaller;
begin
  Result := FInstance;
end;

end.

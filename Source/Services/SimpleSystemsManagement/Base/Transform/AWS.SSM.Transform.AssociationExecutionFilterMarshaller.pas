unit AWS.SSM.Transform.AssociationExecutionFilterMarshaller;

interface

uses
  AWS.SSM.Model.AssociationExecutionFilter, 
  AWS.Transform.RequestMarshaller;

type
  IAssociationExecutionFilterMarshaller = IRequestMarshaller<TAssociationExecutionFilter, TJsonMarshallerContext>;
  
  TAssociationExecutionFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TAssociationExecutionFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IAssociationExecutionFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TAssociationExecutionFilter; Context: TJsonMarshallerContext);
    class function Instance: IAssociationExecutionFilterMarshaller; static;
  end;
  
implementation

{ TAssociationExecutionFilterMarshaller }

procedure TAssociationExecutionFilterMarshaller.Marshall(ARequestObject: TAssociationExecutionFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKey then
  begin
    Context.Writer.WriteName('Key');
    Context.Writer.WriteString(ARequestObject.Key.Value);
  end;
  if ARequestObject.IsSetType then
  begin
    Context.Writer.WriteName('Type');
    Context.Writer.WriteString(ARequestObject.&Type.Value);
  end;
  if ARequestObject.IsSetValue then
  begin
    Context.Writer.WriteName('Value');
    Context.Writer.WriteString(ARequestObject.Value);
  end;
end;

class constructor TAssociationExecutionFilterMarshaller.Create;
begin
  FInstance := TAssociationExecutionFilterMarshaller.Create;
end;

class function TAssociationExecutionFilterMarshaller.Instance: IAssociationExecutionFilterMarshaller;
begin
  Result := FInstance;
end;

end.

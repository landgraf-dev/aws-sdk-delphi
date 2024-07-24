unit AWS.SSM.Transform.AssociationExecutionTargetsFilterMarshaller;

interface

uses
  AWS.SSM.Model.AssociationExecutionTargetsFilter, 
  AWS.Transform.RequestMarshaller;

type
  IAssociationExecutionTargetsFilterMarshaller = IRequestMarshaller<TAssociationExecutionTargetsFilter, TJsonMarshallerContext>;
  
  TAssociationExecutionTargetsFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TAssociationExecutionTargetsFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IAssociationExecutionTargetsFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TAssociationExecutionTargetsFilter; Context: TJsonMarshallerContext);
    class function Instance: IAssociationExecutionTargetsFilterMarshaller; static;
  end;
  
implementation

{ TAssociationExecutionTargetsFilterMarshaller }

procedure TAssociationExecutionTargetsFilterMarshaller.Marshall(ARequestObject: TAssociationExecutionTargetsFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKey then
  begin
    Context.Writer.WriteName('Key');
    Context.Writer.WriteString(ARequestObject.Key.Value);
  end;
  if ARequestObject.IsSetValue then
  begin
    Context.Writer.WriteName('Value');
    Context.Writer.WriteString(ARequestObject.Value);
  end;
end;

class constructor TAssociationExecutionTargetsFilterMarshaller.Create;
begin
  FInstance := TAssociationExecutionTargetsFilterMarshaller.Create;
end;

class function TAssociationExecutionTargetsFilterMarshaller.Instance: IAssociationExecutionTargetsFilterMarshaller;
begin
  Result := FInstance;
end;

end.

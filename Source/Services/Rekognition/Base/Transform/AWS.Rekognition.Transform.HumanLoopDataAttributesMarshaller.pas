unit AWS.Rekognition.Transform.HumanLoopDataAttributesMarshaller;

interface

uses
  AWS.Rekognition.Model.HumanLoopDataAttributes, 
  AWS.Transform.RequestMarshaller;

type
  IHumanLoopDataAttributesMarshaller = IRequestMarshaller<THumanLoopDataAttributes, TJsonMarshallerContext>;
  
  THumanLoopDataAttributesMarshaller = class(TInterfacedObject, IRequestMarshaller<THumanLoopDataAttributes, TJsonMarshallerContext>)
  strict private
    class var FInstance: IHumanLoopDataAttributesMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: THumanLoopDataAttributes; Context: TJsonMarshallerContext);
    class function Instance: IHumanLoopDataAttributesMarshaller; static;
  end;
  
implementation

{ THumanLoopDataAttributesMarshaller }

procedure THumanLoopDataAttributesMarshaller.Marshall(ARequestObject: THumanLoopDataAttributes; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetContentClassifiers then
  begin
    Context.Writer.WriteName('ContentClassifiers');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectContentClassifiersListValue in ARequestObject.ContentClassifiers do
      Context.Writer.WriteString(ARequestObjectContentClassifiersListValue);
    Context.Writer.WriteEndArray;
  end;
end;

class constructor THumanLoopDataAttributesMarshaller.Create;
begin
  FInstance := THumanLoopDataAttributesMarshaller.Create;
end;

class function THumanLoopDataAttributesMarshaller.Instance: IHumanLoopDataAttributesMarshaller;
begin
  Result := FInstance;
end;

end.

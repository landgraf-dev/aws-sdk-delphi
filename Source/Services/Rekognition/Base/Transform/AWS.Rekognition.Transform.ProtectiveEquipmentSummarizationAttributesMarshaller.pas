unit AWS.Rekognition.Transform.ProtectiveEquipmentSummarizationAttributesMarshaller;

interface

uses
  AWS.Rekognition.Model.ProtectiveEquipmentSummarizationAttributes, 
  AWS.Transform.RequestMarshaller;

type
  IProtectiveEquipmentSummarizationAttributesMarshaller = IRequestMarshaller<TProtectiveEquipmentSummarizationAttributes, TJsonMarshallerContext>;
  
  TProtectiveEquipmentSummarizationAttributesMarshaller = class(TInterfacedObject, IRequestMarshaller<TProtectiveEquipmentSummarizationAttributes, TJsonMarshallerContext>)
  strict private
    class var FInstance: IProtectiveEquipmentSummarizationAttributesMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TProtectiveEquipmentSummarizationAttributes; Context: TJsonMarshallerContext);
    class function Instance: IProtectiveEquipmentSummarizationAttributesMarshaller; static;
  end;
  
implementation

{ TProtectiveEquipmentSummarizationAttributesMarshaller }

procedure TProtectiveEquipmentSummarizationAttributesMarshaller.Marshall(ARequestObject: TProtectiveEquipmentSummarizationAttributes; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetMinConfidence then
  begin
    Context.Writer.WriteName('MinConfidence');
    Context.Writer.WriteDouble(ARequestObject.MinConfidence);
  end;
  if ARequestObject.IsSetRequiredEquipmentTypes then
  begin
    Context.Writer.WriteName('RequiredEquipmentTypes');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectRequiredEquipmentTypesListValue in ARequestObject.RequiredEquipmentTypes do
      Context.Writer.WriteString(ARequestObjectRequiredEquipmentTypesListValue);
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TProtectiveEquipmentSummarizationAttributesMarshaller.Create;
begin
  FInstance := TProtectiveEquipmentSummarizationAttributesMarshaller.Create;
end;

class function TProtectiveEquipmentSummarizationAttributesMarshaller.Instance: IProtectiveEquipmentSummarizationAttributesMarshaller;
begin
  Result := FInstance;
end;

end.

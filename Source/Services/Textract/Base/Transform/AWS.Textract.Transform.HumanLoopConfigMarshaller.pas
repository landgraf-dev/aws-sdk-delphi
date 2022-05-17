unit AWS.Textract.Transform.HumanLoopConfigMarshaller;

interface

uses
  AWS.Textract.Model.HumanLoopConfig, 
  AWS.Transform.RequestMarshaller, 
  AWS.Textract.Transform.HumanLoopDataAttributesMarshaller;

type
  IHumanLoopConfigMarshaller = IRequestMarshaller<THumanLoopConfig, TJsonMarshallerContext>;
  
  THumanLoopConfigMarshaller = class(TInterfacedObject, IRequestMarshaller<THumanLoopConfig, TJsonMarshallerContext>)
  strict private
    class var FInstance: IHumanLoopConfigMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: THumanLoopConfig; Context: TJsonMarshallerContext);
    class function Instance: IHumanLoopConfigMarshaller; static;
  end;
  
implementation

{ THumanLoopConfigMarshaller }

procedure THumanLoopConfigMarshaller.Marshall(ARequestObject: THumanLoopConfig; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetDataAttributes then
  begin
    Context.Writer.WriteName('DataAttributes');
    Context.Writer.WriteBeginObject;
    THumanLoopDataAttributesMarshaller.Instance.Marshall(ARequestObject.DataAttributes, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetFlowDefinitionArn then
  begin
    Context.Writer.WriteName('FlowDefinitionArn');
    Context.Writer.WriteString(ARequestObject.FlowDefinitionArn);
  end;
  if ARequestObject.IsSetHumanLoopName then
  begin
    Context.Writer.WriteName('HumanLoopName');
    Context.Writer.WriteString(ARequestObject.HumanLoopName);
  end;
end;

class constructor THumanLoopConfigMarshaller.Create;
begin
  FInstance := THumanLoopConfigMarshaller.Create;
end;

class function THumanLoopConfigMarshaller.Instance: IHumanLoopConfigMarshaller;
begin
  Result := FInstance;
end;

end.

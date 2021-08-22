unit AWS.LexRuntimeV2.Transform.ActiveContextMarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.ActiveContext, 
  AWS.Transform.RequestMarshaller, 
  AWS.LexRuntimeV2.Transform.ActiveContextTimeToLiveMarshaller;

type
  IActiveContextMarshaller = IRequestMarshaller<TActiveContext, TJsonMarshallerContext>;
  
  TActiveContextMarshaller = class(TInterfacedObject, IRequestMarshaller<TActiveContext, TJsonMarshallerContext>)
  strict private
    class var FInstance: IActiveContextMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TActiveContext; Context: TJsonMarshallerContext);
    class function Instance: IActiveContextMarshaller; static;
  end;
  
implementation

{ TActiveContextMarshaller }

procedure TActiveContextMarshaller.Marshall(ARequestObject: TActiveContext; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetContextAttributes then
  begin
    Context.Writer.WriteName('contextAttributes');
    Context.Writer.WriteBeginObject;
    for var ARequestObjectContextAttributesKvp in ARequestObject.ContextAttributes do
    begin
      Context.Writer.WriteName(ARequestObjectContextAttributesKvp.Key);
      var ARequestObjectContextAttributesValue := ARequestObjectContextAttributesKvp.Value;
      Context.Writer.WriteString(ARequestObjectContextAttributesValue);
    end;
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetName then
  begin
    Context.Writer.WriteName('name');
    Context.Writer.WriteString(ARequestObject.Name);
  end;
  if ARequestObject.IsSetTimeToLive then
  begin
    Context.Writer.WriteName('timeToLive');
    Context.Writer.WriteBeginObject;
    TActiveContextTimeToLiveMarshaller.Instance.Marshall(ARequestObject.TimeToLive, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TActiveContextMarshaller.Create;
begin
  FInstance := TActiveContextMarshaller.Create;
end;

class function TActiveContextMarshaller.Instance: IActiveContextMarshaller;
begin
  Result := FInstance;
end;

end.

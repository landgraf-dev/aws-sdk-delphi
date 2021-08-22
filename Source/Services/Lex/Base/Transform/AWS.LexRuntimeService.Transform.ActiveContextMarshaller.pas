unit AWS.LexRuntimeService.Transform.ActiveContextMarshaller;

interface

uses
  AWS.LexRuntimeService.Model.ActiveContext, 
  AWS.Transform.RequestMarshaller, 
  AWS.LexRuntimeService.Transform.ActiveContextTimeToLiveMarshaller;

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
  if ARequestObject.IsSetName then
  begin
    Context.Writer.WriteName('name');
    Context.Writer.WriteString(ARequestObject.Name);
  end;
  if ARequestObject.IsSetParameters then
  begin
    Context.Writer.WriteName('parameters');
    Context.Writer.WriteBeginObject;
    for var ARequestObjectParametersKvp in ARequestObject.Parameters do
    begin
      Context.Writer.WriteName(ARequestObjectParametersKvp.Key);
      var ARequestObjectParametersValue := ARequestObjectParametersKvp.Value;
      Context.Writer.WriteString(ARequestObjectParametersValue);
    end;
    Context.Writer.WriteEndObject;
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

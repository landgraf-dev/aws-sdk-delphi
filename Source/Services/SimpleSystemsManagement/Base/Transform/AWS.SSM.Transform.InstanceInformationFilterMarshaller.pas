unit AWS.SSM.Transform.InstanceInformationFilterMarshaller;

interface

uses
  AWS.SSM.Model.InstanceInformationFilter, 
  AWS.Transform.RequestMarshaller;

type
  IInstanceInformationFilterMarshaller = IRequestMarshaller<TInstanceInformationFilter, TJsonMarshallerContext>;
  
  TInstanceInformationFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TInstanceInformationFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IInstanceInformationFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TInstanceInformationFilter; Context: TJsonMarshallerContext);
    class function Instance: IInstanceInformationFilterMarshaller; static;
  end;
  
implementation

{ TInstanceInformationFilterMarshaller }

procedure TInstanceInformationFilterMarshaller.Marshall(ARequestObject: TInstanceInformationFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKey then
  begin
    Context.Writer.WriteName('key');
    Context.Writer.WriteString(ARequestObject.Key.Value);
  end;
  if ARequestObject.IsSetValueSet then
  begin
    Context.Writer.WriteName('valueSet');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectValueSetListValue in ARequestObject.ValueSet do
      Context.Writer.WriteString(ARequestObjectValueSetListValue);
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TInstanceInformationFilterMarshaller.Create;
begin
  FInstance := TInstanceInformationFilterMarshaller.Create;
end;

class function TInstanceInformationFilterMarshaller.Instance: IInstanceInformationFilterMarshaller;
begin
  Result := FInstance;
end;

end.

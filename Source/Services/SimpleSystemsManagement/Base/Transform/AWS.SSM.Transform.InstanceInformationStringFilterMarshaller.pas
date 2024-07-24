unit AWS.SSM.Transform.InstanceInformationStringFilterMarshaller;

interface

uses
  AWS.SSM.Model.InstanceInformationStringFilter, 
  AWS.Transform.RequestMarshaller;

type
  IInstanceInformationStringFilterMarshaller = IRequestMarshaller<TInstanceInformationStringFilter, TJsonMarshallerContext>;
  
  TInstanceInformationStringFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TInstanceInformationStringFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IInstanceInformationStringFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TInstanceInformationStringFilter; Context: TJsonMarshallerContext);
    class function Instance: IInstanceInformationStringFilterMarshaller; static;
  end;
  
implementation

{ TInstanceInformationStringFilterMarshaller }

procedure TInstanceInformationStringFilterMarshaller.Marshall(ARequestObject: TInstanceInformationStringFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKey then
  begin
    Context.Writer.WriteName('Key');
    Context.Writer.WriteString(ARequestObject.Key);
  end;
  if ARequestObject.IsSetValues then
  begin
    Context.Writer.WriteName('Values');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectValuesListValue in ARequestObject.Values do
      Context.Writer.WriteString(ARequestObjectValuesListValue);
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TInstanceInformationStringFilterMarshaller.Create;
begin
  FInstance := TInstanceInformationStringFilterMarshaller.Create;
end;

class function TInstanceInformationStringFilterMarshaller.Instance: IInstanceInformationStringFilterMarshaller;
begin
  Result := FInstance;
end;

end.

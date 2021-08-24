unit AWS.SESv2.Transform.CloudWatchDestinationMarshaller;

interface

uses
  AWS.SESv2.Model.CloudWatchDestination, 
  AWS.Transform.RequestMarshaller, 
  AWS.SESv2.Transform.CloudWatchDimensionConfigurationMarshaller;

type
  ICloudWatchDestinationMarshaller = IRequestMarshaller<TCloudWatchDestination, TJsonMarshallerContext>;
  
  TCloudWatchDestinationMarshaller = class(TInterfacedObject, IRequestMarshaller<TCloudWatchDestination, TJsonMarshallerContext>)
  strict private
    class var FInstance: ICloudWatchDestinationMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TCloudWatchDestination; Context: TJsonMarshallerContext);
    class function Instance: ICloudWatchDestinationMarshaller; static;
  end;
  
implementation

{ TCloudWatchDestinationMarshaller }

procedure TCloudWatchDestinationMarshaller.Marshall(ARequestObject: TCloudWatchDestination; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetDimensionConfigurations then
  begin
    Context.Writer.WriteName('DimensionConfigurations');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectDimensionConfigurationsListValue in ARequestObject.DimensionConfigurations do
    begin
      Context.Writer.WriteBeginObject;
      TCloudWatchDimensionConfigurationMarshaller.Instance.Marshall(ARequestObjectDimensionConfigurationsListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TCloudWatchDestinationMarshaller.Create;
begin
  FInstance := TCloudWatchDestinationMarshaller.Create;
end;

class function TCloudWatchDestinationMarshaller.Instance: ICloudWatchDestinationMarshaller;
begin
  Result := FInstance;
end;

end.

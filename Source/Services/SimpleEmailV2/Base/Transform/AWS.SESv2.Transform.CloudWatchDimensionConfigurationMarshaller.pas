unit AWS.SESv2.Transform.CloudWatchDimensionConfigurationMarshaller;

interface

uses
  AWS.SESv2.Model.CloudWatchDimensionConfiguration, 
  AWS.Transform.RequestMarshaller;

type
  ICloudWatchDimensionConfigurationMarshaller = IRequestMarshaller<TCloudWatchDimensionConfiguration, TJsonMarshallerContext>;
  
  TCloudWatchDimensionConfigurationMarshaller = class(TInterfacedObject, IRequestMarshaller<TCloudWatchDimensionConfiguration, TJsonMarshallerContext>)
  strict private
    class var FInstance: ICloudWatchDimensionConfigurationMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TCloudWatchDimensionConfiguration; Context: TJsonMarshallerContext);
    class function Instance: ICloudWatchDimensionConfigurationMarshaller; static;
  end;
  
implementation

{ TCloudWatchDimensionConfigurationMarshaller }

procedure TCloudWatchDimensionConfigurationMarshaller.Marshall(ARequestObject: TCloudWatchDimensionConfiguration; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetDefaultDimensionValue then
  begin
    Context.Writer.WriteName('DefaultDimensionValue');
    Context.Writer.WriteString(ARequestObject.DefaultDimensionValue);
  end;
  if ARequestObject.IsSetDimensionName then
  begin
    Context.Writer.WriteName('DimensionName');
    Context.Writer.WriteString(ARequestObject.DimensionName);
  end;
  if ARequestObject.IsSetDimensionValueSource then
  begin
    Context.Writer.WriteName('DimensionValueSource');
    Context.Writer.WriteString(ARequestObject.DimensionValueSource.Value);
  end;
end;

class constructor TCloudWatchDimensionConfigurationMarshaller.Create;
begin
  FInstance := TCloudWatchDimensionConfigurationMarshaller.Create;
end;

class function TCloudWatchDimensionConfigurationMarshaller.Instance: ICloudWatchDimensionConfigurationMarshaller;
begin
  Result := FInstance;
end;

end.

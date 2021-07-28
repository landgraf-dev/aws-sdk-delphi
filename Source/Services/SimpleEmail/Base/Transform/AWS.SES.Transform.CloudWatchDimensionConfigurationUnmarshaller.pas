unit AWS.SES.Transform.CloudWatchDimensionConfigurationUnmarshaller;

interface

uses
  AWS.SES.Model.CloudWatchDimensionConfiguration, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ICloudWatchDimensionConfigurationUnmarshaller = IUnmarshaller<TCloudWatchDimensionConfiguration, TXmlUnmarshallerContext>;
  
  TCloudWatchDimensionConfigurationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCloudWatchDimensionConfiguration, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ICloudWatchDimensionConfigurationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TCloudWatchDimensionConfiguration;
    class function Instance: ICloudWatchDimensionConfigurationUnmarshaller; static;
  end;
  
implementation

{ TCloudWatchDimensionConfigurationUnmarshaller }

function TCloudWatchDimensionConfigurationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TCloudWatchDimensionConfiguration;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TCloudWatchDimensionConfiguration;
begin
  UnmarshalledObject := TCloudWatchDimensionConfiguration.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('DefaultDimensionValue', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.DefaultDimensionValue := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('DimensionName', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.DimensionName := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('DimensionValueSource', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.DimensionValueSource := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
      end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TCloudWatchDimensionConfigurationUnmarshaller.Create;
begin
  FInstance := TCloudWatchDimensionConfigurationUnmarshaller.Create;
end;

class function TCloudWatchDimensionConfigurationUnmarshaller.Instance: ICloudWatchDimensionConfigurationUnmarshaller;
begin
  Result := FInstance;
end;

end.

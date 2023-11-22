unit AWS.S3Control.Transform.ObjectLambdaConfigurationUnmarshaller;

interface

uses
  AWS.S3Control.Model.ObjectLambdaConfiguration, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3Control.Transform.ObjectLambdaTransformationConfigurationUnmarshaller, 
  AWS.S3Control.Model.ObjectLambdaTransformationConfiguration;

type
  IObjectLambdaConfigurationUnmarshaller = IUnmarshaller<TObjectLambdaConfiguration, TXmlUnmarshallerContext>;
  
  TObjectLambdaConfigurationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TObjectLambdaConfiguration, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IObjectLambdaConfigurationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TObjectLambdaConfiguration;
    class function Instance: IObjectLambdaConfigurationUnmarshaller; static;
  end;
  
implementation

{ TObjectLambdaConfigurationUnmarshaller }

function TObjectLambdaConfigurationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TObjectLambdaConfiguration;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TObjectLambdaConfiguration;
begin
  UnmarshalledObject := TObjectLambdaConfiguration.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('AllowedFeatures/AllowedFeature', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.AllowedFeatures.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('CloudWatchMetricsEnabled', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.CloudWatchMetricsEnabled := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('SupportingAccessPoint', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.SupportingAccessPoint := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('TransformationConfigurations/TransformationConfiguration', TargetDepth) then
        begin
          var Unmarshaller := TObjectLambdaTransformationConfigurationUnmarshaller.Instance;
          UnmarshalledObject.TransformationConfigurations.Add(Unmarshaller.Unmarshall(AContext));
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

class constructor TObjectLambdaConfigurationUnmarshaller.Create;
begin
  FInstance := TObjectLambdaConfigurationUnmarshaller.Create;
end;

class function TObjectLambdaConfigurationUnmarshaller.Instance: IObjectLambdaConfigurationUnmarshaller;
begin
  Result := FInstance;
end;

end.

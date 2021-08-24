unit AWS.SESv2.Transform.CloudWatchDimensionConfigurationUnmarshaller;

interface

uses
  AWS.SESv2.Model.CloudWatchDimensionConfiguration, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ICloudWatchDimensionConfigurationUnmarshaller = IUnmarshaller<TCloudWatchDimensionConfiguration, TJsonUnmarshallerContext>;
  
  TCloudWatchDimensionConfigurationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCloudWatchDimensionConfiguration, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ICloudWatchDimensionConfigurationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TCloudWatchDimensionConfiguration;
    class function JsonInstance: ICloudWatchDimensionConfigurationUnmarshaller; static;
  end;
  
implementation

{ TCloudWatchDimensionConfigurationUnmarshaller }

function TCloudWatchDimensionConfigurationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TCloudWatchDimensionConfiguration;
var
  TargetDepth: Integer;
  UnmarshalledObject: TCloudWatchDimensionConfiguration;
begin
  UnmarshalledObject := TCloudWatchDimensionConfiguration.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DefaultDimensionValue', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DefaultDimensionValue := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DimensionName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DimensionName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DimensionValueSource', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DimensionValueSource := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TCloudWatchDimensionConfigurationUnmarshaller.Create;
begin
  FJsonInstance := TCloudWatchDimensionConfigurationUnmarshaller.Create;
end;

class function TCloudWatchDimensionConfigurationUnmarshaller.JsonInstance: ICloudWatchDimensionConfigurationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

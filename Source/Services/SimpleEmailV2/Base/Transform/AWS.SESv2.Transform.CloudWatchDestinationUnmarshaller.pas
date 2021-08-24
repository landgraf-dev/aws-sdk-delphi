unit AWS.SESv2.Transform.CloudWatchDestinationUnmarshaller;

interface

uses
  AWS.SESv2.Model.CloudWatchDestination, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SESv2.Transform.CloudWatchDimensionConfigurationUnmarshaller, 
  AWS.SESv2.Model.CloudWatchDimensionConfiguration, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ICloudWatchDestinationUnmarshaller = IUnmarshaller<TCloudWatchDestination, TJsonUnmarshallerContext>;
  
  TCloudWatchDestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCloudWatchDestination, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ICloudWatchDestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TCloudWatchDestination;
    class function JsonInstance: ICloudWatchDestinationUnmarshaller; static;
  end;
  
implementation

{ TCloudWatchDestinationUnmarshaller }

function TCloudWatchDestinationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TCloudWatchDestination;
var
  TargetDepth: Integer;
  UnmarshalledObject: TCloudWatchDestination;
begin
  UnmarshalledObject := TCloudWatchDestination.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('DimensionConfigurations', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TCloudWatchDimensionConfiguration, ICloudWatchDimensionConfigurationUnmarshaller>.JsonNew(TCloudWatchDimensionConfigurationUnmarshaller.JsonInstance);
        UnmarshalledObject.DimensionConfigurations := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TCloudWatchDestinationUnmarshaller.Create;
begin
  FJsonInstance := TCloudWatchDestinationUnmarshaller.Create;
end;

class function TCloudWatchDestinationUnmarshaller.JsonInstance: ICloudWatchDestinationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

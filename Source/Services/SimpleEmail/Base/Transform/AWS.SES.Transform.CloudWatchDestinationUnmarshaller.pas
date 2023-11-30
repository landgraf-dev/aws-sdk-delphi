unit AWS.SES.Transform.CloudWatchDestinationUnmarshaller;

interface

uses
  AWS.SES.Model.CloudWatchDestination, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SES.Transform.CloudWatchDimensionConfigurationUnmarshaller, 
  AWS.SES.Model.CloudWatchDimensionConfiguration;

type
  ICloudWatchDestinationUnmarshaller = IUnmarshaller<TCloudWatchDestination, TXmlUnmarshallerContext>;
  
  TCloudWatchDestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCloudWatchDestination, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ICloudWatchDestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TCloudWatchDestination;
    class function Instance: ICloudWatchDestinationUnmarshaller; static;
  end;
  
implementation

{ TCloudWatchDestinationUnmarshaller }

function TCloudWatchDestinationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TCloudWatchDestination;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TCloudWatchDestination;
begin
  UnmarshalledObject := TCloudWatchDestination.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('DimensionConfigurations/member', TargetDepth) then
        begin
          var Unmarshaller := TCloudWatchDimensionConfigurationUnmarshaller.Instance;
          UnmarshalledObject.DimensionConfigurations.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TCloudWatchDestinationUnmarshaller.Create;
begin
  FInstance := TCloudWatchDestinationUnmarshaller.Create;
end;

class function TCloudWatchDestinationUnmarshaller.Instance: ICloudWatchDestinationUnmarshaller;
begin
  Result := FInstance;
end;

end.

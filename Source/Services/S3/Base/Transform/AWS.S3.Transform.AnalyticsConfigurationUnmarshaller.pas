unit AWS.S3.Transform.AnalyticsConfigurationUnmarshaller;

interface

uses
  AWS.S3.Model.AnalyticsConfiguration, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.AnalyticsFilterUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.StorageClassAnalysisUnmarshaller;

type
  IAnalyticsConfigurationUnmarshaller = IUnmarshaller<TAnalyticsConfiguration, TXmlUnmarshallerContext>;
  
  TAnalyticsConfigurationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAnalyticsConfiguration, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IAnalyticsConfigurationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAnalyticsConfiguration;
    class function Instance: IAnalyticsConfigurationUnmarshaller; static;
  end;
  
implementation

{ TAnalyticsConfigurationUnmarshaller }

function TAnalyticsConfigurationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAnalyticsConfiguration;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TAnalyticsConfiguration;
begin
  UnmarshalledObject := TAnalyticsConfiguration.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Filter', TargetDepth) then
        begin
          var Unmarshaller := TAnalyticsFilterUnmarshaller.Instance;
          UnmarshalledObject.Filter := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Id', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Id := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('StorageClassAnalysis', TargetDepth) then
        begin
          var Unmarshaller := TStorageClassAnalysisUnmarshaller.Instance;
          UnmarshalledObject.StorageClassAnalysis := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
      end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TAnalyticsConfigurationUnmarshaller.Create;
begin
  FInstance := TAnalyticsConfigurationUnmarshaller.Create;
end;

class function TAnalyticsConfigurationUnmarshaller.Instance: IAnalyticsConfigurationUnmarshaller;
begin
  Result := FInstance;
end;

end.

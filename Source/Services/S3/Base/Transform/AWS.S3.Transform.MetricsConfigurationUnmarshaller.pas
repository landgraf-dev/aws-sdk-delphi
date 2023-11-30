unit AWS.S3.Transform.MetricsConfigurationUnmarshaller;

interface

uses
  AWS.S3.Model.MetricsConfiguration, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.MetricsFilterUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IMetricsConfigurationUnmarshaller = IUnmarshaller<TMetricsConfiguration, TXmlUnmarshallerContext>;
  
  TMetricsConfigurationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMetricsConfiguration, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IMetricsConfigurationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TMetricsConfiguration;
    class function Instance: IMetricsConfigurationUnmarshaller; static;
  end;
  
implementation

{ TMetricsConfigurationUnmarshaller }

function TMetricsConfigurationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TMetricsConfiguration;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TMetricsConfiguration;
begin
  UnmarshalledObject := TMetricsConfiguration.Create;
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
          var Unmarshaller := TMetricsFilterUnmarshaller.Instance;
          UnmarshalledObject.Filter := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Id', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Id := Unmarshaller.Unmarshall(AContext);
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

class constructor TMetricsConfigurationUnmarshaller.Create;
begin
  FInstance := TMetricsConfigurationUnmarshaller.Create;
end;

class function TMetricsConfigurationUnmarshaller.Instance: IMetricsConfigurationUnmarshaller;
begin
  Result := FInstance;
end;

end.

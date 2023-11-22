unit AWS.S3Control.Transform.PrefixLevelStorageMetricsUnmarshaller;

interface

uses
  AWS.S3Control.Model.PrefixLevelStorageMetrics, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3Control.Transform.SelectionCriteriaUnmarshaller;

type
  IPrefixLevelStorageMetricsUnmarshaller = IUnmarshaller<TPrefixLevelStorageMetrics, TXmlUnmarshallerContext>;
  
  TPrefixLevelStorageMetricsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPrefixLevelStorageMetrics, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IPrefixLevelStorageMetricsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TPrefixLevelStorageMetrics;
    class function Instance: IPrefixLevelStorageMetricsUnmarshaller; static;
  end;
  
implementation

{ TPrefixLevelStorageMetricsUnmarshaller }

function TPrefixLevelStorageMetricsUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TPrefixLevelStorageMetrics;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TPrefixLevelStorageMetrics;
begin
  UnmarshalledObject := TPrefixLevelStorageMetrics.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('IsEnabled', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.IsEnabled := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('SelectionCriteria', TargetDepth) then
        begin
          var Unmarshaller := TSelectionCriteriaUnmarshaller.Instance;
          UnmarshalledObject.SelectionCriteria := Unmarshaller.Unmarshall(AContext);
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

class constructor TPrefixLevelStorageMetricsUnmarshaller.Create;
begin
  FInstance := TPrefixLevelStorageMetricsUnmarshaller.Create;
end;

class function TPrefixLevelStorageMetricsUnmarshaller.Instance: IPrefixLevelStorageMetricsUnmarshaller;
begin
  Result := FInstance;
end;

end.

unit AWS.S3Control.Transform.PrefixLevelUnmarshaller;

interface

uses
  AWS.S3Control.Model.PrefixLevel, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3Control.Transform.PrefixLevelStorageMetricsUnmarshaller;

type
  IPrefixLevelUnmarshaller = IUnmarshaller<TPrefixLevel, TXmlUnmarshallerContext>;
  
  TPrefixLevelUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPrefixLevel, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IPrefixLevelUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TPrefixLevel;
    class function Instance: IPrefixLevelUnmarshaller; static;
  end;
  
implementation

{ TPrefixLevelUnmarshaller }

function TPrefixLevelUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TPrefixLevel;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TPrefixLevel;
begin
  UnmarshalledObject := TPrefixLevel.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('StorageMetrics', TargetDepth) then
        begin
          var Unmarshaller := TPrefixLevelStorageMetricsUnmarshaller.Instance;
          UnmarshalledObject.StorageMetrics := Unmarshaller.Unmarshall(AContext);
          Continue;
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

class constructor TPrefixLevelUnmarshaller.Create;
begin
  FInstance := TPrefixLevelUnmarshaller.Create;
end;

class function TPrefixLevelUnmarshaller.Instance: IPrefixLevelUnmarshaller;
begin
  Result := FInstance;
end;

end.

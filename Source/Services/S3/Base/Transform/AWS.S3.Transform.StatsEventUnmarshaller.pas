unit AWS.S3.Transform.StatsEventUnmarshaller;

interface

uses
  AWS.S3.Model.StatsEvent, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.StatsUnmarshaller;

type
  IStatsEventUnmarshaller = IUnmarshaller<TStatsEvent, TXmlUnmarshallerContext>;
  
  TStatsEventUnmarshaller = class(TInterfacedObject, IUnmarshaller<TStatsEvent, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IStatsEventUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TStatsEvent;
    class function Instance: IStatsEventUnmarshaller; static;
  end;
  
implementation

{ TStatsEventUnmarshaller }

function TStatsEventUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TStatsEvent;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TStatsEvent;
begin
  UnmarshalledObject := TStatsEvent.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Details', TargetDepth) then
        begin
          var Unmarshaller := TStatsUnmarshaller.Instance;
          UnmarshalledObject.Details := Unmarshaller.Unmarshall(AContext);
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

class constructor TStatsEventUnmarshaller.Create;
begin
  FInstance := TStatsEventUnmarshaller.Create;
end;

class function TStatsEventUnmarshaller.Instance: IStatsEventUnmarshaller;
begin
  Result := FInstance;
end;

end.

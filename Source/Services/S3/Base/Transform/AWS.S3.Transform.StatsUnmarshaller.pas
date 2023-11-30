unit AWS.S3.Transform.StatsUnmarshaller;

interface

uses
  AWS.S3.Model.Stats, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IStatsUnmarshaller = IUnmarshaller<TStats, TXmlUnmarshallerContext>;
  
  TStatsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TStats, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IStatsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TStats;
    class function Instance: IStatsUnmarshaller; static;
  end;
  
implementation

{ TStatsUnmarshaller }

function TStatsUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TStats;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TStats;
begin
  UnmarshalledObject := TStats.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('BytesProcessed', TargetDepth) then
        begin
          var Unmarshaller := TInt64Unmarshaller.Instance;
          UnmarshalledObject.BytesProcessed := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('BytesReturned', TargetDepth) then
        begin
          var Unmarshaller := TInt64Unmarshaller.Instance;
          UnmarshalledObject.BytesReturned := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('BytesScanned', TargetDepth) then
        begin
          var Unmarshaller := TInt64Unmarshaller.Instance;
          UnmarshalledObject.BytesScanned := Unmarshaller.Unmarshall(AContext);
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

class constructor TStatsUnmarshaller.Create;
begin
  FInstance := TStatsUnmarshaller.Create;
end;

class function TStatsUnmarshaller.Instance: IStatsUnmarshaller;
begin
  Result := FInstance;
end;

end.

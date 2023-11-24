unit AWS.S3.Transform.SelectObjectContentEventStreamUnmarshaller;

interface

uses
  AWS.S3.Model.SelectObjectContentEventStream, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.ContinuationEventUnmarshaller, 
  AWS.S3.Transform.EndEventUnmarshaller, 
  AWS.S3.Transform.ProgressEventUnmarshaller, 
  AWS.S3.Transform.RecordsEventUnmarshaller, 
  AWS.S3.Transform.StatsEventUnmarshaller;

type
  ISelectObjectContentEventStreamUnmarshaller = IUnmarshaller<TSelectObjectContentEventStream, TXmlUnmarshallerContext>;
  
  TSelectObjectContentEventStreamUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSelectObjectContentEventStream, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ISelectObjectContentEventStreamUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TSelectObjectContentEventStream;
    class function Instance: ISelectObjectContentEventStreamUnmarshaller; static;
  end;
  
implementation

{ TSelectObjectContentEventStreamUnmarshaller }

function TSelectObjectContentEventStreamUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TSelectObjectContentEventStream;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TSelectObjectContentEventStream;
begin
  UnmarshalledObject := TSelectObjectContentEventStream.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Cont', TargetDepth) then
        begin
          var Unmarshaller := TContinuationEventUnmarshaller.Instance;
          UnmarshalledObject.Cont := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('End', TargetDepth) then
        begin
          var Unmarshaller := TEndEventUnmarshaller.Instance;
          UnmarshalledObject.End := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Progress', TargetDepth) then
        begin
          var Unmarshaller := TProgressEventUnmarshaller.Instance;
          UnmarshalledObject.Progress := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Records', TargetDepth) then
        begin
          var Unmarshaller := TRecordsEventUnmarshaller.Instance;
          UnmarshalledObject.Records := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Stats', TargetDepth) then
        begin
          var Unmarshaller := TStatsEventUnmarshaller.Instance;
          UnmarshalledObject.Stats := Unmarshaller.Unmarshall(AContext);
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

class constructor TSelectObjectContentEventStreamUnmarshaller.Create;
begin
  FInstance := TSelectObjectContentEventStreamUnmarshaller.Create;
end;

class function TSelectObjectContentEventStreamUnmarshaller.Instance: ISelectObjectContentEventStreamUnmarshaller;
begin
  Result := FInstance;
end;

end.

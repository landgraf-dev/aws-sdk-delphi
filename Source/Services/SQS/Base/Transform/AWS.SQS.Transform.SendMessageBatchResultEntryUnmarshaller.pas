unit AWS.SQS.Transform.SendMessageBatchResultEntryUnmarshaller;

interface

uses
  AWS.SQS.Model.SendMessageBatchResultEntry, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISendMessageBatchResultEntryUnmarshaller = IUnmarshaller<TSendMessageBatchResultEntry, TXmlUnmarshallerContext>;
  
  TSendMessageBatchResultEntryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSendMessageBatchResultEntry, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ISendMessageBatchResultEntryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TSendMessageBatchResultEntry;
    class function Instance: ISendMessageBatchResultEntryUnmarshaller; static;
  end;
  
implementation

{ TSendMessageBatchResultEntryUnmarshaller }

function TSendMessageBatchResultEntryUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TSendMessageBatchResultEntry;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TSendMessageBatchResultEntry;
begin
  UnmarshalledObject := TSendMessageBatchResultEntry.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Id', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Id := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('MD5OfMessageAttributes', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.MD5OfMessageAttributes := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('MD5OfMessageBody', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.MD5OfMessageBody := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('MD5OfMessageSystemAttributes', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.MD5OfMessageSystemAttributes := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('MessageId', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.MessageId := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('SequenceNumber', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.SequenceNumber := Unmarshaller.Unmarshall(AContext);
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

class constructor TSendMessageBatchResultEntryUnmarshaller.Create;
begin
  FInstance := TSendMessageBatchResultEntryUnmarshaller.Create;
end;

class function TSendMessageBatchResultEntryUnmarshaller.Instance: ISendMessageBatchResultEntryUnmarshaller;
begin
  Result := FInstance;
end;

end.

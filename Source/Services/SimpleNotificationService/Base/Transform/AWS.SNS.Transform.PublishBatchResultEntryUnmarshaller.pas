unit AWS.SNS.Transform.PublishBatchResultEntryUnmarshaller;

interface

uses
  AWS.SNS.Model.PublishBatchResultEntry, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPublishBatchResultEntryUnmarshaller = IUnmarshaller<TPublishBatchResultEntry, TXmlUnmarshallerContext>;
  
  TPublishBatchResultEntryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPublishBatchResultEntry, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IPublishBatchResultEntryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TPublishBatchResultEntry;
    class function Instance: IPublishBatchResultEntryUnmarshaller; static;
  end;
  
implementation

{ TPublishBatchResultEntryUnmarshaller }

function TPublishBatchResultEntryUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TPublishBatchResultEntry;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TPublishBatchResultEntry;
begin
  UnmarshalledObject := TPublishBatchResultEntry.Create;
  try
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
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TPublishBatchResultEntryUnmarshaller.Create;
begin
  FInstance := TPublishBatchResultEntryUnmarshaller.Create;
end;

class function TPublishBatchResultEntryUnmarshaller.Instance: IPublishBatchResultEntryUnmarshaller;
begin
  Result := FInstance;
end;

end.

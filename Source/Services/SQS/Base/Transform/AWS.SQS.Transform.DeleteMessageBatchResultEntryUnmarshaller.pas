unit AWS.SQS.Transform.DeleteMessageBatchResultEntryUnmarshaller;

interface

uses
  AWS.SQS.Model.DeleteMessageBatchResultEntry, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDeleteMessageBatchResultEntryUnmarshaller = IUnmarshaller<TDeleteMessageBatchResultEntry, TXmlUnmarshallerContext>;
  
  TDeleteMessageBatchResultEntryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDeleteMessageBatchResultEntry, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IDeleteMessageBatchResultEntryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TDeleteMessageBatchResultEntry;
    class function Instance: IDeleteMessageBatchResultEntryUnmarshaller; static;
  end;
  
implementation

{ TDeleteMessageBatchResultEntryUnmarshaller }

function TDeleteMessageBatchResultEntryUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TDeleteMessageBatchResultEntry;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TDeleteMessageBatchResultEntry;
begin
  UnmarshalledObject := TDeleteMessageBatchResultEntry.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Id', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Id := Unmarshaller.Unmarshall(AContext);
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

class constructor TDeleteMessageBatchResultEntryUnmarshaller.Create;
begin
  FInstance := TDeleteMessageBatchResultEntryUnmarshaller.Create;
end;

class function TDeleteMessageBatchResultEntryUnmarshaller.Instance: IDeleteMessageBatchResultEntryUnmarshaller;
begin
  Result := FInstance;
end;

end.

unit AWS.SQS.Transform.ChangeMessageVisibilityBatchResultEntryUnmarshaller;

interface

uses
  AWS.SQS.Model.ChangeMessageVisibilityBatchResultEntry, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IChangeMessageVisibilityBatchResultEntryUnmarshaller = IUnmarshaller<TChangeMessageVisibilityBatchResultEntry, TXmlUnmarshallerContext>;
  
  TChangeMessageVisibilityBatchResultEntryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TChangeMessageVisibilityBatchResultEntry, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IChangeMessageVisibilityBatchResultEntryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TChangeMessageVisibilityBatchResultEntry;
    class function Instance: IChangeMessageVisibilityBatchResultEntryUnmarshaller; static;
  end;
  
implementation

{ TChangeMessageVisibilityBatchResultEntryUnmarshaller }

function TChangeMessageVisibilityBatchResultEntryUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TChangeMessageVisibilityBatchResultEntry;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TChangeMessageVisibilityBatchResultEntry;
begin
  UnmarshalledObject := TChangeMessageVisibilityBatchResultEntry.Create;
  try
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
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TChangeMessageVisibilityBatchResultEntryUnmarshaller.Create;
begin
  FInstance := TChangeMessageVisibilityBatchResultEntryUnmarshaller.Create;
end;

class function TChangeMessageVisibilityBatchResultEntryUnmarshaller.Instance: IChangeMessageVisibilityBatchResultEntryUnmarshaller;
begin
  Result := FInstance;
end;

end.

unit AWS.SNS.Transform.BatchResultErrorEntryUnmarshaller;

interface

uses
  AWS.SNS.Model.BatchResultErrorEntry, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IBatchResultErrorEntryUnmarshaller = IUnmarshaller<TBatchResultErrorEntry, TXmlUnmarshallerContext>;
  
  TBatchResultErrorEntryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TBatchResultErrorEntry, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IBatchResultErrorEntryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TBatchResultErrorEntry;
    class function Instance: IBatchResultErrorEntryUnmarshaller; static;
  end;
  
implementation

{ TBatchResultErrorEntryUnmarshaller }

function TBatchResultErrorEntryUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TBatchResultErrorEntry;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TBatchResultErrorEntry;
begin
  UnmarshalledObject := TBatchResultErrorEntry.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Code', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Code := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Id', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Id := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Message', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Message := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('SenderFault', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.SenderFault := Unmarshaller.Unmarshall(AContext);
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

class constructor TBatchResultErrorEntryUnmarshaller.Create;
begin
  FInstance := TBatchResultErrorEntryUnmarshaller.Create;
end;

class function TBatchResultErrorEntryUnmarshaller.Instance: IBatchResultErrorEntryUnmarshaller;
begin
  Result := FInstance;
end;

end.

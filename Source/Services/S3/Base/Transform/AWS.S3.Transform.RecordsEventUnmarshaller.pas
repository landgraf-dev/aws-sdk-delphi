unit AWS.S3.Transform.RecordsEventUnmarshaller;

interface

uses
  AWS.S3.Model.RecordsEvent, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IRecordsEventUnmarshaller = IUnmarshaller<TRecordsEvent, TXmlUnmarshallerContext>;
  
  TRecordsEventUnmarshaller = class(TInterfacedObject, IUnmarshaller<TRecordsEvent, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IRecordsEventUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TRecordsEvent;
    class function Instance: IRecordsEventUnmarshaller; static;
  end;
  
implementation

{ TRecordsEventUnmarshaller }

function TRecordsEventUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TRecordsEvent;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TRecordsEvent;
begin
  UnmarshalledObject := TRecordsEvent.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Payload', TargetDepth) then
        begin
          var Unmarshaller := TBytesStreamUnmarshaller.Instance;
          UnmarshalledObject.Payload := Unmarshaller.Unmarshall(AContext);
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

class constructor TRecordsEventUnmarshaller.Create;
begin
  FInstance := TRecordsEventUnmarshaller.Create;
end;

class function TRecordsEventUnmarshaller.Instance: IRecordsEventUnmarshaller;
begin
  Result := FInstance;
end;

end.

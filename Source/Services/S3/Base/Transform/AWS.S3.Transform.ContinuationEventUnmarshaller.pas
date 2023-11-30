unit AWS.S3.Transform.ContinuationEventUnmarshaller;

interface

uses
  AWS.S3.Model.ContinuationEvent, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request;

type
  IContinuationEventUnmarshaller = IUnmarshaller<TContinuationEvent, TXmlUnmarshallerContext>;
  
  TContinuationEventUnmarshaller = class(TInterfacedObject, IUnmarshaller<TContinuationEvent, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IContinuationEventUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TContinuationEvent;
    class function Instance: IContinuationEventUnmarshaller; static;
  end;
  
implementation

{ TContinuationEventUnmarshaller }

function TContinuationEventUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TContinuationEvent;
var
  OriginalDepth: Integer;
  UnmarshalledObject: TContinuationEvent;
begin
  UnmarshalledObject := TContinuationEvent.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
      end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TContinuationEventUnmarshaller.Create;
begin
  FInstance := TContinuationEventUnmarshaller.Create;
end;

class function TContinuationEventUnmarshaller.Instance: IContinuationEventUnmarshaller;
begin
  Result := FInstance;
end;

end.

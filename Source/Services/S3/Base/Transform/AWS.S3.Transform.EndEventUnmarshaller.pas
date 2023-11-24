unit AWS.S3.Transform.EndEventUnmarshaller;

interface

uses
  AWS.S3.Model.EndEvent, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request;

type
  IEndEventUnmarshaller = IUnmarshaller<TEndEvent, TXmlUnmarshallerContext>;
  
  TEndEventUnmarshaller = class(TInterfacedObject, IUnmarshaller<TEndEvent, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IEndEventUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TEndEvent;
    class function Instance: IEndEventUnmarshaller; static;
  end;
  
implementation

{ TEndEventUnmarshaller }

function TEndEventUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TEndEvent;
var
  OriginalDepth: Integer;
  UnmarshalledObject: TEndEvent;
begin
  UnmarshalledObject := TEndEvent.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
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

class constructor TEndEventUnmarshaller.Create;
begin
  FInstance := TEndEventUnmarshaller.Create;
end;

class function TEndEventUnmarshaller.Instance: IEndEventUnmarshaller;
begin
  Result := FInstance;
end;

end.

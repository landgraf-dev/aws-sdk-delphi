unit AWS.S3.Transform.SSEKMSUnmarshaller;

interface

uses
  AWS.S3.Model.SSEKMS, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISSEKMSUnmarshaller = IUnmarshaller<TSSEKMS, TXmlUnmarshallerContext>;
  
  TSSEKMSUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSSEKMS, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ISSEKMSUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TSSEKMS;
    class function Instance: ISSEKMSUnmarshaller; static;
  end;
  
implementation

{ TSSEKMSUnmarshaller }

function TSSEKMSUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TSSEKMS;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TSSEKMS;
begin
  UnmarshalledObject := TSSEKMS.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('KeyId', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.KeyId := Unmarshaller.Unmarshall(AContext);
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

class constructor TSSEKMSUnmarshaller.Create;
begin
  FInstance := TSSEKMSUnmarshaller.Create;
end;

class function TSSEKMSUnmarshaller.Instance: ISSEKMSUnmarshaller;
begin
  Result := FInstance;
end;

end.

unit AWS.S3.Transform.CopyObjectResultUnmarshaller;

interface

uses
  AWS.S3.Model.CopyObjectResult, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ICopyObjectResultUnmarshaller = IUnmarshaller<TCopyObjectResult, TXmlUnmarshallerContext>;
  
  TCopyObjectResultUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCopyObjectResult, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ICopyObjectResultUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TCopyObjectResult;
    class function Instance: ICopyObjectResultUnmarshaller; static;
  end;
  
implementation

{ TCopyObjectResultUnmarshaller }

function TCopyObjectResultUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TCopyObjectResult;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TCopyObjectResult;
begin
  UnmarshalledObject := TCopyObjectResult.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('ETag', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ETag := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('LastModified', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.LastModified := Unmarshaller.Unmarshall(AContext);
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

class constructor TCopyObjectResultUnmarshaller.Create;
begin
  FInstance := TCopyObjectResultUnmarshaller.Create;
end;

class function TCopyObjectResultUnmarshaller.Instance: ICopyObjectResultUnmarshaller;
begin
  Result := FInstance;
end;

end.

unit AWS.S3.Transform.CopyPartResultUnmarshaller;

interface

uses
  AWS.S3.Model.CopyPartResult, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ICopyPartResultUnmarshaller = IUnmarshaller<TCopyPartResult, TXmlUnmarshallerContext>;
  
  TCopyPartResultUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCopyPartResult, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ICopyPartResultUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TCopyPartResult;
    class function Instance: ICopyPartResultUnmarshaller; static;
  end;
  
implementation

{ TCopyPartResultUnmarshaller }

function TCopyPartResultUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TCopyPartResult;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TCopyPartResult;
begin
  UnmarshalledObject := TCopyPartResult.Create;
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

class constructor TCopyPartResultUnmarshaller.Create;
begin
  FInstance := TCopyPartResultUnmarshaller.Create;
end;

class function TCopyPartResultUnmarshaller.Instance: ICopyPartResultUnmarshaller;
begin
  Result := FInstance;
end;

end.

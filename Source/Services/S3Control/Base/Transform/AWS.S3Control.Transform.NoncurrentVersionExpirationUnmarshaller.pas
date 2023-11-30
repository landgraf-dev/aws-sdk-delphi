unit AWS.S3Control.Transform.NoncurrentVersionExpirationUnmarshaller;

interface

uses
  AWS.S3Control.Model.NoncurrentVersionExpiration, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  INoncurrentVersionExpirationUnmarshaller = IUnmarshaller<TNoncurrentVersionExpiration, TXmlUnmarshallerContext>;
  
  TNoncurrentVersionExpirationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TNoncurrentVersionExpiration, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: INoncurrentVersionExpirationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TNoncurrentVersionExpiration;
    class function Instance: INoncurrentVersionExpirationUnmarshaller; static;
  end;
  
implementation

{ TNoncurrentVersionExpirationUnmarshaller }

function TNoncurrentVersionExpirationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TNoncurrentVersionExpiration;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TNoncurrentVersionExpiration;
begin
  UnmarshalledObject := TNoncurrentVersionExpiration.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('NoncurrentDays', TargetDepth) then
        begin
          var Unmarshaller := TIntegerUnmarshaller.Instance;
          UnmarshalledObject.NoncurrentDays := Unmarshaller.Unmarshall(AContext);
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

class constructor TNoncurrentVersionExpirationUnmarshaller.Create;
begin
  FInstance := TNoncurrentVersionExpirationUnmarshaller.Create;
end;

class function TNoncurrentVersionExpirationUnmarshaller.Instance: INoncurrentVersionExpirationUnmarshaller;
begin
  Result := FInstance;
end;

end.

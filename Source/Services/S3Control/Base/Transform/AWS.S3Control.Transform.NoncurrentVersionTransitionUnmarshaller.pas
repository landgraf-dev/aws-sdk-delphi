unit AWS.S3Control.Transform.NoncurrentVersionTransitionUnmarshaller;

interface

uses
  AWS.S3Control.Model.NoncurrentVersionTransition, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  INoncurrentVersionTransitionUnmarshaller = IUnmarshaller<TNoncurrentVersionTransition, TXmlUnmarshallerContext>;
  
  TNoncurrentVersionTransitionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TNoncurrentVersionTransition, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: INoncurrentVersionTransitionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TNoncurrentVersionTransition;
    class function Instance: INoncurrentVersionTransitionUnmarshaller; static;
  end;
  
implementation

{ TNoncurrentVersionTransitionUnmarshaller }

function TNoncurrentVersionTransitionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TNoncurrentVersionTransition;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TNoncurrentVersionTransition;
begin
  UnmarshalledObject := TNoncurrentVersionTransition.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('NoncurrentDays', TargetDepth) then
        begin
          var Unmarshaller := TIntegerUnmarshaller.Instance;
          UnmarshalledObject.NoncurrentDays := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('StorageClass', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.StorageClass := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
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

class constructor TNoncurrentVersionTransitionUnmarshaller.Create;
begin
  FInstance := TNoncurrentVersionTransitionUnmarshaller.Create;
end;

class function TNoncurrentVersionTransitionUnmarshaller.Instance: INoncurrentVersionTransitionUnmarshaller;
begin
  Result := FInstance;
end;

end.

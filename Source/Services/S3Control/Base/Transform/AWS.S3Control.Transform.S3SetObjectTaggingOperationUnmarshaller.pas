unit AWS.S3Control.Transform.S3SetObjectTaggingOperationUnmarshaller;

interface

uses
  AWS.S3Control.Model.S3SetObjectTaggingOperation, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3Control.Transform.S3TagUnmarshaller, 
  AWS.S3Control.Model.S3Tag;

type
  IS3SetObjectTaggingOperationUnmarshaller = IUnmarshaller<TS3SetObjectTaggingOperation, TXmlUnmarshallerContext>;
  
  TS3SetObjectTaggingOperationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3SetObjectTaggingOperation, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IS3SetObjectTaggingOperationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TS3SetObjectTaggingOperation;
    class function Instance: IS3SetObjectTaggingOperationUnmarshaller; static;
  end;
  
implementation

{ TS3SetObjectTaggingOperationUnmarshaller }

function TS3SetObjectTaggingOperationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TS3SetObjectTaggingOperation;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TS3SetObjectTaggingOperation;
begin
  UnmarshalledObject := TS3SetObjectTaggingOperation.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('TagSet/member', TargetDepth) then
        begin
          var Unmarshaller := TS3TagUnmarshaller.Instance;
          UnmarshalledObject.TagSet.Add(Unmarshaller.Unmarshall(AContext));
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

class constructor TS3SetObjectTaggingOperationUnmarshaller.Create;
begin
  FInstance := TS3SetObjectTaggingOperationUnmarshaller.Create;
end;

class function TS3SetObjectTaggingOperationUnmarshaller.Instance: IS3SetObjectTaggingOperationUnmarshaller;
begin
  Result := FInstance;
end;

end.

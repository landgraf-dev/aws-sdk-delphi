unit AWS.S3Control.Transform.S3DeleteObjectTaggingOperationUnmarshaller;

interface

uses
  AWS.S3Control.Model.S3DeleteObjectTaggingOperation, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request;

type
  IS3DeleteObjectTaggingOperationUnmarshaller = IUnmarshaller<TS3DeleteObjectTaggingOperation, TXmlUnmarshallerContext>;
  
  TS3DeleteObjectTaggingOperationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3DeleteObjectTaggingOperation, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IS3DeleteObjectTaggingOperationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TS3DeleteObjectTaggingOperation;
    class function Instance: IS3DeleteObjectTaggingOperationUnmarshaller; static;
  end;
  
implementation

{ TS3DeleteObjectTaggingOperationUnmarshaller }

function TS3DeleteObjectTaggingOperationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TS3DeleteObjectTaggingOperation;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TS3DeleteObjectTaggingOperation;
begin
  UnmarshalledObject := TS3DeleteObjectTaggingOperation.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
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

class constructor TS3DeleteObjectTaggingOperationUnmarshaller.Create;
begin
  FInstance := TS3DeleteObjectTaggingOperationUnmarshaller.Create;
end;

class function TS3DeleteObjectTaggingOperationUnmarshaller.Instance: IS3DeleteObjectTaggingOperationUnmarshaller;
begin
  Result := FInstance;
end;

end.

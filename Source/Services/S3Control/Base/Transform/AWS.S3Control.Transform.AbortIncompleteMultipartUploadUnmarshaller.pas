unit AWS.S3Control.Transform.AbortIncompleteMultipartUploadUnmarshaller;

interface

uses
  AWS.S3Control.Model.AbortIncompleteMultipartUpload, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IAbortIncompleteMultipartUploadUnmarshaller = IUnmarshaller<TAbortIncompleteMultipartUpload, TXmlUnmarshallerContext>;
  
  TAbortIncompleteMultipartUploadUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAbortIncompleteMultipartUpload, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IAbortIncompleteMultipartUploadUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAbortIncompleteMultipartUpload;
    class function Instance: IAbortIncompleteMultipartUploadUnmarshaller; static;
  end;
  
implementation

{ TAbortIncompleteMultipartUploadUnmarshaller }

function TAbortIncompleteMultipartUploadUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAbortIncompleteMultipartUpload;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TAbortIncompleteMultipartUpload;
begin
  UnmarshalledObject := TAbortIncompleteMultipartUpload.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('DaysAfterInitiation', TargetDepth) then
        begin
          var Unmarshaller := TIntegerUnmarshaller.Instance;
          UnmarshalledObject.DaysAfterInitiation := Unmarshaller.Unmarshall(AContext);
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

class constructor TAbortIncompleteMultipartUploadUnmarshaller.Create;
begin
  FInstance := TAbortIncompleteMultipartUploadUnmarshaller.Create;
end;

class function TAbortIncompleteMultipartUploadUnmarshaller.Instance: IAbortIncompleteMultipartUploadUnmarshaller;
begin
  Result := FInstance;
end;

end.

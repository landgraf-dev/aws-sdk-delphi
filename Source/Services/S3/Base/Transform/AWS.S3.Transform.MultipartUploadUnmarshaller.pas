unit AWS.S3.Transform.MultipartUploadUnmarshaller;

interface

uses
  AWS.S3.Model.MultipartUpload, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.InitiatorUnmarshaller, 
  AWS.S3.Transform.OwnerUnmarshaller;

type
  IMultipartUploadUnmarshaller = IUnmarshaller<TMultipartUpload, TXmlUnmarshallerContext>;
  
  TMultipartUploadUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMultipartUpload, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IMultipartUploadUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TMultipartUpload;
    class function Instance: IMultipartUploadUnmarshaller; static;
  end;
  
implementation

{ TMultipartUploadUnmarshaller }

function TMultipartUploadUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TMultipartUpload;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TMultipartUpload;
begin
  UnmarshalledObject := TMultipartUpload.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Initiated', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.Initiated := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Initiator', TargetDepth) then
        begin
          var Unmarshaller := TInitiatorUnmarshaller.Instance;
          UnmarshalledObject.Initiator := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Key', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Key := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Owner', TargetDepth) then
        begin
          var Unmarshaller := TOwnerUnmarshaller.Instance;
          UnmarshalledObject.Owner := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('StorageClass', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.StorageClass := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('UploadId', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.UploadId := Unmarshaller.Unmarshall(AContext);
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

class constructor TMultipartUploadUnmarshaller.Create;
begin
  FInstance := TMultipartUploadUnmarshaller.Create;
end;

class function TMultipartUploadUnmarshaller.Instance: IMultipartUploadUnmarshaller;
begin
  Result := FInstance;
end;

end.

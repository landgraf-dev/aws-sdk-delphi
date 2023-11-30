unit AWS.S3Control.Transform.S3BucketDestinationUnmarshaller;

interface

uses
  AWS.S3Control.Model.S3BucketDestination, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3Control.Transform.StorageLensDataExportEncryptionUnmarshaller;

type
  IS3BucketDestinationUnmarshaller = IUnmarshaller<TS3BucketDestination, TXmlUnmarshallerContext>;
  
  TS3BucketDestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3BucketDestination, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IS3BucketDestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TS3BucketDestination;
    class function Instance: IS3BucketDestinationUnmarshaller; static;
  end;
  
implementation

{ TS3BucketDestinationUnmarshaller }

function TS3BucketDestinationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TS3BucketDestination;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TS3BucketDestination;
begin
  UnmarshalledObject := TS3BucketDestination.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('AccountId', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.AccountId := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Arn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Arn := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Encryption', TargetDepth) then
        begin
          var Unmarshaller := TStorageLensDataExportEncryptionUnmarshaller.Instance;
          UnmarshalledObject.Encryption := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Format', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Format := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('OutputSchemaVersion', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.OutputSchemaVersion := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Prefix', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Prefix := Unmarshaller.Unmarshall(AContext);
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

class constructor TS3BucketDestinationUnmarshaller.Create;
begin
  FInstance := TS3BucketDestinationUnmarshaller.Create;
end;

class function TS3BucketDestinationUnmarshaller.Instance: IS3BucketDestinationUnmarshaller;
begin
  Result := FInstance;
end;

end.

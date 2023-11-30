unit AWS.S3.Transform.DestinationUnmarshaller;

interface

uses
  AWS.S3.Model.Destination, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.AccessControlTranslationUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.EncryptionConfigurationUnmarshaller, 
  AWS.S3.Transform.MetricsUnmarshaller, 
  AWS.S3.Transform.ReplicationTimeUnmarshaller;

type
  IDestinationUnmarshaller = IUnmarshaller<TDestination, TXmlUnmarshallerContext>;
  
  TDestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDestination, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IDestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TDestination;
    class function Instance: IDestinationUnmarshaller; static;
  end;
  
implementation

{ TDestinationUnmarshaller }

function TDestinationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TDestination;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TDestination;
begin
  UnmarshalledObject := TDestination.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('AccessControlTranslation', TargetDepth) then
        begin
          var Unmarshaller := TAccessControlTranslationUnmarshaller.Instance;
          UnmarshalledObject.AccessControlTranslation := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Account', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Account := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Bucket', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.BucketName := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('EncryptionConfiguration', TargetDepth) then
        begin
          var Unmarshaller := TEncryptionConfigurationUnmarshaller.Instance;
          UnmarshalledObject.EncryptionConfiguration := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Metrics', TargetDepth) then
        begin
          var Unmarshaller := TMetricsUnmarshaller.Instance;
          UnmarshalledObject.Metrics := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ReplicationTime', TargetDepth) then
        begin
          var Unmarshaller := TReplicationTimeUnmarshaller.Instance;
          UnmarshalledObject.ReplicationTime := Unmarshaller.Unmarshall(AContext);
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
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TDestinationUnmarshaller.Create;
begin
  FInstance := TDestinationUnmarshaller.Create;
end;

class function TDestinationUnmarshaller.Instance: IDestinationUnmarshaller;
begin
  Result := FInstance;
end;

end.

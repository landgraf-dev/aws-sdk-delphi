unit AWS.S3.Transform.EncryptionConfigurationUnmarshaller;

interface

uses
  AWS.S3.Model.EncryptionConfiguration, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IEncryptionConfigurationUnmarshaller = IUnmarshaller<TEncryptionConfiguration, TXmlUnmarshallerContext>;
  
  TEncryptionConfigurationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TEncryptionConfiguration, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IEncryptionConfigurationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TEncryptionConfiguration;
    class function Instance: IEncryptionConfigurationUnmarshaller; static;
  end;
  
implementation

{ TEncryptionConfigurationUnmarshaller }

function TEncryptionConfigurationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TEncryptionConfiguration;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TEncryptionConfiguration;
begin
  UnmarshalledObject := TEncryptionConfiguration.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('ReplicaKmsKeyID', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ReplicaKmsKeyID := Unmarshaller.Unmarshall(AContext);
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

class constructor TEncryptionConfigurationUnmarshaller.Create;
begin
  FInstance := TEncryptionConfigurationUnmarshaller.Create;
end;

class function TEncryptionConfigurationUnmarshaller.Instance: IEncryptionConfigurationUnmarshaller;
begin
  Result := FInstance;
end;

end.

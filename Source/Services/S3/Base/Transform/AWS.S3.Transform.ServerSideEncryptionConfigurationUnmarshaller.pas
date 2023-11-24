unit AWS.S3.Transform.ServerSideEncryptionConfigurationUnmarshaller;

interface

uses
  AWS.S3.Model.ServerSideEncryptionConfiguration, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.ServerSideEncryptionRuleUnmarshaller, 
  AWS.S3.Model.ServerSideEncryptionRule;

type
  IServerSideEncryptionConfigurationUnmarshaller = IUnmarshaller<TServerSideEncryptionConfiguration, TXmlUnmarshallerContext>;
  
  TServerSideEncryptionConfigurationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TServerSideEncryptionConfiguration, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IServerSideEncryptionConfigurationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TServerSideEncryptionConfiguration;
    class function Instance: IServerSideEncryptionConfigurationUnmarshaller; static;
  end;
  
implementation

{ TServerSideEncryptionConfigurationUnmarshaller }

function TServerSideEncryptionConfigurationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TServerSideEncryptionConfiguration;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TServerSideEncryptionConfiguration;
begin
  UnmarshalledObject := TServerSideEncryptionConfiguration.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Rule/member', TargetDepth) then
        begin
          var Unmarshaller := TServerSideEncryptionRuleUnmarshaller.Instance;
          UnmarshalledObject.Rules.Add(Unmarshaller.Unmarshall(AContext));
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

class constructor TServerSideEncryptionConfigurationUnmarshaller.Create;
begin
  FInstance := TServerSideEncryptionConfigurationUnmarshaller.Create;
end;

class function TServerSideEncryptionConfigurationUnmarshaller.Instance: IServerSideEncryptionConfigurationUnmarshaller;
begin
  Result := FInstance;
end;

end.

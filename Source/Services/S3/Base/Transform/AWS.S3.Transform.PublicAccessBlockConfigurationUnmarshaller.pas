unit AWS.S3.Transform.PublicAccessBlockConfigurationUnmarshaller;

interface

uses
  AWS.S3.Model.PublicAccessBlockConfiguration, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPublicAccessBlockConfigurationUnmarshaller = IUnmarshaller<TPublicAccessBlockConfiguration, TXmlUnmarshallerContext>;
  
  TPublicAccessBlockConfigurationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPublicAccessBlockConfiguration, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IPublicAccessBlockConfigurationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TPublicAccessBlockConfiguration;
    class function Instance: IPublicAccessBlockConfigurationUnmarshaller; static;
  end;
  
implementation

{ TPublicAccessBlockConfigurationUnmarshaller }

function TPublicAccessBlockConfigurationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TPublicAccessBlockConfiguration;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TPublicAccessBlockConfiguration;
begin
  UnmarshalledObject := TPublicAccessBlockConfiguration.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('BlockPublicAcls', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.BlockPublicAcls := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('BlockPublicPolicy', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.BlockPublicPolicy := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('IgnorePublicAcls', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.IgnorePublicAcls := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('RestrictPublicBuckets', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.RestrictPublicBuckets := Unmarshaller.Unmarshall(AContext);
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

class constructor TPublicAccessBlockConfigurationUnmarshaller.Create;
begin
  FInstance := TPublicAccessBlockConfigurationUnmarshaller.Create;
end;

class function TPublicAccessBlockConfigurationUnmarshaller.Instance: IPublicAccessBlockConfigurationUnmarshaller;
begin
  Result := FInstance;
end;

end.

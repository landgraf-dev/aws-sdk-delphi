unit AWS.S3Control.Transform.VpcConfigurationUnmarshaller;

interface

uses
  AWS.S3Control.Model.VpcConfiguration, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IVpcConfigurationUnmarshaller = IUnmarshaller<TVpcConfiguration, TXmlUnmarshallerContext>;
  
  TVpcConfigurationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TVpcConfiguration, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IVpcConfigurationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TVpcConfiguration;
    class function Instance: IVpcConfigurationUnmarshaller; static;
  end;
  
implementation

{ TVpcConfigurationUnmarshaller }

function TVpcConfigurationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TVpcConfiguration;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TVpcConfiguration;
begin
  UnmarshalledObject := TVpcConfiguration.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('VpcId', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.VpcId := Unmarshaller.Unmarshall(AContext);
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

class constructor TVpcConfigurationUnmarshaller.Create;
begin
  FInstance := TVpcConfigurationUnmarshaller.Create;
end;

class function TVpcConfigurationUnmarshaller.Instance: IVpcConfigurationUnmarshaller;
begin
  Result := FInstance;
end;

end.

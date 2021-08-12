unit AWS.SNS.Transform.PlatformApplicationUnmarshaller;

interface

uses
  AWS.SNS.Model.PlatformApplication, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPlatformApplicationUnmarshaller = IUnmarshaller<TPlatformApplication, TXmlUnmarshallerContext>;
  
  TPlatformApplicationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPlatformApplication, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IPlatformApplicationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TPlatformApplication;
    class function Instance: IPlatformApplicationUnmarshaller; static;
  end;
  
implementation

{ TPlatformApplicationUnmarshaller }

function TPlatformApplicationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TPlatformApplication;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TPlatformApplication;
begin
  UnmarshalledObject := TPlatformApplication.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Attributes/entry', TargetDepth) then
        begin
          var Unmarshaller := TKeyValueUnmarshaller<string, string, IStringUnmarshaller, IStringUnmarshaller>.New(TStringUnmarshaller.Instance, TStringUnmarshaller.Instance);
          var item := Unmarshaller.Unmarshall(AContext);
          UnmarshalledObject.Attributes.Add(item.Key, item.Value);
          Continue;
        end;
        if AContext.TestExpression('PlatformApplicationArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.PlatformApplicationArn := Unmarshaller.Unmarshall(AContext);
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

class constructor TPlatformApplicationUnmarshaller.Create;
begin
  FInstance := TPlatformApplicationUnmarshaller.Create;
end;

class function TPlatformApplicationUnmarshaller.Instance: IPlatformApplicationUnmarshaller;
begin
  Result := FInstance;
end;

end.

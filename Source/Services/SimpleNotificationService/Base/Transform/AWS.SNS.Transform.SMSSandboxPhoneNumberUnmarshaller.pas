unit AWS.SNS.Transform.SMSSandboxPhoneNumberUnmarshaller;

interface

uses
  AWS.SNS.Model.SMSSandboxPhoneNumber, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISMSSandboxPhoneNumberUnmarshaller = IUnmarshaller<TSMSSandboxPhoneNumber, TXmlUnmarshallerContext>;
  
  TSMSSandboxPhoneNumberUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSMSSandboxPhoneNumber, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ISMSSandboxPhoneNumberUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TSMSSandboxPhoneNumber;
    class function Instance: ISMSSandboxPhoneNumberUnmarshaller; static;
  end;
  
implementation

{ TSMSSandboxPhoneNumberUnmarshaller }

function TSMSSandboxPhoneNumberUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TSMSSandboxPhoneNumber;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TSMSSandboxPhoneNumber;
begin
  UnmarshalledObject := TSMSSandboxPhoneNumber.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('PhoneNumber', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.PhoneNumber := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Status', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
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

class constructor TSMSSandboxPhoneNumberUnmarshaller.Create;
begin
  FInstance := TSMSSandboxPhoneNumberUnmarshaller.Create;
end;

class function TSMSSandboxPhoneNumberUnmarshaller.Instance: ISMSSandboxPhoneNumberUnmarshaller;
begin
  Result := FInstance;
end;

end.

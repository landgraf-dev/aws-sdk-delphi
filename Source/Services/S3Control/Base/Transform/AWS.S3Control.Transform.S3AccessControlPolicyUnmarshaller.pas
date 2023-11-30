unit AWS.S3Control.Transform.S3AccessControlPolicyUnmarshaller;

interface

uses
  AWS.S3Control.Model.S3AccessControlPolicy, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3Control.Transform.S3AccessControlListUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IS3AccessControlPolicyUnmarshaller = IUnmarshaller<TS3AccessControlPolicy, TXmlUnmarshallerContext>;
  
  TS3AccessControlPolicyUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3AccessControlPolicy, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IS3AccessControlPolicyUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TS3AccessControlPolicy;
    class function Instance: IS3AccessControlPolicyUnmarshaller; static;
  end;
  
implementation

{ TS3AccessControlPolicyUnmarshaller }

function TS3AccessControlPolicyUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TS3AccessControlPolicy;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TS3AccessControlPolicy;
begin
  UnmarshalledObject := TS3AccessControlPolicy.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('AccessControlList', TargetDepth) then
        begin
          var Unmarshaller := TS3AccessControlListUnmarshaller.Instance;
          UnmarshalledObject.AccessControlList := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('CannedAccessControlList', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.CannedAccessControlList := Unmarshaller.Unmarshall(AContext);
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

class constructor TS3AccessControlPolicyUnmarshaller.Create;
begin
  FInstance := TS3AccessControlPolicyUnmarshaller.Create;
end;

class function TS3AccessControlPolicyUnmarshaller.Instance: IS3AccessControlPolicyUnmarshaller;
begin
  Result := FInstance;
end;

end.

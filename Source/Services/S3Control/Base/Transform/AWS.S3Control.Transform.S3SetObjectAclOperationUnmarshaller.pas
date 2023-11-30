unit AWS.S3Control.Transform.S3SetObjectAclOperationUnmarshaller;

interface

uses
  AWS.S3Control.Model.S3SetObjectAclOperation, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3Control.Transform.S3AccessControlPolicyUnmarshaller;

type
  IS3SetObjectAclOperationUnmarshaller = IUnmarshaller<TS3SetObjectAclOperation, TXmlUnmarshallerContext>;
  
  TS3SetObjectAclOperationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3SetObjectAclOperation, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IS3SetObjectAclOperationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TS3SetObjectAclOperation;
    class function Instance: IS3SetObjectAclOperationUnmarshaller; static;
  end;
  
implementation

{ TS3SetObjectAclOperationUnmarshaller }

function TS3SetObjectAclOperationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TS3SetObjectAclOperation;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TS3SetObjectAclOperation;
begin
  UnmarshalledObject := TS3SetObjectAclOperation.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('AccessControlPolicy', TargetDepth) then
        begin
          var Unmarshaller := TS3AccessControlPolicyUnmarshaller.Instance;
          UnmarshalledObject.AccessControlPolicy := Unmarshaller.Unmarshall(AContext);
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

class constructor TS3SetObjectAclOperationUnmarshaller.Create;
begin
  FInstance := TS3SetObjectAclOperationUnmarshaller.Create;
end;

class function TS3SetObjectAclOperationUnmarshaller.Instance: IS3SetObjectAclOperationUnmarshaller;
begin
  Result := FInstance;
end;

end.

unit AWS.S3Control.Transform.S3AccessControlListUnmarshaller;

interface

uses
  AWS.S3Control.Model.S3AccessControlList, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3Control.Transform.S3GrantUnmarshaller, 
  AWS.S3Control.Model.S3Grant, 
  AWS.S3Control.Transform.S3ObjectOwnerUnmarshaller;

type
  IS3AccessControlListUnmarshaller = IUnmarshaller<TS3AccessControlList, TXmlUnmarshallerContext>;
  
  TS3AccessControlListUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3AccessControlList, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IS3AccessControlListUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TS3AccessControlList;
    class function Instance: IS3AccessControlListUnmarshaller; static;
  end;
  
implementation

{ TS3AccessControlListUnmarshaller }

function TS3AccessControlListUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TS3AccessControlList;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TS3AccessControlList;
begin
  UnmarshalledObject := TS3AccessControlList.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Grants/member', TargetDepth) then
        begin
          var Unmarshaller := TS3GrantUnmarshaller.Instance;
          UnmarshalledObject.Grants.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('Owner', TargetDepth) then
        begin
          var Unmarshaller := TS3ObjectOwnerUnmarshaller.Instance;
          UnmarshalledObject.Owner := Unmarshaller.Unmarshall(AContext);
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

class constructor TS3AccessControlListUnmarshaller.Create;
begin
  FInstance := TS3AccessControlListUnmarshaller.Create;
end;

class function TS3AccessControlListUnmarshaller.Instance: IS3AccessControlListUnmarshaller;
begin
  Result := FInstance;
end;

end.

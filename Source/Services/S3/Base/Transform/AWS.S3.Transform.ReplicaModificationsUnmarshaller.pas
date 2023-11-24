unit AWS.S3.Transform.ReplicaModificationsUnmarshaller;

interface

uses
  AWS.S3.Model.ReplicaModifications, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IReplicaModificationsUnmarshaller = IUnmarshaller<TReplicaModifications, TXmlUnmarshallerContext>;
  
  TReplicaModificationsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TReplicaModifications, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IReplicaModificationsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TReplicaModifications;
    class function Instance: IReplicaModificationsUnmarshaller; static;
  end;
  
implementation

{ TReplicaModificationsUnmarshaller }

function TReplicaModificationsUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TReplicaModifications;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TReplicaModifications;
begin
  UnmarshalledObject := TReplicaModifications.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Status', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
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

class constructor TReplicaModificationsUnmarshaller.Create;
begin
  FInstance := TReplicaModificationsUnmarshaller.Create;
end;

class function TReplicaModificationsUnmarshaller.Instance: IReplicaModificationsUnmarshaller;
begin
  Result := FInstance;
end;

end.

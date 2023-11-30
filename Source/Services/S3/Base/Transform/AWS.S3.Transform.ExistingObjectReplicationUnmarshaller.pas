unit AWS.S3.Transform.ExistingObjectReplicationUnmarshaller;

interface

uses
  AWS.S3.Model.ExistingObjectReplication, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IExistingObjectReplicationUnmarshaller = IUnmarshaller<TExistingObjectReplication, TXmlUnmarshallerContext>;
  
  TExistingObjectReplicationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TExistingObjectReplication, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IExistingObjectReplicationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TExistingObjectReplication;
    class function Instance: IExistingObjectReplicationUnmarshaller; static;
  end;
  
implementation

{ TExistingObjectReplicationUnmarshaller }

function TExistingObjectReplicationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TExistingObjectReplication;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TExistingObjectReplication;
begin
  UnmarshalledObject := TExistingObjectReplication.Create;
  try
    Result := UnmarshalledObject;
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
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TExistingObjectReplicationUnmarshaller.Create;
begin
  FInstance := TExistingObjectReplicationUnmarshaller.Create;
end;

class function TExistingObjectReplicationUnmarshaller.Instance: IExistingObjectReplicationUnmarshaller;
begin
  Result := FInstance;
end;

end.

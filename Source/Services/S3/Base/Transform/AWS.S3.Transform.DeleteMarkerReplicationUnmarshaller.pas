unit AWS.S3.Transform.DeleteMarkerReplicationUnmarshaller;

interface

uses
  AWS.S3.Model.DeleteMarkerReplication, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDeleteMarkerReplicationUnmarshaller = IUnmarshaller<TDeleteMarkerReplication, TXmlUnmarshallerContext>;
  
  TDeleteMarkerReplicationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDeleteMarkerReplication, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IDeleteMarkerReplicationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TDeleteMarkerReplication;
    class function Instance: IDeleteMarkerReplicationUnmarshaller; static;
  end;
  
implementation

{ TDeleteMarkerReplicationUnmarshaller }

function TDeleteMarkerReplicationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TDeleteMarkerReplication;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TDeleteMarkerReplication;
begin
  UnmarshalledObject := TDeleteMarkerReplication.Create;
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

class constructor TDeleteMarkerReplicationUnmarshaller.Create;
begin
  FInstance := TDeleteMarkerReplicationUnmarshaller.Create;
end;

class function TDeleteMarkerReplicationUnmarshaller.Instance: IDeleteMarkerReplicationUnmarshaller;
begin
  Result := FInstance;
end;

end.

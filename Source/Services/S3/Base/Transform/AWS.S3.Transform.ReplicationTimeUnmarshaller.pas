unit AWS.S3.Transform.ReplicationTimeUnmarshaller;

interface

uses
  AWS.S3.Model.ReplicationTime, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.ReplicationTimeValueUnmarshaller;

type
  IReplicationTimeUnmarshaller = IUnmarshaller<TReplicationTime, TXmlUnmarshallerContext>;
  
  TReplicationTimeUnmarshaller = class(TInterfacedObject, IUnmarshaller<TReplicationTime, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IReplicationTimeUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TReplicationTime;
    class function Instance: IReplicationTimeUnmarshaller; static;
  end;
  
implementation

{ TReplicationTimeUnmarshaller }

function TReplicationTimeUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TReplicationTime;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TReplicationTime;
begin
  UnmarshalledObject := TReplicationTime.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Status', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Time', TargetDepth) then
        begin
          var Unmarshaller := TReplicationTimeValueUnmarshaller.Instance;
          UnmarshalledObject.Time := Unmarshaller.Unmarshall(AContext);
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

class constructor TReplicationTimeUnmarshaller.Create;
begin
  FInstance := TReplicationTimeUnmarshaller.Create;
end;

class function TReplicationTimeUnmarshaller.Instance: IReplicationTimeUnmarshaller;
begin
  Result := FInstance;
end;

end.

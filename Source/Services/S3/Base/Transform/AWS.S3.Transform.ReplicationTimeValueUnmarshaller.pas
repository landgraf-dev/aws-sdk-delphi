unit AWS.S3.Transform.ReplicationTimeValueUnmarshaller;

interface

uses
  AWS.S3.Model.ReplicationTimeValue, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IReplicationTimeValueUnmarshaller = IUnmarshaller<TReplicationTimeValue, TXmlUnmarshallerContext>;
  
  TReplicationTimeValueUnmarshaller = class(TInterfacedObject, IUnmarshaller<TReplicationTimeValue, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IReplicationTimeValueUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TReplicationTimeValue;
    class function Instance: IReplicationTimeValueUnmarshaller; static;
  end;
  
implementation

{ TReplicationTimeValueUnmarshaller }

function TReplicationTimeValueUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TReplicationTimeValue;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TReplicationTimeValue;
begin
  UnmarshalledObject := TReplicationTimeValue.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Minutes', TargetDepth) then
        begin
          var Unmarshaller := TIntegerUnmarshaller.Instance;
          UnmarshalledObject.Minutes := Unmarshaller.Unmarshall(AContext);
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

class constructor TReplicationTimeValueUnmarshaller.Create;
begin
  FInstance := TReplicationTimeValueUnmarshaller.Create;
end;

class function TReplicationTimeValueUnmarshaller.Instance: IReplicationTimeValueUnmarshaller;
begin
  Result := FInstance;
end;

end.

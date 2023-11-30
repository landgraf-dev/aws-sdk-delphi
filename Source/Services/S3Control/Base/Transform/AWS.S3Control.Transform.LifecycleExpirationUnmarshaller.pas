unit AWS.S3Control.Transform.LifecycleExpirationUnmarshaller;

interface

uses
  AWS.S3Control.Model.LifecycleExpiration, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ILifecycleExpirationUnmarshaller = IUnmarshaller<TLifecycleExpiration, TXmlUnmarshallerContext>;
  
  TLifecycleExpirationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLifecycleExpiration, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ILifecycleExpirationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TLifecycleExpiration;
    class function Instance: ILifecycleExpirationUnmarshaller; static;
  end;
  
implementation

{ TLifecycleExpirationUnmarshaller }

function TLifecycleExpirationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TLifecycleExpiration;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TLifecycleExpiration;
begin
  UnmarshalledObject := TLifecycleExpiration.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Date', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.Date := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Days', TargetDepth) then
        begin
          var Unmarshaller := TIntegerUnmarshaller.Instance;
          UnmarshalledObject.Days := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ExpiredObjectDeleteMarker', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.ExpiredObjectDeleteMarker := Unmarshaller.Unmarshall(AContext);
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

class constructor TLifecycleExpirationUnmarshaller.Create;
begin
  FInstance := TLifecycleExpirationUnmarshaller.Create;
end;

class function TLifecycleExpirationUnmarshaller.Instance: ILifecycleExpirationUnmarshaller;
begin
  Result := FInstance;
end;

end.

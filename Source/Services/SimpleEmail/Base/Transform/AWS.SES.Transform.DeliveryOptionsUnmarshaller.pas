unit AWS.SES.Transform.DeliveryOptionsUnmarshaller;

interface

uses
  AWS.SES.Model.DeliveryOptions, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDeliveryOptionsUnmarshaller = IUnmarshaller<TDeliveryOptions, TXmlUnmarshallerContext>;
  
  TDeliveryOptionsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDeliveryOptions, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IDeliveryOptionsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TDeliveryOptions;
    class function Instance: IDeliveryOptionsUnmarshaller; static;
  end;
  
implementation

{ TDeliveryOptionsUnmarshaller }

function TDeliveryOptionsUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TDeliveryOptions;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TDeliveryOptions;
begin
  UnmarshalledObject := TDeliveryOptions.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('TlsPolicy', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.TlsPolicy := Unmarshaller.Unmarshall(AContext);
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

class constructor TDeliveryOptionsUnmarshaller.Create;
begin
  FInstance := TDeliveryOptionsUnmarshaller.Create;
end;

class function TDeliveryOptionsUnmarshaller.Instance: IDeliveryOptionsUnmarshaller;
begin
  Result := FInstance;
end;

end.

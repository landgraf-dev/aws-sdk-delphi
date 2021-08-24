unit AWS.SESv2.Transform.DeliveryOptionsUnmarshaller;

interface

uses
  AWS.SESv2.Model.DeliveryOptions, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDeliveryOptionsUnmarshaller = IUnmarshaller<TDeliveryOptions, TJsonUnmarshallerContext>;
  
  TDeliveryOptionsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDeliveryOptions, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDeliveryOptionsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDeliveryOptions;
    class function JsonInstance: IDeliveryOptionsUnmarshaller; static;
  end;
  
implementation

{ TDeliveryOptionsUnmarshaller }

function TDeliveryOptionsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDeliveryOptions;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDeliveryOptions;
begin
  UnmarshalledObject := TDeliveryOptions.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('SendingPoolName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SendingPoolName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TlsPolicy', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TlsPolicy := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDeliveryOptionsUnmarshaller.Create;
begin
  FJsonInstance := TDeliveryOptionsUnmarshaller.Create;
end;

class function TDeliveryOptionsUnmarshaller.JsonInstance: IDeliveryOptionsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

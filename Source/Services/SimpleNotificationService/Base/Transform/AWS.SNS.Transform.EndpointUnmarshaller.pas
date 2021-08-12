unit AWS.SNS.Transform.EndpointUnmarshaller;

interface

uses
  AWS.SNS.Model.Endpoint, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IEndpointUnmarshaller = IUnmarshaller<TEndpoint, TXmlUnmarshallerContext>;
  
  TEndpointUnmarshaller = class(TInterfacedObject, IUnmarshaller<TEndpoint, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IEndpointUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TEndpoint;
    class function Instance: IEndpointUnmarshaller; static;
  end;
  
implementation

{ TEndpointUnmarshaller }

function TEndpointUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TEndpoint;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TEndpoint;
begin
  UnmarshalledObject := TEndpoint.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Attributes/entry', TargetDepth) then
        begin
          var Unmarshaller := TKeyValueUnmarshaller<string, string, IStringUnmarshaller, IStringUnmarshaller>.New(TStringUnmarshaller.Instance, TStringUnmarshaller.Instance);
          var item := Unmarshaller.Unmarshall(AContext);
          UnmarshalledObject.Attributes.Add(item.Key, item.Value);
          Continue;
        end;
        if AContext.TestExpression('EndpointArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.EndpointArn := Unmarshaller.Unmarshall(AContext);
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

class constructor TEndpointUnmarshaller.Create;
begin
  FInstance := TEndpointUnmarshaller.Create;
end;

class function TEndpointUnmarshaller.Instance: IEndpointUnmarshaller;
begin
  Result := FInstance;
end;

end.

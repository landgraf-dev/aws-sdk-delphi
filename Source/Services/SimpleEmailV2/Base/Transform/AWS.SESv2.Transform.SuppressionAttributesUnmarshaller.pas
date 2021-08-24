unit AWS.SESv2.Transform.SuppressionAttributesUnmarshaller;

interface

uses
  AWS.SESv2.Model.SuppressionAttributes, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISuppressionAttributesUnmarshaller = IUnmarshaller<TSuppressionAttributes, TJsonUnmarshallerContext>;
  
  TSuppressionAttributesUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSuppressionAttributes, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISuppressionAttributesUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSuppressionAttributes;
    class function JsonInstance: ISuppressionAttributesUnmarshaller; static;
  end;
  
implementation

{ TSuppressionAttributesUnmarshaller }

function TSuppressionAttributesUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSuppressionAttributes;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSuppressionAttributes;
begin
  UnmarshalledObject := TSuppressionAttributes.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('SuppressedReasons', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.SuppressedReasons := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TSuppressionAttributesUnmarshaller.Create;
begin
  FJsonInstance := TSuppressionAttributesUnmarshaller.Create;
end;

class function TSuppressionAttributesUnmarshaller.JsonInstance: ISuppressionAttributesUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

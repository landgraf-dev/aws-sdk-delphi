unit AWS.SESv2.Transform.DkimAttributesUnmarshaller;

interface

uses
  AWS.SESv2.Model.DkimAttributes, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDkimAttributesUnmarshaller = IUnmarshaller<TDkimAttributes, TJsonUnmarshallerContext>;
  
  TDkimAttributesUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDkimAttributes, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDkimAttributesUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDkimAttributes;
    class function JsonInstance: IDkimAttributesUnmarshaller; static;
  end;
  
implementation

{ TDkimAttributesUnmarshaller }

function TDkimAttributesUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDkimAttributes;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDkimAttributes;
begin
  UnmarshalledObject := TDkimAttributes.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('SigningAttributesOrigin', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SigningAttributesOrigin := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SigningEnabled', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.SigningEnabled := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Status', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Tokens', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Tokens := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDkimAttributesUnmarshaller.Create;
begin
  FJsonInstance := TDkimAttributesUnmarshaller.Create;
end;

class function TDkimAttributesUnmarshaller.JsonInstance: IDkimAttributesUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

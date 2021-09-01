unit AWS.Translate.Transform.EncryptionKeyUnmarshaller;

interface

uses
  AWS.Translate.Model.EncryptionKey, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IEncryptionKeyUnmarshaller = IUnmarshaller<TEncryptionKey, TJsonUnmarshallerContext>;
  
  TEncryptionKeyUnmarshaller = class(TInterfacedObject, IUnmarshaller<TEncryptionKey, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IEncryptionKeyUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TEncryptionKey;
    class function JsonInstance: IEncryptionKeyUnmarshaller; static;
  end;
  
implementation

{ TEncryptionKeyUnmarshaller }

function TEncryptionKeyUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TEncryptionKey;
var
  TargetDepth: Integer;
  UnmarshalledObject: TEncryptionKey;
begin
  UnmarshalledObject := TEncryptionKey.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Id', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Id := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Type', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.&Type := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TEncryptionKeyUnmarshaller.Create;
begin
  FJsonInstance := TEncryptionKeyUnmarshaller.Create;
end;

class function TEncryptionKeyUnmarshaller.JsonInstance: IEncryptionKeyUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

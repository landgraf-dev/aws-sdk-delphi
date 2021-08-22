unit AWS.LexRuntimeV2.Transform.ValueUnmarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.Value, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IValueUnmarshaller = IUnmarshaller<TValue, TJsonUnmarshallerContext>;
  
  TValueUnmarshaller = class(TInterfacedObject, IUnmarshaller<TValue, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IValueUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TValue;
    class function JsonInstance: IValueUnmarshaller; static;
  end;
  
implementation

{ TValueUnmarshaller }

function TValueUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TValue;
var
  TargetDepth: Integer;
  UnmarshalledObject: TValue;
begin
  UnmarshalledObject := TValue.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('interpretedValue', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.InterpretedValue := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('originalValue', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OriginalValue := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('resolvedValues', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.ResolvedValues := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TValueUnmarshaller.Create;
begin
  FJsonInstance := TValueUnmarshaller.Create;
end;

class function TValueUnmarshaller.JsonInstance: IValueUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

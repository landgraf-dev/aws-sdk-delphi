unit AWS.LexRuntimeService.Transform.ActiveContextUnmarshaller;

interface

uses
  AWS.LexRuntimeService.Model.ActiveContext, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.LexRuntimeService.Transform.ActiveContextTimeToLiveUnmarshaller;

type
  IActiveContextUnmarshaller = IUnmarshaller<TActiveContext, TJsonUnmarshallerContext>;
  
  TActiveContextUnmarshaller = class(TInterfacedObject, IUnmarshaller<TActiveContext, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IActiveContextUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TActiveContext;
    class function JsonInstance: IActiveContextUnmarshaller; static;
  end;
  
implementation

{ TActiveContextUnmarshaller }

function TActiveContextUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TActiveContext;
var
  TargetDepth: Integer;
  UnmarshalledObject: TActiveContext;
begin
  UnmarshalledObject := TActiveContext.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('parameters', TargetDepth) then
      begin
        var Unmarshaller := TJsonDictionaryUnmarshaller<string, string, IJsonStringUnmarshaller, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance, TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Parameters := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('timeToLive', TargetDepth) then
      begin
        var Unmarshaller := TActiveContextTimeToLiveUnmarshaller.JsonInstance;
        UnmarshalledObject.TimeToLive := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TActiveContextUnmarshaller.Create;
begin
  FJsonInstance := TActiveContextUnmarshaller.Create;
end;

class function TActiveContextUnmarshaller.JsonInstance: IActiveContextUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

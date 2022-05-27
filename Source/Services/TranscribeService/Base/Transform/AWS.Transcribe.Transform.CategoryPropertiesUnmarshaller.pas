unit AWS.Transcribe.Transform.CategoryPropertiesUnmarshaller;

interface

uses
  AWS.Transcribe.Model.CategoryProperties, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Transcribe.Transform.RuleUnmarshaller, 
  AWS.Transcribe.Model.Rule;

type
  ICategoryPropertiesUnmarshaller = IUnmarshaller<TCategoryProperties, TJsonUnmarshallerContext>;
  
  TCategoryPropertiesUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCategoryProperties, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ICategoryPropertiesUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TCategoryProperties;
    class function JsonInstance: ICategoryPropertiesUnmarshaller; static;
  end;
  
implementation

{ TCategoryPropertiesUnmarshaller }

function TCategoryPropertiesUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TCategoryProperties;
var
  TargetDepth: Integer;
  UnmarshalledObject: TCategoryProperties;
begin
  UnmarshalledObject := TCategoryProperties.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CategoryName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.CategoryName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CreateTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreateTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastUpdateTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastUpdateTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Rules', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TRule, IRuleUnmarshaller>.JsonNew(TRuleUnmarshaller.JsonInstance);
        UnmarshalledObject.Rules := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TCategoryPropertiesUnmarshaller.Create;
begin
  FJsonInstance := TCategoryPropertiesUnmarshaller.Create;
end;

class function TCategoryPropertiesUnmarshaller.JsonInstance: ICategoryPropertiesUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

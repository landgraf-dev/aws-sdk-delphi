unit AWS.SSM.Transform.ParameterInlinePolicyUnmarshaller;

interface

uses
  AWS.SSM.Model.ParameterInlinePolicy, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IParameterInlinePolicyUnmarshaller = IUnmarshaller<TParameterInlinePolicy, TJsonUnmarshallerContext>;
  
  TParameterInlinePolicyUnmarshaller = class(TInterfacedObject, IUnmarshaller<TParameterInlinePolicy, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IParameterInlinePolicyUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TParameterInlinePolicy;
    class function JsonInstance: IParameterInlinePolicyUnmarshaller; static;
  end;
  
implementation

{ TParameterInlinePolicyUnmarshaller }

function TParameterInlinePolicyUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TParameterInlinePolicy;
var
  TargetDepth: Integer;
  UnmarshalledObject: TParameterInlinePolicy;
begin
  UnmarshalledObject := TParameterInlinePolicy.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('PolicyStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.PolicyStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PolicyText', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.PolicyText := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PolicyType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.PolicyType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TParameterInlinePolicyUnmarshaller.Create;
begin
  FJsonInstance := TParameterInlinePolicyUnmarshaller.Create;
end;

class function TParameterInlinePolicyUnmarshaller.JsonInstance: IParameterInlinePolicyUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

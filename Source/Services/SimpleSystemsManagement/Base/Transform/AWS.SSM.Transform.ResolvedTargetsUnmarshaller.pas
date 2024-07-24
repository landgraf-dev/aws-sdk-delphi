unit AWS.SSM.Transform.ResolvedTargetsUnmarshaller;

interface

uses
  AWS.SSM.Model.ResolvedTargets, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IResolvedTargetsUnmarshaller = IUnmarshaller<TResolvedTargets, TJsonUnmarshallerContext>;
  
  TResolvedTargetsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TResolvedTargets, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IResolvedTargetsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TResolvedTargets;
    class function JsonInstance: IResolvedTargetsUnmarshaller; static;
  end;
  
implementation

{ TResolvedTargetsUnmarshaller }

function TResolvedTargetsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TResolvedTargets;
var
  TargetDepth: Integer;
  UnmarshalledObject: TResolvedTargets;
begin
  UnmarshalledObject := TResolvedTargets.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ParameterValues', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.ParameterValues := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Truncated', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.Truncated := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TResolvedTargetsUnmarshaller.Create;
begin
  FJsonInstance := TResolvedTargetsUnmarshaller.Create;
end;

class function TResolvedTargetsUnmarshaller.JsonInstance: IResolvedTargetsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

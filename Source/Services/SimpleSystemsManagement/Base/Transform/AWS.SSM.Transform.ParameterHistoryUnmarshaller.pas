unit AWS.SSM.Transform.ParameterHistoryUnmarshaller;

interface

uses
  AWS.SSM.Model.ParameterHistory, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.ParameterInlinePolicyUnmarshaller, 
  AWS.SSM.Model.ParameterInlinePolicy;

type
  IParameterHistoryUnmarshaller = IUnmarshaller<TParameterHistory, TJsonUnmarshallerContext>;
  
  TParameterHistoryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TParameterHistory, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IParameterHistoryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TParameterHistory;
    class function JsonInstance: IParameterHistoryUnmarshaller; static;
  end;
  
implementation

{ TParameterHistoryUnmarshaller }

function TParameterHistoryUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TParameterHistory;
var
  TargetDepth: Integer;
  UnmarshalledObject: TParameterHistory;
begin
  UnmarshalledObject := TParameterHistory.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AllowedPattern', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AllowedPattern := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DataType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DataType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Description', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Description := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('KeyId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.KeyId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Labels', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Labels := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastModifiedDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastModifiedDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastModifiedUser', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LastModifiedUser := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Policies', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TParameterInlinePolicy, IParameterInlinePolicyUnmarshaller>.JsonNew(TParameterInlinePolicyUnmarshaller.JsonInstance);
        UnmarshalledObject.Policies := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Tier', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Tier := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Type', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.&Type := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Value', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Value := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Version', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.Version := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TParameterHistoryUnmarshaller.Create;
begin
  FJsonInstance := TParameterHistoryUnmarshaller.Create;
end;

class function TParameterHistoryUnmarshaller.JsonInstance: IParameterHistoryUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

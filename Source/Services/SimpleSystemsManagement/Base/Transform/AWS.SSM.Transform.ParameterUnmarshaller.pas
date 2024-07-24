unit AWS.SSM.Transform.ParameterUnmarshaller;

interface

uses
  AWS.SSM.Model.Parameter, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IParameterUnmarshaller = IUnmarshaller<TParameter, TJsonUnmarshallerContext>;
  
  TParameterUnmarshaller = class(TInterfacedObject, IUnmarshaller<TParameter, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IParameterUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TParameter;
    class function JsonInstance: IParameterUnmarshaller; static;
  end;
  
implementation

{ TParameterUnmarshaller }

function TParameterUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TParameter;
var
  TargetDepth: Integer;
  UnmarshalledObject: TParameter;
begin
  UnmarshalledObject := TParameter.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ARN', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ARN := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DataType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DataType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastModifiedDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastModifiedDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Selector', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Selector := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SourceResult', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SourceResult := Unmarshaller.Unmarshall(AContext);
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

class constructor TParameterUnmarshaller.Create;
begin
  FJsonInstance := TParameterUnmarshaller.Create;
end;

class function TParameterUnmarshaller.JsonInstance: IParameterUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

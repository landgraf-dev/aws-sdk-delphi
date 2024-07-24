unit AWS.SSM.Transform.CommandPluginUnmarshaller;

interface

uses
  AWS.SSM.Model.CommandPlugin, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ICommandPluginUnmarshaller = IUnmarshaller<TCommandPlugin, TJsonUnmarshallerContext>;
  
  TCommandPluginUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCommandPlugin, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ICommandPluginUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TCommandPlugin;
    class function JsonInstance: ICommandPluginUnmarshaller; static;
  end;
  
implementation

{ TCommandPluginUnmarshaller }

function TCommandPluginUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TCommandPlugin;
var
  TargetDepth: Integer;
  UnmarshalledObject: TCommandPlugin;
begin
  UnmarshalledObject := TCommandPlugin.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Output', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Output := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OutputS3BucketName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OutputS3BucketName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OutputS3KeyPrefix', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OutputS3KeyPrefix := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OutputS3Region', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OutputS3Region := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ResponseCode', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.ResponseCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ResponseFinishDateTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.ResponseFinishDateTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ResponseStartDateTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.ResponseStartDateTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StandardErrorUrl', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.StandardErrorUrl := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StandardOutputUrl', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.StandardOutputUrl := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Status', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StatusDetails', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.StatusDetails := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TCommandPluginUnmarshaller.Create;
begin
  FJsonInstance := TCommandPluginUnmarshaller.Create;
end;

class function TCommandPluginUnmarshaller.JsonInstance: ICommandPluginUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

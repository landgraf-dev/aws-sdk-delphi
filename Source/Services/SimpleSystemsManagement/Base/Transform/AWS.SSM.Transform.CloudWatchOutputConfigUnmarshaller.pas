unit AWS.SSM.Transform.CloudWatchOutputConfigUnmarshaller;

interface

uses
  AWS.SSM.Model.CloudWatchOutputConfig, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ICloudWatchOutputConfigUnmarshaller = IUnmarshaller<TCloudWatchOutputConfig, TJsonUnmarshallerContext>;
  
  TCloudWatchOutputConfigUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCloudWatchOutputConfig, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ICloudWatchOutputConfigUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TCloudWatchOutputConfig;
    class function JsonInstance: ICloudWatchOutputConfigUnmarshaller; static;
  end;
  
implementation

{ TCloudWatchOutputConfigUnmarshaller }

function TCloudWatchOutputConfigUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TCloudWatchOutputConfig;
var
  TargetDepth: Integer;
  UnmarshalledObject: TCloudWatchOutputConfig;
begin
  UnmarshalledObject := TCloudWatchOutputConfig.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CloudWatchLogGroupName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.CloudWatchLogGroupName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CloudWatchOutputEnabled', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.CloudWatchOutputEnabled := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TCloudWatchOutputConfigUnmarshaller.Create;
begin
  FJsonInstance := TCloudWatchOutputConfigUnmarshaller.Create;
end;

class function TCloudWatchOutputConfigUnmarshaller.JsonInstance: ICloudWatchOutputConfigUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

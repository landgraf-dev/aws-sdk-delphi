unit AWS.Rekognition.Transform.OutputConfigUnmarshaller;

interface

uses
  AWS.Rekognition.Model.OutputConfig, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IOutputConfigUnmarshaller = IUnmarshaller<TOutputConfig, TJsonUnmarshallerContext>;
  
  TOutputConfigUnmarshaller = class(TInterfacedObject, IUnmarshaller<TOutputConfig, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IOutputConfigUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TOutputConfig;
    class function JsonInstance: IOutputConfigUnmarshaller; static;
  end;
  
implementation

{ TOutputConfigUnmarshaller }

function TOutputConfigUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TOutputConfig;
var
  TargetDepth: Integer;
  UnmarshalledObject: TOutputConfig;
begin
  UnmarshalledObject := TOutputConfig.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('S3Bucket', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.S3Bucket := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('S3KeyPrefix', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.S3KeyPrefix := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TOutputConfigUnmarshaller.Create;
begin
  FJsonInstance := TOutputConfigUnmarshaller.Create;
end;

class function TOutputConfigUnmarshaller.JsonInstance: IOutputConfigUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

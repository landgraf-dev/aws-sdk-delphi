unit AWS.SSM.Transform.S3OutputLocationUnmarshaller;

interface

uses
  AWS.SSM.Model.S3OutputLocation, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IS3OutputLocationUnmarshaller = IUnmarshaller<TS3OutputLocation, TJsonUnmarshallerContext>;
  
  TS3OutputLocationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3OutputLocation, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IS3OutputLocationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TS3OutputLocation;
    class function JsonInstance: IS3OutputLocationUnmarshaller; static;
  end;
  
implementation

{ TS3OutputLocationUnmarshaller }

function TS3OutputLocationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TS3OutputLocation;
var
  TargetDepth: Integer;
  UnmarshalledObject: TS3OutputLocation;
begin
  UnmarshalledObject := TS3OutputLocation.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
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
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TS3OutputLocationUnmarshaller.Create;
begin
  FJsonInstance := TS3OutputLocationUnmarshaller.Create;
end;

class function TS3OutputLocationUnmarshaller.JsonInstance: IS3OutputLocationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

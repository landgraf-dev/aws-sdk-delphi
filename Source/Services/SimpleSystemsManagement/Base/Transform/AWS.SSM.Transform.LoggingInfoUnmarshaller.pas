unit AWS.SSM.Transform.LoggingInfoUnmarshaller;

interface

uses
  AWS.SSM.Model.LoggingInfo, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ILoggingInfoUnmarshaller = IUnmarshaller<TLoggingInfo, TJsonUnmarshallerContext>;
  
  TLoggingInfoUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLoggingInfo, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ILoggingInfoUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TLoggingInfo;
    class function JsonInstance: ILoggingInfoUnmarshaller; static;
  end;
  
implementation

{ TLoggingInfoUnmarshaller }

function TLoggingInfoUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TLoggingInfo;
var
  TargetDepth: Integer;
  UnmarshalledObject: TLoggingInfo;
begin
  UnmarshalledObject := TLoggingInfo.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('S3BucketName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.S3BucketName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('S3KeyPrefix', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.S3KeyPrefix := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('S3Region', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.S3Region := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TLoggingInfoUnmarshaller.Create;
begin
  FJsonInstance := TLoggingInfoUnmarshaller.Create;
end;

class function TLoggingInfoUnmarshaller.JsonInstance: ILoggingInfoUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

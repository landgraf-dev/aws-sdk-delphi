unit AWS.SSM.Transform.SessionManagerOutputUrlUnmarshaller;

interface

uses
  AWS.SSM.Model.SessionManagerOutputUrl, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISessionManagerOutputUrlUnmarshaller = IUnmarshaller<TSessionManagerOutputUrl, TJsonUnmarshallerContext>;
  
  TSessionManagerOutputUrlUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSessionManagerOutputUrl, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISessionManagerOutputUrlUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSessionManagerOutputUrl;
    class function JsonInstance: ISessionManagerOutputUrlUnmarshaller; static;
  end;
  
implementation

{ TSessionManagerOutputUrlUnmarshaller }

function TSessionManagerOutputUrlUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSessionManagerOutputUrl;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSessionManagerOutputUrl;
begin
  UnmarshalledObject := TSessionManagerOutputUrl.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CloudWatchOutputUrl', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.CloudWatchOutputUrl := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('S3OutputUrl', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.S3OutputUrl := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TSessionManagerOutputUrlUnmarshaller.Create;
begin
  FJsonInstance := TSessionManagerOutputUrlUnmarshaller.Create;
end;

class function TSessionManagerOutputUrlUnmarshaller.JsonInstance: ISessionManagerOutputUrlUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

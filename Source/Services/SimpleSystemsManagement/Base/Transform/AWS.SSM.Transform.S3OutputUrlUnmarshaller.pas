unit AWS.SSM.Transform.S3OutputUrlUnmarshaller;

interface

uses
  AWS.SSM.Model.S3OutputUrl, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IS3OutputUrlUnmarshaller = IUnmarshaller<TS3OutputUrl, TJsonUnmarshallerContext>;
  
  TS3OutputUrlUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3OutputUrl, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IS3OutputUrlUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TS3OutputUrl;
    class function JsonInstance: IS3OutputUrlUnmarshaller; static;
  end;
  
implementation

{ TS3OutputUrlUnmarshaller }

function TS3OutputUrlUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TS3OutputUrl;
var
  TargetDepth: Integer;
  UnmarshalledObject: TS3OutputUrl;
begin
  UnmarshalledObject := TS3OutputUrl.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('OutputUrl', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OutputUrl := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TS3OutputUrlUnmarshaller.Create;
begin
  FJsonInstance := TS3OutputUrlUnmarshaller.Create;
end;

class function TS3OutputUrlUnmarshaller.JsonInstance: IS3OutputUrlUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

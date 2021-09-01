unit AWS.Translate.Transform.OutputDataConfigUnmarshaller;

interface

uses
  AWS.Translate.Model.OutputDataConfig, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IOutputDataConfigUnmarshaller = IUnmarshaller<TOutputDataConfig, TJsonUnmarshallerContext>;
  
  TOutputDataConfigUnmarshaller = class(TInterfacedObject, IUnmarshaller<TOutputDataConfig, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IOutputDataConfigUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TOutputDataConfig;
    class function JsonInstance: IOutputDataConfigUnmarshaller; static;
  end;
  
implementation

{ TOutputDataConfigUnmarshaller }

function TOutputDataConfigUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TOutputDataConfig;
var
  TargetDepth: Integer;
  UnmarshalledObject: TOutputDataConfig;
begin
  UnmarshalledObject := TOutputDataConfig.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('S3Uri', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.S3Uri := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TOutputDataConfigUnmarshaller.Create;
begin
  FJsonInstance := TOutputDataConfigUnmarshaller.Create;
end;

class function TOutputDataConfigUnmarshaller.JsonInstance: IOutputDataConfigUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

unit AWS.Translate.Transform.ParallelDataConfigUnmarshaller;

interface

uses
  AWS.Translate.Model.ParallelDataConfig, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IParallelDataConfigUnmarshaller = IUnmarshaller<TParallelDataConfig, TJsonUnmarshallerContext>;
  
  TParallelDataConfigUnmarshaller = class(TInterfacedObject, IUnmarshaller<TParallelDataConfig, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IParallelDataConfigUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TParallelDataConfig;
    class function JsonInstance: IParallelDataConfigUnmarshaller; static;
  end;
  
implementation

{ TParallelDataConfigUnmarshaller }

function TParallelDataConfigUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TParallelDataConfig;
var
  TargetDepth: Integer;
  UnmarshalledObject: TParallelDataConfig;
begin
  UnmarshalledObject := TParallelDataConfig.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Format', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Format := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('S3Uri', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.S3Uri := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TParallelDataConfigUnmarshaller.Create;
begin
  FJsonInstance := TParallelDataConfigUnmarshaller.Create;
end;

class function TParallelDataConfigUnmarshaller.JsonInstance: IParallelDataConfigUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

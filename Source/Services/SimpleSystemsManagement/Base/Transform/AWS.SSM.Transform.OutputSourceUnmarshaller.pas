unit AWS.SSM.Transform.OutputSourceUnmarshaller;

interface

uses
  AWS.SSM.Model.OutputSource, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IOutputSourceUnmarshaller = IUnmarshaller<TOutputSource, TJsonUnmarshallerContext>;
  
  TOutputSourceUnmarshaller = class(TInterfacedObject, IUnmarshaller<TOutputSource, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IOutputSourceUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TOutputSource;
    class function JsonInstance: IOutputSourceUnmarshaller; static;
  end;
  
implementation

{ TOutputSourceUnmarshaller }

function TOutputSourceUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TOutputSource;
var
  TargetDepth: Integer;
  UnmarshalledObject: TOutputSource;
begin
  UnmarshalledObject := TOutputSource.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('OutputSourceId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OutputSourceId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OutputSourceType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OutputSourceType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TOutputSourceUnmarshaller.Create;
begin
  FJsonInstance := TOutputSourceUnmarshaller.Create;
end;

class function TOutputSourceUnmarshaller.JsonInstance: IOutputSourceUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

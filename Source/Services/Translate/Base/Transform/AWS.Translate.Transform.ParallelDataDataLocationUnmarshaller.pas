unit AWS.Translate.Transform.ParallelDataDataLocationUnmarshaller;

interface

uses
  AWS.Translate.Model.ParallelDataDataLocation, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IParallelDataDataLocationUnmarshaller = IUnmarshaller<TParallelDataDataLocation, TJsonUnmarshallerContext>;
  
  TParallelDataDataLocationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TParallelDataDataLocation, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IParallelDataDataLocationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TParallelDataDataLocation;
    class function JsonInstance: IParallelDataDataLocationUnmarshaller; static;
  end;
  
implementation

{ TParallelDataDataLocationUnmarshaller }

function TParallelDataDataLocationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TParallelDataDataLocation;
var
  TargetDepth: Integer;
  UnmarshalledObject: TParallelDataDataLocation;
begin
  UnmarshalledObject := TParallelDataDataLocation.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Location', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Location := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('RepositoryType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.RepositoryType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TParallelDataDataLocationUnmarshaller.Create;
begin
  FJsonInstance := TParallelDataDataLocationUnmarshaller.Create;
end;

class function TParallelDataDataLocationUnmarshaller.JsonInstance: IParallelDataDataLocationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

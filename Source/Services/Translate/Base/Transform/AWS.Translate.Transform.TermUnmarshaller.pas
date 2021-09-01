unit AWS.Translate.Transform.TermUnmarshaller;

interface

uses
  AWS.Translate.Model.Term, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITermUnmarshaller = IUnmarshaller<TTerm, TJsonUnmarshallerContext>;
  
  TTermUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTerm, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITermUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTerm;
    class function JsonInstance: ITermUnmarshaller; static;
  end;
  
implementation

{ TTermUnmarshaller }

function TTermUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTerm;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTerm;
begin
  UnmarshalledObject := TTerm.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('SourceText', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SourceText := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TargetText', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TargetText := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TTermUnmarshaller.Create;
begin
  FJsonInstance := TTermUnmarshaller.Create;
end;

class function TTermUnmarshaller.JsonInstance: ITermUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

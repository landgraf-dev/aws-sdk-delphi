unit AWS.Translate.Transform.TerminologyDataLocationUnmarshaller;

interface

uses
  AWS.Translate.Model.TerminologyDataLocation, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITerminologyDataLocationUnmarshaller = IUnmarshaller<TTerminologyDataLocation, TJsonUnmarshallerContext>;
  
  TTerminologyDataLocationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTerminologyDataLocation, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITerminologyDataLocationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTerminologyDataLocation;
    class function JsonInstance: ITerminologyDataLocationUnmarshaller; static;
  end;
  
implementation

{ TTerminologyDataLocationUnmarshaller }

function TTerminologyDataLocationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTerminologyDataLocation;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTerminologyDataLocation;
begin
  UnmarshalledObject := TTerminologyDataLocation.Create;
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

class constructor TTerminologyDataLocationUnmarshaller.Create;
begin
  FJsonInstance := TTerminologyDataLocationUnmarshaller.Create;
end;

class function TTerminologyDataLocationUnmarshaller.JsonInstance: ITerminologyDataLocationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

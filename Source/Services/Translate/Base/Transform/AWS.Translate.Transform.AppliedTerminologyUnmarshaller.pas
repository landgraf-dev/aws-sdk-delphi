unit AWS.Translate.Transform.AppliedTerminologyUnmarshaller;

interface

uses
  AWS.Translate.Model.AppliedTerminology, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Translate.Transform.TermUnmarshaller, 
  AWS.Translate.Model.Term;

type
  IAppliedTerminologyUnmarshaller = IUnmarshaller<TAppliedTerminology, TJsonUnmarshallerContext>;
  
  TAppliedTerminologyUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAppliedTerminology, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IAppliedTerminologyUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAppliedTerminology;
    class function JsonInstance: IAppliedTerminologyUnmarshaller; static;
  end;
  
implementation

{ TAppliedTerminologyUnmarshaller }

function TAppliedTerminologyUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAppliedTerminology;
var
  TargetDepth: Integer;
  UnmarshalledObject: TAppliedTerminology;
begin
  UnmarshalledObject := TAppliedTerminology.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Terms', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TTerm, ITermUnmarshaller>.JsonNew(TTermUnmarshaller.JsonInstance);
        UnmarshalledObject.Terms := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TAppliedTerminologyUnmarshaller.Create;
begin
  FJsonInstance := TAppliedTerminologyUnmarshaller.Create;
end;

class function TAppliedTerminologyUnmarshaller.JsonInstance: IAppliedTerminologyUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

unit AWS.Rekognition.Transform.HumanLoopActivationOutputUnmarshaller;

interface

uses
  AWS.Rekognition.Model.HumanLoopActivationOutput, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IHumanLoopActivationOutputUnmarshaller = IUnmarshaller<THumanLoopActivationOutput, TJsonUnmarshallerContext>;
  
  THumanLoopActivationOutputUnmarshaller = class(TInterfacedObject, IUnmarshaller<THumanLoopActivationOutput, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IHumanLoopActivationOutputUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): THumanLoopActivationOutput;
    class function JsonInstance: IHumanLoopActivationOutputUnmarshaller; static;
  end;
  
implementation

{ THumanLoopActivationOutputUnmarshaller }

function THumanLoopActivationOutputUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): THumanLoopActivationOutput;
var
  TargetDepth: Integer;
  UnmarshalledObject: THumanLoopActivationOutput;
begin
  UnmarshalledObject := THumanLoopActivationOutput.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('HumanLoopActivationConditionsEvaluationResults', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.HumanLoopActivationConditionsEvaluationResults := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('HumanLoopActivationReasons', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.HumanLoopActivationReasons := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('HumanLoopArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.HumanLoopArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor THumanLoopActivationOutputUnmarshaller.Create;
begin
  FJsonInstance := THumanLoopActivationOutputUnmarshaller.Create;
end;

class function THumanLoopActivationOutputUnmarshaller.JsonInstance: IHumanLoopActivationOutputUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

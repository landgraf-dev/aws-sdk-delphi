unit AWS.Rekognition.Transform.TrainingDataResultUnmarshaller;

interface

uses
  AWS.Rekognition.Model.TrainingDataResult, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.TrainingDataUnmarshaller, 
  AWS.Rekognition.Transform.ValidationDataUnmarshaller;

type
  ITrainingDataResultUnmarshaller = IUnmarshaller<TTrainingDataResult, TJsonUnmarshallerContext>;
  
  TTrainingDataResultUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTrainingDataResult, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITrainingDataResultUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTrainingDataResult;
    class function JsonInstance: ITrainingDataResultUnmarshaller; static;
  end;
  
implementation

{ TTrainingDataResultUnmarshaller }

function TTrainingDataResultUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTrainingDataResult;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTrainingDataResult;
begin
  UnmarshalledObject := TTrainingDataResult.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Input', TargetDepth) then
      begin
        var Unmarshaller := TTrainingDataUnmarshaller.JsonInstance;
        UnmarshalledObject.Input := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Output', TargetDepth) then
      begin
        var Unmarshaller := TTrainingDataUnmarshaller.JsonInstance;
        UnmarshalledObject.Output := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Validation', TargetDepth) then
      begin
        var Unmarshaller := TValidationDataUnmarshaller.JsonInstance;
        UnmarshalledObject.Validation := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TTrainingDataResultUnmarshaller.Create;
begin
  FJsonInstance := TTrainingDataResultUnmarshaller.Create;
end;

class function TTrainingDataResultUnmarshaller.JsonInstance: ITrainingDataResultUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

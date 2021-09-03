unit AWS.Rekognition.Transform.ProjectVersionDescriptionUnmarshaller;

interface

uses
  AWS.Rekognition.Model.ProjectVersionDescription, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Rekognition.Transform.EvaluationResultUnmarshaller, 
  AWS.Rekognition.Transform.GroundTruthManifestUnmarshaller, 
  AWS.Rekognition.Transform.OutputConfigUnmarshaller, 
  AWS.Rekognition.Transform.TestingDataResultUnmarshaller, 
  AWS.Rekognition.Transform.TrainingDataResultUnmarshaller;

type
  IProjectVersionDescriptionUnmarshaller = IUnmarshaller<TProjectVersionDescription, TJsonUnmarshallerContext>;
  
  TProjectVersionDescriptionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TProjectVersionDescription, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IProjectVersionDescriptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TProjectVersionDescription;
    class function JsonInstance: IProjectVersionDescriptionUnmarshaller; static;
  end;
  
implementation

{ TProjectVersionDescriptionUnmarshaller }

function TProjectVersionDescriptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TProjectVersionDescription;
var
  TargetDepth: Integer;
  UnmarshalledObject: TProjectVersionDescription;
begin
  UnmarshalledObject := TProjectVersionDescription.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('BillableTrainingTimeInSeconds', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.BillableTrainingTimeInSeconds := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CreationTimestamp', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreationTimestamp := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('EvaluationResult', TargetDepth) then
      begin
        var Unmarshaller := TEvaluationResultUnmarshaller.JsonInstance;
        UnmarshalledObject.EvaluationResult := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('KmsKeyId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.KmsKeyId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ManifestSummary', TargetDepth) then
      begin
        var Unmarshaller := TGroundTruthManifestUnmarshaller.JsonInstance;
        UnmarshalledObject.ManifestSummary := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MinInferenceUnits', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.MinInferenceUnits := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OutputConfig', TargetDepth) then
      begin
        var Unmarshaller := TOutputConfigUnmarshaller.JsonInstance;
        UnmarshalledObject.OutputConfig := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ProjectVersionArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ProjectVersionArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Status', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StatusMessage', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.StatusMessage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TestingDataResult', TargetDepth) then
      begin
        var Unmarshaller := TTestingDataResultUnmarshaller.JsonInstance;
        UnmarshalledObject.TestingDataResult := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TrainingDataResult', TargetDepth) then
      begin
        var Unmarshaller := TTrainingDataResultUnmarshaller.JsonInstance;
        UnmarshalledObject.TrainingDataResult := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TrainingEndTimestamp', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.TrainingEndTimestamp := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TProjectVersionDescriptionUnmarshaller.Create;
begin
  FJsonInstance := TProjectVersionDescriptionUnmarshaller.Create;
end;

class function TProjectVersionDescriptionUnmarshaller.JsonInstance: IProjectVersionDescriptionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

unit AWS.Translate.Transform.TextTranslationJobPropertiesUnmarshaller;

interface

uses
  AWS.Translate.Model.TextTranslationJobProperties, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Translate.Transform.InputDataConfigUnmarshaller, 
  AWS.Translate.Transform.JobDetailsUnmarshaller, 
  AWS.Translate.Transform.OutputDataConfigUnmarshaller;

type
  ITextTranslationJobPropertiesUnmarshaller = IUnmarshaller<TTextTranslationJobProperties, TJsonUnmarshallerContext>;
  
  TTextTranslationJobPropertiesUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTextTranslationJobProperties, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITextTranslationJobPropertiesUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTextTranslationJobProperties;
    class function JsonInstance: ITextTranslationJobPropertiesUnmarshaller; static;
  end;
  
implementation

{ TTextTranslationJobPropertiesUnmarshaller }

function TTextTranslationJobPropertiesUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTextTranslationJobProperties;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTextTranslationJobProperties;
begin
  UnmarshalledObject := TTextTranslationJobProperties.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DataAccessRoleArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DataAccessRoleArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('EndTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.EndTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InputDataConfig', TargetDepth) then
      begin
        var Unmarshaller := TInputDataConfigUnmarshaller.JsonInstance;
        UnmarshalledObject.InputDataConfig := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('JobDetails', TargetDepth) then
      begin
        var Unmarshaller := TJobDetailsUnmarshaller.JsonInstance;
        UnmarshalledObject.JobDetails := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('JobId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.JobId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('JobName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.JobName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('JobStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.JobStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Message', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Message := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OutputDataConfig', TargetDepth) then
      begin
        var Unmarshaller := TOutputDataConfigUnmarshaller.JsonInstance;
        UnmarshalledObject.OutputDataConfig := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ParallelDataNames', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.ParallelDataNames := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SourceLanguageCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SourceLanguageCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SubmittedTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.SubmittedTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TargetLanguageCodes', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.TargetLanguageCodes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TerminologyNames', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.TerminologyNames := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TTextTranslationJobPropertiesUnmarshaller.Create;
begin
  FJsonInstance := TTextTranslationJobPropertiesUnmarshaller.Create;
end;

class function TTextTranslationJobPropertiesUnmarshaller.JsonInstance: ITextTranslationJobPropertiesUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

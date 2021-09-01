unit AWS.Translate.Transform.ParallelDataPropertiesUnmarshaller;

interface

uses
  AWS.Translate.Model.ParallelDataProperties, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Translate.Transform.EncryptionKeyUnmarshaller, 
  AWS.Translate.Transform.ParallelDataConfigUnmarshaller;

type
  IParallelDataPropertiesUnmarshaller = IUnmarshaller<TParallelDataProperties, TJsonUnmarshallerContext>;
  
  TParallelDataPropertiesUnmarshaller = class(TInterfacedObject, IUnmarshaller<TParallelDataProperties, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IParallelDataPropertiesUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TParallelDataProperties;
    class function JsonInstance: IParallelDataPropertiesUnmarshaller; static;
  end;
  
implementation

{ TParallelDataPropertiesUnmarshaller }

function TParallelDataPropertiesUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TParallelDataProperties;
var
  TargetDepth: Integer;
  UnmarshalledObject: TParallelDataProperties;
begin
  UnmarshalledObject := TParallelDataProperties.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Arn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Arn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CreatedAt', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreatedAt := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Description', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Description := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('EncryptionKey', TargetDepth) then
      begin
        var Unmarshaller := TEncryptionKeyUnmarshaller.JsonInstance;
        UnmarshalledObject.EncryptionKey := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FailedRecordCount', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.FailedRecordCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ImportedDataSize', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.ImportedDataSize := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ImportedRecordCount', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.ImportedRecordCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastUpdatedAt', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastUpdatedAt := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LatestUpdateAttemptAt', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LatestUpdateAttemptAt := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LatestUpdateAttemptStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LatestUpdateAttemptStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Message', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Message := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ParallelDataConfig', TargetDepth) then
      begin
        var Unmarshaller := TParallelDataConfigUnmarshaller.JsonInstance;
        UnmarshalledObject.ParallelDataConfig := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SkippedRecordCount', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.SkippedRecordCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SourceLanguageCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SourceLanguageCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Status', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TargetLanguageCodes', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.TargetLanguageCodes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TParallelDataPropertiesUnmarshaller.Create;
begin
  FJsonInstance := TParallelDataPropertiesUnmarshaller.Create;
end;

class function TParallelDataPropertiesUnmarshaller.JsonInstance: IParallelDataPropertiesUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

unit AWS.Transcribe.Transform.LanguageModelUnmarshaller;

interface

uses
  AWS.Transcribe.Model.LanguageModel, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Transcribe.Transform.InputDataConfigUnmarshaller;

type
  ILanguageModelUnmarshaller = IUnmarshaller<TLanguageModel, TJsonUnmarshallerContext>;
  
  TLanguageModelUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLanguageModel, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ILanguageModelUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TLanguageModel;
    class function JsonInstance: ILanguageModelUnmarshaller; static;
  end;
  
implementation

{ TLanguageModelUnmarshaller }

function TLanguageModelUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TLanguageModel;
var
  TargetDepth: Integer;
  UnmarshalledObject: TLanguageModel;
begin
  UnmarshalledObject := TLanguageModel.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('BaseModelName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.BaseModelName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CreateTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreateTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FailureReason', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.FailureReason := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InputDataConfig', TargetDepth) then
      begin
        var Unmarshaller := TInputDataConfigUnmarshaller.JsonInstance;
        UnmarshalledObject.InputDataConfig := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LanguageCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LanguageCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastModifiedTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastModifiedTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ModelName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ModelName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ModelStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ModelStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('UpgradeAvailability', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.UpgradeAvailability := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TLanguageModelUnmarshaller.Create;
begin
  FJsonInstance := TLanguageModelUnmarshaller.Create;
end;

class function TLanguageModelUnmarshaller.JsonInstance: ILanguageModelUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

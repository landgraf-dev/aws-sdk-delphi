unit AWS.Translate.Transform.TerminologyPropertiesUnmarshaller;

interface

uses
  AWS.Translate.Model.TerminologyProperties, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Translate.Transform.EncryptionKeyUnmarshaller;

type
  ITerminologyPropertiesUnmarshaller = IUnmarshaller<TTerminologyProperties, TJsonUnmarshallerContext>;
  
  TTerminologyPropertiesUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTerminologyProperties, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITerminologyPropertiesUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTerminologyProperties;
    class function JsonInstance: ITerminologyPropertiesUnmarshaller; static;
  end;
  
implementation

{ TTerminologyPropertiesUnmarshaller }

function TTerminologyPropertiesUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTerminologyProperties;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTerminologyProperties;
begin
  UnmarshalledObject := TTerminologyProperties.Create;
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
      if AContext.TestExpression('LastUpdatedAt', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastUpdatedAt := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SizeBytes', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.SizeBytes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SourceLanguageCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SourceLanguageCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TargetLanguageCodes', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.TargetLanguageCodes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TermCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.TermCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TTerminologyPropertiesUnmarshaller.Create;
begin
  FJsonInstance := TTerminologyPropertiesUnmarshaller.Create;
end;

class function TTerminologyPropertiesUnmarshaller.JsonInstance: ITerminologyPropertiesUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

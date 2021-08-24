unit AWS.SESv2.Transform.CustomVerificationEmailTemplateMetadataUnmarshaller;

interface

uses
  AWS.SESv2.Model.CustomVerificationEmailTemplateMetadata, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ICustomVerificationEmailTemplateMetadataUnmarshaller = IUnmarshaller<TCustomVerificationEmailTemplateMetadata, TJsonUnmarshallerContext>;
  
  TCustomVerificationEmailTemplateMetadataUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCustomVerificationEmailTemplateMetadata, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ICustomVerificationEmailTemplateMetadataUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TCustomVerificationEmailTemplateMetadata;
    class function JsonInstance: ICustomVerificationEmailTemplateMetadataUnmarshaller; static;
  end;
  
implementation

{ TCustomVerificationEmailTemplateMetadataUnmarshaller }

function TCustomVerificationEmailTemplateMetadataUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TCustomVerificationEmailTemplateMetadata;
var
  TargetDepth: Integer;
  UnmarshalledObject: TCustomVerificationEmailTemplateMetadata;
begin
  UnmarshalledObject := TCustomVerificationEmailTemplateMetadata.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('FailureRedirectionURL', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.FailureRedirectionURL := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FromEmailAddress', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.FromEmailAddress := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SuccessRedirectionURL', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SuccessRedirectionURL := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TemplateName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TemplateName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TemplateSubject', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TemplateSubject := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TCustomVerificationEmailTemplateMetadataUnmarshaller.Create;
begin
  FJsonInstance := TCustomVerificationEmailTemplateMetadataUnmarshaller.Create;
end;

class function TCustomVerificationEmailTemplateMetadataUnmarshaller.JsonInstance: ICustomVerificationEmailTemplateMetadataUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

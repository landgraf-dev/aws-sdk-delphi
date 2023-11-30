unit AWS.SES.Transform.CustomVerificationEmailTemplateUnmarshaller;

interface

uses
  AWS.SES.Model.CustomVerificationEmailTemplate, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ICustomVerificationEmailTemplateUnmarshaller = IUnmarshaller<TCustomVerificationEmailTemplate, TXmlUnmarshallerContext>;
  
  TCustomVerificationEmailTemplateUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCustomVerificationEmailTemplate, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ICustomVerificationEmailTemplateUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TCustomVerificationEmailTemplate;
    class function Instance: ICustomVerificationEmailTemplateUnmarshaller; static;
  end;
  
implementation

{ TCustomVerificationEmailTemplateUnmarshaller }

function TCustomVerificationEmailTemplateUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TCustomVerificationEmailTemplate;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TCustomVerificationEmailTemplate;
begin
  UnmarshalledObject := TCustomVerificationEmailTemplate.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('FailureRedirectionURL', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.FailureRedirectionURL := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('FromEmailAddress', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.FromEmailAddress := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('SuccessRedirectionURL', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.SuccessRedirectionURL := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('TemplateName', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.TemplateName := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('TemplateSubject', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.TemplateSubject := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
      end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TCustomVerificationEmailTemplateUnmarshaller.Create;
begin
  FInstance := TCustomVerificationEmailTemplateUnmarshaller.Create;
end;

class function TCustomVerificationEmailTemplateUnmarshaller.Instance: ICustomVerificationEmailTemplateUnmarshaller;
begin
  Result := FInstance;
end;

end.

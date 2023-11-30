unit AWS.SES.Transform.TemplateUnmarshaller;

interface

uses
  AWS.SES.Model.Template, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITemplateUnmarshaller = IUnmarshaller<TTemplate, TXmlUnmarshallerContext>;
  
  TTemplateUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTemplate, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ITemplateUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TTemplate;
    class function Instance: ITemplateUnmarshaller; static;
  end;
  
implementation

{ TTemplateUnmarshaller }

function TTemplateUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TTemplate;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TTemplate;
begin
  UnmarshalledObject := TTemplate.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('HtmlPart', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.HtmlPart := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('SubjectPart', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.SubjectPart := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('TemplateName', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.TemplateName := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('TextPart', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.TextPart := Unmarshaller.Unmarshall(AContext);
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

class constructor TTemplateUnmarshaller.Create;
begin
  FInstance := TTemplateUnmarshaller.Create;
end;

class function TTemplateUnmarshaller.Instance: ITemplateUnmarshaller;
begin
  Result := FInstance;
end;

end.

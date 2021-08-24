unit AWS.SESv2.Transform.EmailTemplateContentUnmarshaller;

interface

uses
  AWS.SESv2.Model.EmailTemplateContent, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IEmailTemplateContentUnmarshaller = IUnmarshaller<TEmailTemplateContent, TJsonUnmarshallerContext>;
  
  TEmailTemplateContentUnmarshaller = class(TInterfacedObject, IUnmarshaller<TEmailTemplateContent, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IEmailTemplateContentUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TEmailTemplateContent;
    class function JsonInstance: IEmailTemplateContentUnmarshaller; static;
  end;
  
implementation

{ TEmailTemplateContentUnmarshaller }

function TEmailTemplateContentUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TEmailTemplateContent;
var
  TargetDepth: Integer;
  UnmarshalledObject: TEmailTemplateContent;
begin
  UnmarshalledObject := TEmailTemplateContent.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Html', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Html := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Subject', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Subject := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Text', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Text := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TEmailTemplateContentUnmarshaller.Create;
begin
  FJsonInstance := TEmailTemplateContentUnmarshaller.Create;
end;

class function TEmailTemplateContentUnmarshaller.JsonInstance: IEmailTemplateContentUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

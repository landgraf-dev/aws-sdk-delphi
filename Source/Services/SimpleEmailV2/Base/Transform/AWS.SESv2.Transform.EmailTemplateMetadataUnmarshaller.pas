unit AWS.SESv2.Transform.EmailTemplateMetadataUnmarshaller;

interface

uses
  AWS.SESv2.Model.EmailTemplateMetadata, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IEmailTemplateMetadataUnmarshaller = IUnmarshaller<TEmailTemplateMetadata, TJsonUnmarshallerContext>;
  
  TEmailTemplateMetadataUnmarshaller = class(TInterfacedObject, IUnmarshaller<TEmailTemplateMetadata, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IEmailTemplateMetadataUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TEmailTemplateMetadata;
    class function JsonInstance: IEmailTemplateMetadataUnmarshaller; static;
  end;
  
implementation

{ TEmailTemplateMetadataUnmarshaller }

function TEmailTemplateMetadataUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TEmailTemplateMetadata;
var
  TargetDepth: Integer;
  UnmarshalledObject: TEmailTemplateMetadata;
begin
  UnmarshalledObject := TEmailTemplateMetadata.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CreatedTimestamp', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreatedTimestamp := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TemplateName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TemplateName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TEmailTemplateMetadataUnmarshaller.Create;
begin
  FJsonInstance := TEmailTemplateMetadataUnmarshaller.Create;
end;

class function TEmailTemplateMetadataUnmarshaller.JsonInstance: IEmailTemplateMetadataUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

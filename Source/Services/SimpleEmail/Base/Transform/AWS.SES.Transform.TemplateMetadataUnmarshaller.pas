unit AWS.SES.Transform.TemplateMetadataUnmarshaller;

interface

uses
  AWS.SES.Model.TemplateMetadata, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITemplateMetadataUnmarshaller = IUnmarshaller<TTemplateMetadata, TXmlUnmarshallerContext>;
  
  TTemplateMetadataUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTemplateMetadata, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ITemplateMetadataUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TTemplateMetadata;
    class function Instance: ITemplateMetadataUnmarshaller; static;
  end;
  
implementation

{ TTemplateMetadataUnmarshaller }

function TTemplateMetadataUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TTemplateMetadata;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TTemplateMetadata;
begin
  UnmarshalledObject := TTemplateMetadata.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('CreatedTimestamp', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.CreatedTimestamp := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Name', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
      end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TTemplateMetadataUnmarshaller.Create;
begin
  FInstance := TTemplateMetadataUnmarshaller.Create;
end;

class function TTemplateMetadataUnmarshaller.Instance: ITemplateMetadataUnmarshaller;
begin
  Result := FInstance;
end;

end.

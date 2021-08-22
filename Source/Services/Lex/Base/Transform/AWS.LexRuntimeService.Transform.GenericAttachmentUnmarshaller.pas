unit AWS.LexRuntimeService.Transform.GenericAttachmentUnmarshaller;

interface

uses
  AWS.LexRuntimeService.Model.GenericAttachment, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.LexRuntimeService.Transform.ButtonUnmarshaller, 
  AWS.LexRuntimeService.Model.Button;

type
  IGenericAttachmentUnmarshaller = IUnmarshaller<TGenericAttachment, TJsonUnmarshallerContext>;
  
  TGenericAttachmentUnmarshaller = class(TInterfacedObject, IUnmarshaller<TGenericAttachment, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IGenericAttachmentUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TGenericAttachment;
    class function JsonInstance: IGenericAttachmentUnmarshaller; static;
  end;
  
implementation

{ TGenericAttachmentUnmarshaller }

function TGenericAttachmentUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TGenericAttachment;
var
  TargetDepth: Integer;
  UnmarshalledObject: TGenericAttachment;
begin
  UnmarshalledObject := TGenericAttachment.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('attachmentLinkUrl', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AttachmentLinkUrl := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('buttons', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TButton, IButtonUnmarshaller>.JsonNew(TButtonUnmarshaller.JsonInstance);
        UnmarshalledObject.Buttons := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('imageUrl', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ImageUrl := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('subTitle', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SubTitle := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('title', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Title := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TGenericAttachmentUnmarshaller.Create;
begin
  FJsonInstance := TGenericAttachmentUnmarshaller.Create;
end;

class function TGenericAttachmentUnmarshaller.JsonInstance: IGenericAttachmentUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

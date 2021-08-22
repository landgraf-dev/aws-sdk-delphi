unit AWS.LexRuntimeService.Transform.ResponseCardUnmarshaller;

interface

uses
  AWS.LexRuntimeService.Model.ResponseCard, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.LexRuntimeService.Transform.GenericAttachmentUnmarshaller, 
  AWS.LexRuntimeService.Model.GenericAttachment;

type
  IResponseCardUnmarshaller = IUnmarshaller<TResponseCard, TJsonUnmarshallerContext>;
  
  TResponseCardUnmarshaller = class(TInterfacedObject, IUnmarshaller<TResponseCard, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IResponseCardUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TResponseCard;
    class function JsonInstance: IResponseCardUnmarshaller; static;
  end;
  
implementation

{ TResponseCardUnmarshaller }

function TResponseCardUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TResponseCard;
var
  TargetDepth: Integer;
  UnmarshalledObject: TResponseCard;
begin
  UnmarshalledObject := TResponseCard.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('contentType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ContentType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('genericAttachments', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TGenericAttachment, IGenericAttachmentUnmarshaller>.JsonNew(TGenericAttachmentUnmarshaller.JsonInstance);
        UnmarshalledObject.GenericAttachments := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('version', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Version := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TResponseCardUnmarshaller.Create;
begin
  FJsonInstance := TResponseCardUnmarshaller.Create;
end;

class function TResponseCardUnmarshaller.JsonInstance: IResponseCardUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

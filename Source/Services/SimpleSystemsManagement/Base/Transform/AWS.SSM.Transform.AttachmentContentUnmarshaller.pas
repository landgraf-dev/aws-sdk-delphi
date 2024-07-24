unit AWS.SSM.Transform.AttachmentContentUnmarshaller;

interface

uses
  AWS.SSM.Model.AttachmentContent, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IAttachmentContentUnmarshaller = IUnmarshaller<TAttachmentContent, TJsonUnmarshallerContext>;
  
  TAttachmentContentUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAttachmentContent, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IAttachmentContentUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAttachmentContent;
    class function JsonInstance: IAttachmentContentUnmarshaller; static;
  end;
  
implementation

{ TAttachmentContentUnmarshaller }

function TAttachmentContentUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAttachmentContent;
var
  TargetDepth: Integer;
  UnmarshalledObject: TAttachmentContent;
begin
  UnmarshalledObject := TAttachmentContent.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Hash', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Hash := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('HashType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.HashType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Size', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.Size := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Url', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Url := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TAttachmentContentUnmarshaller.Create;
begin
  FJsonInstance := TAttachmentContentUnmarshaller.Create;
end;

class function TAttachmentContentUnmarshaller.JsonInstance: IAttachmentContentUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

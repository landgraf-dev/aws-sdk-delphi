unit AWS.SSM.Transform.AttachmentInformationUnmarshaller;

interface

uses
  AWS.SSM.Model.AttachmentInformation, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IAttachmentInformationUnmarshaller = IUnmarshaller<TAttachmentInformation, TJsonUnmarshallerContext>;
  
  TAttachmentInformationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAttachmentInformation, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IAttachmentInformationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAttachmentInformation;
    class function JsonInstance: IAttachmentInformationUnmarshaller; static;
  end;
  
implementation

{ TAttachmentInformationUnmarshaller }

function TAttachmentInformationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAttachmentInformation;
var
  TargetDepth: Integer;
  UnmarshalledObject: TAttachmentInformation;
begin
  UnmarshalledObject := TAttachmentInformation.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TAttachmentInformationUnmarshaller.Create;
begin
  FJsonInstance := TAttachmentInformationUnmarshaller.Create;
end;

class function TAttachmentInformationUnmarshaller.JsonInstance: IAttachmentInformationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

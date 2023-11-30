unit AWS.S3.Transform.AccessControlTranslationUnmarshaller;

interface

uses
  AWS.S3.Model.AccessControlTranslation, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IAccessControlTranslationUnmarshaller = IUnmarshaller<TAccessControlTranslation, TXmlUnmarshallerContext>;
  
  TAccessControlTranslationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAccessControlTranslation, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IAccessControlTranslationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAccessControlTranslation;
    class function Instance: IAccessControlTranslationUnmarshaller; static;
  end;
  
implementation

{ TAccessControlTranslationUnmarshaller }

function TAccessControlTranslationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAccessControlTranslation;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TAccessControlTranslation;
begin
  UnmarshalledObject := TAccessControlTranslation.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Owner', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Owner := Unmarshaller.Unmarshall(AContext);
          Continue;
        end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TAccessControlTranslationUnmarshaller.Create;
begin
  FInstance := TAccessControlTranslationUnmarshaller.Create;
end;

class function TAccessControlTranslationUnmarshaller.Instance: IAccessControlTranslationUnmarshaller;
begin
  Result := FInstance;
end;

end.

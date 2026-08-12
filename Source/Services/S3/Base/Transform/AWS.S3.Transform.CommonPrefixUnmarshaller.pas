unit AWS.S3.Transform.CommonPrefixUnmarshaller;

interface

uses
  AWS.S3.Model.CommonPrefix, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ICommonPrefixUnmarshaller = IUnmarshaller<TCommonPrefix, TXmlUnmarshallerContext>;
  
  TCommonPrefixUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCommonPrefix, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ICommonPrefixUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TCommonPrefix;
    class function Instance: ICommonPrefixUnmarshaller; static;
  end;
  
implementation

{ TCommonPrefixUnmarshaller }

function TCommonPrefixUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TCommonPrefix;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TCommonPrefix;
begin
  UnmarshalledObject := TCommonPrefix.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      // NB: the begin/end around the inner "if" is REQUIRED. Without it the
      // "else" binds to the inner if (dangling else), the end-element test
      // never runs, and this unmarshaller reads to the end of the document,
      // swallowing every sibling element after the first <CommonPrefixes>.
      // See AWS.S3.Transform.CommonPrefixUnmarshaller.README.md next to this
      // file. Every other generated unmarshaller in this family already has
      // the begin/end, because each tests more than one field name.
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Prefix', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Prefix := Unmarshaller.Unmarshall(AContext);
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

class constructor TCommonPrefixUnmarshaller.Create;
begin
  FInstance := TCommonPrefixUnmarshaller.Create;
end;

class function TCommonPrefixUnmarshaller.Instance: ICommonPrefixUnmarshaller;
begin
  Result := FInstance;
end;

end.

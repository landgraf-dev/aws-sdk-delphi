unit AWS.S3.Transform.TagUnmarshaller;

interface

uses
  AWS.S3.Model.Tag, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITagUnmarshaller = IUnmarshaller<TTag, TXmlUnmarshallerContext>;
  
  TTagUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTag, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ITagUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TTag;
    class function Instance: ITagUnmarshaller; static;
  end;
  
implementation

{ TTagUnmarshaller }

function TTagUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TTag;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TTag;
begin
  UnmarshalledObject := TTag.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Key', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Key := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Value', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Value := Unmarshaller.Unmarshall(AContext);
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

class constructor TTagUnmarshaller.Create;
begin
  FInstance := TTagUnmarshaller.Create;
end;

class function TTagUnmarshaller.Instance: ITagUnmarshaller;
begin
  Result := FInstance;
end;

end.

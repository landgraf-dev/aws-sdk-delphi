unit AWS.SES.Transform.AddHeaderActionUnmarshaller;

interface

uses
  AWS.SES.Model.AddHeaderAction, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IAddHeaderActionUnmarshaller = IUnmarshaller<TAddHeaderAction, TXmlUnmarshallerContext>;
  
  TAddHeaderActionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAddHeaderAction, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IAddHeaderActionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAddHeaderAction;
    class function Instance: IAddHeaderActionUnmarshaller; static;
  end;
  
implementation

{ TAddHeaderActionUnmarshaller }

function TAddHeaderActionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAddHeaderAction;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TAddHeaderAction;
begin
  UnmarshalledObject := TAddHeaderAction.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('HeaderName', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.HeaderName := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('HeaderValue', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.HeaderValue := Unmarshaller.Unmarshall(AContext);
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

class constructor TAddHeaderActionUnmarshaller.Create;
begin
  FInstance := TAddHeaderActionUnmarshaller.Create;
end;

class function TAddHeaderActionUnmarshaller.Instance: IAddHeaderActionUnmarshaller;
begin
  Result := FInstance;
end;

end.

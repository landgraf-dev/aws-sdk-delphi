unit AWS.SES.Transform.WorkmailActionUnmarshaller;

interface

uses
  AWS.SES.Model.WorkmailAction, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IWorkmailActionUnmarshaller = IUnmarshaller<TWorkmailAction, TXmlUnmarshallerContext>;
  
  TWorkmailActionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TWorkmailAction, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IWorkmailActionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TWorkmailAction;
    class function Instance: IWorkmailActionUnmarshaller; static;
  end;
  
implementation

{ TWorkmailActionUnmarshaller }

function TWorkmailActionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TWorkmailAction;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TWorkmailAction;
begin
  UnmarshalledObject := TWorkmailAction.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('OrganizationArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.OrganizationArn := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('TopicArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.TopicArn := Unmarshaller.Unmarshall(AContext);
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

class constructor TWorkmailActionUnmarshaller.Create;
begin
  FInstance := TWorkmailActionUnmarshaller.Create;
end;

class function TWorkmailActionUnmarshaller.Instance: IWorkmailActionUnmarshaller;
begin
  Result := FInstance;
end;

end.

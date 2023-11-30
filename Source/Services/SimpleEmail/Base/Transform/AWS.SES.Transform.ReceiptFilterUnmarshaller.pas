unit AWS.SES.Transform.ReceiptFilterUnmarshaller;

interface

uses
  AWS.SES.Model.ReceiptFilter, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SES.Transform.ReceiptIpFilterUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IReceiptFilterUnmarshaller = IUnmarshaller<TReceiptFilter, TXmlUnmarshallerContext>;
  
  TReceiptFilterUnmarshaller = class(TInterfacedObject, IUnmarshaller<TReceiptFilter, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IReceiptFilterUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TReceiptFilter;
    class function Instance: IReceiptFilterUnmarshaller; static;
  end;
  
implementation

{ TReceiptFilterUnmarshaller }

function TReceiptFilterUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TReceiptFilter;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TReceiptFilter;
begin
  UnmarshalledObject := TReceiptFilter.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('IpFilter', TargetDepth) then
        begin
          var Unmarshaller := TReceiptIpFilterUnmarshaller.Instance;
          UnmarshalledObject.IpFilter := Unmarshaller.Unmarshall(AContext);
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
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TReceiptFilterUnmarshaller.Create;
begin
  FInstance := TReceiptFilterUnmarshaller.Create;
end;

class function TReceiptFilterUnmarshaller.Instance: IReceiptFilterUnmarshaller;
begin
  Result := FInstance;
end;

end.

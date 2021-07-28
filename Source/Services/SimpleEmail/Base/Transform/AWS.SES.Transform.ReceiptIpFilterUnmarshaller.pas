unit AWS.SES.Transform.ReceiptIpFilterUnmarshaller;

interface

uses
  AWS.SES.Model.ReceiptIpFilter, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IReceiptIpFilterUnmarshaller = IUnmarshaller<TReceiptIpFilter, TXmlUnmarshallerContext>;
  
  TReceiptIpFilterUnmarshaller = class(TInterfacedObject, IUnmarshaller<TReceiptIpFilter, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IReceiptIpFilterUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TReceiptIpFilter;
    class function Instance: IReceiptIpFilterUnmarshaller; static;
  end;
  
implementation

{ TReceiptIpFilterUnmarshaller }

function TReceiptIpFilterUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TReceiptIpFilter;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TReceiptIpFilter;
begin
  UnmarshalledObject := TReceiptIpFilter.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Cidr', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Cidr := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Policy', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Policy := Unmarshaller.Unmarshall(AContext);
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

class constructor TReceiptIpFilterUnmarshaller.Create;
begin
  FInstance := TReceiptIpFilterUnmarshaller.Create;
end;

class function TReceiptIpFilterUnmarshaller.Instance: IReceiptIpFilterUnmarshaller;
begin
  Result := FInstance;
end;

end.

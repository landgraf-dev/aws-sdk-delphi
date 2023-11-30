unit AWS.SES.Transform.ReceiptRuleSetMetadataUnmarshaller;

interface

uses
  AWS.SES.Model.ReceiptRuleSetMetadata, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IReceiptRuleSetMetadataUnmarshaller = IUnmarshaller<TReceiptRuleSetMetadata, TXmlUnmarshallerContext>;
  
  TReceiptRuleSetMetadataUnmarshaller = class(TInterfacedObject, IUnmarshaller<TReceiptRuleSetMetadata, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IReceiptRuleSetMetadataUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TReceiptRuleSetMetadata;
    class function Instance: IReceiptRuleSetMetadataUnmarshaller; static;
  end;
  
implementation

{ TReceiptRuleSetMetadataUnmarshaller }

function TReceiptRuleSetMetadataUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TReceiptRuleSetMetadata;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TReceiptRuleSetMetadata;
begin
  UnmarshalledObject := TReceiptRuleSetMetadata.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('CreatedTimestamp', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.CreatedTimestamp := Unmarshaller.Unmarshall(AContext);
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

class constructor TReceiptRuleSetMetadataUnmarshaller.Create;
begin
  FInstance := TReceiptRuleSetMetadataUnmarshaller.Create;
end;

class function TReceiptRuleSetMetadataUnmarshaller.Instance: IReceiptRuleSetMetadataUnmarshaller;
begin
  Result := FInstance;
end;

end.

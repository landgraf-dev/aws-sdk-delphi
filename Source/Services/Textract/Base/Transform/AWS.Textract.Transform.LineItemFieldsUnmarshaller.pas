unit AWS.Textract.Transform.LineItemFieldsUnmarshaller;

interface

uses
  AWS.Textract.Model.LineItemFields, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Textract.Transform.ExpenseFieldUnmarshaller, 
  AWS.Textract.Model.ExpenseField, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ILineItemFieldsUnmarshaller = IUnmarshaller<TLineItemFields, TJsonUnmarshallerContext>;
  
  TLineItemFieldsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLineItemFields, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ILineItemFieldsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TLineItemFields;
    class function JsonInstance: ILineItemFieldsUnmarshaller; static;
  end;
  
implementation

{ TLineItemFieldsUnmarshaller }

function TLineItemFieldsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TLineItemFields;
var
  TargetDepth: Integer;
  UnmarshalledObject: TLineItemFields;
begin
  UnmarshalledObject := TLineItemFields.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('LineItemExpenseFields', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TExpenseField, IExpenseFieldUnmarshaller>.JsonNew(TExpenseFieldUnmarshaller.JsonInstance);
        UnmarshalledObject.LineItemExpenseFields := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TLineItemFieldsUnmarshaller.Create;
begin
  FJsonInstance := TLineItemFieldsUnmarshaller.Create;
end;

class function TLineItemFieldsUnmarshaller.JsonInstance: ILineItemFieldsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

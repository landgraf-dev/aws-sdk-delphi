unit AWS.Textract.Transform.ExpenseDocumentUnmarshaller;

interface

uses
  AWS.Textract.Model.ExpenseDocument, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Textract.Transform.LineItemGroupUnmarshaller, 
  AWS.Textract.Model.LineItemGroup, 
  AWS.Textract.Transform.ExpenseFieldUnmarshaller, 
  AWS.Textract.Model.ExpenseField;

type
  IExpenseDocumentUnmarshaller = IUnmarshaller<TExpenseDocument, TJsonUnmarshallerContext>;
  
  TExpenseDocumentUnmarshaller = class(TInterfacedObject, IUnmarshaller<TExpenseDocument, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IExpenseDocumentUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TExpenseDocument;
    class function JsonInstance: IExpenseDocumentUnmarshaller; static;
  end;
  
implementation

{ TExpenseDocumentUnmarshaller }

function TExpenseDocumentUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TExpenseDocument;
var
  TargetDepth: Integer;
  UnmarshalledObject: TExpenseDocument;
begin
  UnmarshalledObject := TExpenseDocument.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ExpenseIndex', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.ExpenseIndex := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LineItemGroups', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TLineItemGroup, ILineItemGroupUnmarshaller>.JsonNew(TLineItemGroupUnmarshaller.JsonInstance);
        UnmarshalledObject.LineItemGroups := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SummaryFields', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TExpenseField, IExpenseFieldUnmarshaller>.JsonNew(TExpenseFieldUnmarshaller.JsonInstance);
        UnmarshalledObject.SummaryFields := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TExpenseDocumentUnmarshaller.Create;
begin
  FJsonInstance := TExpenseDocumentUnmarshaller.Create;
end;

class function TExpenseDocumentUnmarshaller.JsonInstance: IExpenseDocumentUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

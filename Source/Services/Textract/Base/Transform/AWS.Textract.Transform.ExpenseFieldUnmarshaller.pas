unit AWS.Textract.Transform.ExpenseFieldUnmarshaller;

interface

uses
  AWS.Textract.Model.ExpenseField, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Textract.Transform.ExpenseDetectionUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Textract.Transform.ExpenseTypeUnmarshaller;

type
  IExpenseFieldUnmarshaller = IUnmarshaller<TExpenseField, TJsonUnmarshallerContext>;
  
  TExpenseFieldUnmarshaller = class(TInterfacedObject, IUnmarshaller<TExpenseField, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IExpenseFieldUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TExpenseField;
    class function JsonInstance: IExpenseFieldUnmarshaller; static;
  end;
  
implementation

{ TExpenseFieldUnmarshaller }

function TExpenseFieldUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TExpenseField;
var
  TargetDepth: Integer;
  UnmarshalledObject: TExpenseField;
begin
  UnmarshalledObject := TExpenseField.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('LabelDetection', TargetDepth) then
      begin
        var Unmarshaller := TExpenseDetectionUnmarshaller.JsonInstance;
        UnmarshalledObject.LabelDetection := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PageNumber', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.PageNumber := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Type', TargetDepth) then
      begin
        var Unmarshaller := TExpenseTypeUnmarshaller.JsonInstance;
        UnmarshalledObject.&Type := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ValueDetection', TargetDepth) then
      begin
        var Unmarshaller := TExpenseDetectionUnmarshaller.JsonInstance;
        UnmarshalledObject.ValueDetection := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TExpenseFieldUnmarshaller.Create;
begin
  FJsonInstance := TExpenseFieldUnmarshaller.Create;
end;

class function TExpenseFieldUnmarshaller.JsonInstance: IExpenseFieldUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.

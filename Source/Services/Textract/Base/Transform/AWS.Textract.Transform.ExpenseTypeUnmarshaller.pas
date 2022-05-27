unit AWS.Textract.Transform.ExpenseTypeUnmarshaller;

interface

uses
  AWS.Textract.Model.ExpenseType, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IExpenseTypeUnmarshaller = IUnmarshaller<TExpenseType, TJsonUnmarshallerContext>;
  
  TExpenseTypeUnmarshaller = class(TInterfacedObject, IUnmarshaller<TExpenseType, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IExpenseTypeUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TExpenseType;
    class function JsonInstance: IExpenseTypeUnmarshaller; static;
  end;
  
implementation

{ TExpenseTypeUnmarshaller }

function TExpenseTypeUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TExpenseType;
var
  TargetDepth: Integer;
  UnmarshalledObject: TExpenseType;
begin
  UnmarshalledObject := TExpenseType.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Confidence', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Confidence := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Text', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Text := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TExpenseTypeUnmarshaller.Create;
begin
  FJsonInstance := TExpenseTypeUnmarshaller.Create;
end;

class function TExpenseTypeUnmarshaller.JsonInstance: IExpenseTypeUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
